@extends("enduser.layout")

{{--@section('meta')--}}

{{--    @include("enduser.meta",[--}}
{{--    'title' => $_config->meta_title,--}}
{{--    'description' => $_config->meta_description,--}}
{{--    'link' => route('siteContact'),--}}
{{--    'img' => asset('images/config/' . $_config->picture)--}}
{{--    ])--}}

{{--@stop--}}
{{--@section('head')--}}
{{--    @php--}}
{{--        $locale = app()->getLocale();--}}

{{--        if($locale == "vi") {--}}
{{--            $page_content = unserialize($page->content);--}}
{{--        }--}}
{{--        else{--}}
{{--             $page_content = unserialize($page->content_ko);--}}
{{--        }--}}
{{--    @endphp--}}
{{--@stop--}}
@section('content')
    @include('enduser.page.components.brebcrumb',['title' => "Liên hệ"])
    <div class="contact-info-area pt-100 pb-70">
        <!-- Container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- col -->
                <div class="col-lg-4 col-md-6">
                    <div class="contact-info-box">
                        <div class="back-icon">
                            <i class="ri-map-2-line"></i>
                        </div>
                        <div class="icon">
                            <i class="ri-map-2-line"></i>
                        </div>
                        <h3>Địa chỉ</h3>
                        <p>175 5th Ave, New York, NY 10010, United States</p>
                    </div>
                </div>
                <!-- /col -->
                <!-- col -->
                <div class="col-lg-4 col-md-6">
                    <div class="contact-info-box">
                        <div class="back-icon">
                            <i class="ri-phone-line"></i>
                        </div>
                        <div class="icon">
                            <i class="ri-phone-line"></i>
                        </div>
                        <h3>Liên hệ</h3>
                        <p>Mobile: <a href="tel:+44457895789">(+44) - 45789 - 5789</a></p>
                        <p>E-mail: <a href="mailto:hello@aloa.com">hello@example.com</a></p>
                    </div>
                </div>
                <!-- /col -->
                <!-- col -->
                <div class="col-lg-4 col-md-6 offset-lg-0 offset-md-3">
                    <div class="contact-info-box">
                        <div class="back-icon">
                            <i class="ri-time-line"></i>
                        </div>
                        <div class="icon">
                            <i class="ri-time-line"></i>
                        </div>
                        <h3>Thời gian mở cửa</h3>
                        <p>Monday - Friday: 09:00 - 20:00</p>
                        <p>Sunday &amp; Saturday: 10:30 - 22:00</p>
                    </div>
                </div>
                <!-- /col -->
            </div>
            <!-- /row -->
        </div>
        <!-- /Container -->
    </div>
    <div class="contact-section">
        <!-- Container -->
        <div class="container">
            <!-- row -->
            <div class="row clearfix">
                <!-- col -->
                <div class="col-lg-6">
                    <div class="map-site ml-15">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14709.912151828446!2d89.5403187!3d22.82179695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1570748232408!5m2!1sen!2sbd" style="border:0;" allowfullscreen=""></iframe>
                    </div>
                </div>
                <!-- /col -->
                <!-- col -->
                <div class="col-lg-6 col-md-12 col-sm-12 form-column">
                    <div class="form-inner">
                        <h3>Liên hệ với chúng tôi</h3>
                        <form method="post" action="#" id="contact-form" class="default-form">
                            <div class="row clearfix">
                                <div class="col-lg-12 col-md-12 col-sm-12 form-group contact-icon contacts-name">
                                    <input type="text" name="username" placeholder="Your name *" required="">
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 form-group contact-icon contacts-email">
                                    <input type="email" name="email" placeholder="Your mail *" required="">
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 form-group contact-icon contacts-phone">
                                    <input type="text" name="phone" placeholder="Your Phone *" required="">
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 form-group  contact-icon contacts-subject">
                                    <input type="text" name="subject" placeholder="Subject *" required="">
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 form-group contact-icon contacts-message">
                                    <textarea name="message" placeholder="Message..."></textarea>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 form-group message-btn">
                                    <button class="btn theme-btn-1" type="submit" name="submit-form">Gửi ngay</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- col -->
            </div>
            <!-- /row -->
        </div>
        <!-- Container -->
    </div>
    @endsection

