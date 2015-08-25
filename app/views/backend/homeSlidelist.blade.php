@extends('backend.common.adminbody')

@section('title')
  <title>App Admin :: HomeSlides</title>
@stop

@section('body')
    <h3><i class="fa fa-angle-right"></i> All HomeSlides</h3>
            <div class="row mt">
              <div class="col-lg-12">

                  <div class="content-panel">
                          <table class="table table-striped table-advance table-hover">
                              <thead>
                              <tr>
                                  <th>ID</th>
                                  <th width="40%">Thumb</th>
                                  <th>Title</th>
                                  <th >Description</th>
                                  <th>Position</th>
                                  <th><i class=" fa fa-edit"></i> Status</th>
                                  <th width="10%"></th>
                              </tr>
                              </thead>
                              <tbody>
                              @foreach ($homeSlides as $homeSlide)
                              <tr>
                                  <td>{{$homeSlide->id}}</td>
                                  <td>
                                    <img  width="50%" src="/{{$homeSlide->image}}"/>
                                  </td>
                                  <td>{{$homeSlide->title}}</td>
                                  <td><small>{{$homeSlide->desc}}</small></td>

                                  <td style="text-align:center; font-weight:bold;">{{$homeSlide->position}}</td>
                                  <td>

                                    <?php
                                      if($homeSlide->active == '1'){
                                          $statusRoute  = '0';
                                          echo '<span class="label label-success label-mini">Active</span>';
                                      }else{
                                          $statusRoute  = '1';
                                          echo '<span class="label label-warning label-mini">Inactive</span>';
                                      }
                                    ?>

                                  </td>
                                  <td>
                                      <a class="btn btn-success btn-xs" href="/admin/homeslide/status/{{$statusRoute}}/{{$homeSlide->id}}"><i class="fa fa-check"></i></a>

                                      <a class="btn btn-primary btn-xs" href="/admin/homeslide/edit/{{$homeSlide->id}}"><i class="fa fa-pencil"></i></a>


                                      <a class="btn btn-danger btn-xs" href="/admin/homeslide/delete/{{$homeSlide->id}}"><i class="fa fa-trash-o"></i></a>

                                  </td>
                              </tr>
                              @endforeach

                              </tbody>
                          </table>
                      </div><!-- /content-panel -->

              </div>
            </div>
@stop
