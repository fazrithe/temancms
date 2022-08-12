<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Parabel.id</title>
    <!-- BOOTSTRAP -->
    <link rel="stylesheet" href="{{static_asset('front-end/node_modules/bootstrap/dist/css/bootstrap.min.css')}}" />
    <!-- BOOTSTRAP -->
    <!-- Our CSS -->
    <link rel="stylesheet" href="{{static_asset('front-end/src/css/global.css')}}" />
    <link rel="stylesheet" href="{{static_asset('front-end/src/css/home.css')}}" />
    <link rel="stylesheet" href="{{static_asset('front-end/src/css/navbar.css')}}" />
    <link rel="stylesheet" href="{{static_asset('front-end/src/css/reportase.css')}}" />
    <link rel="stylesheet" href="{{static_asset('front-end/src/css/footer.css')}}" />
    <link rel="stylesheet" href="{{static_asset('front-end/src/css/ide-esai.css')}}" />
    <link rel="stylesheet" href="{{static_asset('front-end/src/css/darkmode.css')}}" />
    <!-- Our CSS -->
  </head>
  <body>
    @include('site2.layouts.header')
    @yield('content')
   </footer>
   <!-- FOOTER -->
    <!-- BOOTSTRAP -->
    <script src="{{static_asset('front-end/node_modules/bootstrap/dist/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{static_asset('front-end/src/js/index.js')}}"></script>
    <!-- BOOTSTRAP -->
  </body>
</html>
