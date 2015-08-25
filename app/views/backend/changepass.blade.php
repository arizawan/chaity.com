@extends('backend.common.adminbody')

@section('title')
  <title>App Admin :: Change Password</title>
@stop

@section('body')
    <h3><i class="fa fa-angle-right"></i> Change Password</h3>
            <div class="row mt">
              <div class="col-lg-12">

                          {{$alert}}

                          <div class="form-panel">

                              <form class="form-horizontal style-form" method="post" action="/admin/changepass">

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Old Password</label>
                                      <div class="col-sm-10">
                                          <input type="password" class="form-control" name="oldpass">
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">New Password</label>
                                      <div class="col-sm-10">
                                          <input type="password" class="form-control" name="newpass">
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">Confirm Password</label>
                                      <div class="col-sm-10">
                                          <input type="password" class="form-control" name="cpass">
                                      </div>
                                  </div>

                                  <input type="hidden" value="{{$user->id}}" name="updatedby"/>
                                  <button type="submit" class="btn btn-success">Save Schedule</button>

                              </form>
                          </div>


              </div>
            </div>
@stop
