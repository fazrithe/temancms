<div class="entry-header">
    <div class="entry-thumbnail col-10">
        <a href="{{ route('article.detail', ['id' => @$post->slug]) }}">
            @if(isFileExist(@$post->image, $result =@$post->image->medium_image_three))
                <img src="{{ safari_check() ? basePath(@$post->image).'/'.$result : static_asset('default-image/default-358x215.png') }}"
                     data-original="{{basePath($post->image)}}/{{ $result }}"
                     class="img-fluid" alt="{!! $post->title !!}">
            @else
                <img src="{{static_asset('default-image/default-358x215.png') }}" class="img-fluid"
                     alt="{!! $post->title !!}">
            @endif
        </a>
    </div>
    @if($post->post_type=="article")
        <div class="article-icon large-block">
            <img src="{{static_asset('default-image/article-icon.svg') }}" alt="">
        </div>
    @elseif($post->post_type=="audio")
        <div class="video-icon large-block">
            <img src="{{static_asset('default-image/audio-icon.svg') }}" alt="audio-icon">
        </div>
    @endif
</div>
