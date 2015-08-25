@extends('backend.common.adminbody')

@section('title')
  <title>App Admin :: Add New HomeSlide</title>
@stop

@section('body')
    <h3><i class="fa fa-angle-right"></i> Add New HomeSlide</h3>
            <div class="row mt">
              <div class="col-lg-12">


                          <div class="form-panel">

                              <form class="form-horizontal style-form" method="post" action="/admin/homeslide/edit/{{$homeSlides->title}}" enctype="multipart/form-data">

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Slide title</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="title" value="{{$homeSlides->title}}">
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Slide Description</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="desc" value="{{$homeSlides->desc}}">
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Slide Position</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="position" value="{{$homeSlides->position}}">
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Slide Image [1440x900]</label>
                                      <div class="col-sm-10">
                                          <input type="file" class="form-control" name="slidefile">
                                      </div>
                                  </div>

                                  <input type="hidden" value="{{$user->id}}" name="updatedby"/>
                                  <input type="hidden" value="{{$homeSlides->id}}" name="slideID"/>
                                  <button type="submit" class="btn btn-success">Save Slide</button>

                              </form>
                          </div>


              </div>
            </div>
@stop
