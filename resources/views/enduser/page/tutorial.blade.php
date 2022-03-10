@extends("enduser.layout")

@section('content')

    @include('enduser.page.components.brebcrumb',['title' => "Hướng dẫn"])
    @php
        $blogs = \App\Introduce::where('status','active')->orderBy('order_no','asc')->get();

        $categories  = \App\Introduce_categories::where('status','active')->orderBy('id','desc')->get();
        $relatedpost =  \App\Introduce::where('status','active')->orderBy('order_no','desc')->limit(5)->get();
    @endphp
    <section class="blog-area pt-120 pb-100">
        <!-- Container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- col -->
                <div class="col-xl-8 col-lg-8">
                    <div class="blog-standard">
                        @if(!empty($blogs))
                            @foreach($blogs as $k => $blog)
                                @include('enduser.page.components.cardComponent',['data' => $blog,'isblog' => false] )
                            @endforeach
                        @endif
                    </div>
                </div>
                <!-- /col -->
                <!-- col -->
                <div class="col-lg-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                    <div class="sidebar component-wrapper mt-4 mt-sm-0 pt-2 pt-sm-0">
                        <!-- Search -->
                        <div class="widget mb-4">
                            <div id="search2" class="widget-search mb-0">
                                <form role="search" method="get" id="searchform" class="searchform">
                                    <div>
                                        <input type="text" class="border rounded" name="s" id="s"
                                               placeholder="Search Keywords...">
                                        <input type="submit" id="searchsubmit" value="Search">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- /Search -->

                        <!-- Catagories -->
                        <div class="widget mb-4">
                            <h4 class="widget-title">Danh mục</h4>
                            <div class="mt-4">
                                <ul class="list-unstyled mb-0 catagory">
                                    @if(!empty($categories))
                                        @foreach($categories as $k => $category)
                                            <li> <a href="{{route('blogListByCategory.category',['slug_category' => $category->slug])}}">{{$category->name}}</a> <span class="float-end">{{$category->posts()->count()}}</span></li>
                                        @endforeach
                                    @endif
                                </ul>
                            </div>
                        </div>
                        <!-- /Catagories -->

                        <!-- Recent Post -->
                        <div class="widget mb-4">
                            <h4 class="widget-title">Bài viết Nổi Bật</h4>
                            <div class="mt-4">

                                @if(!empty($relatedpost))
                                    @foreach($relatedpost as $k => $relatedpos)
                                        <div class="clearfix post-recent">
                                            <div class="post-recent-thumb float-start"> <a href="{{ route('introDetail',['slug'=>$relatedpos->slug])}}"> <img alt="img"
                                                                                                                                                                src="{{$relatedpos->url_picture}}" class="img-fluid rounded"></a></div>
                                            <div class="post-recent-content float-start"><a href="{{ route('introDetail',['slug'=>$relatedpos->slug])}}"> {{$relatedpos->name}}
                                                </a><span class="text-muted mt-2">{{date_format($relatedpos->updated_at,'d/m/Y')}}</span></div>
                                        </div>
                                    @endforeach
                                @endif
                            </div>
                        </div>
                        <!-- /Recent Post -->

                        <!-- TAG -->


                        <!-- Social -->
                        <div class="widget">
                            <h4 class="widget-title">Theo dõi chúng tôi</h4>
                            <div class="pt-4 mt-4">
                                <ul class="list-unstyled social-icon social mb-0">
                                    <li class="list-inline-item"><a href="#"><i class="ri-facebook-line"></i></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="ri-instagram-line"></i></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="ri-twitter-line"></i></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="ri-youtube-line"></i></a></li>
                                    <li class="list-inline-item"><a href="#">
                                            <i class="ri-google-line"></i>
                                        </a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- /Social -->
                    </div>
                </div>
                <!-- /col-->
            </div>
            <!-- /row -->
        </div>
        <!-- /Container -->
    </section>
@stop

