@php
    //$posts = data_get($categorySection, 'category.post', collect([]));
    $topPosts = $posts->take(3);
    $bottomPosts = $posts->skip(3)->take(6);
@endphp
<div class="row d-flex justify-content-center mt-4">
    <div class="col-lg-6 list-berita-utama">
        @foreach($topPosts as $firstPost)
        <a href="">
            <div class=" d-flex">
                @include('site2.partials.home.category.first_post')
                <div class="details-news ms-3">
                <span class="date"><a href="{{route('article.date', date('Y-m-d', strtotime($firstPost->updated_at)))}}"> {{ $firstPost->updated_at->format('F j, Y') }}</a></span>
                <h1  class="title-medium"><p>{!! strip_tags(\Illuminate\Support\Str::limit($firstPost->content, 120)) !!}</p></h1>
            </div>
            </div>
            </a>
            <hr>
        @endforeach
    </div>

    @foreach($bottomPosts->chunk(3) as $postGroup)
    <div class="col-lg-6 list-berita-utama">
        @foreach($postGroup as $post)
        <a href="">
            <div class=" d-flex">
                @include('site2.partials.home.category.post_block')
                <div class="details-news ms-3">
                    <span class="date"><a href="{{route('article.date', date('Y-m-d', strtotime($post->updated_at)))}}"> {{ $post->updated_at->format('F j, Y') }}</a></span>
                    <h1  class="title-medium"><p>{!! strip_tags(\Illuminate\Support\Str::limit($post->content, 120)) !!}</p></h1>
            </div>
            </div>
        </a>
        <hr>
        @endforeach
    </div>
    @endforeach
    </div>
