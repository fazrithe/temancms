
@foreach($categorySections as $categorySection)
        @php
            if($categorySection->type == 3):
                $viewFile = 'site2.partials.home.category.'. data_get($categorySection, 'section_style', 'style_2');
            else:
                $viewFile = 'site2.partials.home.category.latest_posts';
            endif;
        @endphp

    @php
        if($categorySection->type == 1):
            $posts = data_get($categorySection, 'post', collect([]));
        elseif($categorySection->type == 2):
            $posts = $video_posts;
        elseif($categorySection->type == 3):
            $posts = $latest_posts;
        endif;
    @endphp

    @if(!blank($posts))
        @if(view()->exists($viewFile))
            @include($viewFile, [
                '$categorySection' => $categorySection,
                '$posts' => $posts
            ])
        @endif

    @endif
@endforeach

