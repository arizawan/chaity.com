<?php

//  app/controllers/chaity/RainGalleryContent.php

use Carbon\Carbon;

class RainGalleryContent extends BaseController {

    public function __construct()
    {
        // Access token must be provided
        $this->beforeFilter('auth.token', array('only' => array('getMe', 'getUser')));

    }

    public function getIndex()
    {
        return Response::json(array('error' => 'You Shall not pass! LOL, actually GET is not supported here.'));
    }

    public function postAddNewCategory(){
        $data       =   Input::only('id', 'name', 'parent', 'position', 'updatedby');

        if($data['id']){
            $category = Category::find($data['id']);
        }else{
            $category = new Category;
        }
        $category->name = $data['name'];
        $category->parent = $data['parent'];
        $category->position = $data['position'];
        $category->updatedby = $data['updatedby'];
        $category->save();

        return Redirect::to('/admin/category/add');

    }

    public function postAddNewImage(){
        $data       =   Input::only('id', 'name', 'category', 'position', 'updatedby', 'slidefile');

        if($data['id']){
            $gallery = Gallery::find($data['id']);
        }else{
            $gallery = new Gallery;
        }

        $gallery->name = $data['name'];
        $gallery->category = $data['category'];
        $gallery->position = $data['position'];
        $gallery->updatedby = $data['updatedby'];

        $file       =   Input::file('slidefile');
        if($file){
            $name       =   $file->getClientOriginalName();
            $extension  =   $file->getClientOriginalExtension();
            $newfilename=   uniqid(md5(rand(0000, 9999).$name)).'.'.$extension;
            $image      =   Image::make($_FILES['slidefile']['tmp_name'])->resize(1366, 768)->save('uploads/'.$newfilename,100);
            $gallery->imageurl = 'uploads/'.$newfilename;
        }

        $gallery->save();

        return Redirect::to('/admin/photogallery/list');

    }





}
