@extends("enduser.layout")
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
        $servicePage = \App\Banner::where('type',0)->where('status','active')->where('location','banner_dv_page')->orderBy('id','desc')->get();
    @endphp
    <!-- Hero image starts here -->
    <section class="hero-yachts">
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="hero-text">
                            <h5>{{@$page_content['services_page']['name']}}</h5>
                            <p>{{@$page_content['services_page']['description']}}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero image ends here -->
    <!-- Yachts Section Starts here -->
    <section class="mb-5">
        <!-- Single Yacht -->
        @foreach($servicePage as $k => $v)
        <div class="container-fluid {{$k % 2 != 0 ? "yacht-slide" : "yacht-slide-bg-none"}} ">
            <div class="row">

                <div class="col-xl-8 col-lg-5 col-md-12 {{$k % 2 != 0 ? "order-lg-2 order-md-1" : ""}} yacht-img p-0">
                    <img class="img-fluid" src="{{$v->picture}}" alt="">
                </div>

                <div class="col-xl-4 col-lg-7 col-md-12 p-0">
                    <div class="yacht-info">
                        <h3>{{$v->name}}</h3>
                        <p>{!! $v->description !!}</p>

{{--                        <a class="prim-link" href="#">More Info</a>--}}

                    </div>
                </div>

            </div>
        </div>
@endforeach

    </section>
    <!-- Yachts Section ends here -->
@stop
