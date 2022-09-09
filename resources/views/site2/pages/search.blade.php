@extends('site2.layouts.app')

@section('content')
    <div class="sg-page-content">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <h1 class="text-center text-bold mb-5">Hasil Pencarian {{$search}} </h1>
                <div class="col-lg-6 ">
                    <div class="theiaStickySidebar">
                        <div class="sg-section mb-2">
                            <div class="section-content search-content">
                                <div class="sg-search">

                                </div>
                                <div class="latest-post-area">
                                    @if(!blank($posts))
                                        @foreach($posts as $post)
                                            <div class="sg-post medium-post-style-1">
                                                <div class="entry-header">
                                                    <div class="entry-thumbnail">
                                                        <a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                                                            @if(isFileExist($post->image, $result =  @$post->image->medium_image))
                                                                <img src="{{safari_check() ? basePath(@$post->image).'/'.$result : static_asset('default-image/default-358x215.png') }} " data-original=" {{basePath($post->image)}}/{{ $result }} " width="100%"   alt="{!! $post->title !!}"  >
                                                            @else
                                                                <img src="{{static_asset('default-image/default-358x215.png') }} "  width="100%"  alt="{!! $post->title !!}" >
                                                            @endif
                                                        </a>
                                                    </div>
                                                    @if($post->post_type=="video")
                                                        <div class="video-icon large-block">
                                                            <img src="{{static_asset('default-image/video-icon.svg') }} " alt="video-icon">
                                                        </div>
                                                    @elseif($post->post_type=="audio")
                                                        <div class="video-icon large-block">
                                                            <img src="{{static_asset('default-image/audio-icon.svg') }} " alt="audio-icon">
                                                        </div>
                                                    @endif
                                                </div>
                                                <div class="category  mt-4">
                                                    <ul class="global-list">
                                                        @isset($post->category->category_name)
                                                            <li><a class="tags" href="{{ url('category',$post->category->slug) }}">{{ $post->category->category_name }}</a></li>
                                                        @endisset
                                                    </ul>
                                                </div>
                                                <div class="entry-content align-self-center">
                                                    <h3 class="entry-title"><a
                                                            href="{{ route('article.detail', ['id' => $post->slug]) }}">{!! \Illuminate\Support\Str::limit($post->title, 65) !!}</a>
                                                    </h3>
                                                    <div class="entry-meta mb-2">
                                                        <ul class="global-list">
                                                            {{$post->user->first_name}} </a></li>
                                                            <li>{{ $post->updated_at->format('F j, Y') }}</li>
                                                        </ul>
                                                    </div>
                                                    <p class="mb-5">{!! strip_tags(\Illuminate\Support\Str::limit($post->content, 120)) !!}</p>
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif
                                </div>
                                @if($posts->count() != 0)
                                    <input type="hidden" id="last_id" value="1">
                                    <input type="hidden" id="searching" value="{{ request()->get('search', '') }}">
                                    <div class="col-sm-12 col-xs-12 d-none" id="latest-preloader-area">
                                        <div class="row latest-preloader">
                                            <div class="col-md-7 offset-md-5">
                                                <img width="100%" src="{{static_asset('site/images/')}}/preloader-2.gif" alt="Image" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-xs-12">
                                        <div class="row">
                                            <button class="button-primary mt-3 {{ $totalPostCount > 6? '':'d-none'}}" id="btn-load-more-search"> {{ __('load_more') }} </button>
                                            <button class="button-primary mt-3 {{ $totalPostCount > 6? 'd-none':''}}" id="no-more-data-search">
                                                {{ __('no_more_records') }}                                            </button>
                                            <input type="hidden" id="url" value="{{ url('') }}">
                                        </div>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                {{-- <div class="col-md-5 col-lg-4 sg-sticky">
                    <div class="sg-sidebar theiaStickySidebar">
                        @include('site2.partials.right_sidebar_widgets')
                    </div>
                </div> --}}
            </div>
        </div>
    </div>
@endsection
