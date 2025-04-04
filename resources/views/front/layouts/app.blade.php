<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SUBARU | Parts & Service</title>
    <meta name="description" content="Morden Bootstrap HTML5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Davit Gakhokia">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    <link rel="icon" type="image/png" href="assets/img/favicon-96x96.png" sizes="96x96" />
    <link rel="icon" type="image/svg+xml" href="assets/img/favicon.svg" />
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/apple-touch-icon.png" />
    <link rel="stylesheet" href="{{ asset('assets/css/plugins/swiper-bundle.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/plugins/glightbox.min.css') }}">
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700&family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500&display=swap"
        rel="stylesheet">

    <!-- Plugin css -->
    <link rel="stylesheet" href="{{ asset('assets/css/vendor/bootstrap.min.css') }}">

    <!-- Custom Style CSS -->
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">

    <link rel="stylesheet" href="//cdn.web-fonts.ge/fonts/bpg-nino-mtavruli-bold/css/bpg-nino-mtavruli-bold.min.css">


</head>

<body>


    <!-- Start header area -->
    @include('front.partials.header')
    <!-- End header area -->

    <main class="main__content_wrapper">

        @yield('content')

    </main>

    <!-- Start footer section -->
    <footer class="footer__section footer__bg5 footer__color--style">
        <div class="footer__bottom">
            <div class="container">
                <div class="footer__bottom--inenr d-flex justify-content-between align-items-center">
                    <p class="copyright__content"><span class="text__secondary">© 2025</span> Powered by <a
                            class="copyright__content--link" target="_blank" href="https://gakhokia.dev">D.G</a> All
                        Rights Reserved.</p>


                    <div class="footer__payment">
                        <img src="{{ asset('assets/img/icon/payment-img.webp') }}" alt="payment-img">
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End footer section -->

    <button id="scroll__top"><svg xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512">
            <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48"
                d="M112 244l144-144 144 144M256 120v292" />
        </svg>
    </button>

    <script src="{{asset('assets/js/vendor/popper.js') }}" defer="defer"></script>
    <script src="{{asset('assets/js/vendor/bootstrap.min.js') }}" defer="defer"></script>
    <script src="{{asset('assets/js/plugins/swiper-bundle.min.js') }}"></script>
    <script src="{{asset('assets/js/plugins/glightbox.min.js') }}"></script>
    <script src="{{asset('assets/js/script.js') }}"></script>
</body>

</html>
