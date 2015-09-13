<?php

/*
|--------------------------------------------------------------------------
| Back-end API Routes
|--------------------------------------------------------------------------
*/
use Carbon\Carbon;

\Debugbar::disable();

// Admin Panel | Auth
Route::group(array('before' => 'admin.login', 'prefix' => 'admin'), function()
{
    # Admin chk
    Route::get('/', function()
    {
        // Filter will take the decision
        $homeSlides     =   HomeSlides::get();
        return View::make('backend.homeSlidelist')
                    ->with('homeSlides', $homeSlides);
    });

});

# Admin Login
Route::get('admin/login', function()
{
    if ( ! Sentry::check())
    {
        return View::make('backend.login');
    }

});

# Admin Login Post
Route::post('admin/login', array('uses' => 'RainAuthController@postLogin'));

# Admin Logout
Route::get('admin/logout', function()
{
    Sentry::logout();
    return View::make('backend.login');
});

# Admin Password Reset
Route::get('admin/changepass', function()
{
    $user       =   Sentry::getUser();
    return View::make('backend.changepass')->with('user',$user)->with('alert','');
});
Route::post('admin/changepass', function()
{
    $oldpassword    =   $_POST['oldpass'];
    $newpassword    =   $_POST['newpass'];
    $cnewpassword   =   $_POST['cpass'];
    $user           =   Sentry::getUser();
    try
    {

        if($user->checkPassword($oldpassword))
        {

            if($newpassword == $cnewpassword){
                $user->password = $newpassword;
                $user->save();
                return View::make('backend.changepass')->with('user',$user)->with('alert','<div class="alert alert-success" role="alert">Password Changed successfully!</div>');
            }else{
                return View::make('backend.changepass')->with('user',$user)->with('alert','<div class="alert alert-danger" role="alert">New Password confirmation did not matched!</div>');
            }

        }
        else
        {
            echo 'Password does not match.';
            return View::make('backend.changepass')->with('user',$user)->with('alert','<div class="alert alert-danger" role="alert">Wrong password</div>');
        }
    }
    catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
    {
        return View::make('backend.changepass')->with('user',$user)->with('alert','<div class="alert alert-danger" role="alert">User Not Found</div>');
    }


});

# Admin Registration
Route::get('admin/regdo', function()
{
    $registerUser   =   new User;
    $registerUser->registerUser("Live", "Admin", "admin@chaity.com", "thunder32", "gods");
});

// Admin Panel | Schedule
Route::group(array('before' => 'admin.login', 'prefix' => 'admin/schedules'), function()
{

    # Admin Schedules
    Route::get('/', function()
    {
        $schedules = Schedule::get();
        return View::make('backend.schedules')
                    ->with('schedules', $schedules);
    });

    # Admin Add Schedules;
    Route::get('/add', function()
    {
        $user = Sentry::getUser();
        return View::make('backend.addschedules')
                    ->with('user',$user);
    });

    # Admin Status Change Schedules;
    Route::get('/status/{status}/{id}', function($status, $id)
    {
        $user       =   Sentry::getUser();
        $scObj      =   new Schedule;
        $update     =   $scObj->changeStatus( $id, $status, $user->id);
        $schedules  =   Schedule::get();
        return View::make('backend.schedules')
                    ->with('schedules', $schedules);
    });

    # Admin Delete Schedules;
    Route::get('/delete/{id}', function($id)
    {
        $scObj      =   Schedule::find($id);
        //dd($scObj);
        $delobj     =   $scObj->delete();
        if($delobj){
            echo 1;
        }else{
            echo 0;
        }
    });

    Route::post('/add', array('uses' => 'RainTvController@postNewshedule'));

    # Admin edit Schedules
    Route::get('/edit/{id}', function($id)
    {
        $user = Sentry::getUser();
        $schedules  =   Schedule::find($id);
        return View::make('backend.editschedules')
                    ->with('schedule', $schedules)
                    ->with('user',$user);
    });

    Route::post('/edit/{id}', array('uses' => 'RainTvController@postUpdateshedule'));

});

// Admin Panel | Videos
Route::group(array('before' => 'admin.login', 'prefix' => 'admin/videos'), function()
{

    # Admin Videos
    Route::get('/', function()
    {
        $videos  =   Videos::get();
        return View::make('backend.listvideos')->with('videos',$videos);
    });

    # Admin Videos by schedules
    Route::get('/schedule', function()
    {
        return View::make('backend.listvideosbyschedule');
    });

    # Admin Videos by schedules
    Route::post('/schedule', function()
    {
        $data       =   Input::only('schedule_id');
        $video      =   Videos::where('schedule_id','=',$data['schedule_id'])->get();
        return View::make('backend.listvideosbyscheduleshow')->with('videos', $video);
    });

    # Admin Add videos
    Route::get('/add', function()
    {
        $user = Sentry::getUser();
        return View::make('backend.addvideos')->with('user',$user);
    });

    Route::post('/add', array('uses' => 'RainTvController@postAddvideo'));

    # Admin Edit Videos
    Route::get('/edit/{id}', function($id)
    {
        $user   =   Sentry::getUser();
        $video  =   Videos::find($id);
        return View::make('backend.editvideo')->with('user',$user)->with('video', $video);
    });

    Route::post('/edit/{id}', array('uses' => 'RainTvController@postUpdatevideo'));

    # Admin Status Change Video;
    Route::get('/status/{status}/{id}', function($status, $id)
    {
        $user       =   Sentry::getUser();
        $scObj      =   new Videos;
        $update     =   $scObj->changeStatus( $id, $status, $user->id);
        $videos     =   Videos::get();
        return View::make('backend.listvideos')
                    ->with('videos', $videos);
    });

     # Admin Delete Video;
    Route::get('/delete/{id}', function($id)
    {
        $user       =   Sentry::getUser();
        $scObj      =   new Videos;
        $update     =   $scObj->deleteData( $id);
        $videos     =   Videos::get();
        return View::make('backend.listvideos')
                    ->with('videos', $videos);
    });

});

// Admin Panel | category
Route::group(array('before' => 'admin.login', 'prefix' => 'admin/category'), function()
{
    # Admin Add category
    Route::get('/add', function()
    {
        $user = Sentry::getUser();
        return View::make('backend.category')
                    ->with('edit',false)
                    ->with('user',$user);
    });

    # Admin Edit category
    Route::get('/edit/{id}', function($id)
    {
        $user = Sentry::getUser();
        $editVarsdata   =   Category::find($id);
        return View::make('backend.category')
                    ->with('edit',true)
                    ->with('editData',$editVarsdata)
                    ->with('user',$user);
    });

    Route::get('/delete/{id}', function($id)
    {
        $user = Sentry::getUser();

        $getDelData = Category::find($id);
        if($getDelData){
            $getDelData->delete();
        }

        return Redirect::to('/admin/category/add');
    });

    Route::post('/add', array('uses' => 'RainGalleryContent@postAddNewCategory'));
});

// Admin Panel | photogallery
Route::group(array('before' => 'admin.login', 'prefix' => 'admin/photogallery'), function()
{
    # Admin Add photo
    Route::get('/add', function()
    {
        $user = Sentry::getUser();
        return View::make('backend.photoadd')
                    ->with('edit',false)
                    ->with('editData',[])
                    ->with('user',$user);
    });

    Route::post('/add', array('uses' => 'RainGalleryContent@postAddNewImage'));

    # Admin List photo
    Route::get('/list', function()
    {
        $user = Sentry::getUser();
        $galleryImages = Gallery::get();
        return View::make('backend.photolist')
                    ->with('user',$user)
                    ->with('galleryimg',$galleryImages);
    });

    # Admin Edit category
    Route::get('/edit/{id}', function($id)
    {
        $user = Sentry::getUser();
        $editVarsdata   =   Gallery::find($id);
        return View::make('backend.photoadd')
                    ->with('edit',true)
                    ->with('editData',$editVarsdata)
                    ->with('user',$user);
    });

    Route::get('/delete/{id}', function($id)
    {
        $user = Sentry::getUser();
        $getDelData = Gallery::find($id);
        if($getDelData){
            $getDelData->delete();
        }

        return Redirect::to('/admin/photogallery/list');
    });
});

// Admin Panel | HomeSlides
Route::group(array('before' => 'admin.login', 'prefix' => 'admin/homeslide'), function()
{
    # Admin Add New Home Slides;
    Route::get('/add', function()
    {
        $user = Sentry::getUser();
        return View::make('backend.homeslides')
                    ->with('user',$user);
    });

    Route::post('/add', array('uses' => 'RainCHSlideController@postAddhomeslide'));

    # Admin Edit Videos
    Route::get('/edit/{id}', function($id)
    {
        $user   =   Sentry::getUser();
        $video  =   HomeSlides::find($id);
        return View::make('backend.edithomeslide')->with('user',$user)->with('homeSlides', $video);
    });

    Route::post('/edit/{id}', array('uses' => 'RainCHSlideController@postUpdateSlide'));

    # Admin Videos by schedules
    Route::get('/list', function()
    {
        $homeSlides     =   HomeSlides::get();
        return View::make('backend.homeSlidelist')
                    ->with('homeSlides', $homeSlides);
    });

    # Admin Status Change Video;
    Route::get('/status/{status}/{id}', function($status, $id)
    {
        $user       =   Sentry::getUser();
        $scObj      =   new HomeSlides;
        $update     =   $scObj->changeStatus( $id, $status, $user->id);
        $videos     =   HomeSlides::get();
        return View::make('backend.homeSlidelist')
                    ->with('homeSlides', $videos);
    });

     # Admin Delete Video;
    Route::get('/delete/{id}', function($id)
    {
        $user       =   Sentry::getUser();
        $scObj      =   new HomeSlides;
        $update     =   $scObj->deleteData( $id);
        $videos     =   HomeSlides::get();
        return View::make('backend.homeSlidelist')
                    ->with('homeSlides', $videos);
    });
});



// Admin Panel | Home Page things
Route::group(array('before' => 'admin.login', 'prefix' => 'admin/homepage'), function()
{

    // Garment Products ------------------------------------------------------------
    Route::get('/garments-products', function()
    {
        $user = Sentry::getUser();
        $homeSlides     =   HomeContents::where("type","=","garmentProduct")->get();
        return View::make('backend.garment-product')
                    ->with('user',$user)
                    ->with('homeSlides', $homeSlides);
    });

    // under Garment Products ------------------------------------------------------------
    Route::get('/under-garment-products', function()
    {
        $user = Sentry::getUser();
        $homeSlides     =   HomeContents::where("type","=","UndergarmentProduct")->get();
        return View::make('backend.under-garments')
                    ->with('user',$user)
                    ->with('homeSlides', $homeSlides);
    });

    // latest news ------------------------------------------------------------
    Route::get('/latest-news', function()
    {
        $user = Sentry::getUser();
        $homeSlides     =   HomeContents::where("type","=","latestNews")->get();
        return View::make('backend.latest-news')
                    ->with('user',$user)
                    ->with('homeSlides', $homeSlides);
    });

    // Major news ------------------------------------------------------------
    Route::get('/major-news', function()
    {
        $user = Sentry::getUser();
        $homeSlides     =   HomeContents::where("type","=","majorNews")->get();
        return View::make('backend.major-news')
                    ->with('user',$user)
                    ->with('homeSlides', $homeSlides);
    });

    Route::post('/garments-products', array('uses' => 'RainCHHomeContent@postAddhomeContent'));



    Route::get('/garments-products/delete/{id}', function($id)
    {
        //dd($id);
        $user       =   Sentry::getUser();
        $redirectTo =   'admin/homepage/garments-products';
        $homeSlides =   HomeContents::find($id);

        if($homeSlides->type == 'garmentProduct'){
            $redirectTo =   'admin/homepage/garments-products';
        }
        if($homeSlides->type == 'UndergarmentProduct'){
            $redirectTo =   'admin/homepage/under-garment-products';
        }
        if($homeSlides->type == 'latestNews'){
            $redirectTo =   'admin/homepage/latest-news';
        }
        if($homeSlides->type == 'majorNews'){
            $redirectTo =   'admin/homepage/major-news';
        }


        $scObj      =   new HomeContents;
        $update     =   $scObj->deleteData($id);

        return Redirect::to($redirectTo);

    });

    // ------------------------------------------------------------------------------

    # Admin Status Change Video;
    Route::get('/status/{status}/{id}', function($status, $id)
    {
        $user       =   Sentry::getUser();
        $scObj      =   new HomeSlides;
        $update     =   $scObj->changeStatus( $id, $status, $user->id);
        $videos     =   HomeSlides::get();
        return View::make('backend.homeSlidelist')
                    ->with('homeSlides', $videos);
    });

     # Admin Delete Video;
    Route::get('/delete/{id}', function($id)
    {
        $user       =   Sentry::getUser();
        $scObj      =   new HomeSlides;
        $update     =   $scObj->deleteData( $id);
        $videos     =   HomeSlides::get();
        return View::make('backend.homeSlidelist')
                    ->with('homeSlides', $videos);
    });
});
/*
|--------------------------------------------------------------------------
| Front-end  API Routes
|--------------------------------------------------------------------------
*/

# Authentication API
Route::controller('auth', 'RainAuthController');

# Send Mail;
Route::post('/sendcontact', function()
{
    $name = Input::get('name');
    $cname = Input::get('cname');
    $mobile = Input::get('mobile');
    $email = Input::get('email');
    $desc = Input::get('desc');
    $sendbtn = Input::get('sendbtn');

    $to      = 'info@chaity.com';
    $subject = 'Contact from website';
    $headers = 'From: support@chaity.com' . "\r\n" .
                'Reply-To: info@chaity.com' . "\r\n" .
                'X-Mailer: PHP/' . phpversion();

    $email_message = "Form details below.\n\n";

    $email_message .= "Name: ".($name)."\n";
    $email_message .= "Company Name: ".($cname)."\n";
    $email_message .= "Mobile: ".($mobile)."\n";
    $email_message .= "Email: ".($email)."\n";
    $email_message .= "Comments: ".($desc)."\n";

    $sendEmail  =   mail($to, $subject, $email_message, $headers);

    return View::make('frontend.contactus');
});

# Send Mail;
Route::post('/sendcontactmobile', function()
{
    $name = Input::get('name');
    $cname = Input::get('cname');
    $mobile = Input::get('mobile');
    $email = Input::get('email');
    $desc = Input::get('desc');
    $sendbtn = Input::get('sendbtn');

    $to      = 'info@chaity.com';
    $subject = 'Contact from website';
    $headers = 'From: support@chaity.com' . "\r\n" .
                'Reply-To: info@chaity.com' . "\r\n" .
                'X-Mailer: PHP/' . phpversion();

    $email_message = "Form details below.\n\n";

    $email_message .= "Name: ".($name)."\n";
    $email_message .= "Company Name: ".($cname)."\n";
    $email_message .= "Mobile: ".($mobile)."\n";
    $email_message .= "Email: ".($email)."\n";
    $email_message .= "Comments: ".($desc)."\n";

    $sendEmail  =   mail($to, $subject, $email_message, $headers);

    return View::make('frontend.contactusmobile');
});

Route::get('/news/show/{id}', function($id)
{
    $user       =   Sentry::getUser();
    $data     =   HomeContents::where("id","=",$id)->get();
    //dd($data);
    return View::make('frontend.news')
                ->with('data', $data);
});

Route::get('/mobile/news/show/{id}', function($id)
{
    $user       =   Sentry::getUser();
    $data     =   HomeContents::where("id","=",$id)->get();
    //dd($data);
    return View::make('frontend.mobilenews')
                ->with('data', $data);
});

Route::get('/gallery/show/{name}', function($name)
{
    $user       =   Sentry::getUser();
    $pathRead   =   public_path().'/frontend/images/gallery/'.$name.'/';
    $data       =   array();

    if ($handle = opendir($pathRead)) {
        while (false !== ($entry = readdir($handle))) {
            if(strpos($entry, '.') !== (int) 0) {
                array_push($data, '/frontend/images/gallery/'.$name.'/'.$entry);
            }
        }
        closedir($handle);
    }
    return View::make('frontend.gallery-innerd')
                ->with('showForCategory',false)
                ->with('data', $data);
});
Route::get('/gallery/show', function()
{
    $user       =   Sentry::getUser();
    return View::make('frontend.gallery-innerd')
                ->with('showForCategory',false)
                ->with('getCategoryData', []);
});
Route::get('/gallery/show/{name}/{id}', function($name, $id)
{
    $user       =   Sentry::getUser();
    $getCategoryData = Gallery::where('category','=',$id)->orderBy('position')->get();
    return View::make('frontend.gallery-innerd')
                ->with('showForCategory',true)
                ->with('getCategoryData', $getCategoryData);
});
Route::get('/gallery/show/{catname}/{name}/{id}', function($catname, $name, $id)
{
    $user       =   Sentry::getUser();
    $getCategoryData = Gallery::where('category','=',$id)->orderBy('position')->get();
    return View::make('frontend.gallery-innerd')
                ->with('showForCategory',true)
                ->with('getCategoryData', $getCategoryData);
});

Route::get('/mobile/gallery/show/', function()
{
    $user       =   Sentry::getUser();

    return View::make('frontend.gallery-mobile')
                ->with('showForCategory',false)
                ->with('getCategoryData', []);
});

Route::get('/mobile/gallery/show/{name}/{id}', function($name, $id)
{
    $user       =   Sentry::getUser();
    $getCategoryData = Gallery::where('category','=',$id)->orderBy('position')->get();
    return View::make('frontend.gallery-mobile')
                ->with('showForCategory',true)
                ->with('getCategoryData', $getCategoryData);
});

Route::get('/mobile/gallery/show/{catname}/{name}/{id}', function($catname, $name, $id)
{
    $user       =   Sentry::getUser();
    $getCategoryData = Gallery::where('category','=',$id)->orderBy('position')->get();
    return View::make('frontend.gallery-mobile')
                ->with('showForCategory',true)
                ->with('getCategoryData', $getCategoryData);
});

# Home Page Index
Route::get('/', function()
{
    // Get if mobile device
    //
    $useragent=$_SERVER['HTTP_USER_AGENT'];

    if(preg_match('/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i',$useragent)||preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i',substr($useragent,0,4))){

        // Redirect to mobile device
        return Redirect::to('/mobilesite');
    }

    if (preg_match('/(tablet|ipad|playbook)|(android(?!.*(mobi|opera mini)))/i', strtolower($_SERVER['HTTP_USER_AGENT']))) {
        // Redirect to mobile device
        return Redirect::to('/mobilesite');
    }


    $videoObj       =   new Videos;
    $HomeSlides     =   HomeSlides::where('active','=','1')->orderBy('position', 'ASC')->get();
    $slideListarray =   array();

    foreach ($HomeSlides as $slide) {
        array_push($slideListarray, array(
            "src"   =>  $slide->image,
            "title" =>  $slide->title,
            "desc" =>  $slide->desc
        ));
    }

    // Garment Products -----------------------------------------------------------------------------
    $homeSlides     =   HomeContents::where("type","=","garmentProduct")->get();
    $liData         =   '';
    foreach ($homeSlides as $value) {
        $liData     =   $liData.'
                        <li>
                            <div class="row">
                                <div class="col-lg-12"> <img src="'.$value->image.'" height="220" /> </div>
                            </div>
                        </li>';
    }
    $garmentsProducts = '<ul class="bxslider garment-slider" id="garment-slider">
                        '.$liData.'
                        </ul>
                        <div class="row">
                        <div class="col-lg-6">
                            <div class="garment-slider controls majorbuyer"> <span class="arrow-left"> </span> <span class="arrow-right"> </span> </div>
                        </div>
                        </div>';
    // Under Garment Products -----------------------------------------------------------------------------
    $homeSlides     =   HomeContents::where("type","=","UndergarmentProduct")->get();
    $liData         =   '';
    foreach ($homeSlides as $value) {
        $liData     =   $liData.'
                        <li>
                            <div class="row">
                                <div class="col-lg-12"> <img src="'.$value->image.'" height="220" /> </div>
                            </div>
                        </li>';
    }
    $undergarmentsProducts = '<ul class="bxslider garment-slider" id="undergarment-slider">
                        '.$liData.'
                    </ul>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="garment-slider controls majorbuyer undergarment"> <span class="arrow-left"> </span> <span class="arrow-right"> </span> </div>
                        </div>
                    </div>
';
// Latest News -----------------------------------------------------------------------------
    $homeSlides     =   HomeContents::where("type","=","latestNews")->get();
    $liData         =   '';
    foreach ($homeSlides as $value) {
        $liData     =   $liData.'
                        <li>
            <div class="row">
                <div class="col-lg-12">
                    <a href="news/show/'.$value->id.'" style="color:#000;">
                        <p style="height:90px; overflow:hidden; float:left;width:100%;">'.htmlspecialchars($value->title).'</p>
                    </a>
                </div>
            </div>
        </li>';
    }
    $latestnews = '<div style="width:250px;height:200px;overflow:hidden;">
    <ul class="bxslider garment-slider" id="lateestnews-slider">
    '.$liData.'
    </ul>
</div>
<div class="row">
    <div class="col-lg-6">
        <div class="garment-slider controls latestNews"> <span class="arrow-left"> </span> <span class="arrow-right"> </span> </div>
    </div>
</div>

';

// Major Buyers -----------------------------------------------------------------------------
    $homeSlides     =   HomeContents::where("type","=","majorNews")->get();
    $liData         =   '';
    foreach ($homeSlides as $value) {
        $liData     =   $liData.'
                        <li>
        <div class="row">
            <div class="col-lg-12"> <img src="'.$value->image.'" height="220" /> </div>
        </div>
    </li>';
    }
    $majorbuyers = '<ul class="bxslider garment-slider" id="majorbuyers-slider">
    '.$liData.'
</ul>
<div class="row">
    <div class="col-lg-6">
        <div class="garment-slider controls majorbuyer"> <span class="arrow-left"> </span> <span class="arrow-right"> </span> </div>
    </div>
</div>


';
    return View::make('frontend.home')
                ->with('homeSlides', json_encode($slideListarray))
                ->with('garmentsProducts', trim($garmentsProducts))
                ->with('undergarmentsProducts', trim($undergarmentsProducts))
                ->with('latestnews', trim($latestnews))
                ->with('majorbuyers', trim($majorbuyers))
                ;
});

# Home Page Index
Route::get('/mobilesite', function()
{
    $videoObj       =   new Videos;
    $HomeSlides     =   HomeSlides::where('active','=','1')->orderBy('position', 'ASC')->get();
    $slideListarray =   array();

    foreach ($HomeSlides as $slide) {
        array_push($slideListarray, array(
            "src"   =>  '/'.$slide->image,
            "title" =>  $slide->title,
            "desc" =>  $slide->desc
        ));
    }

    // Garment Products -----------------------------------------------------------------------------
    $homeSlides     =   HomeContents::where("type","=","garmentProduct")->get();
    $liData         =   '';
    foreach ($homeSlides as $value) {
        $liData     =   $liData.'
                        <li>
                            <div class="row">
                                <div class="col-lg-12"> <img src="'.$value->image.'" height="220" class="img-responsive center-block"/> </div>
                            </div>
                        </li>';
    }
    $garmentsProducts = '<span class="homesliderSmallname">Garments Products</span>
    <ul class="bxslider garment-slider" id="garment-slider">
                        '.$liData.'
                        </ul>
                        </div>
                        <div class="col-xs-12 col-md-12 homeSliderBack ctrl">

                            <div class="garment-slider controls majorbuyer garmentsctr">
                              <span class="arrow-left"> </span>
                              <span class="arrow-right"> </span>
                            </div>';
    // Under Garment Products -----------------------------------------------------------------------------
    $homeSlides     =   HomeContents::where("type","=","UndergarmentProduct")->get();
    $liData         =   '';
    foreach ($homeSlides as $value) {
        $liData     =   $liData.'
                        <li>
                            <div class="row">
                                <div class="col-lg-12"> <img src="'.$value->image.'" height="220" class="img-responsive center-block"/> </div>
                            </div>
                        </li>';
    }
    $undergarmentsProducts = '<span class="homesliderSmallname">Under Garments product</span><ul class="bxslider garment-slider" id="undergarment-slider">
                        '.$liData.'
                    </div>
                        <div class="col-xs-12 col-md-12 homeSliderBack ctrl">

                            <div class="garment-slider controls majorbuyer under-garmentsctr">
                              <span class="arrow-left"> </span>
                              <span class="arrow-right"> </span>
                            </div>
';
// Latest News -----------------------------------------------------------------------------
    $homeSlides     =   HomeContents::where("type","=","latestNews")->get();
    $liData         =   '';
    foreach ($homeSlides as $value) {
        $liData     =   $liData.'
                        <li>
            <div class="row">
                <div class="col-lg-12">
                    <a href="/mobile/news/show/'.$value->id.'" style="color:#000;">
                        <p style="height:auto; overflow:hidden; float:left;width:100%;">'.htmlspecialchars($value->title).'</p>
                    </a>
                </div>
            </div>
        </li>';
    }
    $latestnews = '<span class="homesliderSmallname">Latest News</span>
    <ul class="bxslider garment-slider" id="lateestnews-slider">
    '.$liData.'
    </div>
                        <div class="col-xs-12 col-md-12 homeSliderBack ctrl">

                            <div class="garment-slider controls majorbuyer latestNewsctr">
                              <span class="arrow-left"> </span>
                              <span class="arrow-right"> </span>
                            </div>

';

// Major Buyers -----------------------------------------------------------------------------
    $homeSlides     =   HomeContents::where("type","=","majorNews")->get();
    $liData         =   '';
    foreach ($homeSlides as $value) {
        $liData     =   $liData.'
                        <li>
        <div class="row">
            <div class="col-lg-12"> <img src="'.$value->image.'" height="220" class="img-responsive center-block"/> </div>
        </div>
    </li>';
    }
    $majorbuyers = '<span class="homesliderSmallname">Clients</span><ul class="bxslider garment-slider" id="majorbuyers-slider">
    '.$liData.'
</div>
                        <div class="col-xs-12 col-md-12 homeSliderBack ctrl">

                            <div class="garment-slider controls majorbuyer clientsctr">
                              <span class="arrow-left"> </span>
                              <span class="arrow-right"> </span>
                            </div>


';
    return View::make('frontend.homemobile')
                ->with('homeSlides', json_encode($slideListarray))
                ->with('garmentsProducts', trim($garmentsProducts))
                ->with('undergarmentsProducts', trim($undergarmentsProducts))
                ->with('latestnews', trim($latestnews))
                ->with('majorbuyers', trim($majorbuyers))
                ;
});