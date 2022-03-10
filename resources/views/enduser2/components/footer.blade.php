@php
$widgets = \App\Widget::where('location', 'LIKE' , 'footer%')->get();
$locations = [];
foreach($widgets as $k => $widget){
    $locations[$widget->location] = $widget;
}
@endphp
<!-- Footer starts here -->
<section id="footer-sec">
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer-col">
                        <h5>{{$locations['footer_block_1']->name}}</h5>
                        <ul>
                            {!! $locations['footer_block_1']->content !!}
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer-col">
                        <h5>{{$locations['footer_block_2']->name}}</h5>
                        <ul>
                            {!! $locations['footer_block_2']->content !!}
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer-contact footer-col">
                        <h5 >{{$locations['footer_block_3']->name}}</h5>
                        {!! $locations['footer_block_3']->content !!}
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer-col">
                        <div class="footer-contact">
                            <h5>{{$locations['footer_block_4']->name}}</h5>
                            <ul>
                                {!! $locations['footer_block_4']->content !!}
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
{{--        <div class="container-fluid footer-copy">--}}
{{--            <div class="container">--}}
{{--                <div class="row">--}}
{{--                    <div class="col-lg-6 col-md-6 col-sm-12">--}}
{{--                        <p>Copyright © 2021 Moric. All rights reserved.</p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
    </footer>
</section>
<!-- Footer ends here -->
