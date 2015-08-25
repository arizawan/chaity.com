<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="/mobile/frontend/css/bootstrap.min.css">
        <link rel="stylesheet" href="/mobile/frontend/js/vendor/vegas/vegas.min.css">
        <link rel="stylesheet" href="/mobile/frontend/js/vendor/jquery.bxslider/jquery.bxslider.css">
        <link rel="stylesheet" href="/mobile/frontend/css/main.css">
        <script src="/mobile/frontend/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

    </head>
    <body class="solidBodyColor-1">
      <!--[if lt IE 8]>
          <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
      <![endif]-->

      <!-- container -->
      <div class="container-fluid">
          <!-- Header -->
          <div class="row">
            <div class="col-xs-12" id="ejs-navigation">
                <!-- All Main Navigation Will propagate here -->
            </div>
          </div>
          <!-- /Header -->

          <!-- Home Slider Container -->
          <div class="row">
            <div class="setBackSlider" id="bodySlider">
                <!-- Home Left Slider controller -->
                <div class="">
                    <div class="home-slam-left">
                        <div class="row">
                            <div class="text-center">
                                <h1 id="sliderText" ></h1>
                                <div class="btn-group slider-controler-btngrp" role="group" >
                                  <a href="#" class="btn btn-sm back-prev btn-circle"><span class="glyphicon glyphicon-chevron-left mark-yellow"></span></a>
                                  <a href="#" class="btn  btn-sm back-pause btn-circle"><span class="glyphicon glyphicon-pause mark-yellow"></span> </a>
                                  <a href="#" class="btn btn-sm back-play btn-circle"><span class="glyphicon glyphicon-play mark-yellow"></span> </a>
                                  <a href="#" class="btn btn-sm back-next btn-circle"><span class="glyphicon glyphicon-chevron-right mark-yellow"></span> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Home Left Slider controller -->
            </div>
          </div>
          <!-- /End -->

          <!-- Middle Container -->
          <div class="row">

            <div class="col-xs-12 col-md-12">
                <div class="home-slam-right">
                    <div class="row homeSliderBack">

                        <div class="col-xs-12 col-md-12 ">
                          <iframe style="width:100%; height:200px;" src="http://www.youtube.com/embed/4A5x07mrqe8" frameborder="0" allowfullscreen></iframe>
                        </div>

                        <!-- Garment Products -->
                        <div class="col-xs-12 col-md-12 smalltop">

                          {{$garmentsProducts}}

                        </div>
                        <!-- /Garments Products -->

                        <!-- Under Garment Products -->
                        <div class="col-xs-12 col-md-12 smalltop">
                            {{$undergarmentsProducts}}
                        </div>
                        <!-- /Under Garments Products -->

                        <!-- Latest News -->
                        <div class="col-xs-12 col-md-12 smalltop">

                            {{$latestnews}}

                        </div>
                        <!-- /Latest News -->

                        <!-- Clients -->
                        <div class="col-xs-12 col-md-12 smalltop">

                            {{$majorbuyers}}

                        </div>
                        <!-- /Clients -->
                    </div>
                </div>
            </div>
          </div>
          <!-- /Middle Container -->


      </div>
      <!-- /container -->

      <!-- Footer starts -->
      <div class="container-fluid">
          <div class="row">
            <div class="col-xs-12">
              <footer class="footer" id="ejs-footer">
                <!-- All Footer Contetn Will be propagate here -->
              </footer>
            </div>
          </div>
      </div>
          <!-- Footer ends -->

      <script>
        var slides = {{$homeSlides}};
      </script>

      <script src="/mobile/frontend/js/vendor/jquery-1.11.2.min.js"></script>
      <script src="/mobile/frontend/js/vendor/bootstrap.min.js"></script>
      <script src="/mobile/frontend/js/vendor/flowtype.js"></script>
      <script src="/mobile/frontend/js/vendor/vegas/vegas.min.js"></script>
      <script src="/mobile/frontend/js/vendor/ejs/ejs_production.js"></script>
      <script src="/mobile/frontend/js/vendor/jquery.bxslider/jquery.bxslider.min.js"></script>
      <script src="/mobile/frontend/js/plugins.js"></script>
      <script src="/mobile/frontend/js/main.js"></script>

    </body>
</html>
