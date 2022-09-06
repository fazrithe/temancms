 <!-- LIST IDE DAN ESAI -->
 <section id="list-ide-esai">
    <div class="container">
      <div class="row d-flex justify-content-center mt-2">
        <div class="col-lg-6 list-berita-utama">
            <?php $count = 0; ?>
            @foreach($posts as $post)
            @if($post->category_id == 3)
          <a href="">
            <div class=" d-flex">
                @if(isFileExist(@$post->image, $result = @$post->image->medium_image))
                <img src="{{ safari_check() ? basePath(@$post->image).'/'.$result : static_asset('default-image/default-358x215.png')  }} "
                     data-original=" {{basePath(@$post->image)}}/{{ $result }} "
                     class="img-fluid lazy" width="200" alt="{!! $post->title !!}">
            @else
                <img src="{{ static_asset('default-image/default-358x215.png') }} "
                     class="img-fluid" width="200" alt="{!! $post->title !!}">
            @endif
                <div class="details-news ms-3">
                <span class="date">{{ $post->updated_at->format('F j, Y') }}</span>
                <h1  class="title-medium">{!! \Illuminate\Support\Str::limit($post->title, 50) !!}</h1>
              </div>
              </div>
            </a>
            <hr>
            <?php $count++; ?>
            @endif
            @endforeach
        </div>
        <div class="col-lg-6 list-berita-utama">
            <?php $count = 0; ?>
            @foreach($posts as $post)
            @if($post->category_id == 4)
            <a href="">
              <div class=" d-flex">
                  @if(isFileExist(@$post->image, $result = @$post->image->medium_image))
                  <img src="{{ safari_check() ? basePath(@$post->image).'/'.$result : static_asset('default-image/default-358x215.png')  }} "
                       data-original=" {{basePath(@$post->image)}}/{{ $result }} "
                       class="img-fluid lazy" width="200" alt="{!! $post->title !!}">
              @else
                  <img src="{{ static_asset('default-image/default-358x215.png') }} "
                       class="img-fluid" width="200" alt="{!! $post->title !!}">
              @endif
                  <div class="details-news ms-3">
                  <span class="date">{{ $post->updated_at->format('F j, Y') }}</span>
                  <h1  class="title-medium">{!! \Illuminate\Support\Str::limit($post->title, 50) !!}</h1>
                </div>
                </div>
              </a>
              <hr>
              <?php $count++; ?>
              @endif
              @endforeach
        </div>
        </div>
        </div>
  </section>
