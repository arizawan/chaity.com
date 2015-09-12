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
        $data       =   Input::only('name', 'parent', 'position', 'updatedby');
        $category = new Category;
        $category->name = $data['name'];
        $category->parent = $data['parent'];
        $category->position = $data['position'];
        $category->updatedby = $data['updatedby'];
        $category->save();

        return Redirect::to('/admin/category/add');

    }





}
