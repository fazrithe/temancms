@php
$footerWidgets = data_get($widgets, \Modules\Widget\Enums\WidgetLocation::FOOTER, []);
@endphp

@include('site2.partials.ads', ['ads' => $footerWidgets])

@if(data_get(activeTheme(), 'options.footer_style') == 'footer_1')
    @include('site2.layouts.footer.style_1', ['footerWidgets' => $footerWidgets])
@elseif(data_get(activeTheme(), 'options.footer_style') == 'footer_2')
    @include('site2.layouts.footer.style_2', ['footerWidgets' => $footerWidgets])
@elseif(data_get(activeTheme(), 'options.footer_style') == 'footer_3')
    @include('site2.layouts.footer.style_3', ['footerWidgets' => $footerWidgets])
@endif
