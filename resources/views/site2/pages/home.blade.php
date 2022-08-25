@extends('site2.layouts.app')

@section('content')
@if(!blank($primarySectionPosts))
@include('site2.partials.home.primary_section', [
    'section' => $primarySection,
    'posts' => $primarySectionPosts,
    'sliderPosts' => $sliderPosts,
])
@endif

            @php
                $language = LaravelLocalization::setLocale() ?? settingHelper('default_language')
            @endphp
            <section id="list-reportase">
                <div class="container mt-3">
                    <div class="row">
                        <div class="col">
                            <span class="tags rounded-pill">Reportase</span>
                        </div>
                    </div>
                    <div class="theiaStickySidebar">
                        @include('site2.partials.home.category_section_reportase')
                    </div>
                </div>
            </section>
            <section id="list-serial">
                <div class="container mt-4">
                    <div class="row">
                        <div class="col">
                            <span class="tags rounded-pill">Serial</span>
                        </div>
                    </div>
                    <div class="theiaStickySidebar">
                        @include('site2.partials.home.category_section_serial')
                    </div>
                </div>
            </section>
            <section id="list-ide-esai">
                <div class="container mt-4">
                    <div class="row">
                        <div class="col">
                            <span class="tags rounded-pill">Ide & Essai</span>
                        </div>
                    </div>
                    <div class="theiaStickySidebar">
                        @include('site2.partials.home.category_section_ide')
                    </div>
                </div>
            </section>
            </div>

@endsection
