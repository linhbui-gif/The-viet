<!-- Nav Bar Starts here -->
<div class="site-mobile-menu site-navbar-target">
    <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
            <span class="iconfont-close fa fa-times js-menu-toggle"></span>
        </div>
    </div>
    <div class="site-mobile-menu-body"></div>
</div>

<header class="site-navbar js-sticky-header site-navbar-target">
    @php
        $locale = app()->getLocale();
        if($locale == "vi"){
            $main_menu = Menu::get(1);//lay menu tieng viet trong bang menu item
        }else{
            $main_menu = Menu::get(2); //lay menu tieng hàm trong bang menu item
        }
       //
    @endphp
    <div class="container">
        <div class="row align-items-center">
            <!-- Logo -->
            <div class="col-6 col-lg-2">
                <a href="/" class="company-logo">
                    <img src="{{ $_config->url_picture}}" alt="">
                </a>
            </div>
            <!-- Logo -->
            <div class="col-12 col-md-10 d-none d-lg-block">
                <nav class="site-navigation position-relative text-right">
                    <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                        @foreach($main_menu as $menu)
                            <li class="has-children"><a href="{{ $menu['link'] }}">{{ $menu['label'] }}</a>
                                @if( $menu['child'] )
                                    <ul class="dropdown">
                                        @foreach( $menu['child'] as $child )
                                            <li class=""><a href="{{ $child['link'] }}" title="">{{ $child['label'] }}</a></li>
                                        @endforeach
                                    </ul><!-- /.sub-menu -->
                            @endif
                            </li>
                        @endforeach
                            <li> <a href="{{ route('auth.changeLang', [ 'lang' => 'vi' ]) }}" class="smooth-scroll " style="padding:0;">
                                    <img src="{{asset('images/vi.png')}}" alt="">
                                </a></li>
                            <li> <a href="{{ route('auth.changeLang', [ 'lang' => 'ko' ]) }}" class="smooth-scroll"><img src="{{asset('images/en.png')}}" alt=""></a></li>
                    </ul>
                </nav>
            </div>


            <div class="col-6 d-inline-block d-lg-none ml-md-0 py-3" style="position: relative; top: 3px;">

                <a href="#" class="burger site-menu-toggle js-menu-toggle" data-toggle="collapse"
                   data-target="#main-navbar">
                    <span></span>
                </a>
            </div>

        </div>
    </div>

</header>
<!-- Nav Bar Ends here -->
