<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="google-site-verification" content="CHyuN6P8flY4F8EgBnbdiWy5KIgJDNvkZTIGLj5dhPM" />
@yield('meta')
@yield('head')
@if(isset($_config))
    <link rel="shortcut icon" href="{{ $_config->favicon_url }}" />
@endif
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="{{ asset('enduser/aliga/css/bootstrap/bootstrap.css') }}">
<link rel="stylesheet" href="{{ asset('enduser/aliga/css/bootstrap/bootstrap-grid.css') }}">
<link rel="stylesheet" href="{{ asset('enduser/aliga/css/bootstrap/bootstrap-reboot.c') }}ss">
<!-- Fontawesome -->
<link rel="stylesheet" href="{{ asset('enduser/aliga/css/all.css') }}" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custome CSS -->
<link rel="stylesheet" href="{{ asset('enduser/aliga/css/custome/style.css') }}">

<!-- Responsive CSS -->
<link rel="stylesheet" href="{{ asset('enduser/aliga/css/custome/responsive.css') }}">

<!-- owl carousle css -->
<link rel="stylesheet" href="{{ asset('enduser/aliga/css/owl-carousel/owl.carousel.css') }}" type="text/css">
<link rel="stylesheet" href="{{ asset('enduser/aliga/css/owl-carousel/owl.theme.default.min.css') }}" type="text/css">
<!-- magnific popup css -->
<link rel="stylesheet" href="{{ asset('enduser/aliga/css/magnific/magnific-popup.css') }}" type="text/css">
@yield('css')

