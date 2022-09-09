 <!-- NAVBAR -->
 <nav class="navbar navbar-expand-lg sticky-top">
    <div class="container">
      <a class="navbar-brand" href="{{ route('home') }}"><img src="{{ static_asset(settingHelper('logo')) }}" height="48" alt="Logo" ></a>
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

        <div class="sg-search">
            <div class="search-form">
                {{-- <form action="{{ route('article.search') }}" id="search" method="GET">
                    <label class="d-none"> Search </label>
                    <input class="form-control" name="search" type="text" placeholder="{{ __('search') }}">
                    <button type="submit" name="search"><i class="fa fa-search"></i></button>
                </form> --}}
                <form class="d-flex" action="{{ route('article.search') }}" id="search" method="GET" role="search">
                  <input class="form-control me-2" type="search" name="search" placeholder="Cari berita" aria-label="Search" />
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
      </div>
      <!-- OFFCANVAS -->
      <button class="button-menu" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasResponsive" aria-controls="offcanvasResponsive"></button>
          <div class="offcanvas-lg offcanvas-end" tabindex="-1" id="offcanvasResponsive" aria-labelledby="offcanvasResponsiveLabel">
            <div class="offcanvas-header">

              <button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasResponsive" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="navbar-nav">

                @foreach($primaryMenu as $mainMenu)

                    @if($mainMenu->is_mega_menu == 'no')
                        <li class="nav-item sg-dropdown mb-3">
                            <a href="{{menuUrl($mainMenu)}}" target="{{$mainMenu->new_teb == 1? '_blank':''}}">{{$mainMenu->label == 'gallery'? __('gallery'):$mainMenu->label}} @if(!blank($mainMenu->children))<span><i class="fa fa-angle-down" aria-hidden="true"></i></span>@endif </a>
                            <ul class="sg-dropdown-menu">
                                @foreach($mainMenu->children as $child)
                                    <li class=""><a href="{{menuUrl($child)}}" target="{{$child->new_teb == 1? '_blank':''}}">{{$child->label == 'gallery'? __('gallery'):$child->label}} @if(!blank($child->children)) <span class="pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span>@endif</a>
                                        <ul class="sg-dropdown-menu-menu">
                                            @foreach($child->children as $subChild)
                                                <li class=""><a href="{{menuUrl($subChild)}}" target="{{$subChild->new_teb == 1? '_blank':''}}">{{$subChild->label == 'gallery'? __('gallery'):$subChild->label}}</a></li>
                                            @endforeach
                                        </ul>
                                    </li>
                                @endforeach
                            </ul>
                        </li>
                    @endif

                    @if($mainMenu->is_mega_menu == 'tab')

                        <li class="sg-dropdown mega-dropdown">
                            <a href="{{menuUrl($mainMenu) ? menuUrl($mainMenu) : "#" }}">{{$mainMenu->label == 'gallery'? __('gallery'):$mainMenu->label}}<span><i class="fa fa-angle-down" aria-hidden="true"></i></span></a>
                            <div class="sg-dropdown-menu mega-dropdown-menu">
                                <div class="mega-menu-content">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <ul class="nav nav-tabs" role="tablist">
                                                @foreach($mainMenu->children as $child)
                                                    @php $key = 0 @endphp
                                                    <li class="nav-item">
                                                        <a class="nav-link {{$mainMenu->children[$key]->id == $child->id? 'active':''}}" id="{{$child->label}}-tab" data-toggle="tab" href="#{{$child->category->slug}}" role="tab" aria-controls="{{$child->label}}" aria-selected="{{$mainMenu->children[$key]->id == $child->id? 'true':'false'}}">{{$child->label == 'gallery'? __('gallery'):$child->label}}</a>
                                                    </li>
                                                    @php $key++ @endphp
                                                @endforeach
                                            </ul>
                                        </div>
                                        <div class="col-md-10">
                                            <div class="tab-content" id="myTabContent">
                                                @foreach($mainMenu->children as $child)
                                                    <div class="tab-pane fade {{$mainMenu->children[0]->id == $child->id? 'show active':''}}" id="{{$child->category->slug}}" role="tabpanel" aria-labelledby="{{$child->label}}-tab">
                                                        <div class="row">
                                                            @foreach($child->postByCategory as $item)
                                                                <div class="col-md-6 col-lg-3">
                                                                    <div class="sg-post">
                                                                        <div class="entry-header">
                                                                            <div class="entry-thumbnail">
                                                                                <a href="{{ route('article.detail', ['id' => $item->slug]) }}">
                                                                                    @if(isFileExist(@$item->image, $result = @$item->image->medium_image_three))
                                                                                        <img class="img-fluid" src="{{ safari_check() ? basePath(@$item->image).'/'.$result : static_asset('default-image/default-240x160.png') }}" data-original="{{basePath(@$item->image)}}/{{ $result }}" alt="{!! $item->title !!}">
                                                                                    @else
                                                                                        <img class="img-fluid" src="{{static_asset('default-image/default-240x160.png') }}"  alt="{!! $item->title !!}">
                                                                                    @endif
                                                                                </a>
                                                                            </div>
                                                                            @if($item->post_type=="video")
                                                                                <div class="video-icon block">
                                                                                    <img src="{{static_asset('default-image/video-icon.svg') }} " alt="video-icon">
                                                                                </div>
                                                                            @elseif($item->post_type=="audio")
                                                                                <div class="video-icon block">
                                                                                    <img src="{{static_asset('default-image/audio-icon.svg') }} " alt="audio-icon">
                                                                                </div>
                                                                            @endif
                                                                        </div>
                                                                        <div class="entry-content">
                                                                            <a href="{{ route('article.detail', ['id' => $item->slug]) }}"><p>{!!Str::limit( $item->title , 35)!!}</p></a>
                                                                            <div class="entry-meta">
                                                                                <ul class="global-list">
                                                                                    <li>{{ __('post_by') }} <a href="{{ route('site.author',['id' => $item->user->id]) }}">{{$item->user->first_name}} </a> {{date('d F Y', strtotime($item->created_at))}}</li>
                                                                                </ul>
                                                                            </div><!-- /.entry-meta -->
                                                                        </div><!-- /.entry-content -->
                                                                    </div><!-- /.sg-post -->
                                                                </div>
                                                            @endforeach
                                                        </div><!-- /.row -->
                                                    </div><!-- /.tab-pane -->
                                                @endforeach
                                            </div><!-- /.tab-content -->
                                        </div>
                                    </div><!-- /.row -->
                                </div><!-- /.mega-menu-content -->
                            </div>
                        </li>
                    @endif

                    @if($mainMenu->is_mega_menu == 'category')
                        <li class="sg-dropdown mega-dropdown">
                            <a href="{{menuUrl($mainMenu)}}" target="{{$mainMenu->new_teb == 1? '_blank':''}}">{{$mainMenu->label == 'gallery'? __('gallery'):$mainMenu->label}} @if(!blank($mainMenu->children))<span><i class="fa fa-angle-down" aria-hidden="true"></i></span>@endif</a>
                            <div class="sg-dropdown-menu mega-dropdown-menu">
                                <div class="mega-menu-content">
                                    <div class="row">
                                        @foreach($mainMenu->children as $child)
                                            <div class="col-md-3">
                                                <h3>{{$child->label == 'gallery'? __('gallery'):$child->label}}</h3>
                                                <ul class="global-list">
                                                    @foreach($child->children as $subChild)
                                                        <li><a href="{{menuUrl($subChild)}}" target="{{$subChild->new_teb == 1? '_blank':''}}">{{$subChild->label == 'gallery'? __('gallery'):$subChild->label}}</a></li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        @endforeach
                                    </div><!-- /.row -->
                                </div><!-- /.mega-menu-content -->
                            </div>
                        </li>
                    @endif

                @endforeach
            </ul>

              <form class="d-flex" role="search" action="{{ route('article.search') }}" id="search" method="GET">
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
