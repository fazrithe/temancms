@extends('site2.layouts.app')

@section('content')
<main id="reportase">
    <div class="container">

        
        <div class="row">
            @foreach($posts as $post)
            <div class="col-lg-4 col-md-6 card-news mb-5">
                <a href="">
                    <div class="entry-thumbnail">
                        <a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                            @if(isFileExist($post->image, $result =  @$post->image->medium_image))
                                <img src="{{safari_check() ? basePath(@$post->image).'/'.$result : static_asset('default-image/default-358x215.png') }} " data-original=" {{basePath($post->image)}}/{{ $result }} " class="img-fluid"   alt="{!! $post->title !!}"  >
                            @else
                                <img src="{{static_asset('default-image/default-358x215.png') }} "  class="img-fluid"   alt="{!! $post->title !!}" >
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
                    <h1 class="mt-3"><a
                        href="{{ route('article.detail', ['id' => $post->slug]) }}">{!! \Illuminate\Support\Str::limit($post->title, 65) !!}</a>
                    </h1>
                <p class="summary">{!! strip_tags(\Illuminate\Support\Str::limit($post->content, 120)) !!}</p>
            </a>

            <span > <a  class="author me-1" href="{{ route('site.author',['id' => $post->user->id]) }}">{{$post->user->first_name}}  </a> {{ $post->updated_at->format('F j, Y') }}</span>
            </div>
            @endforeach
        </div>
        <div class="row mt-5 justify-content-center text-center">
            <div class="col-lg-6 pagination-buttons">

                @if($posts->count() != 0)
                <input type="hidden" id="last_id" value="1">
                <input type="hidden" id="category_id" value="{{$id}}">
                <div class="col-sm-12 col-xs-12 d-none" id="latest-preloader-area">
                    <div class="row latest-preloader">
                        <div class="col-md-7 offset-md-5">
                            <img src="{{static_asset('site/images/')}}/preloader-2.gif" alt="Image" class="tr-preloader img-fluid">
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-xs-12">
                    <div class="row">
                        <button class="btn-load-more {{ $totalPostCount > 6? '':'d-none'}}" id="btn-load-more-category"> {{ __('load_more') }} </button>
                        <button class="btn-load-more {{ $totalPostCount > 6? 'd-none':''}}" id="no-more-data">
                            {{ __('no_more_records') }}                                            </button>
                            <input type="hidden" id="url" value="{{ url('') }}">
                    </div>
                </div>
            @endif
            </div>


        </div>
    </div>
</main>
@endsection
