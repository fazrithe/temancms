 <!-- NAVBAR -->
 <nav class="navbar navbar-expand-lg sticky-top">
    <div class="container">
      <a class="navbar-brand" href="{{ route('home') }}"><img src="{{ static_asset(settingHelper('logo')) }}" alt="Logo" width="40%" class="img-fluid"></a>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            @foreach($primaryMenu as $mainMenu)
            @if($mainMenu->is_mega_menu == 'no')
            <li class="nav-item">
                <a href="{{menuUrl($mainMenu)}}" target="{{$mainMenu->new_teb == 1? '_blank':''}}">{{$mainMenu->label == 'gallery'? __('gallery'):$mainMenu->label}} @if(!blank($mainMenu->children))<span><i class="fa fa-angle-down nav-link" aria-hidden="true"></i></span>@endif </a>
                {{-- <a class="nav-link" href="./reportase.html">Reportase</a> --}}
            </li>
            @endif
            @endforeach
        </ul>
        <!-- TOGGLE DARK MODE -->

        <form action="{{ route('article.search') }}" id="search" method="GET" class="d-flex" role="search">
            <input class="form-control me-2" id="label" name="search" type="text" placeholder="{{ __('search') }}">
            {{-- <input class="form-control me-2" type="search" placeholder="Cari berita" aria-label="Search" /> --}}
          <button class="button-icon" type="submit">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
              <path
                fill-rule="evenodd"
                clip-rule="evenodd"
                d="M6 2C3.79086 2 2 3.79086 2 6C2 8.20914 3.79086 10 6 10C8.20914 10 10 8.20914 10 6C10 3.79086 8.20914 2 6 2ZM0 6C0 2.68629 2.68629 0 6 0C9.31371 0 12 2.68629 12 6C12 7.29583 11.5892 8.49572 10.8907 9.47653L15.7071 14.2929C16.0976 14.6834 16.0976 15.3166 15.7071 15.7071C15.3166 16.0976 14.6834 16.0976 14.2929 15.7071L9.47653 10.8907C8.49572 11.5892 7.29583 12 6 12C2.68629 12 0 9.31371 0 6Z"
                fill="#687980"
              />
            </svg>
          </button>
        </form>
      </div>
      <!-- OFFCANVAS -->
      <button class="button-menu" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasResponsive" aria-controls="offcanvasResponsive"></button>
          <div class="offcanvas-lg offcanvas-end" tabindex="-1" id="offcanvasResponsive" aria-labelledby="offcanvasResponsiveLabel">
            <div class="offcanvas-header">

              <button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasResponsive" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item.mobile">
                  <a class="nav-link" href="#">Reportase</a>
                </li>
                <li class="nav-item.mobile">
                  <a class="nav-link" href="#">Serial</a>
                </li>
                <li class="nav-item.mobile">
                  <a class="nav-link" href="#">Ide & Esai</a>
                </li>
              </ul>

              <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Cari berita" aria-label="Search" />
                <button class="button-icon" type="submit">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M6 2C3.79086 2 2 3.79086 2 6C2 8.20914 3.79086 10 6 10C8.20914 10 10 8.20914 10 6C10 3.79086 8.20914 2 6 2ZM0 6C0 2.68629 2.68629 0 6 0C9.31371 0 12 2.68629 12 6C12 7.29583 11.5892 8.49572 10.8907 9.47653L15.7071 14.2929C16.0976 14.6834 16.0976 15.3166 15.7071 15.7071C15.3166 16.0976 14.6834 16.0976 14.2929 15.7071L9.47653 10.8907C8.49572 11.5892 7.29583 12 6 12C2.68629 12 0 9.31371 0 6Z"
                      fill="#687980"
                    />
                  </svg>
                </button>
              </form>

            </div>
          </div>
      </button>
      <!-- OFFCANVAS -->
    </div>
  </nav>

<div class="container">
    <div class="row">
        <div class="col-12">
            @if(session('error'))
                <div id="error_m" class="alert alert-danger">
                    {{session('error')}}
                </div>
            @endif
            @if(session('success'))
                <div id="success_m" class="alert alert-success">
                    {{session('success')}}
                </div>
            @endif
            @isset($errors)
            @if ($errors->any())
                <div class="alert alert-danger" id="error_m">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            @endif
        </div>
    </div>
</div>

@include('site2.partials.ads', ['ads' => $headerWidgets])
