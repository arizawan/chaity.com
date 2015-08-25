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
        <link rel="stylesheet" href="/mobile/frontend/css/ekko-lightbox.min.css">
        <link rel="stylesheet" href="/mobile/frontend/css/main.css">
        <script src="/mobile/frontend/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

    </head>
    <body class="setBackSlider">
      <!--[if lt IE 8]>
          <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
      <![endif]-->

      <!-- container -->
      <div class="container-fluid no-padding-side">
          <!-- Header -->
          <div class="row">
            <div class="col-xs-12" id="ejs-navigation">
                <!-- All Main Navigation Will propagate here -->
            </div>
          </div>
          <!-- /Header -->

          <!-- Middle Container -->
          <div class="row">
              <!-- Left Column -->
              <div class="col-xs-12 col-md-3">
                  <div class="ch-left-column pull-to-top">
                      <h1 class="mark-yellow">News</h1>
                      <ul class="list-unstyled chy-side-nav">



                          <?php
                              $getallNews = HomeContents::where("type","=","latestNews")->get();

                              foreach ($getallNews as $news) {
                                  $activelink = '';
                                  if($news->id == $data[0]->id){
                                    $activelink = 'active';
                                  }
                                  echo '<li>
                                          <a href="/mobile/news/show/'.$news->id.'" class="ch-top-links '.$activelink.'" style="color:#fff; padding-bottom:6px;padding-left:10px;padding-right:10px;">'.$news->title.'</a>
                                        </li>';
                              }
                            ?>

                      </ul>
                  </div>
              </div>
              <!-- /Left Column -->

              <!-- Right Column -->
              <div class="col-xs-12 col-md-8">
                  <div class="ch-right-column push-the-bottom">

                      <div class="row">
                        <div class="col-xs-12 col-md-12">
                          <span class="mark-yellow" style="width:100%; float:left; font-size:16px; padding-bottom:10px;">{{$data[0]->title}}</span><br><br>
                          <?php
                          if($data[0]->image){
                            echo '<img src="/'.$data[0]->image.'" class="img-responsive" style="border:1px solid #fff;margin-bottom:10px;">';
                          }
                        ?>
                        <p>{{$data[0]->desc}}</p>

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
                            <a href="/{{$value->name}}" data-toggle="lightbox" data-gallery="multiimages" class="col-md-3 col-lg-3 bw">
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
                      </div>



                  </div>
              </div>
              <!-- /Right Column -->
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
      <script src="/mobile/frontend/js/ekko-lightbox.min.js"></script>
      <script src="/mobile/frontend/js/plugins.js"></script>
      <script src="/mobile/frontend/js/main.js"></script>

    </body>
</html>
