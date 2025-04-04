<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="keyword" content="{{ $setting->keyword }}" />
    <meta name="description" content="{{ $setting->description }}">
    <meta name="page-topic" content="Media">
    <meta name="page-type" content="content">
    <meta name="audience" content="Everyone">
    <meta name="language" content="{{ str_replace('_', '-', app()->getLocale()) }}">
    <meta name="author" content="Foodly Team" />
    <meta name="robots" content="index, follow">
    <meta name="format-detection" content="telephone=no">
    <title>{{ __('Foodly') }}-@yield('title')</title>
    <!-- General CSS Files -->
    <link rel="stylesheet" href="{{ asset('backend/css/app.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/bundles/bootstrap-social/bootstrap-social.css') }}">
    <!-- Template CSS -->
    <link rel="stylesheet" href="{{ asset('backend/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/css/components.css') }}">
    <!-- Fonts CSS -->
    <link rel="stylesheet" href="{{ asset('backend/css/bpg-mrgvlovani.min.css') }}">
    <!-- Custom style CSS -->
    <link rel="stylesheet" href="{{ asset('backend/css/custom.css') }}">
    <link rel='shortcut icon' type='image/x-icon' href="{{ asset('backend/img/favicon.ico') }}" />

    <!-- Languages -->
    <link rel="alternate" hreflang="ka" href="{{ url()->current() }}?language=ka" />
    <link rel="alternate" hreflang="en" href="{{ url()->current() }}?language=en" />

</head>

<body>
    <div class="loader"></div>
    <div id="app">
        <section class="section">
            <div class="container">
                <div class="row">
                    <div
                        class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
                        <div class="text-center mb-2 mt-4">
                            <img src="{{ asset('backend/img/auth.png') }}" width="35%" alt="logo">
                        </div>

                        @yield('content')
                        <div class="form-group text-center">
                            <a href="?language=en" data-toggle="tooltip" title="English">
                                <img src="{{ asset('backend/img/flags/uk.png') }}" />
                            </a>
                            <a href="?language=ka" data-toggle="tooltip" title="ქართული">
                                <img src="{{ asset('backend/img/flags/ge.png') }}" />
                            </a>
                        </div>
                        <div class="text-muted text-center">
                            <p>
                                {{ __('Restaurant Reservation System') }} <br> {{ __('Restaurant Dashboard') }} V 3.1
                            </p>
                            Copyright &copy; {{ date('Y') }} <a href="https://foodly.com.ge"
                                target="_blank">FOODLY</a><sup> ®</sup>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script src="{{ asset('backend/js/app.min.js') }}"></script>
    <script src="{{ asset('backend/js/scripts.js') }}"></script>
    <script src="{{ asset('backend/js/custom.js') }}"></script>
</body>

</html>
