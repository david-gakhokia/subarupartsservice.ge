@extends('backend.layouts.app')

@section('title', __('dashboard.Edit'))

@section('content')

<div class="row">
    <div class="col-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4>@lang('dashboard.Edit')</h4>
            </div>
            <form action="{{ route ('images.update',$image->id) }}" class="needs-validation" method="POST" enctype="multipart/form-data">
                @method('PUT')
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
                                <input type="text" name="name" value="{{ $image->name}}" class="form-control marker" >
                                <div class="invalid-feedback">
                                    @lang('validation.Opss, This field is required')
                                </div>
                            </div>
                        </div>


                        <div class="form-group col-md-4">
                            <label>@lang('dashboard.Image')</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fas fa-image"></i>
                                    </div>
                                </div>
                                <input type="file" name="image" id="image" class="form-control file">
                            </div>
                            <div class="invalid-feedback">
                                @lang('validation.Opss, This field is required')
                            </div>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="status">@lang('dashboard.Select a Status')</label>
                            <select class="form-control" name="status">
                                @if ($image->status == 1)
                                <option class="badge badge-success badge-shadow" value="1" selected><i class="fas fa-check-circle"></i> @lang('dashboard.Active')</option>
                                <option class="badge badge-danger badge-shadow" value="0"><i class="fas fa-check-circle"></i> @lang('dashboard.Not active')</option>
                                @else
                                <option class="badge badge-success badge-shadow" value="1"><i class="fas fa-check-circle"></i> @lang('dashboard.Active')</option>
                                <option class="badge badge-danger badge-shadow" value="0" selected><i class="fas fa-check-circle"></i> @lang('dashboard.Not active')</option>
                                @endif
                            </select>
                            <div class="invalid-feedback">
                                @lang('validation.Opss, This field is required')
                            </div>
                        </div>
                        <div class="form-group col-md-2">
                            <label>@lang('dashboard.Rank')</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fas fa-arrows-alt-v"></i>
                                    </div>
                                </div>
                                <input type="number" value="{{ $image->rank}}" name="rank" class="form-control marker" required="">
                                <div class="invalid-feedback">
                                    @lang('validation.Opss, This field is required')
                                </div>
                            </div>
                        </div>

                        <div class="form-group col-md-4">
                            <label for="place_id">@lang('Select a Place')</label>
                            <select class="form-control select" name="place_id" required="">
                                <option selected disabled>@lang('Select a Place')</option>
                                @foreach ($places as $item)
                                <option value="{{ $item->id }}" {{ $item->id === $image->place_id ? 'selected' : '' }}>&nbsp;&nbsp;{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>


                        <div class="form-group col-md-4">
                            <label for="restaurant_id">@lang('Select a Restaurant')</label>
                            <select class="form-control select" name="restaurant_id" required="">
                                @foreach ($restaurants as $item)
                                <option value="{{ $item->id }}" {{ $item->id === $image->restaurant_id ? 'selected' : '' }}>&nbsp;&nbsp;{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>




                        <div class="form-group col-md-3">
                            <label>@lang('dashboard.Image')</label>
                            <div class="input-group">

                                @if ($image->image)
                                <img src="{{ asset(''.$image->image) }}" height="70" alt="{{ $image->name }}">
                                @else
                                <img src="https://img.icons8.com/windows/100/000000/no-image.png" height="70" />
                                @endif
                            </div>
                        </div>


                    </div>
                </div>

                <div class="card-footer text-right">
                    <button class="btn btn-success">
                        <i class="fas fa-check"></i> @lang('dashboard.Update')
                    </button>
                    <a href="{{ route ('images.index') }}" class="btn btn-info">
                        <i class="fas fa-arrow-circle-left"></i> @lang('dashboard.Back')
                    </a>
                </div>
            </form>
        </div>
    </div>

</div>

@endsection
