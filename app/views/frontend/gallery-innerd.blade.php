<!doctype html>
<html class="no-js" lang="">
  <head>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gallery</title>
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
                        <!--<img src="images/main-logo.png" class="img-responsive center-block main-logo-35 hidden-md" />-->
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
      <div class="container-fluid vertical-center">
          <div class="row">

              <div class="col-xs-12 give-green-shade cht-push-left">
                  <h1 class="left-title mark-yellow">Gallery</h1>

                  <?php
                    $categoryData = [];
                    if($showForCategory){
                      $categoryData = $getCategoryData;
                    }else{

                    }
                  ?>

                  <ul class="list-unstyled chy-side-nav assign-scroll" style="text-align:left; height:70% !important; overflow:hidden; position: relative; padding-top:10px;">

                    <?php
                      $getAllCategory = Category::orderBy('position')->get();

                      foreach ($getAllCategory as $category) {
                        $link = '';

                        if($category->parent != 1){
                        }else{

                          if($category->name !== 'None...'){
                            $link = '/gallery/show/'.$category->name.'/'.$category->id;
                            $getSubCategorys = Category::where('parent','=',$category->id)->orderBy('position')->get();
                            $subcatshtml  = '';
                            foreach ($getSubCategorys as $subcats) {
                              $subLink = '/gallery/show/'.$category->name.'/'.$subcats->name.'/'.$subcats->id;
                              $subcatshtml = $subcatshtml.'<li>
                                  <a href="'.$subLink.'" style="color:#fff; padding-bottom:10px;" class="galhover">&#62; '.$subcats->name.'</a>
                                  </li>';
                            }

                            if($subcatshtml){
                              echo '<li>
                                  <a href="'.$link.'" style="color:#fff; padding-bottom:10px;" class="galhover">'.$category->name.' </a>
                                  <ul class="list-unstyled" style="text-align:left;">'.$subcatshtml.'</ul>
                                  </li>';
                            }else{
                              echo '<li>
                                  <a href="'.$link.'" style="color:#fff; padding-bottom:10px;" class="galhover">'.$category->name.'</a>
                                  </li>';
                            }

                          }

                        }

                      }
                    ?>
              </ul>

              </div>



              <!-- -->

              <div class="col-xs-12 give-green-shade cht-push-right">

                  <!-------->
                  <div class="col-lg-12 chy-left-text ">
                    <?php
                      if(!$showForCategory){
                        $allCatImages = '';
                        $getAllCategory = Category::get();

                        foreach ($getAllCategory as $cats) {
                          if($cats->name != 'None...'){

                              $categoryData = Gallery::where('category','=',$cats->id)->orderBy('position')->first();
                              if($categoryData){
                                $link = '/gallery/show/'.$cats->name.'/'.$cats->id;
                                $allCatImages = $allCatImages.'
                                <div class="col-md-4 portfolio-item galleryitem bw">
                                    <a href="'.$link.'">
                                        <img class="img-responsive" src="/'.$categoryData->imageurl.'" alt="">
                                    </a>
                                    <p>'.$cats->name.'</p>
                                </div>';
                              }else{
                                  $getSubCategorys = Category::where('parent','=',$cats->id)->orderBy('position')->first();

                                  if($getSubCategorys){
                                    $subcatshtml  = '';
                                    $subLink = '/gallery/show/'.$category->name.'/'.$subcats->name.'/'.$subcats->id;
                                    $allCatImages = $allCatImages.'
                                      <div class="col-md-4 portfolio-item galleryitem bw">
                                          <a href="'.$subLink.'">
                                              <img class="img-responsive" src="/'.$subcats->imageurl.'" alt="">
                                          </a>
                                          <p>'.$cats->name.'</p>
                                      </div>';
                                  }

                              }




                          }
                        }

                    ?>
                  <div class="col-lg-12 chy-left-text  chy-onek-text assign-scroll">
                        <div style="margin-left:10px;margin-right:15px;;margin-top:0%;">
                            <!-- Projects Row -->
                            <div class="row">

                                {{$allCatImages}}

                                <!-- /.row -->
                            </div>
                        </div>
                    </div>

                    <?php
                      }
                    ?>

                    <?php
                      if($showForCategory){
                    ?>
                    <div style="margin-left:10px;margin-right:10px;;margin-top:2%;">


                        <!-- Projects Row -->
                        <div class="row">



                          @foreach ($categoryData as $img)

                                    <a href="/{{$img->imageurl}}" data-lightbox="multiimages" data-title="{{$img->name}}" class="col-md-2 portfolio-item galleryitem bw">
                                        <img class="img-responsive" src="/{{$img->imageurl}}" alt="{{$img->name}}" class="img-responsive">
                                    </a>
                                    <!--<p>Lorem Ipsum</p>-->

                          @endforeach






                        <!-- /.row -->
                        </div>



                    </div>

                    <?php
                      }
                    ?>


                </div>
                  <!-------->
                  <div style="visibility:hidden;">
Chaity Group is a vertically integrated manufacturer and exporter of garments for men, women and Meaning, this group has consolidated all stages of production starting from knitting, dyeing, finishing to cutting, sewing and packing under one roof. Here in Chaity Group we have been able to creat a dynamic and vibrant working environment with people having national and international exposure. At “chaity” our sole aim has always been to satisfy the diverse and specialized requirements of our buyers. Wining the trust and confidence of our clients through proper care and attention has always been our first priority. We pursue an integrated and sustainable development strategy to achieve a long lasting and sustainable market in garments manufacturing industry.

                          </div>


              </div>

              <!-- -->

          </div>
      </div>
      <!-- Main Content End-->



      <!-- Footer starts -->
      <footer class="footer not-fixed-this-time">

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
