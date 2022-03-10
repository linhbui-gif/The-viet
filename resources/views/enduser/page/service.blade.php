@extends("enduser.layout")

@section('content')

    @php
        $aboutService = \App\Banner::where('type',0)->where('status','active')->where('location','banner_about_dv')->orderBy('id','desc')->first();
     $bannerServices = \App\Banner::where('type',0)->where('status','active')->where('location','banner_dv_page')->orderBy('order_no','asc')->get();
    @endphp
    @include('enduser.page.components.brebcrumb',['title' => "3 trong 1 tính năng",'description' => "Thanh toán - check-in - vé điện tử trong cùng một thẻ thông minh kết nối đa tiện ích"])
    <!-- About Us -->
    <div class="about-area pt-100 pb-100">
        <!-- Container -->
        <div class="container-fluid">
            <!-- row -->
            <div class="row">
                <!-- col -->
                <div class="col-lg-6">
                    <div class="about-image-warp" style="background-image: url({{$aboutService->picture}});">
                        <a href="https://www.youtube.com/watch?v=mHjdlO4JSsA" class="video-btn popup-youtube">
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
                            <div class="col-lg-8 col-md-12 ">
                                <div class="section-title">
                                    <h2 class="title">{{$aboutService->title}}</h2>
                                    <div class="title-bdr">
                                        <div class="left-bdr"></div>
                                        <div class="right-bdr"></div>
                                    </div>
                                    <p>Dễ dàng khởi tạo tài khoản và được phát hành thẻ.</p>

                                </div>
                            </div>
                            <!-- /col -->
                        </div>
                        <!-- /row -->

                        <div class="about-inner-content">
{{--                            <div class="icon">--}}
{{--                                <i class="las la-check"></i>--}}
{{--                            </div>--}}
                            {!! $aboutService->description !!}
                        </div>

                        <div class="about-btn justify-content-center text-center">
                            <a href="{{$aboutService->link}}" class="btn theme-btn-1">
                                {{$aboutService->button_name}}
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

    <!-- FAQ -->
    <div class="faq-area pt-100 pb-100">
        <!-- Container -->
        <div class="container">
            <div class="row justify-content-center text-center">
                <!-- col -->
                <div class="col-lg-8 col-md-12 mb-50">
                    <div class="section-title">
                        <h2 class="title">Câu hỏi thường gặp</h2>
                        <div class="title-bdr">
                            <div class="left-bdr"></div>
                            <div class="right-bdr"></div>
                        </div>
                        <p>We operate our banking services in many countries around the world.</p>
                    </div>
                </div>
                <!-- /col -->
            </div>
            <div class="tab faq-accordion-tab">
                <ul class="tabs d-flex flex-wrap justify-content-center">
                    <li class="mb-4"><a href="#"><i class="ri-flag-line"></i> <span>Getting Started</span></a></li>

                    <li class="mb-4"><a href="#"><i class="uil uil-money-bill"></i> <span>Pricing & Planes</span></a></li>

                    <li class="mb-4"><a href="#"><i class="uil uil-shopping-bag"></i> <span>Sales Question</span></a></li>

                    <li class="mb-4"><a href="#"><i class="uil uil-book-open"></i> <span>Usage Guides</span></a></li>

                    <li class="mb-4"><a href="#"><i class="uil uil-info-circle"></i> <span>General Guide</span></a></li>
                </ul>

                <div class="tab-content">
                    <div class="tabs-item">
                        <div class="faq-accordion">
                            <ul class="accordion">
                                <li class="accordion-item">
                                    <a class="accordion-title active" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q1. What is an EMI?
                                    </a>

                                    <div class="accordion-content show">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q2. Does barisal perform audits or prepare tax returns?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q3. How do I know if I need to implement a new accounting system?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q4. Why should I use bsal instead of other professional services firms?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q5. How do I know what my equity structure might look like over time?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="tabs-item">
                        <div class="faq-accordion">
                            <ul class="accordion">
                                <li class="accordion-item">
                                    <a class="accordion-title active" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q1. What is an EMI?
                                    </a>

                                    <div class="accordion-content show">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q2. Does barisal perform audits or prepare tax returns?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q3. How do I know if I need to implement a new accounting system?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q4. Why should I use bsal instead of other professional services firms?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q5. How do I know what my equity structure might look like over time?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tabs-item">
                        <div class="faq-accordion">
                            <ul class="accordion">
                                <li class="accordion-item">
                                    <a class="accordion-title active" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q1. What is an EMI?
                                    </a>

                                    <div class="accordion-content show">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q2. Does barisal perform audits or prepare tax returns?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q3. How do I know if I need to implement a new accounting system?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q4. Why should I use bsal instead of other professional services firms?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q5. How do I know what my equity structure might look like over time?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tabs-item">
                        <div class="faq-accordion">
                            <ul class="accordion">
                                <li class="accordion-item">
                                    <a class="accordion-title active" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q1. What is an EMI?
                                    </a>

                                    <div class="accordion-content show">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q2. Does barisal perform audits or prepare tax returns?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q3. How do I know if I need to implement a new accounting system?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q4. Why should I use bsal instead of other professional services firms?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q5. How do I know what my equity structure might look like over time?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tabs-item">
                        <div class="faq-accordion">
                            <ul class="accordion">
                                <li class="accordion-item">
                                    <a class="accordion-title active" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q1. What is an EMI?
                                    </a>

                                    <div class="accordion-content show">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q2. Does barisal perform audits or prepare tax returns?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q3. How do I know if I need to implement a new accounting system?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q4. Why should I use bsal instead of other professional services firms?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>

                                <li class="accordion-item">
                                    <a class="accordion-title" href="javascript:void(0)">
                                        <i class='las la-angle-down'></i>
                                        Q5. How do I know what my equity structure might look like over time?
                                    </a>

                                    <div class="accordion-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1500s, when an unknown printer took a galley of type and scrambled it to
                                            make a type specimen book.</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Container -->
    </div>
    <!-- /FAQ -->
@stop
