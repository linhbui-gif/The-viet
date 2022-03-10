<!DOCTYPE html>
<html>
<head>
    @include("enduser.components.head")
</head>
<body>
<!-- PreLoader -->
{{--<div id="preloader">--}}
{{--    <div id="status">--}}
{{--        <div class="spinner"></div>--}}
{{--    </div>--}}
{{--</div>--}}
<!--Preloader-->
@include("enduser.components.header_desktop")
@yield('content')
<style>
    {!! $_config->custom_css !!}

</style>
<!-- Cta -->
<div class="modal fade" id="modalAutoShow" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal khi vào trang</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label for="recipient-name" class="col-form-label">Tên:</label>
                        <input type="text" name="name" class="form-control name" id="recipient-name">
                    </div>
                    <div class="mb-3">
                        <label for="recipient-name" class="col-form-label">Số điện thoại:</label>
                        <input type="text" name="phone" class="form-control phone" id="recipient-name">
                    </div>
                    <div class="mb-3">
                        <label for="recipient-name" class="col-form-label">Email:</label>
                        <input type="text" name="email" class="form-control email" id="recipient-name">
                    </div>
                    <div class="mb-3">
                        <label for="message-text" class="col-form-label">Message:</label>
                        <textarea name="content" class="form-control content" id="message-text"></textarea>
                    </div>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary btn-popupShow">Send message
{{--                        <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>--}}
{{--                        <span class="sr-only">Loading...</span>--}}
                    </button>
                </form>
                <div class="success">

                </div>
{{--                <p class="alert-success p-10 mt-5">Lưu thông tin thành công</p>--}}
            </div>

        </div>
    </div>
</div>

<div class="cta-area">
    <!-- Container -->
    <div class="container">
        <!-- row -->
        <div class="row align-items-center">
            <!-- col -->
            <div class="col-lg-12">
                <div class="get-start-box">
                    <!-- col -->
                    <div class="col-lg-8">
                        <div class="section-heading">
                            <h5 class="section__meta text-white">#get in touch</h5>
                            <h2 class="section__title">Ready to get started ?</h2>
                            <p class="section__sub">Speak to a specialist at (800-123-1234)</p>
                        </div>
                    </div>
                    <!-- /col -->
                    <!-- col -->
                    <div class="col-lg-4">
                        <div class="button-shared text-end">
                            <a href="contact.html" class="btn cta-btn">
                                Contact Us <span class="la la-caret-right"></span>
                            </a>
                        </div>
                    </div>
                    <!-- /col -->
                </div>
            </div>
            <!-- /col -->
        </div>
        <!-- /row -->
    </div>
    <!-- /Container -->
</div>
<!-- /Cta -->
@include("enduser.components.footer")
<!-- Go top -->
<div class="go-top-area">
    <div class="go-top-wrap">
        <div class="go-top-btn-wrap">
            <div class="go-top go-top-btn">
                <i class="las la-angle-double-up"></i>
                <i class="las la-angle-double-up"></i>
            </div>
        </div>
    </div>
</div>
<!-- /Go top -->
@include("enduser.components.script_footer")
</body>

</html>
