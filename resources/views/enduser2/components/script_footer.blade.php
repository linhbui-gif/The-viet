<!-- jQuery library -->
<script src="{{ asset('enduser/aliga/js/bootstrap/jquery.min.js') }}"></script>

<!-- Popper JS -->
<script src="{{ asset('enduser/aliga/js/bootstrap/popper.min.js') }}"></script>

<!-- Latest compiled JavaScript -->
<script src="{{ asset('enduser/aliga/js/bootstrap/bootstrap.min.js') }}"></script>

<!-- owl-carousel java script -->
<script src="{{ asset('enduser/aliga/js/owl-carousel/owl.carousel.js') }}"></script>
<script src="{{ asset('enduser/aliga/js/owl-carousel/owl.carousel-activities.js') }}"></script>
<script src="{{ asset('enduser/aliga/js/owl-carousel/owl.carousel-testimonial.js') }}"></script>

<!-- JavaScript Libraries -->
<script src="{{ asset('enduser/aliga/js/counterup/jquery.counterup.js') }}"></script>

<!-- Sticky Navbar Javascript File -->
<script src="{{ asset('enduser/aliga/js/easing/easing.min.js') }}"></script>
<script src="{{ asset('enduser/aliga/js/sticky/sticky.js') }}"></script>
<script src="{{ asset('enduser/aliga/js/main/main.js') }}"></script>

<!-- Jquery CDN -->
<script src="{{ asset('enduser/aliga/js/jquery/jquery-2.2.4.js') }}"></script>

<!-- Magnific popup -->
<script src="{{ asset('enduser/aliga/js/magnific/jquery.js') }}"></script>
<script src="{{ asset('enduser/aliga/js/magnific/jquery.magnific-popup.js') }}"></script>
<script src="{{ asset('enduser/aliga/js/magnific/magnific-popup.js') }}"></script>
@yield('script')
@if (Session::has('success'))
    <script>
        toastr.success('{{ Session::get('success') }}', 'Thành công');
    </script>
@endif
@if (Session::has('error'))
    <script>
        toastr.error('{{ Session::get('error') }}', 'Thất bại');
    </script>
@endif
