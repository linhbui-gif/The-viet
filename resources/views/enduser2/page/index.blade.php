@extends("enduser.layout")

@section('meta')

    @include("enduser.meta",[
    'title' => $_config->meta_title,
    'description' => $_config->meta_description,
    'link' => route('siteIndex'),
    'img' => asset('images/logo2.png')
    ])

@stop
@section('head')
    @php
        $locale = app()->getLocale();

        if($locale == "vi") {
            $page_content = unserialize($page->content);
        }
        else{
             $page_content = unserialize($page->content_ko);
        }
    @endphp
@stop
@section('content')
    @php
        $banner = \App\Banner::where('type',1)->where('status','active')->where('location','banner_home')->orderBy('order_no','asc')->get();
         $bannerAbout = \App\Banner::where('type',0)->where('status','active')->where('location','banner_about')->orderBy('id','desc')->first();
        $galleries = json_decode($bannerAbout->gallery,true);
        $bannerPartner = \App\Banner::where('type',0)->where('status','active')->where('location','banner_partner')->orderBy('order_no','asc')->get();
        $bannerYatch = \App\Banner::where('type',0)->where('status','active')->where('location','banner_dt')->orderBy('order_no','asc')->get();
        $bannerServices = \App\Banner::where('type',0)->where('status','active')->where('location','banner_dv')->orderBy('order_no','asc')->get();
    @endphp

    <!-- Carousel starts here -->
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
            {{--            <div class="carousel-item active">--}}

            {{--                <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">--}}
            {{--                    <source src="http://www.designovative.com/moric/video/moric_video.mp4" type="video/mp4">--}}
            {{--                </video>--}}

            {{--                <div class="slider-text">--}}
            {{--                    <h1>Luxury Yachts &amp; Boat Charters</h1>--}}
            {{--                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore magna aliqua.</p>--}}
            {{--                    <button type="submit" class="btn btn-primary-color mt-4">Book your tour</button>--}}
            {{--                </div>--}}
            {{--            </div>--}}
            @foreach($banner as $k => $b)
                <div class="carousel-item {{$k == 0 ? 'active':''}}">
                    <div class="hero-slider-{{$k+1}}"
                         style="background: url({{$b->picture}}) no-repeat center center;"></div>
                    <div class="slider-text">
                        <h1>{{$b->name}}</h1>
                        <div class="des-banner">
                            <style>
                                .des-banner span {
                                    color: white;
                                }
                            </style>
                            {!! $b->description !!}
                        </div>
                        <a class="btn btn-primary-color mt-4" href="{{$b->link}}">{{$b->button_name}}</a>
                    </div>
                </div>
            @endforeach

        </div>
        <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- Carousel ends here -->

    <!-- Feature starts here -->
    <div class="container-fluid">
        <div class="row border-bottom">
            @foreach($bannerServices as $item)
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 p-3 border-right">
                    <div class="feature text-center">
                        <img src="{{$item->picture}}" alt="">
                        <h6 style="font-weight: 600;
    display: -webkit-box;
    height: 68px;
    overflow: hidden;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    word-break: break-word;">{{$item->name}} </h6>
                        <p>{!! $item->description !!}</p>
                    </div>
                </div>
            @endforeach

        </div>
    </div>
    <!-- Feature ends here -->
    <!--testimonial section start-->
    <section class="testimonial_section mt-5 pt-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="title">
                        <h2>{{$bannerAbout->name}}</h2>
                    </div>
                    <p>  {!! $bannerAbout->description !!}</p>
                </div>

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="about-img text-right">
                        @if(!empty($galleries))
                            @foreach($galleries as $k => $v)
                                <img class="img-fluid mb-3" src="{{$v}}" alt="">
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- Yacht tab start here -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>
                        {{@$page_content['duthuyen']['name']}}
                    </h2>
                </div>
            </div>
        </div>
        <div class="container">

            <ul class="nav nav-tabs mb-4 justify-content-center" id="myTab" role="tablist">
                @foreach($bannerYatch as $k => $v)
                    <li class="nav-item">
                        <a class="nav-link {{$k == 0 ? "active" : ""}}" id="motot{{$k}}" data-toggle="tab"
                           href="#motor{{$k}}" role="tab" aria-controls="motor" aria-selected="true">{{$v->name}}</a>
                    </li>
                @endforeach
            </ul>
        </div>

        <div class="container-fluid">
            <div class="row">

                <div class="tab-content" id="myTabContent">
                    @foreach($bannerYatch as $k => $v)
                        <div class="tab-pane fade show {{$k == 0 ? "active" : ""}}" id="motor{{$k}}" role="tabpanel"
                             aria-label="motot{{$k}}">

                            <div class="container-fluid tab-slide">
                                <div class="row">

                                    <div class="col-lg-6 col-md-12 p-0">
                                        <div class="tab-img">
                                            <img class="img-fluid" src="{{$v->picture}}" alt="">
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-12 p-0">
                                        <div class="tab-info">
                                            <h3>{{$v->title}}</h3>
                                            <p>{!! $v->description !!}</p>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    @endforeach
                </div>
            </div>
        </div>

    </section>
    <!-- Yacht tab ends here -->
    <!-- Activities starts here -->
    @php

        $bannerActi = \App\Banner::where('type',0)->where('status','active')->where('location','banner_acti')->orderBy('order_no','asc')->get();
        $bannerTeam= \App\Banner::where('type',0)->where('status','active')->where('location','banner_team')->orderBy('order_no','asc')->get();


    @endphp
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>
                        {{@$page_content['activity']['name']}}
                    </h2>
                </div>
            </div>
        </div>

        <div class="container activity-list">
            <div class="row">
                <div class="polo_1 owl-carousel owl-theme">
                    @foreach($bannerActi as $k => $v)
                        <div class="item">
                            <div class="col-lg-12">
                                <div class="card">
                                    <img src="{{$v->picture}}" class="card-img-top" alt="Sporting Activities">
                                    <div class="card-body">
                                        <h5>{{$v->name}}</h5>
                                        <p class="card-text">{!! $v->description !!}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>

            </div>
        </div>

    </section>
    <!-- Activities ends here -->

    <!-- Testimonial start here -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>
                        {{@$page_content['client']['name']}}
                    </h2>
                </div>
                <div class="client-says owl-carousel owl-theme">
                    @foreach($bannerTeam as $k => $v)
                        <div class="item">
                            <div class="col-lg-6 m-auto">
                                <div class="testimonial">
                                    <div class="testi-pic"><img class="img-fluid" src="{{$v->picture}}" alt=""></div>
                                    <h6>{{$v->title}}</h6>
                                    <p>{!! $v->description !!}</p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
    <!-- Testimonial ends here -->
    <!-- Offers starts here -->
    <section>
        <div class="container-fluid offer-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 text-center m-auto">
                        <h4>  {{@$page_content['call']['name']}}</h4>
                        <a href="{{@$page_content['call']['link']}}"
                           class="btn btn-primary-color">{{@$page_content['call']['button']}}</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Offers ends here -->
    <!-- Clients starts here -->
    @php
        $bannerPartner = \App\Banner::where('type',0)->where('status','active')->where('location','banner_partner')->orderBy('order_no','asc')->get();
    @endphp
    <section class="mar-bot">
        <div class="container">
            <div class="row">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <div class="title">
                                <h2> {{@$page_content['partner']['name']}}</h2>
                            </div>
                        </div>
                    </div>
                </div>
                @foreach($bannerPartner as $k => $v)
                    <div class="col-lg-3 col-md-6 col-sm-6 client-single">
                        {{--                    <img class="img-fluid" src="{{asset('enduser/aliga/images/client_1.jpg')}}" alt="">--}}
                        <img class="img-fluid" src="{{$v->picture}}" alt="">
                    </div>
                @endforeach


            </div>
        </div>
    </section>

    <!-- Clients ends here -->
@stop
