@extends("enduser.layout")

{{--@section('meta')--}}

{{--    @include("enduser.meta",[--}}
{{--    'title' => $_config->meta_title,--}}
{{--    'description' => $_config->meta_description,--}}
{{--    'link' => route('siteIndex'),--}}
{{--    'img' => asset('images/logo2.png')--}}
{{--    ])--}}

{{--@stop--}}
@section('content')
    @php
        $banner = \App\Helper\Common::getFromCache('banner_home');
        if(!$banner) {
          $banner = \App\Banner::where('type',1)->where('status','active')->where('location','banner_home')->orderBy('order_no','asc')->get();
          \App\Helper\Common::putToCache('banner_home',$banner);
        }
        @$bannerAbout = \App\Banner::where('type',0)->where('status','active')->where('location','banner_about')->orderBy('id','desc')->first();
        $galleries = json_decode(@$bannerAbout->gallery,true);
        $bannerPartner = \App\Banner::where('type',0)->where('status','active')->where('location','banner_partner')->orderBy('order_no','asc')->get();
        $bannerServices = \App\Banner::where('type',0)->where('status','active')->where('location','banner_dv_page')->orderBy('order_no','asc')->get();
        $bannerTeam= \App\Banner::where('type',0)->where('status','active')->where('location','banner_team')->orderBy('order_no','asc')->get();
        $bannerActi = \App\Banner::where('type',0)->where('status','active')->where('location','banner_acti')->orderBy('order_no','asc')->get();
        @$bannerwhy =  \App\Banner::where('type',0)->where('status','active')->where('location','banner_why_choose')->orderBy('order_no','asc')->first();
        @$bannerDownload =  \App\Banner::where('type',0)->where('status','active')->where('location','banner_download')->orderBy('order_no','asc')->first();
    @endphp
    <!-- Hero -->
    <div class="hero-1 oh pos-rel" style="background: url({{asset('enduser/theviet/images/hero/banner-bg.png')}})">
        <!-- container -->
        <div class="hero-banner-carousel">
            @if(!empty($banner))
                @foreach($banner as $k => $b)
                    <div class="hero-carousel-item">
                        <div class="container">
                            <!-- row -->
                            <div class="row align-items-center">
                                <!-- col -->
                                <div class="col-lg-5">
                                    <div class="hero-1-content wow fadeInLeft animated">
                                        <h5 class="cate  wow fadeInUp animated" data-wow-delay="0.2s">
                                            #{{$b->title}}</h5>
                                        <h1 class="title  wow fadeInUp animated" data-wow-delay="0.4s">{{$b->name}}</h1>
                                        {!! $b->description !!}
                                        <div class="hero-1-button-group">
                                            <a href=" {{$b->link}}" data-bs-toggle="modal"
                                               data-bs-target="#modalHomeSLider"
                                               class="btn theme-btn-1  wow fadeInUp animated" data-wow-delay="0.8s">
                                                {{$b->button_name}}
                                                <i class="uil uil-angle-right-b ml-2 mb-2"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- /col -->
                                <!-- col -->
                                <div class="col-lg-7 d-lg-block">
                                    <div class="hero-1-thumb-15 wow fadeInUp animated" data-wow-delay="0.4s">
                                        <img class="img-fluid wow fadeInRight animated" src="{{$b->picture}}"
                                             alt="hero-1">
                                    </div>
                                </div>
                                <!-- /col -->
                            </div>
                            <!-- /row -->
                        </div>
                        <!-- /container -->
                    </div>
                @endforeach
            @endif
        </div>
    </div>
    <!-- /Hero -->
    <div class="counterup_aera d-flex flex-wrap pt-100 pb-100">
        <div class="counterup_text  mb-lm-30px">
            <h3 class="counterup">1.200</h3>
            <p><i class="las la-user"></i></p>
            <p>Happy Customer</p>
        </div>
        <div class="counterup_text  mb-lm-30px">
            <h3 class="counterup">8.245</h3>
            <p><i class="las la-ambulance"></i></p>
            <p>lines of code</p>
        </div>
        <div class="counterup_text ">
            <h3 class="counterup">865</h3>
            <p><i class="lab la-firefox"></i></p>
            <p>Project Completed</p>
        </div>
        <div class="counterup_text ">
            <h3 class="counterup">210</h3>
            <p><i class="lab la-github-alt"></i></p>
            <p>Award Wons</p>
        </div>
    </div>
    <!-- About Us -->
    <div class="about-area pt-100 pb-100">
        <!-- Container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- col -->
                <div class="col-lg-6">
                    <div class="about-image-warp" style="background-image: url({{@$bannerAbout->picture}});">
                        <a href="javascript::void(0)" data-src="https://www.youtube.com/embed/mHjdlO4JSsA"
                           data-bs-toggle="modal" data-bs-target="#modalShowVideo" class="video-btn popup-youtube">
                            <i class="ri-play-fill"></i>
                        </a>
                    </div>
                </div>
                <!-- /col -->
                <!-- col -->
                <div class="col-lg-6">
                    <div class="about-content warp">
                        <!-- row -->
                        <div class="row justify-content-center text-center">
                            <!-- col -->
                            <div class="col-lg-8 col-md-12">
                                <div class="section-title">
                                    <h2 class="title">{{@$bannerAbout->name}}</h2>
                                    <div class="title-bdr">
                                        <div class="left-bdr"></div>
                                        <div class="right-bdr"></div>
                                    </div>

                                </div>
                            </div>
                            <!-- /col -->
                        </div>
                        <!-- /row -->
                        <p>{!! @$bannerAbout->description !!}</p>
                        <div class="about-btn justify-content-center text-center">
                            <a href="{{@$bannerAbout->link}}" class="btn theme-btn-1">
                                {{@$bannerAbout->button_name}}
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /col -->
            </div>
            <!-- /row -->
        </div>
        <!-- /Container -->
    </div>
    <!-- /About Us -->
    <!-- /Services -->
    <div class="services-area">
        <!-- Container -->
        <div class="container">
            <!-- row -->
            <div class="row justify-content-center text-center">
                <!-- col -->
                <div class="col-lg-8 col-md-12 mb-50">
                    <div class="section-title">
                        <h2 class="title">Best Services</h2>
                        <div class="title-bdr">
                            <div class="left-bdr"></div>
                            <div class="right-bdr"></div>
                        </div>
                        <p>Presenting Banking Plan & Services That are Right For You</p>
                    </div>
                </div>
                <!-- /col -->
            </div>
            <!-- /row -->

            <!-- row -->
            <div class="row">
                <div class="service-carousel testimonial-item-wrap-1">
                    @if(!empty($bannerServices))
                        @foreach($bannerServices as $k => $b)
                            <div class="service-item">
                                <div class="col-12">
                                    <div class="single-services-item">
                                        <div class="image">
                                            <a href="#">
                                                <img src="{{$b->picture}}" alt="{{$b->name}}">
                                            </a>
                                        </div>
                                        <div class="content">
                                            <h3>
                                                <a href="#">{{$b->name}}</a>
                                            </h3>
                                            {{--                                    <span>Lorem ipsum</span>--}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @endif
                </div>
            </div>

            <!-- /row -->
        </div>
        <!-- /Container -->
    </div>
    <!-- /Services -->
    <!-- Testimonial -->
    <div class="testimonial-area pt-100 pb-100">
        <!-- Container -->
        <div class="container">
            <!-- row -->
            <div class="row justify-content-center text-center">
                <!-- col -->
                <div class="col-lg-8 col-md-12 mb-50">
                    <div class="section-title">
                        <h2 class="title">Testimonial</h2>
                        <div class="title-bdr">
                            <div class="left-bdr"></div>
                            <div class="right-bdr"></div>
                        </div>
                        <p>You can see our clients feedback what you say?</p>
                    </div>
                </div>
                <!-- /col -->
            </div>
            <!-- /row -->
        </div>
        <!-- /Container -->
        <!-- Container -->
        <div class="container-fluid">
            <!-- row -->
            <div class="row">
                <!-- col -->
                <div class="col-lg-12">
                    <div class="testimonial-item-wrap-1 testimonial-carousel-1">
                        @if(!empty($bannerTeam))
                            @foreach($bannerTeam as $k => $v)
                                <div class="testimonial-item">
                                    <div class="testimonial-author">
                                        <img src="{{$v->picture}}" alt="small-avatar">
                                        <h3 class="author__title">{{$v->title}}</h3>
                                        {{--                                <span class="author__meta">United States</span>--}}
                                    </div>
                                    <div class="testimonial-desc">
                                        <p class="testimonial__desc">
                                            {!! $v->description !!}
                                        </p>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                    </div>
                </div>
                <!-- /col -->
            </div>
            <!-- /row -->
        </div>
        <!-- /Container -->
    </div>
    <!-- /Testimonial -->
    <!-- Choose Us -->
    <div class="why-choose-us-area pb-100">
        <!-- Container -->
        <div class="container">
            <!-- row -->
            <div class="row align-items-center">
                <!-- col -->
                <div class="col-lg-6">
                    <div class="why-choose-us-img">
                        <img src="{{asset('enduser/theviet/images/bg/choose-us.png')}}" alt="Image">
                    </div>
                </div>
                <!-- /col -->
                <!-- col -->
                <div class="col-lg-6">
                    <div class="why-choose-us-content mb-removed">
                        <!-- row -->
                        <div class="row justify-content-center text-center">
                            <!-- col -->
                            <div class="col-lg-8 col-md-12 mb-50">
                                <div class="section-title">
                                    <h2 class="title">{{@$bannerwhy->name}}</h2>
                                    <div class="title-bdr">
                                        <div class="left-bdr"></div>
                                        <div class="right-bdr"></div>
                                    </div>
                                    <p>{{@$bannerwhy->title}}</p>
                                </div>
                            </div>
                            <!-- /col -->
                        </div>
                        <!-- /row -->
                      {!! @$bannerwhy->description !!}
                    </div>
                </div>
                <!-- /col -->
            </div>
            <!-- /row -->
        </div>
        <!-- /Container -->
    </div>
    <!-- /Choose Us -->
    <!-- Download -->
    <div class="download-area">
        <!-- Container -->
        <div class="container">
            <!-- row -->
            <div class="row align-items-center justify-content-between">
                <!-- col -->
                <div class="col-xl-7 col-lg-6 col-md-6">
                    <div class="download-1-content mt-50">
                        <h2 class=" wow fadeInUp animated">{{@$bannerDownload->name}}</h2>
                        <ul>
                          {!! @$bannerDownload->description !!}
                        </ul>
                        <div class="mt-4 wow fadeInUp animated" data-wow-delay="0.6s">
                            <a href="#" class="btn theme-btn-1">
                                <img src="{{asset('enduser/theviet/images/svg/android.svg')}}" alt="">
                            </a>
                            <a href="#" class="btn theme-btn-1">
                                <img src="{{asset('enduser/theviet/images/svg/apple.svg')}}" alt="">
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /col -->
                <!-- col -->
                <div class="col-xl-5 col-lg-6 col-md-6">
                    <div class="download-1-img">
                        <img class=" img-fluid" src="{{asset('enduser/theviet/images/bg/download.png')}}" alt="">
                    </div>
                </div>
                <!-- /col -->
            </div>
            <!-- /row -->
        </div>
        <!-- /Container -->
    </div>
    <!-- /Download -->

    <!-- Blog -->
    <div class="blog-area pt-120 pb-100">
        <!-- Container-->
        <div class="container">
            <!-- row -->
            <div class="row justify-content-center text-center">
                <!-- col -->
                <div class="col-lg-8 col-md-12 mb-50">
                    <div class="section-title">
                        <h2 class="title">Liên kết dịch vụ đa lĩnh vực</h2>
                        <div class="title-bdr">
                            <div class="left-bdr"></div>
                            <div class="right-bdr"></div>
                        </div>
                        <p>You can see our clients feedback what you say?</p>
                    </div>
                </div>
                <!-- /col -->
            </div>
            <!-- /row -->
            <!-- row -->
            <div class="row">
                <div class="news-carousel testimonial-item-wrap-1">
                    @if(!empty($bannerActi))
                        @foreach($bannerActi as $k => $blog)
                            <div class="news-item">
                                <div class="col-12">
                                    @include('enduser.page.components.cardComponent',['data' => $blog,'isblog' => false,'categoryname' => "Tư vấn khám"] )
                                </div>
                            </div>
                        @endforeach
                    @endif
                </div>
                <!-- /col -->
            </div>
            <!-- /row -->
        </div>
        <!-- /Container-->
    </div>
    <!-- /Blog -->
    <!-- Client Logo -->
    <div class="client-logo-area pb-100">
        <!-- Container -->
        <div class="container">
            <!-- row -->
            <div class="row justify-content-center text-center">
                <!-- col -->
                <div class="col-lg-8 col-md-12 mb-50">
                    <div class="section-title">
                        <h2 class="title">Các đơn vị đang sử dụng dịch vụ</h2>
                        <div class="title-bdr">
                            <div class="left-bdr"></div>
                            <div class="right-bdr"></div>
                        </div>
                        <p>You can see our clients feedback what you say?</p>
                    </div>
                </div>
                <!-- /col -->
            </div>
            <div class="row">

                <!-- col -->
                <div class="clients-carousel testimonial-item-wrap-1">
                    @if(!empty($bannerPartner))
                        @foreach($bannerPartner as $k => $v)
                            <div class="clients-item">
                                <div class="col-12 text-center">
                                    <div class="client-logo">
                                        <div class="client-logo-img modalClient" data-id="{{$v->id}}" data-bs-toggle="modal"
                                             data-bs-target="#modalClient" ><img
                                                src="{{$v->picture}}" alt="" class="img-fluid"></div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @endif
                </div>
                <!-- /col -->

                <!-- /col -->
            </div>
            <!-- row -->
        </div>
        <!-- /Container -->
    </div>
    <!-- /Client Logo -->
    <div class="modal fade" id="modalClient" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title title-client" id="exampleModalLabel"></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body appendIframe">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Send message</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modalHomeSLider" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="recipient-name" class="col-form-label">Recipient:</label>
                            <input type="text" class="form-control" id="recipient-name">
                        </div>
                        <div class="mb-3">
                            <label for="message-text" class="col-form-label">Message:</label>
                            <textarea class="form-control" id="message-text"></textarea>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Send message</button>
                </div>
            </div>
        </div>
    </div>
@stop
@section('script')
    <script type="text/javascript">
        $('.counterup').counterUp({
            delay: 20,
            time: 2000,
            offset: 100
        });


        $(document).ready(function () {
            let modal = $('.modalClient');

            modal.each(function () {
                let that = $(this);
                that.on('click', function () {
                    let id = that.attr('data-id');
                    $.ajax({
                        url: "{{route('ajaxClient')}}",
                        method: 'GET',
                        data: {
                            "_token":'{{csrf_token()}}',
                            "id": id
                        },
                        success: function (response) {
                            console.log('response',response)
                            if (response.success == true) {
                                let content = response.data.content;
                                let name = response.data.name;
                                $("#modalClient").find('.appendIframe').html(content);
                                $("#modalClient").find('.title-client').html(name);
                            }
                        }
                    });
                });

            });
            // $("#modalClient").on('hidden.bs.modal', function (e) {
            //     $(this).find('.appendIframe').html('')
            // });


        });
    </script>
@endsection