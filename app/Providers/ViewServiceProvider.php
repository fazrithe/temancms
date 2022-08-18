<?php

namespace App\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use Modules\Common;

class ViewServiceProvider extends ServiceProvider
{
    public function register()
    {
        //
    }

    public function boot()
    {
        View::composer(
            ['site2.partials.right_sidebar_widgets'],
            'App\Http\View\Composers\WidgetComposer'
        );

        View::composer(
            ['site2.partials.footer_widgets', 'site2.layouts.footer'],
            'App\Http\View\Composers\FooterWidgetComposer'
        );

        View::composer(
            ['site2.layouts.header'],
            'App\Http\View\Composers\HeaderWidgetComposer'
        );

        // View::composer(
        //     ['site.layouts.header'],
        //     'App\Http\View\Composers\MenuComposer'
        // );

        View::composer(
            ['site2.partials.home.category_section', 'site2.pages.home', 'site2.widgets.ad_widget', 'site.layouts.header'],
            'App\Http\View\Composers\AdComposer'
        );

        View::composer(
            ['site2.layouts.header'],
            'App\Http\View\Composers\PrimaryMenuComposer'
        );

        View::composer(
            ['site2.layouts.header', 'site2.layouts.footer', 'site2.partials.right_sidebar_widgets'],
            'App\Http\View\Composers\SocialComposer'
        );

        View::composer(
            ['site2.layouts.header'],
            'App\Http\View\Composers\LastpostComposer'
        );

        View::composer(
            ['site2.layouts.header', 'common::layouts.header'],
            'App\Http\View\Composers\ActiveLangComposer'
        );

        View::composer(
            ['site2.partials.home.primary_section'],
            'App\Http\View\Composers\BreakingComposer'
        );

        View::composer(
            ['site2.layouts.app', 'site2.partials.home.primary_section','site2.pages.article.article_detail_mobile'],
            'App\Http\View\Composers\LanguageComposer'
        );

    }
}
