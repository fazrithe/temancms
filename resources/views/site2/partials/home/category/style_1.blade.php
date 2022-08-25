@php
    //$posts = data_get($categorySection, 'category.post', collect([]));
@endphp

              <div class="row mt-4">
                @foreach($posts->take(4) as $post)
                @if($post->category_id == 1)
                <div class="col-lg-3 col-md-6 mb-4">
                  <a href="">
                    <a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                        @if(isFileExist(@$post->image, $result = @$post->image->medium_image))
                            <img src="{{ safari_check() ? basePath(@$post->image).'/'.$result : static_asset('default-image/default-358x215.png')  }} "
                                 data-original=" {{basePath(@$post->image)}}/{{ $result }} "
                                 class="img-fluid lazy" alt="{!! $post->title !!}">
                        @else
                            <img src="{{ static_asset('default-image/default-358x215.png') }} "
                                 class="img-fluid" alt="{!! $post->title !!}">
                        @endif
                    </a>
                    <div class="details-news">
                      <span class="date"><a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}"> {{ $post->updated_at->format('F j, Y') }}</a></span>
                        <h1 class="title-medium"><a href="{{ route('article.detail', ['id' => $post->slug]) }}">
                        <p>{!! \Illuminate\Support\Str::limit($post->title, 50) !!}</p></a></h1>
                </div>
              </div>
              @endif
              @endforeach
            </div>
