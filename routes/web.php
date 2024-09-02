<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Frontend\AboutusController;
use App\Http\Controllers\Frontend\BlogController;
use App\Http\Controllers\Frontend\ContactusController;
use App\Http\Controllers\Frontend\HomeController;

// --------Admin Routes Start---------
Route::middleware('authadminlogin')->group(function(){
    Route::get('/admin', [AdminController::class, 'login'])->name('admin');
    Route::post('/admin', [AdminController::class, 'loginAdmin'])->name('admin-login');
});

Route::get('/admin/forget-password', [AdminController::class, 'forgetPassword'])->name('forgetpassword');
Route::post('/admin/forget-password', [AdminController::class, 'forgetPasswordSubmit'])->name('forgetpasswordsubmit');
Route::get('/admin/reset-password/{token}', [AdminController::class, 'showResetPasswordForm'])->name('reset.password.get');
Route::post('/admin/reset-password', [AdminController::class, 'submitResetPasswordForm'])->name('reset.password.post');

Route::middleware('auth')->group(function(){
    Route::get('/admin/register', [AdminController::class, 'registerUser'])->name('userRegister');
    Route::post('/admin/register', [AdminController::class, 'stoteRegisterUser'])->name('store-register');
    Route::post('/admin/register/{id}',[AdminController::class, 'deleteRegister'])->name('delete-register');
    Route::get('/logout',[AdminController::class, 'logout'])->name('logout');
    Route::get('/admin/dashboard', [AdminController::class, 'dashboard'])->name('dashboard');

    Route::match(['GET','POST'], '/admin/global', [AdminController::class, 'global'])->name('global');
    Route::get('/admin/global/delete-header-logo/{id}', [AdminController::class, 'deleteHeaderLogo'])->name('delete-header-logo');
    Route::get('/admin/global/delete-favicon/{id}', [AdminController::class, 'deleteFavicon'])->name('delete-favicon');
    Route::get('/admin/global/delete-footer-logo/{id}', [AdminController::class, 'deleteFooterLogo'])->name('delete-footer-logo');

    Route::get('/admin/add-banner',[AdminController::class, 'addBanner'])->name('add-banner');
    Route::get('/admin/manage-banner',[AdminController::class, 'manageBanner'])->name('manage-banner');

    Route::get('/admin/add-blog-category',[AdminController::class, 'addBlogCategory'])->name('add-blog-category');
    Route::post('/admin/add-blog-category',[AdminController::class, 'storeBlogCategory'])->name('store-blog-category');
    Route::get('/admin/add-blog-category/delete/{id}', [AdminController::class,'deleteCategory'])->name('delete-category');

    Route::get('/admin/add-blog',[AdminController::class, 'addBlog'])->name('add-blog');
    Route::post('/admin/add-blog', [AdminController::class, 'storeBlog'])->name('store-blog');
    Route::get('/admin/manage-blog',[AdminController::class, 'manageBlog'])->name('manage-blog');
    Route::get('/admin/manage-blog/edit/{id}', [AdminController::class, 'editBlog'])->name('edit-blog');
    Route::post('/admin/manage-blog/update/{id}', [AdminController::class, 'updateBlog'])->name('update-blog');
    Route::get('/admin/manage-blog/status/{id}/{status}', [AdminController::class, 'statusBlog'])->name('status-blog');
    Route::get('/admin/manage-blog/delete/{id}', [AdminController::class, 'deleteBlog'])->name('delete-blog');

});
Route::middleware(['auth', 'checkUserType:2'])->group(function() {
    Route::get('/admin/register', [AdminController::class, 'registerUser'])->name('userRegister');
    Route::post('/admin/register', [AdminController::class, 'stoteRegisterUser'])->name('store-register');

});

// --------Admin Routes end---------

// ------------Frontend Routes Start--------
Route::get('/',[HomeController::class, 'home'])->name('home');
Route::get('/about',[AboutusController::class, 'aboutUs'])->name('about-us');
Route::get('/blog',[BlogController::class, 'blog'])->name('blog');
Route::get('/blog/{slug}',[BlogController::class, 'blogDetail'])->name('blog-detail');
Route::get('/contact',[ContactusController::class, 'conatctUs'])->name('contact-us');
