<!doctype html>
<html class="no-js" lang="">
  <head>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>chaity</title>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="/frontend/styles/vendor.css">
    <link rel="stylesheet" href="/frontend/styles/main.css">
    <link rel="stylesheet" href="/frontend/styles/lightbox.css">
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
                            <a href="/">Home</a>
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
                          <a href="/frontend/gallery-page.html">
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
      <div class="container-fluid vertical-center">
          <div class="row">

              <div class="col-xs-12 give-green-shade cht-push-left">
                  <h1 class="left-title mark-yellow">Latest News</h1>
                  <ul class="list-unstyled chy-side-nav assign-scroll" style="text-align:left; height:70% !important; overflow:hidden; position: relative; padding-top:10px;">


                    <?php
                      $getallNews = HomeContents::where("type","=","latestNews")->get();

                      foreach ($getallNews as $news) {
                          $activelink = '';
                          if($news->id == $data[0]->id){
                            $activelink = 'active';
                          }
                          echo '<li><a href="/news/show/'.$news->id.'" style="color:#fff; padding-bottom:6px;clear:both; float:left;" class="galhover '.$activelink.'">&raquo; '.$news->title.'</a></li>';
                      }
                    ?>


                  </ul>
              </div>

              <div class="col-xs-12 give-green-shade cht-push-right">

                  <!-------->
                <div class="col-lg-12 chy-left-text chy-normal-text chy-onek-text assign-scroll">

                <div style="margin-left:0%;margin-top:2%;">


                      <span class="mark-yellow" style="width:100%; float:left; font-size:18px; padding-bottom:10px;">
                          {{$data[0]->title}}
                        </span>

                        <p>
                        <?php
                          if($data[0]->image){
                            echo '<img src="/'.$data[0]->image.'" class="img-responsive wrap-image-left" style="border:1px solid #fff;margin-right:10px;">';
                          }
                        ?>

                        <span>{{$data[0]->desc}}</span>

                        </p>

                        <?php
                          $getAllGalImgs  = newsGal::where('news_id','=',$data[0]->id)->get();
                          if($getAllGalImgs){
                        ?>

                        <div class="row">
                          <div class="col-md-12">
                            <?php
                              foreach ($getAllGalImgs as $value) {
                                //print_r($value->name);

                            ?>
                            <!-- Image Gal -->
                            <a href="/{{$value->name}}" data-lightbox="multiimageskintting1" class="col-md-3 col-lg-3 bw">
                                <img class="img-responsive strock-img" src="/{{$value->name}}" width="100%" style="margin-top:15px;">
                            </a>

                            <?php
                              }
                            ?>

                            <!-- Image Gal end-->
                          </div>
                        </div>

                        <?php
                          }
                        ?>

                        <div style="visibility:hidden;"><span class="mark-yellow">Chaity Group</span> is a vertically integrated manufacturer and exporter of garments for men, women and kids. Meaning, this group has consolidated all stages of production starting from knitting, dyeing, finishing to cutting, sewing and packing under one roof. Here in Chaity Group we have been able to creat a dynamic and vibrant working environment with people having national and international exposure. At “chaity” our sole aim has always been to satisfy the diverse and specialized requirements of our buyers. Wining the trust and confidence of our clients through proper care and attention has always been our first priority. We pursue an integrated and sustainable development strategy to achieve a long lasting and sustainable market in garments manufacturing industry.</div>



                    </div>

                </div>


                  <!-------->


              </div>

          </div>
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
                <span class="fotter-link-right col-xs-12 col-md-6">Developed By: <a href="http://ztechbd.com">Ztech Communication</span>
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
    var slides = [
        { src: '/frontend/images/inner_back_1.jpg' }
    ];
    </script>
<script src="/mobile/frontend/js/vendor/jquery-1.11.2.min.js"></script>
    <script src="/mobile/frontend/js/vendor/bootstrap.min.js"></script>
    <script src="/mobile/frontend/js/vendor/flowtype.js"></script>
    <script src="/mobile/frontend/js/vendor/vegas/vegas.min.js"></script>
    <script src="/mobile/frontend/js/vendor/ejs/ejs_production.js"></script>
    <script src="/mobile/frontend/js/vendor/jquery.bxslider/jquery.bxslider.min.js"></script>
    <script src="/frontend/scripts/lightbox.min.js"></script>
    <!--[if gt IE 8]>
      <script src="/mobile/frontend/js/perfect-scrollbar.jquery.min.js"></script>
    <![endif]-->
    <![if !IE]>
        <script src="/mobile/frontend/js/perfect-scrollbar.jquery.min.js"></script>
    <![endif]>
    <script src="/frontend/scripts/vendor.js"></script>
    <script src="/frontend/scripts/plugins.js"></script>
    <script src="/frontend/scripts/main.js"></script>
</body>
</html>
