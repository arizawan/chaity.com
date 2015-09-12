@extends('backend.common.adminbody')

@section('title')
  <title>App Admin :: Add New Photo</title>
@stop

@section('body')
    <h3><i class="fa fa-angle-right"></i> Add New Photo</h3>
            <div class="row mt">
              <div class="col-lg-12">


                          <div class="form-panel">

                              <form class="form-horizontal style-form" method="post" action="/admin/photogallery/add" enctype="multipart/form-data">

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Title</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="name">
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Select Category</label>
                                      <div class="col-sm-10">
                                          <select class="form-control" name="parent">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
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
                                          <input type="text" class="form-control" name="position">
                                      </div>
                                  </div>

                                  <input type="hidden" value="{{$user->id}}" name="updatedby"/>
                                  <button type="submit" class="btn btn-success">Save Photo</button>

                              </form>
                          </div>


              </div>

            </div>
@stop
