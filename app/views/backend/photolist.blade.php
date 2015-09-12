@extends('backend.common.adminbody')

@section('title')
  <title>App Admin :: Photo Gallery</title>
@stop

@section('body')
    <h3><i class="fa fa-angle-right"></i> All Photo Gallery</h3>
            <div class="row mt">
              <div class="col-lg-12">

                  <div class="content-panel">
                          <table class="table table-striped table-advance table-hover">
                              <thead>
                              <tr>
                                  <th>ID</th>
                                  <th width="40%">Thumb</th>
                                  <th>Title</th>
                                  <th >Category</th>
                                  <th>Position</th>
                                  <th width="10%"></th>
                              </tr>
                              </thead>
                              <tbody>
                              @foreach ($galleryimg as $img)
                              <tr>
                                  <td>{{$img->id}}</td>
                                  <td>
                                    <img  width="50%" src="/{{$img->image}}"/>
                                  </td>
                                  <td>{{$img->title}}</td>
                                  <td><small>{{$img->desc}}</small></td>

                                  <td style="text-align:center; font-weight:bold;">{{$img->position}}</td>

                                  <td>

                                      <a class="btn btn-primary btn-xs" href="/admin/homeslide/edit/{{$img->id}}"><i class="fa fa-pencil"></i></a>


                                      <a class="btn btn-danger btn-xs" href="/admin/homeslide/delete/{{$img->id}}"><i class="fa fa-trash-o"></i></a>

                                  </td>
                              </tr>
                              @endforeach

                              </tbody>
                          </table>
                      </div><!-- /content-panel -->

              </div>
            </div>
@stop
