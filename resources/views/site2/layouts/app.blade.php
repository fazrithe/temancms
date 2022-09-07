<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    @include('site.partials.seo_og')

    <title>{{settingHelper('seo_title')}}</title>
       {{-- icons --}}
       <link rel="icon" type="image/x-icon" href="{{static_asset(settingHelper('favicon')) }}">
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
    <!-- TOGGLE DARK MODE -->
    <div  class="btn-darkmode d-flex align-items-center" >
      <button   class="me-2 button-light " onclick="setDarkMode(false)"><svg id="light"  xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="black">
        <path d="M10 2C10.5523 2 11 2.44772 11 3V4C11 4.55228 10.5523 5 10 5C9.44772 5 9 4.55228 9 4V3C9 2.44772 9.44772 2 10 2Z" fill="  "/>
        <path d="M14 10C14 12.2091 12.2091 14 10 14C7.79086 14 6 12.2091 6 10C6 7.79086 7.79086 6 10 6C12.2091 6 14 7.79086 14 10Z" fill="  "/>
        <path d="M13.5356 14.9497L14.2427 15.6568C14.6332 16.0473 15.2664 16.0473 15.6569 15.6568C16.0474 15.2663 16.0474 14.6331 15.6569 14.2426L14.9498 13.5355C14.5593 13.145 13.9261 13.145 13.5356 13.5355C13.1451 13.926 13.1451 14.5592 13.5356 14.9497Z" fill=" "/>
        <path d="M15.6568 4.34309C16.0473 4.73362 16.0473 5.36678 15.6568 5.75731L14.9497 6.46441C14.5592 6.85494 13.926 6.85494 13.5355 6.46441C13.145 6.07389 13.145 5.44072 13.5355 5.0502L14.2426 4.34309C14.6331 3.95257 15.2663 3.95257 15.6568 4.34309Z" fill="  "/>
        <path d="M17 11C17.5523 11 18 10.5523 18 10C18 9.44772 17.5523 9 17 9H16C15.4477 9 15 9.44772 15 10C15 10.5523 15.4477 11 16 11H17Z" fill=" "/>
        <path d="M10 15C10.5523 15 11 15.4477 11 16V17C11 17.5523 10.5523 18 10 18C9.44772 18 9 17.5523 9 17V16C9 15.4477 9.44772 15 10 15Z" fill=" "/>
        <path d="M5.05031 6.46443C5.44083 6.85496 6.074 6.85496 6.46452 6.46443C6.85505 6.07391 6.85505 5.44074 6.46452 5.05022L5.75742 4.34311C5.36689 3.95259 4.73373 3.95259 4.3432 4.34311C3.95268 4.73363 3.95268 5.3668 4.3432 5.75732L5.05031 6.46443Z" fill=" "/>
        <path d="M6.46443 14.9497L5.75732 15.6568C5.3668 16.0473 4.73363 16.0473 4.34311 15.6568C3.95259 15.2663 3.95259 14.6331 4.34311 14.2426L5.05022 13.5355C5.44074 13.145 6.07391 13.145 6.46443 13.5355C6.85496 13.926 6.85496 14.5592 6.46443 14.9497Z" fill="  "/>
        <path d="M4 11C4.55228 11 5 10.5523 5 10C5 9.44772 4.55228 9 4 9H3C2.44772 9 2 9.44772 2 10C2 10.5523 2.44772 11 3 11H4Z" fill="  "/>
        </svg></button>
      <button  class="button-dark" onclick="setDarkMode(true)"><svg id="moon" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="#c2c2c2">
        <path d="M17.2929 13.2929C16.2886 13.7471 15.1738 13.9999 14 13.9999C9.58172 13.9999 6 10.4182 6 5.9999C6 4.82593 6.25287 3.71102 6.70712 2.70667C3.93137 3.96191 2 6.75526 2 9.9997C2 14.418 5.58172 17.9997 10 17.9997C13.2443 17.9997 16.0376 16.0685 17.2929 13.2929Z" fill=""/>
        </svg></button>
    </button>
  </div>
  <footer>
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-6 ">
          <ul class="d-flex text-center">
            <li>
             <a href="{{ url('page/tentang-kami') }}"> Tentang Kami </a>
            </li>
            <li>
              <a href="{{ url('page/redaksi') }}"> Redaksi </a>
            </li>
            <li>
              <a href="{{ url('page/contact-us') }}"> Kontak Kami</a>
            </li>
            <li>
              <a href="{{ url('page/pedoman-media-siber') }}"> Pedoman Media Siber</a>
            </li>
          </ul>
        </div>
          </div>
          <div class="row justify-content-center">
            <div class="col-lg-8 text-center">
              <span>© 2022 parabel.id. All rights reserved</span>
            </div>
          </div>
    </div>
   </footer>

   <!-- FOOTER -->
<!-- BOOTSTRAP -->
<script src="{{static_asset('front-end/node_modules/bootstrap/dist/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{static_asset('front-end/src/js/index.js')}}"></script>
<script src="{{static_asset('site/js/jquery.min.js') }}"></script>
<script defer src="{{static_asset('site/js/slick.min.js') }}"></script>
<script defer src="{{static_asset('site/js/theia-sticky-sidebar.min.js') }}"></script>
<script defer src="{{static_asset('site/js/magnific-popup.min.js') }}"></script>
<script type="text/javascript" src="{{ static_asset('site/js/custom.min.js')}}" ></script>
@stack('script')
<script async type="text/javascript" src="{{static_asset('site/js') }}/jquery.cookie.min.js"></script>
<script defer src="{{static_asset('site/js/lazyload.js')}}"></script>
@php
    if(settingHelper('notification_status') == '1'){
        $onesignal_appid                    =   settingHelper('onesignal_app_id');
        $onesignal_actionmessage            =   settingHelper('onesignal_action_message');
        $onesignal_acceptbuttontext         =   settingHelper('onesignal_accept_button');
        $onesignal_cancelbuttontext         =   settingHelper('onesignal_cancel_button');
    }
@endphp


@yield('script')

    <!-- BOOTSTRAP -->
  </body>
</html>
