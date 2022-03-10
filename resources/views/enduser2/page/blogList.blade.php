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
         $blogs = \App\blog_posts::where('status','active')->orderBy('order_no','asc')->latest()->paginate(9);
    @endphp
    <!-- Hero image starts here -->
    <section class="hero-yachts">
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="hero-text">
                            <h5>{{@$page_content['tintuc']['name']}}</h5>
                            <p>{{@$page_content['tintuc']['description']}}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero image ends here -->
    <div class="blog_page_bg">
        <div class="container">
            <!--blog page section start-->
            <div class="blog_page_section mt-5">
                <div class="row ">

                            <div class="container activity-list">
                                <div class="row">
                                    @foreach($blogs as $blog)
                                        @if($blog)
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <a href="{{route('new.newDetail',['slug'=>$blog->slug])}}">
                                        <div class="card">
                                            <img src="{{ $blog->url_picture }}" class="card-img-top" alt="Sporting Activities">
                                            <div class="card-body d-md-block">
                                                <h5 style="
                                                    color: #000;
                                                    font-weight: 600;
                                                    display: -webkit-box;
                                                    height: 83px;
                                                    overflow: hidden;
                                                    -webkit-line-clamp: 3;
                                                    -webkit-box-orient: vertical;
                                                    word-break: break-word;
                                                   "><a href="{{route('new.newDetail',['slug'=>$blog->slug])}}"> {{$blog->name}}</a></h5>
                                                <p class="card-text" style="    color: #000;
    display: -webkit-box;
    overflow: hidden;
    -webkit-line-clamp: 4;
    -webkit-box-orient: vertical;
    word-break: break-word;">{{ $blog->description }}</p>
                                                <a href="{{route('new.newDetail',['slug'=>$blog->slug])}}">Continue <i class="ei ei-arrow_right"></i></a>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                        @endif
                                    @endforeach
                                </div>
                            </div>


                </div>
                <div class="pagination_style pagination blog_pagination justify-content-center">
                    {{$blogs->links()}}
                </div>
            </div>
            <!--blog page section end-->
        </div>
    </div>
@stop
