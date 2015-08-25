@extends('backend.common.adminbody')

@section('title')
  <title>App Admin :: Add New HomeSlide</title>
@stop

@section('body')
    <h3><i class="fa fa-angle-right"></i> Add New HomeSlide</h3>
            <div class="row mt">
              <div class="col-lg-12">


                          <div class="form-panel">

                              <form class="form-horizontal style-form" method="post" action="/admin/homeslide/add" enctype="multipart/form-data">

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Slide title</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="title">
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Slide Description</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="desc">
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Slide Position</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="position">
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Slide Image [1920x1200]</label>
                                      <div class="col-sm-10">
                                          <input type="file" class="form-control" name="slidefile">
                                      </div>
                                  </div>

                                  <input type="hidden" value="{{$user->id}}" name="updatedby"/>
                                  <button type="submit" class="btn btn-success">Save Slide</button>

                              </form>
                          </div>


              </div>
            </div>
@stop
