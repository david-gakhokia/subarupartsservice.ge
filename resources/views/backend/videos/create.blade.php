@extends('backend.layouts.app')

@section('title', __('dashboard.Add New'))

@section('content')

    <div class="row">
        <div class="col-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                  <h4>@lang('dashboard.Add')</h4>
                </div>
                <form action="{{ route('videos.store') }}" class="needs-validation" novalidate="" method="POST"  enctype="multipart/form-data" >
                    @csrf
                    <div class="card-body">
                        <div class="form-row">

                            <div class="form-group col-md-6">
                                <label>@lang('dashboard.Name')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-file-alt"></i>
                                        </div>
                                    </div>
                                    <input type="text" name="name" class="form-control marker" required="">
                                    <div class="invalid-feedback">
                                        @lang('validation.Opss, This field is required')
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-2">
                                <label for="status">@lang('dashboard.Select a Status')</label>
                                <select class="form-control" name="status">
                                    <option class="badge badge-success badge-shadow" value="1">
                                        <i class="fas fa-check-circle"></i>
                                         @lang('dashboard.Active')
                                    </option>

                                    <option class="badge badge-danger badge-shadow" value="0">
                                        <i class="fas fa-check-circle"></i>@lang('dashboard.Not active')
                                    </option>
                                </select>
                                <div class="invalid-feedback">
                                    {{__('Opss , Status is Required')}} !
                                </div>
                            </div>


                            <div class="form-group col-md-4">
                                <label for="restaurant_id">@lang('Restaurant')</label>
                                <select class="form-control select" name="restaurant_id" >
                                    
                                    @foreach ($restaurants as $item)
                                        @if ($item->name)
                                            <option value="{{ $item->id }}">&nbsp;&nbsp;{{ $item->name }}</option>
                                        @else
                                            <p>No Result</p>
                                        @endif
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group col-md-12">
                                <label>@lang('Video')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-video"></i>
                                        </div>
                                    </div>
                                    <input type="text" name="video_url" class="form-control marker" placeholder="http://youtube.com" required="">
                                    <div class="invalid-feedback">
                                        @lang('validation.Opss, This field is required')
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>

                    <div class="card-footer text-right">
                        <button class="btn btn-success">
                            <i class="fas fa-save"></i> @lang('dashboard.Save')
                        </button>
                        <a href="{{ route ('videos.index') }}" class="btn btn-info">
                            <i class="fas fa-arrow-circle-left"></i> @lang('dashboard.Back')
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection
