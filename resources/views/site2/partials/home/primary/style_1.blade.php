@php
    $blockPosts = $posts->take(3);
@endphp

<main>
    <div class="container">
      <div class="row d-flex justify-content-center">
            <div class="col-lg-6 col-md-12 ">
                @foreach($sliderPosts as $post)
                <div class="featured-artikel ">
                  <a href="singlepost.html">
                    @include('site2.partials.home.primary.slider')
                    <div class="details-news">
                        <span class="date">
                            <ul class="global-list">
                                <li>{{ __('post_by') }} <a
                                        href="{{ route('site.author',['id' => $post['user']->id]) }}">{{ data_get($post, 'user.first_name') }}</a>
                                </li>
                                <li><a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}">{{ $post->updated_at->format('F j, Y') }}</a>
                                </li>
                            </ul>
                        </span>
                      <h1 class="title-xtra-large"><a href="{{ route('article.detail', ['id' => $post->slug]) }}">{!! \Illuminate\Support\Str::limit($post->title, 50) !!}</a></h1>

                  </div>
                </a>
                @endforeach
                </div>
              </div>
            <div class="col-lg-6 list-berita-utama">
                @foreach($blockPosts as $post)
                <a href="">
                  <div class=" d-flex">
                    <a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                        @if(isFileExist(@$post['image'], $result = @$post['image']->medium_image_three))
                            <img src="{{ safari_check() ? basePath(@$post['image']).'/'.$result : static_asset('default-image/default-358x215.png')  }} "
                                 data-original=" {{basePath(@$post['image'])}}/{{ $result }} "
                                 class="img-fluid" width="80%" alt="{!! $post->title !!}">
                        @else
                            <img src="{{ static_asset('default-image/default-358x215.png') }} "
                                 class="img-fluid" alt="{!! $post->title !!}">
                        @endif
                    </a>
                      <div class="details-news ms-3">
                      <span class="date"><a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}"> {{ $post->updated_at->format('F j, Y') }}</a></span>
                      <h1  class="title-medium"><a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                        <p>{!! \Illuminate\Support\Str::limit($post->title, 40) !!}</p></a></h1>
                    </div>
                    </div>
                  </a>
                  <hr>
                @endforeach
              </div>
        </div>
    </div>
</main>


