<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\CategoryBlog;
use App\Models\GlobalSetting;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use PhpParser\Node\Stmt\Return_;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use function Laravel\Prompts\alert;

class AdminController extends Controller
{
    public function login(){
        return view('backend.login');
    }
    public function loginAdmin(Request $request){
        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        // $credentials = $request->only('email', 'password');
        $credentials = [
            'email'=>$request->email,
            'password'=>$request->password,
        ];
        if (Auth::attempt($credentials)) {
                return redirect()->intended('/admin/dashboard')->with('success', 'You have successfully logged in.');
        }
        return redirect("/admin")->with('error', 'Oops! You have entered invalid credentials.');

    }

    public function registerUser(Request $request){
        $users = User::all();
        $data = compact('users');
        return view('backend.register', ['users' => $users]); // Pass users to the view
    }

    public function stoteRegisterUser(Request $request)  {
        $request->validate([
            'full_name' => 'required|string|max:250',
            'email' => 'required|string|email:rfc,dns|max:250|unique:users,email',
            'password' => 'required|min:8',
            'password-confir' => 'required|same:password',
            'type' => 'required',
        ]);

        // Creating a new user
        $user = User::create([
            'name' => $request->input('full_name'),
            'email' => $request->input('email'),
            'password' => bcrypt($request->input('password')), // Encrypt the password
            'type' => $request->input('type') // Save the 'type' field
        ]);

        // Attempt to log in the user
        Auth::attempt($request->only('email', 'password'));

        $request->session()->regenerate();

        return redirect()->route('store-register')->with('success', 'You have successfully registered & logged in!');
    }

    public function deleteRegister($id){
        $user = User::find($id);
        if($user->id == 1){
            return redirect()->back()->with('error' ,  'Cannot delete category as it is associated with existing blogs.');
        }
        $user->delete();
        return redirect()->back();
    }

    public function forgetPassword(){
        return view('auth.forgetPassword');
    }
    public function forgetPasswordSubmit(Request $request){
        $request->validate([
            'email' => 'email|required|exists:users',
        ]);
        $token = Str::random(64);

        DB::table('password_reset_tokens')->insert([
            'email' => $request->email,
            'token' => $token,
            'created_at' => Carbon::now()
        ]);

        Mail::send('auth.forgetPassword', ['token' => $token], function($message) use($request){
            $message->to($request->email);
            $message->subject('Reset Password');
        });

        return back()->with('message', 'We have e-mailed your password reset link!');

    }
     /**
       * Write code on Method
       *
       * @return response()
       */
    public function showResetPasswordForm($token) {
        return view('auth.forgetPasswordLink', ['token' => $token]);
     }
     /**
       * Write code on Method
       *
       * @return response()
       */
    public function submitResetPasswordForm(Request $request)
      {
          $request->validate([
              'email' => 'required|email|exists:users',
              'password' => 'required|string|min:6|confirmed',
              'password_confirmation' => 'required'
          ]);

          $updatePassword = DB::table('password_reset_tokens')
                              ->where([
                                'email' => $request->email,
                                'token' => $request->token
                              ])
                              ->first();

          if(!$updatePassword){
              return back()->withInput()->with('error', 'Invalid token!');
          }

          $user = User::where('email', $request->email)
                      ->update(['password' => Hash::make($request->password)]);

          DB::table('password_reset_tokens')->where(['email'=> $request->email])->delete();

          return redirect('/admin')->with('message', 'Your password has been changed!');
      }

    public function logout(Request $request): RedirectResponse{
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        $request->session()->flush();

        return redirect('/admin')->with('success', 'You have successfully logged out.');
    }

    public function dashboard(){

        return view('backend.Dashboard.dashboard');
    }

    public function addBlogCategory(){
        $categoryblog = CategoryBlog::all();
        $data = compact('categoryblog');
      return view('backend.Blog.add-category')->with($data);
    }

    public function storeBlogCategory(Request $request){
        $request->validate([
            'category' => 'required',
        ]);
        $categoryblog = new CategoryBlog;
        $categoryblog->category_name = $request['category'];
        $categoryblog->save();
        return redirect()->back();
    }

    public function deleteCategory($id){
        $category = CategoryBlog::find($id);
            if(!is_null($category)){
                $blogs = Blog::where('category_id', $id)->count();
                if ($blogs > 0) {
                    return redirect()->back()->with('error', 'Cannot delete category as it is associated with existing blogs.');
                }
                $category->delete();
            }
            return redirect()->back();
    }
    public function addBlog(){
        $categoryblog = CategoryBlog::all();
        $url = ('/admin/add-blog');
        $title = "Add Blog";
        $data = compact('categoryblog', 'url' , 'title');
        return view('backend.Blog.add-blog')->with($data);
    }

    public function storeBlog(Request $request){
        $request->validate([
            'category' => 'required',
            'blog_image' => 'required|file|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'title' => 'required|string',
            'slug' => 'required',
            'blog_detail' => 'required'
        ],[
            'blog_image.mimes' => 'image must be a file of type: jpeg, png, jpg, gif, svg.'
        ]);
        $blog = new Blog();
        $blog->category_id = $request->input('category'); // Corrected to use ->input()
        if ($request->hasFile('blog_image')) {
            $blog->blog_image = $request->file('blog_image')->store('public/upload/blog');
        }
        $blog->title = $request->input('title'); // Corrected to use ->input()
        $blog->slug = $request->input('slug'); // Corrected to use ->input()
        $blog->blog_detail = $request->input('blog_detail'); // Corrected to use ->input()
        $blog->save();

        return redirect('/admin/manage-blog')->with('success', 'Blog added successfully');
    }

    public function manageblog(){
        $blogcategory = CategoryBlog::all();
        $blog = Blog::all();
        $data = compact('blog', 'blogcategory');
        // dd($data);
        return view('backend.Blog.manage-blog')->with($data);
    }

    public function editBlog($id) {
        $blog = Blog::find($id);
        if (is_null($blog)) {
            return redirect()->route('manage-blog')->with('error', 'Blog not found.');
        } else {
            $categoryblog = CategoryBlog::all();
            $title = 'Edit Blog';
            $url = route('update-blog', ['id' => $id]);
            $data = compact('blog', 'title', 'url', 'categoryblog');
            return view('backend.Blog.add-blog')->with($data);
        }
    }

    public function updateBlog(Request $request , $id){
        $blog = Blog::find($id);
        $blog->category_id = $request->input('category');
        if ($request->hasFile('blog_image')) {
            $blog->blog_image = $request->file('blog_image')->store('public/upload/blog');
        }
        $blog->title = $request->input('title');
        $blog->slug = $request->input('slug');
        $blog->blog_detail = $request->input('blog_detail');
        $blog->save();

        return redirect('/admin/manage-blog')->with('success', 'Blog added successfully');
    }

    public function statusBlog($id, $status){
        $blog = Blog::find($id);
        $blog->status = $status;
        $blog->save();
        return redirect()->back();
    }

    public function deleteBlog($id){
        $blog = Blog::find($id);
        if(!is_null($blog)){
            $blog->delete();
        }
        return redirect()->back()->with('success', 'Blog delete successfully');
    }

    public function addBanner(){
        return view('backend.Banner.add-banner');
    }
    public function manageBanner(){
        return view('backend.Banner.manage-banner');
    }
    public function global(Request $request)
    {
        $data_id = $request->data_id;

        if ($request->isMethod('GET')) {
            $global = GlobalSetting::first();
            $data = compact('global');
            // dd($data);
            return view('backend.global.global')->with($data);
        } else {
            // Validation rules
            $request->validate([
                'header_logo' => 'nullable|file|mimes:jpeg,png,jpg,gif,svg|max:2048',
                'favicon' => 'nullable|file|mimes:jpeg,png,jpg,gif,svg|max:2048',
                'footer_logo' => 'nullable|file|mimes:jpeg,png,jpg,gif,svg|max:2048',
                'instagram_link' => 'required|url',
                'facebook_link' => 'required|url',
                'linkedin_link' => 'required|url',
                'phone' => 'required|numeric|digits:10',
                'email' => 'required|email',
                'office_address' => 'required|string|max:255'
            ], [
                'phone.digits' => 'The phone number must be exactly 10 digits.',
                'email.email' => 'Please provide a valid email address.',
                'header_logo.mimes' => 'Header logo must be a file of type: jpeg, png, jpg, gif, svg.',
                'favicon.mimes' => 'Favicon must be a file of type: jpeg, png, jpg, gif, svg.',
                'footer_logo.mimes' => 'Footer logo must be a file of type: jpeg, png, jpg, gif, svg.'
            ]);

            // Fetch existing global settings or create a new instance
            $global = $data_id ? GlobalSetting::find($data_id) : new GlobalSetting();

            // Handle file uploads
            if ($request->hasFile('header_logo')) {
                $global->headerlogo = $request->file('header_logo')->store('public/upload');
            }

            if ($request->hasFile('favicon')) {
                $global->favicon = $request->file('favicon')->store('public/upload');
            }

            if ($request->hasFile('footer_logo')) {
                $global->footerlogo = $request->file('footer_logo')->store('public/upload');
            }

            // Assign other fields
            $global->instagramlink = $request->input('instagram_link');
            $global->facebooklink = $request->input('facebook_link');
            $global->linkedinlink = $request->input('linkedin_link');
            $global->phone = $request->input('phone');
            $global->email = $request->input('email');
            $global->address_office = $request->input('office_address');

            // Save the global settings
            if($global->save()){

                return redirect()->back()->with('success', 'Global settings updated successfully.');
            }

        }
    }
    // Delete header logo
        public function deleteHeaderLogo($id) {
            $globalSetting = GlobalSetting::find($id);
            if ($globalSetting->headerlogo) {
                Storage::delete($globalSetting->headerlogo);
                $globalSetting->headerlogo = null;
                $globalSetting->save();
            }
            return redirect()->back()->with('success', 'Header logo deleted successfully.');
        }

        // Delete favicon
        public function deleteFavicon($id) {
            $globalSetting = GlobalSetting::find($id);
            if ($globalSetting->favicon) {
                Storage::delete($globalSetting->favicon);
                $globalSetting->favicon = null;
                $globalSetting->save();
            }
            return redirect()->back()->with('success', 'Favicon deleted successfully.');
        }

        // Delete footer logo
        public function deleteFooterLogo($id) {
            $globalSetting = GlobalSetting::find($id);
            if ($globalSetting->footerlogo) {
                Storage::delete($globalSetting->footerlogo);
                $globalSetting->footerlogo = null;
                $globalSetting->save();
            }
            return redirect()->back()->with('success', 'Footer logo deleted successfully.');
        }
}
