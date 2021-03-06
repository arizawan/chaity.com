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
                      <?php
                        $categoryData = [];
                        if($showForCategory){
                          $categoryData = $getCategoryData;
                        }else{

                        }
                      ?>
                      <h1 class="mark-yellow">Gallery</h1>
                      <ul class="list-unstyled chy-side-nav">
                          <?php
                            $getAllCategory = Category::orderBy('position')->get();

                            foreach ($getAllCategory as $category) {
                              $link = '';

                              if($category->parent != 1){
                              }else{

                                if($category->name !== 'None...'){
                                  $link = '/mobile/gallery/show/'.$category->name.'/'.$category->id;
                                  $getSubCategorys = Category::where('parent','=',$category->id)->orderBy('position')->get();
                                  $subcatshtml  = '';
                                  foreach ($getSubCategorys as $subcats) {
                                    $subLink = '/mobile/gallery/show/'.$category->name.'/'.$subcats->name.'/'.$subcats->id;
                                    $subcatshtml = $subcatshtml.'<li>
                                        <a href="'.$subLink.'" class="ch-top-links">&#62; '.$subcats->name.'</a>
                                        </li>';
                                  }

                                  if($subcatshtml){
                                    echo '<li>
                                        <a href="'.$link.'" class="ch-top-links">'.$category->name.' </a>
                                        <ul class="list-unstyled" style="text-align:left;">'.$subcatshtml.'</ul>
                                        </li>';
                                  }else{
                                    echo '<li>
                                        <a href="'.$link.'" class="ch-top-links">'.$category->name.'</a>
                                        </li>';
                                  }

                                }

                              }

                            }
                          ?>

                      </ul>
                  </div>
              </div>
              <!-- /Left Column -->

              <!-- Right Column -->
              <div class="col-xs-12 col-md-8">
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
                                        <img class="img-responsive strock-img" src="/'.$categoryData->imageurl.'" alt="">
                                    </a>
                                    <p>'.$cats->name.'</p>
                                </div>';
                              }else{
                                  $getSubCategorys = Category::where('parent','=',$cats->id)->orderBy('position')->first();

                                  if($getSubCategorys){
                                    $subcatshtml  = '';
                                    $subLink = '/mobile/gallery/show/'.$category->name.'/'.$subcats->name.'/'.$subcats->id;
                                    $allCatImages = $allCatImages.'
                                      <div class="col-md-4 portfolio-item galleryitem bw">
                                          <a href="'.$subLink.'">
                                              <img class="img-responsive strock-img" src="/'.$subcats->imageurl.'" alt="">
                                          </a>
                                          <p>'.$cats->name.'</p>
                                      </div>';
                                  }

                              }




                          }
                        }

                    ?>

                    <div class="ch-right-column push-the-bottom">
                      <div class="row">
                        <div class="col-md-12 portfolio-item">
                            <div class="row padding-15">

                                {{$allCatImages}}

                                <!-- /.row -->
                            <!-- /.row -->
                              </div>


                            </div>
                        </div>
                    </div>

                    <?php
                      }
                    ?>



              <?php
                      if($showForCategory){
                    ?>
                  <div class="ch-right-column push-the-bottom">
                      <div class="row">
                        <div class="col-md-12 portfolio-item">
                            <div class="row padding-15">


                                @foreach ($categoryData as $img)

                                    <a href="/{{$img->imageurl}}" data-toggle="lightbox" data-title="{{$img->name}}" data-gallery="multiimages" class="col-md-2 portfolio-item galleryitem bw">
                                        <img class="img-responsive strock-img" src="/{{$img->imageurl}}" alt="{{$img->name}}" class="img-responsive">
                                    </a>
                                    <!--<p>Lorem Ipsum</p>-->

                                @endforeach


                            </div>
                        </div>
                    </div>
                  </div>
                  <?php
                      }
                    ?>
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
