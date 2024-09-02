
<aside class="main-sidebar sidebar-dark-primary elevation-4">

    <a href="{{route('dashboard')}}" class="brand-link">
        <img src="{{Storage::url($globalSetting?$globalSetting->favicon: '')}}" alt="s" class="brand-image img-circle elevation-3"
            style="opacity: .8">
        <span class="brand-text font-weight-light">Sakhuja Group</span>
    </a>
    <ul>

    </ul>
    <div class="sidebar">
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                data-accordion="false">
                @isset($user)

                @if($user->type == 1)
                <li class="nav-item">
                    <a href="{{route('dashboard')}}" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Homepage
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>
                                    Banner
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="" class="nav-link">
                                        <i class="far fa-dot-circle nav-icon"></i>
                                        <p>Add Banner</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="" class="nav-link">
                                        <i class="far fa-dot-circle nav-icon"></i>
                                        <p>Manage Banner</p>
                                    </a>
                                </li>

                            </ul>
                        </li>

                    </ul>

                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Banner
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('add-banner')}}" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Add Banner</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('manage-banner')}}" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Manage Banner</p>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Testimonial
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Add Testimonial</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Manage Testimonial</p>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Blog
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('add-blog-category')}}" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Add Blog Category</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('add-blog')}}" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Add Blog</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('manage-blog')}}" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Manage Blog</p>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="nav-item">
                    <a href="{{route('global')}}" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>Global</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{route('userRegister')}}" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>User</p>
                    </a>
                </li>
                @elseif ($user->type == 2)
                <li class="nav-item">
                    <a href="{{route('dashboard')}}" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Homepage
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>
                                    Banner
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="" class="nav-link">
                                        <i class="far fa-dot-circle nav-icon"></i>
                                        <p>Add Banner</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="" class="nav-link">
                                        <i class="far fa-dot-circle nav-icon"></i>
                                        <p>Manage Banner</p>
                                    </a>
                                </li>

                            </ul>
                        </li>

                    </ul>

                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Banner
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('add-banner')}}" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Add Banner</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('manage-banner')}}" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Manage Banner</p>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Testimonial
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Add Testimonial</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Manage Testimonial</p>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Blog
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('add-blog-category')}}" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Add Blog Category</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('add-blog')}}" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Add Blog</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('manage-blog')}}" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Manage Blog</p>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="nav-item">
                    <a href="{{route('global')}}" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>Global</p>
                    </a>
                </li>

                @elseif ($user->type == 3)
                <li class="nav-item">
                    <a href="{{route('dashboard')}}" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Blog
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('add-blog-category')}}" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Add Blog Category</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('add-blog')}}" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Add Blog</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('manage-blog')}}" class="nav-link">
                                <i class="far fa-dot-circle nav-icon"></i>
                                <p>Manage Blog</p>
                            </a>
                        </li>

                    </ul>
                </li>
                @else
                    <p>You need to log in to view user data.</p>
                @endif
                @endisset

                <li class="nav-item">
                    <a href="{{route('logout')}}" class="nav-link">
                        <i class=" nav-icon fas fa-sign-out-alt"></i>
                        <p>Logout</p>
                    </a>
                </li>

            </ul>
        </nav>

    </div>

</aside>
