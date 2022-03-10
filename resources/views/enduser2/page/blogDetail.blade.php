@extends("enduser.layout")

@section('content')
    <section class="hero-yachts">
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="hero-text">
                            <h5>Chi tiết tin tức</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--blog body area start-->
    <div class="blog_details_bg mt-5">
        <div class="container">
            <div class="blog_details">
                <div class="blog_wrapper_details">
                    <div class="row">
                        <div class="col-12">

                            <div class="blog_details_content">
                                <img width="100%" src="{{$new->url_picture}}" alt="">
                                <div class="blog_details_desc">
                                    {!! $new->content !!}
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--blog section area end-->
@stop
