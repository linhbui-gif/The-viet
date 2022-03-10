<!DOCTYPE html>
<html>

<head>

    @include("enduser.components.head")
</head>

<body>
<div class="body_overlay"></div>

        @include("enduser.components.header_desktop")
        @yield('content')
{{--        @include('enduser.components.loaddingpage')--}}
        @include("enduser.components.footer")
    @include("enduser.components.script_footer")
<a id="button">
    <i class="fa fa-angle-up"></i>
</a>
<style>
    #button {
        align-items: center;
        display: flex;
        background-color: #00b0d6;
        width: 50px;
        height: 50px;
        justify-content: center;
        color: white;
        text-align: center;
        border-radius: 4px;
        position: fixed;
        /* vertical-align: middle; */
        bottom: 30px;
        right: 30px;
        transition: background-color .3s, opacity .5s, visibility .5s;
        opacity: 0;
        visibility: hidden;
        z-index: 1000;
    }
    #button:hover {
        cursor: pointer;
        background-color: #333;
    }
    #button:active {
        background-color: #555;
    }
    #button.show {
        opacity: 1;
        visibility: visible;
    }
</style>
<script >
    var btn = $('#button');

    $(window).scroll(function() {
        if ($(window).scrollTop() > 300) {
            btn.addClass('show');
        } else {
            btn.removeClass('show');
        }
    });

    btn.on('click', function(e) {
        e.preventDefault();
        $('html, body').animate({scrollTop:0}, '300');
    });


</script>
</body>

</html>
