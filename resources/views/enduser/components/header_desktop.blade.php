<!-- Header -->
@php
    $main_menu = Menu::get(1);//lay menu tieng viet trong bang menu item
@endphp
<div class="navbar-area">
    <div class="acavo-responsive-nav">
        <!-- Container -->
        <div class="container">
            <div class="acavo-responsive-menu">
                <div class="logo">
                    <a href="/">
                        <img src="{{ $_config->url_picture}}" alt="logo">
                    </a>
                </div>
            </div>
        </div>
        <!-- /Container -->
    </div>
    <div class="acavo-nav">
        <!-- Container -->
        <div class="container-fluid">
            <nav class="navbar navbar-expand-md navbar-light">
                <a class="navbar-brand" href="/">
                    <img src="{{ $_config->url_picture}}" alt="logo">
                </a>
                <div class="collapse navbar-collapse mean-menu">
                    <ul class="navbar-nav">
                        @if(!empty($main_menu))
                        @foreach($main_menu as $k => $menu)
                                <li class="nav-item"><a href="{{ $menu['link'] }}" class="nav-link">{{ $menu['label'] }}
                                        @if(!empty($menu['child'] ))
                                        <i class="las la-angle-down"></i>
                                        @endif
                                    </a>
                                    @if(!empty($menu['child'] ))
                                    <ul class="dropdown-menu">

                                            @foreach( $menu['child'] as $child )
                                        <li class="nav-item"><a href="{{ $child['link'] }}" class="nav-link">{{ $child['label'] }}</a></li>
                                            @endforeach

                                    </ul>
                                    @endif
                                </li>
                            @endforeach
                            @endif
                    </ul>
                    <div class="others-option d-flex align-items-center">
                        <div class="option-item">
                            <form class="search-box">
                                <input type="text" class="input-search" placeholder="Tra cứu thông tin...">
                                <button type="submit"><i class="uil uil-search-alt"></i></button>
                            </form>
                        </div>
                        <div class="option-item">
                            <a href="#" class="btn theme-btn-1">Đăng ký thẻ ngay <i
                                    class="las la-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <!-- /Container -->
    </div>
    <div class="others-option-for-responsive">
        <!-- Container -->
        <div class="container">
            <div class="dot-menu">
                <div class="inner">
                    <div class="circle circle-one"></div>
                    <div class="circle circle-two"></div>
                    <div class="circle circle-three"></div>
                </div>
            </div>
            <!-- Container -->
            <div class="container">
                <div class="option-inner">
                    <div class="others-option">
                        <div class="option-item">
                            <form class="search-box">
                                <input type="text" class="input-search" placeholder="Search for anything">
                                <button type="submit"><i class="flaticon-loupe"></i></button>
                            </form>
                        </div>

                        <div class="option-item">
                            <a href="#" class="btn theme-btn-1"><i class="las la-angle-right"></i>Get
                                Started</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Container -->
        </div>
        <!-- /Container -->
    </div>
</div>
<!-- /Header -->
