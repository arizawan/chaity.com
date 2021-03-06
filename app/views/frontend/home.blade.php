<!doctype html>
<html class="no-js" lang="">
  <head>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Chaity Group</title>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="/frontend/styles/vendor.css">
    <link rel="stylesheet" href="/frontend/styles/main.css">

    <!--<script src="/frontend/scripts/vendor/modernizr.js"></script>-->

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
      <link rel="stylesheet" href="styles/ie8.css">
    <![endif]-->


  <!--[if !(IE)]><!--> <script src="/frontend/scripts/queryloader2.min.js"></script> <!--<![endif]--> </head>
  <body>
    <!--[if lt IE 10]>
      <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->





    <div class="container-fluid override-paddings-0">
      <!-- Header start -->
      <div class="header">
        <!-- Main navigation Starts -->
        <!--///////////////////////////////////////////////////////////////////////////////////////////////-->
        <nav id="mainNavigation" class="navbar navbar-static-top navbar-default " role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand override-nav-brand-width" href="#">
                        <!--<p class="">Chaity Group</p>-->
                        <img src="/frontend/images/main-logo.png" class="main-logo hidden-xs hidden-sm visible-md-* visible-lg-*" />
                        <img src="/frontend/images/main-logo.png" class="main-logo-50 hidden-lg hidden-md visible-sm-* visible-xs-*" />
                        <!--<img src="/frontend/images/main-logo.png" class="img-responsive center-block main-logo-35 hidden-md" />-->
                    </a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="/" class="active">Home</a>
                        </li>
                        <li >
                          <a href="/frontend/about-us.html">
                            About Us
                          </a>
                        </li>
                        <li >
                          <a href="/frontend/company-overview.html">
                            Company Overview
                          </a>
                        </li>

                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Member Unit <span class="caret chaity-navbar-dropicon"></span>
                          </a>
                          <ul class="dropdown-menu" role="menu">
                            <li>
                              <a href="/frontend/textile-division.html">Textile Division</a>

                            </li>
                            <li >
                              <a href="/frontend/garments-page.html">Garments Division</a>

                            </li>
                            <li>
                              <a href="/frontend/accessories-page.html">Accessories Division</a>

                            </li>


                          </ul>
                        </li>
                        <li >
                          <a href="/frontend/our-products.html">
                            Our Product
                          </a>
                        </li>

                        <li >
                          <a href="/frontend/our-clients.html">
                            Our Client
                          </a>

                        </li>
                        <li >
                          <a href="/gallery/show/">
                            Gallery
                          </a>

                        </li>
                        <li >
                          <a href="/frontend/compliance-page.html">
                            Compliance
                          </a>

                        </li>
                        <li>
                            <a href="/frontend/contact-us.html">Contact Us</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--///////////////////////////////////////////////////////////////////////////////////////////////-->
      </div>
      <!-- header ends -->


      <!-- Main Content -->
      <div class="home-chyti-verticalslam">
          <!-- Home Page left content -->
          <div class="col-xs-12 col-md-4">
                <div class="home-slam-left">
                    <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <h1 id="sliderText" >Golf<br>Field</h1>
                            <div class="btn-group slider-controler-btngrp" role="group" >
                              <a href="#" class="btn btn-sm back-prev btn-circle"><span class="glyphicon glyphicon-chevron-left mark-yellow"></span></a>
                              <a href="#" class="btn  btn-sm back-pause btn-circle"><span class="glyphicon glyphicon-pause mark-yellow"></span> </a>
                              <a href="#" class="btn btn-sm back-play btn-circle"><span class="glyphicon glyphicon-play mark-yellow"></span> </a>
                              <a href="#" class="btn btn-sm back-next btn-circle"><span class="glyphicon glyphicon-chevron-right mark-yellow"></span> </a>
                            </div>
                        </div>
                        <!--<span class="home-slam-left-sepharetor">&nbsp;</span>-->
                        <!--<div class="col-xs-12 col-md-6">
                          <p id="sliderTextDesc">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
                        </div>-->


                    </div>
                </div>
          </div>
          <!-- Home Page left content End-->

          <!-- Home Page Right C`ontent -->
          <div class="col-xs-12 col-md-8">
              <!-- ---------------------------------------------------------------- -->

                <div class="home-slam-right">
                    <div class="">
                      <iframe style="width:100%; height:200px;" src="http://www.youtube.com/embed/4A5x07mrqe8" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <a  class="slam-right-btns garmentsSlider" href="#" tabindex="0" role="button"
                    data-content='{{$garmentsProducts}}'>
                        <img src="/frontend/images/left-arrow.png"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Garments Product
                    </a>
                    <a class="slam-right-btns underGarmentSlider" href="#"
                        data-content='{{$undergarmentsProducts}}'>
                        <img src="/frontend/images/left-arrow.png"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Under Garments product
                    </a>
                    <a class="slam-right-btns latestNews" href="#"
                        data-content='{{$latestnews}}'>
                        <img src="/frontend/images/left-arrow.png"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Latest News
                    </a>
                    <a class="slam-right-btns majorBuyers" href="#"
                        data-content='{{$majorbuyers}}'>
                        <img src="/frontend/images/left-arrow.png"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Major Buyers
                    </a>

                </div>

                <div class="slam-content-div">
                    <div class="slam-content">
                    </div>
                </div>

                <!-- ---------------------------------------------------------------- -->

          </div>
          <!-- Home Page Right Content End-->
      </div>
      <!-- Main Content End-->



      <!-- Footer starts -->
      <footer class="footer">

          <div class="chaity-fotter-sub-prime container-fluid">
              <div class="row">
                <!-- Contact Info -->
                <span class="fotter-link-left col-xs-12 col-md-6">
                  <div class="row">
                      <div class="col-xs-12 col-md-9 fixed-width-footer-contact">
                        <div class="fotter-link-contact center-block">
                          <img src="/frontend/images/icons/phone-ico-1.png" />&nbsp;88-02-8923670
                          &nbsp;&nbsp;|&nbsp;&nbsp;
                          <img src="/frontend/images/icons/mail-ico-1.png" />&nbsp;info@chaity.com
                          &nbsp;&nbsp;|&nbsp;&nbsp;
                          <a href="http://mail.chaity.com" class="webmail" target="_blank"><img src="/frontend/images/icons/webmail-ico-1.png" />&nbsp;Webmail</a>
                        </div>
                      </div>
                      <div class="col-xs-12 col-md-3">
                      <p class="footer-social-iconcontainer">
                          <a href="https://www.facebook.com/chaitygroup" target="_blank" class="footer-socail-icons"><img src="/frontend/images/icons/facebook-ico.png" /></a>
                          <a href="https://plus.google.com/102704732267957623750/posts" target="_blank" class="footer-socail-icons"><img src="/frontend/images/icons/gplus-ico.png" /></a>
                          <a href="https://twitter.com/chaitygroup" target="_blank" class="footer-socail-icons"><img src="/frontend/images/icons/twitter-ico.png" /></a>
                      </p>
                      </div>
                  </div>
                </span>
                <!-- Contact Info Ends-->
              </div>
          </div>

          <div class="chaity-fotter-sub container-fluid">
              <div class="row">
                <span class="fotter-link-left col-xs-12 col-md-6">2014-2015 @ all rights reserved</span>
                <span class="fotter-link-right col-xs-12 col-md-6">Developed By: <a href="http://ztechbd.com">Ztech Communication</a></span>
              </div>
          </div>


      </footer>
      <!-- Footer ends -->



    </div>

    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
    <script>
      (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
      function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
      e=o.createElement(i);r=o.getElementsByTagName(i)[0];
      e.src='//www.google-analytics.com/analytics.js';
      r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
      ga('create','UA-XXXXX-X');ga('send','pageview');
    </script>

    <script>
    var slides = {{$homeSlides}};
    </script>
<script src="/mobile/frontend/js/vendor/jquery-1.11.2.min.js"></script>
    <script src="/mobile/frontend/js/vendor/bootstrap.min.js"></script>
    <script src="/mobile/frontend/js/vendor/flowtype.js"></script>
    <script src="/mobile/frontend/js/vendor/vegas/vegas.min.js"></script>
    <script src="/mobile/frontend/js/vendor/ejs/ejs_production.js"></script>
    <script src="/mobile/frontend/js/vendor/jquery.bxslider/jquery.bxslider.min.js"></script>
    <script src="/mobile/frontend/js/ekko-lightbox.min.js"></script>
    <!--[if gt IE 8]>
      <script src="/mobile/frontend/js/perfect-scrollbar.jquery.min.js"></script>
    <![endif]-->
    <![if !IE]>
        <script src="/mobile/frontend/js/perfect-scrollbar.jquery.min.js"></script>
    <![endif]>
    <script src="/frontend/scripts/vendor.js"></script>
    <script src="/frontend/scripts/plugins.js"></script>
    <script src="/frontend/scripts/main.js"></script>

    <script>
$(document).ready(function () {
    $('.back-next').on('click', function () {
    $(backSlideElm).vegas('next');
});

$('.back-prev').on('click', function () {
    $(backSlideElm).vegas('previous');
});

$('.back-pause').on('click', function () {
    $(backSlideElm).vegas('pause');
    $(this).hide();
    $('.back-play').show();
});

$('.back-play').on('click', function () {
    $(backSlideElm).vegas('play');
    $(this).hide();
    $('.back-pause').show();

});



$( ".slam-right-btns.garmentsSlider" )
  .mouseenter(function() {
      var content     = ($(this).attr('data-content'));
      $('.slam-content').html(content).hide();
      $('.slam-content').attr('style', 'margin-left: 17% !important; width:250px  !important;  margin-top: -27px !important;');
      $('#garment-slider').bxSlider({
                            mode: 'fade',
                            responsive : false,
                            pager:false,
                            auto: true,
                            nextSelector: '.garment-slider.controls span.arrow-right',
                            prevSelector: '.garment-slider.controls span.arrow-left',
                            nextText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                            prevText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                            onSliderLoad: function(){
                              $('.slam-content').fadeIn();
                              shouldHide  = false;
                            },
      });
  })
.mouseleave(function() {
  shouldHide  = true;
});

$( ".slam-right-btns.underGarmentSlider" )
  .mouseenter(function() {
      var content     = ($(this).attr('data-content'));
    $('.slam-content').html(content).hide();
    $('.slam-content').attr('style', 'margin-left: 17% !important; width:250px !important; margin-top: -27px !important;');
    $('#undergarment-slider').bxSlider({
                          mode: 'fade',
                          responsive : false,
                          pager:false,
                          auto: true,
                          nextSelector: '.garment-slider.controls.undergarment span.arrow-right',
                          prevSelector: '.garment-slider.controls.undergarment span.arrow-left',
                          nextText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                          prevText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                          onSliderLoad: function(){
                            $('.slam-content').fadeIn();
                            shouldHide  = false;
                          },
    });
  })
.mouseleave(function() {
  shouldHide  = true;
});

$( ".slam-right-btns.majorBuyers" )
  .mouseenter(function() {
      var content     = ($(this).attr('data-content'));
    $('.slam-content').html(content).hide();
    $('.slam-content').attr('style', 'margin-left: 17% !important; width:250px !important; margin-top: -27px !important;');
    $('#majorbuyers-slider').bxSlider({
                          mode: 'fade',
                          responsive : false,
                          pager:false,
                          auto: true,
                          speed:100,
                          nextSelector: '.garment-slider.controls.majorbuyer span.arrow-right',
                          prevSelector: '.garment-slider.controls.majorbuyer span.arrow-left',
                          nextText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                          prevText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                          onSliderLoad: function(){
                            $('.slam-content').fadeIn();
                            shouldHide  = false;
                          },
    });
  })
.mouseleave(function() {
  shouldHide  = true;
});

$( ".slam-right-btns.latestNews" )
  .mouseenter(function() {
      var content     = ($(this).attr('data-content'));
    $('.slam-content').html(content).hide();
    $('.slam-content').attr('style', 'margin-left: 17% !important; width:220px !important; margin-top: -27px !important; ');
    $('#lateestnews-slider').bxSlider({
                          mode: 'vertical',
                          responsive : false,
                          pager:false,
                          auto: true,
                          slideWidth: 250,
                          minSlides: 2,
                          maxSlides: 2,
                          slideMargin: 10,
                          nextSelector: '.garment-slider.controls.latestNews span.arrow-right',
                          prevSelector: '.garment-slider.controls.latestNews span.arrow-left',
                          nextText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                          prevText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                          onSliderLoad: function(){
                            $('.slam-content').fadeIn();
                            shouldHide  = false;
                          },
    });
  })
.mouseleave(function() {
  shouldHide  = true;
});

$( ".slam-content" ).mouseenter(function() {
  shouldHide  = false;
});

$( ".slam-content" ).mouseleave(function() {
  $('.slam-content').fadeOut();
  shouldHide  = false;
});

$('#cirt-slider').bxSlider({
                    mode: 'fade',
                    responsive : false,
                    pager:false,
                    auto: false,
                    nextSelector: '.garment-slider.controls span.arrow-right',
                    prevSelector: '.garment-slider.controls span.arrow-left',
                    nextText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                    prevText: '<img src="/frontend/images/icons/right_arrow_1.png"/>'
});
});

    </script>
</body>
</html>
