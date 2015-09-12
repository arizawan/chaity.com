@extends('backend.common.adminbody')

@section('title')
  <title>App Admin :: Add New Category</title>
@stop

@section('body')
    <h3><i class="fa fa-angle-right"></i> Add New Category</h3>
            <div class="row mt">
              <div class="col-lg-12">
                        <?php
                          $editVars = [];
                          if($edit){
                            $editVars = $editData;
                          }
                        ?>
                          <div class="form-panel">

                              <form class="form-horizontal style-form" method="post" action="/admin/category/add" enctype="multipart/form-data">

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Name</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="name"
                                          value="<?php if($edit){echo $editVars->name;} ?>">
                                      </div>
                                      <?php
                                        if($edit){
                                          echo '<input type="hidden" class="form-control" name="id" value="'.$editVars->id.'">';
                                        }
                                      ?>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Sub category of</label>
                                      <div class="col-sm-10">
                                          <select class="form-control" name="parent">
                                          <?php
                                            $getAllCategorys = Category::get();
                                            $selected = '';
                                            foreach($getAllCategorys as $category){
                                              if($edit && $category->id == $editVars->parent){
                                                $selected = 'selected="selected"';
                                              }else{
                                                $selected = '';
                                              }
                                          ?>
                                            <option value="<?php echo $category->id;?>" {{$selected}}><?php echo $category->name;?></option>
                                          <?php
                                            }
                                          ?>
                                          </select>
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Position</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="position" value="<?php if($edit){echo $editVars->position;} ?>">
                                      </div>
                                  </div>

                                  <input type="hidden" value="{{$user->id}}" name="updatedby"/>
                                  <button type="submit" class="btn btn-success">Save Category</button>

                              </form>
                          </div>

                        <div class="col-lg-12">
                  <h3><i class="fa fa-angle-right"></i> All Categorys</h3>
                      <div class="content-panel">
                              <table class="table table-striped table-advance table-hover">
                                  <thead>
                                  <tr>
                                      <th>Name</th>
                                      <th>Sub Category of</th>
                                      <th>Position</th>
                                      <th width="10%"></th>
                                  </tr>
                                  </thead>
                                  <tbody>
                                  <?php
                                  foreach($getAllCategorys as $category){
                                    if($category->name != 'None...'){
                                  ?>
                                  <tr>
                                      <td>{{$category->name}}</td>
                                      <td>{{Category::find($category->parent)->name}}</td>
                                      <td>{{$category->position}}</td>
                                      <td>
                                          <a class="btn btn-primary btn-xs" href="/admin/category/edit/{{$category->id}}"><i class="fa fa-pencil"></i></a>
                                          <a class="btn btn-danger btn-xs" href="/admin/category/delete/{{$category->id}}"><i class="fa fa-trash-o"></i></a>
                                      </td>
                                  </tr>
                                  <?php
                                      }
                                    }
                                  ?>

                                  </tbody>
                              </table>
                          </div><!-- /content-panel -->

              </div>
              </div>

            </div>
@stop
