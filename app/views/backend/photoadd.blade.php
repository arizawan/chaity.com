@extends('backend.common.adminbody')

@section('title')
  <title>App Admin :: Add New Photo</title>
@stop

@section('body')
    <h3><i class="fa fa-angle-right"></i> Add New Photo</h3>
            <div class="row mt">
              <div class="col-lg-12">

                          <?php
                          $editVars = [];
                          if($edit){
                            $editVars = $editData;
                          }
                        ?>

                          <div class="form-panel">

                              <form class="form-horizontal style-form" method="post" action="/admin/photogallery/add" enctype="multipart/form-data">

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Title</label>
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
                                      <label class="col-sm-2 col-sm-2 control-label">Select Category</label>
                                      <div class="col-sm-10">
                                          <select class="form-control" name="category">
                                          <?php
                                            $getAllCategorys = Category::get();
                                            $selected = '';
                                            foreach($getAllCategorys as $category){
                                              if($edit && $category->id == $editVars->category){
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
                                      <label class="col-sm-2 col-sm-2 control-label">Slide Image [1366x768]</label>
                                      <div class="col-sm-10">
                                          <input type="file" class="form-control" name="slidefile">
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Position</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="position"
                                          value="<?php if($edit){echo $editVars->position;} ?>">
                                      </div>
                                  </div>

                                  <input type="hidden" value="{{$user->id}}" name="updatedby"/>
                                  <button type="submit" class="btn btn-success">Save Photo</button>

                              </form>
                          </div>


              </div>

            </div>
@stop
