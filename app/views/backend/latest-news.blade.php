@extends('backend.common.adminbody')

@section('title')
  <title>App Admin :: Latest News</title>
@stop

@section('body')
    <h3><i class="fa fa-angle-right"></i> Latest News</h3>
            <div class="row mt">
              <div class="col-lg-12">


                          <div class="form-panel">

                              <form class="form-horizontal style-form" method="post" action="/admin/homepage/garments-products" enctype="multipart/form-data">

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Title</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="title">
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Main Image [600x250]</label>
                                      <div class="col-sm-10">
                                          <input type="file" class="form-control" name="slidefile">
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Description</label>
                                      <div class="col-sm-10">
                                          <textarea class="form-control" name="desc"></textarea>
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Position</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="position">
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Select Gallery Images [700x500]</label>
                                      <div class="col-sm-10" id="addGallaryImageBtn">

                                          <input name="filesToUpload[]" id="filesToUpload" class="filesToUpload" type="file" multiple="" />
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Selected Files</label>
                                      <div class="col-sm-10" id="addGallaryList">
                                          <button class="removeMultiInput">Remove Files</button>
                                          <ul id="fileList" class="list-unstyled"><li>No Files Selected</li></ul>
                                      </div>

                                  </div>



                                  <!--<div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Image [345x300]</label>
                                      <div class="col-sm-10">
                                          <input type="file" class="form-control" name="slidefile">
                                      </div>
                                  </div>-->
                                  <input type="hidden" value="latestNews" name="contenttype"/>
                                  <input type="hidden" value="{{$user->id}}" name="updatedby"/>
                                  <button type="submit" class="btn btn-success">Save</button>

                              </form>
                          </div>

                      <div class="content-panel">
                          <table class="table table-striped table-advance table-hover">
                              <thead>
                              <tr>
                                  <th>ID</th>
                                  <!--<th width="40%">Thumb</th>-->
                                  <th>Type</th>
                                  <th>Title</th>
                                  <th >Description</th>
                                  <th>Position</th>
                                  <th width="10%"></th>
                              </tr>
                              </thead>
                              <tbody>
                              @foreach ($homeSlides as $homeSlide)
                              <tr>
                                  <td>{{$homeSlide->id}}</td>
                                  <!--<td>
                                    <img  width="50%" src="/{{$homeSlide->image}}"/>
                                  </td>-->
                                  <td>{{$homeSlide->type}}</td>
                                  <td>{{$homeSlide->title}}</td>
                                  <td><small>{{$homeSlide->desc}}</small></td>

                                  <td style="text-align:center; font-weight:bold;">{{$homeSlide->position}}</td>

                                  <td>


                                      <a class="btn btn-danger btn-xs" href="/admin/homepage/garments-products/delete/{{$homeSlide->id}}"><i class="fa fa-trash-o"></i></a>

                                  </td>
                              </tr>
                              @endforeach

                              </tbody>
                          </table>
                      </div><!-- /content-panel -->


              </div>
            </div>
@stop
