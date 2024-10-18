@include('frontend.layout.head')
<header>
    {{-- <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">Toggle top offcanvas</button> --}}

    <div class="offcanvas offcanvas-top dropdwon-menu" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
      <div class="offcanvas-header">
        <button type="button" class="btn-close menu-close" data-bs-dismiss="offcanvas" aria-label="Close"><i
            class="fa-solid fa-xmark"></i></button>
      </div>
      <div class="offcanvas-body">
        <ul class="manubar">
            <li class="menu-item">
                <a class="menu-link active" aria-current="page" href="{{route('home')}}">Home</a>
            </li>
            <li class="menu-item">
                <a class="menu-link" href="{{route('about-us')}}">About</a>
            </li>
            <li class="menu-item">
                {{-- <a class="menu-link" href="{{url('/')}}">Service</a> --}}
            </li>

            <li class="menu-item">
                <a class="menu-link" href="{{route('digital-assets')}}">Digital Assets</a>
            </li>
            <li class="menu-item">
                <a class="menu-link" href="{{route('catalogue')}}">Catalogue</a>
            </li>
            <li class="menu-item">
                <a class="menu-link" href="{{route('production')}}">Production</a>
            </li>
            <li class="menu-item">
                <a class="menu-link" href="{{route('careers')}}">Careers</a>
            </li>
            <li class="menu-item">
                <a class="menu-link" href="{{route('contact-us')}}">Contact Us</a>
            </li>

        </ul>
      </div>
    </div>

    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand navbar-logo pb-0" href="{{ route('home') }}"> <img
                    src="{{ url($globalSetting ? $globalSetting->headerlogo : '') }}" alt="">
                {{-- <div>Media Group</div> --}}
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop"
                aria-controls="offcanvasTop">
                <span class="menu-icon"></span>
                <span class="menu-icon"></span>
                <span class="menu-icon"></span>
            </button>
    </nav>



</header>
