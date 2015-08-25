<?php

//  app/controllers/chaity/RainCHSlideController.php

use Carbon\Carbon;

class RainCHSlideController extends BaseController {

    public function __construct()
    {
        // Access token must be provided
        $this->beforeFilter('auth.token', array('only' => array('getMe', 'getUser')));

    }

    public function getIndex()
    {
        return Response::json(array('error' => 'You Shall not pass! LOL, actually GET is not supported here.'));
    }


    public function postAddhomeslide(){


        $data       =   Input::only('title', 'desc', 'slidefile','position', 'updatedby');
        $file       =   Input::file('slidefile');
        $name       =   $file->getClientOriginalName();
        $extension  =   $file->getClientOriginalExtension();
        $newfilename=   uniqid(md5(rand(0000, 9999).$name)).'.'.$extension;
        $image      =   Image::make($_FILES['slidefile']['tmp_name'])->resize(1920, 1200)->save('uploads/'.$newfilename,100);

        //dd($image);

        $vidObj   = new HomeSlides;
        $update    = $vidObj->add($data['title'],
                     $data['desc'],
                     'uploads/'.$newfilename,
                     $data['updatedby'],$data['position']);

        //dd($data);

        if($update){
            return Redirect::to('admin/homeslide/list');
            //return Response::json(array('status' => '1',$data));
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
