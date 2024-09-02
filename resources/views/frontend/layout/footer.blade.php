
<footer>
    <img src="{{Storage::url($globalSetting?$globalSetting->footerlogo : '')}}" alt="">
</footer>
  <!-- All JS Files -->
  <script src="{{url('frontend/js/jquery-3.6.1.min.js')}}"></script>
  <script src="{{url('frontend/js/bootstrap.bundle.min.js')}}"></script>
  <script src="{{url('frontend/js/counter.js')}}"></script>
  <script src="{{url('frontend/js/jquery.counterup.min.js')}}"></script>
  <script src="{{url('frontend/js/jquery.meanmenu.min.js')}}"></script>
  <script src="{{url('frontend/js/progressbar.js')}}"></script>
  <script src="{{url('frontend/js/swiper-bundle.min.js')}}"></script>
  <script src="{{url('frontend/js/mixitup.min.js')}}"></script>
  <script src="{{url('frontend/js/wow.min.js')}}"></script>
  <script src="{{url('frontend/js/main.js')}}"></script>
  @if(session('success'))
    toastr.success('{{ session('success') }}');
@endif

 {{-- // Display error message --}}
@if(session('error'))
    toastr.error('{{ session('error') }}');
@endif
</body>


</html>
