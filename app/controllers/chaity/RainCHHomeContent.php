<?php

//  app/controllers/chaity/RainCHHomeContent.php

use Carbon\Carbon;

class RainCHHomeContent extends BaseController {

    public function __construct()
    {
        // Access token must be provided
        $this->beforeFilter('auth.token', array('only' => array('getMe', 'getUser')));

    }

    public function getIndex()
    {
        return Response::json(array('error' => 'You Shall not pass! LOL, actually GET is not supported here.'));
    }


    public function postAddhomeContent(){

        $data       =   Input::only('desc', 'slidefile','position', 'updatedby', 'contenttype', 'title');
        $file       =   Input::file('slidefile');
        if($file){
            $name       =   $file->getClientOriginalName();
        $extension  =   $file->getClientOriginalExtension();
        $newfilename=   uniqid(md5(rand(0000, 9999).$name)).'.'.$extension;
        }


        $vidObj   = new HomeContents;

        // Garments Product
        if($data['contenttype'] == 'garmentProduct'){
            $image     =   Image::make($_FILES['slidefile']['tmp_name'])->resize(345, 300)->save('uploads/'.$newfilename,100);
            $update    = $vidObj->add($data['contenttype'],
                                $data['desc'],
                                 'uploads/'.$newfilename,
                                 $data['updatedby'],
                                 $data['position'],
                                    '');
        }

        // Under garmentProduct Product
        if($data['contenttype'] == 'UndergarmentProduct'){
            $image     =   Image::make($_FILES['slidefile']['tmp_name'])->resize(345, 300)->save('uploads/'.$newfilename,100);
            $update    = $vidObj->add($data['contenttype'],
                                $data['desc'],
                                 'uploads/'.$newfilename,
                                 $data['updatedby'],
                                 $data['position'],
                                    '');
        }

        // Latest News
        if($data['contenttype'] == 'latestNews'){


            if($_FILES['slidefile']['tmp_name']){
                $image     =   Image::make($_FILES['slidefile']['tmp_name'])->resize(600, 250)->save('uploads/'.$newfilename,100);
                $imageurl      ='uploads/'.$newfilename;
            }else{
                $imageurl      =   '';
            }




            $update    = $vidObj->add($data['contenttype'],
                                $data['desc'],
                                 $imageurl,
                                 $data['updatedby'],
                                 $data['position'],
                                    $data['title']);
            //dd($update);

            $multimage  =   Input::file('filesToUpload');
            $imgcounter =   0;
            if($multimage){
                foreach ($multimage as $file) {
                    if($file){
                        $name       =   $file->getClientOriginalName();
                        $extension  =   $file->getClientOriginalExtension();
                        $newfilename=   uniqid(md5(rand(0000, 9999).$name)).'.'.$extension;
                        $image      =   Image::make($_FILES['filesToUpload']['tmp_name'][$imgcounter])->resize(700, 500)->save('uploads/'.$newfilename,100);

                        $newsGalobj =   new newsGal;
                        $newsGalobj->name='uploads/'.$newfilename;
                        $newsGalobj->position='1';
                        $newsGalobj->news_id=$update->id;
                        $newsGalobj->save();

                        //echo $newfilename.'<br>';
                        $imgcounter++;
                    }
                }
            }
        }

        // Major News
        if($data['contenttype'] == 'majorNews'){
            $image     =   Image::make($_FILES['slidefile']['tmp_name'])->resize(345, 300)->save('uploads/'.$newfilename,100);
            $update    = $vidObj->add($data['contenttype'],
                                "",
                                 'uploads/'.$newfilename,
                                 $data['updatedby'],
                                 $data['position'],
                                    '');
        }



        //dd($data);

        if($update){
            $redirectTo =   'admin/homepage/garments-products';

            if($data['contenttype'] == 'garmentProduct'){
                $redirectTo =   'admin/homepage/garments-products';
            }
            if($data['contenttype'] == 'UndergarmentProduct'){
                $redirectTo =   'admin/homepage/under-garment-products';
            }
            if($data['contenttype'] == 'latestNews'){
                $redirectTo =   'admin/homepage/latest-news';
            }
            if($data['contenttype'] == 'majorNews'){
                $redirectTo =   'admin/homepage/major-news';
            }

            return Redirect::to($redirectTo);
        }else{
            return Response::json(array('status' => '0',$data));
        }

    }

    public function postUpdateSlide(){

        $data       =   Input::only('title', 'desc', 'slidefile','position', 'updatedby','slideID');

        $file       =   Input::file('slidefile');

        if($file){
            $name       =   $file->getClientOriginalName();
            $extension  =   $file->getClientOriginalExtension();
            $newfilename=   uniqid(md5(rand(0000, 9999).$name)).'.'.$extension;
            $image      =   Image::make($_FILES['slidefile']['tmp_name'])->resize(1440, 900)->save('uploads/'.$newfilename);

            $vidObj   = new HomeSlides;
            $update   = $vidObj->updateData($data['title'],
                     $data['desc'],
                     'uploads/'.$newfilename,
                     $data['updatedby'],
                     $data['position'],
                     $data['slideID']);
        }else{
            $vidObj   = new HomeSlides;
            $update   = $vidObj->updateData($data['title'],
                     $data['desc'],
                     '',
                     $data['updatedby'],
                     $data['position'],
                     $data['slideID']);
        }





        if($update){
            return Redirect::to('admin/homeslide/list');
            //return Response::json(array('status' => '1',$data));
        }else{
            return Response::json(array('status' => '0',$data));
        }

    }

    public function postStatusvideo(){

        $data       =   Input::only('status','video_id');
        $vidObj   = new Videos;
        $vidObj->changeStatus($data['status'], $data['video_id']);

        if($update){
            return Response::json(array('status' => '1',$data));
        }else{
            return Response::json(array('status' => '0',$data));
        }

    }

    public function postPositionvideo(){

        $data       =   Input::only('position','video_id');
        $vidObj   = new Videos;
        $vidObj->changeStatus($data['position'], $data['video_id']);

        if($update){
            return Response::json(array('status' => '1',$data));
        }else{
            return Response::json(array('status' => '0',$data));
        }

    }

    public function postDeletevideo(){

        $data       =   Input::only('video_id');
        $vidObj   = new Videos;
        $vidObj->deleteData($data['video_id']);

        if($update){
            return Response::json(array('status' => '1',$data));
        }else{
            return Response::json(array('status' => '0',$data));
        }

    }


}
