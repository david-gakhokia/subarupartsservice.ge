@extends('backend.layouts.app')

@section('title', __('dashboard.Edit'))

@section('content')

    <div class="row">
        <div class="col-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4>@lang('dashboard.Add')</h4>
                </div>
                <form action="{{ route('videos.update', $video->id) }}" class="needs-validation" novalidate="" method="POST"
                    enctype="multipart/form-data">
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
                                    <input type="text" name="name" value="{{ $video->name }}"
                                        class="form-control marker" required="">
                                    <div class="invalid-feedback">
                                        @lang('validation.Opss, This field is required')
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-2">
                                <label for="status">@lang('dashboard.Select a Status')</label>
                                <select class="form-control" name="status">
                                    @if ($video->status == 1)
                                        <option class="badge badge-success badge-shadow" value="1" selected><i
                                                class="fas fa-check-circle"></i> @lang('dashboard.Active')</option>
                                        <option class="badge badge-danger badge-shadow" value="0"><i
                                                class="fas fa-check-circle"></i> @lang('dashboard.Not active')</option>
                                    @else
                                        <option class="badge badge-success badge-shadow" value="1"><i
                                                class="fas fa-check-circle"></i> @lang('dashboard.Active')</option>
                                        <option class="badge badge-danger badge-shadow" value="0" selected><i
                                                class="fas fa-check-circle"></i> @lang('dashboard.Not active')</option>
                                    @endif
                                </select>
                                <div class="invalid-feedback">
                                    @lang('validation.Opss, This field is required')
                                </div>
                            </div>

                            <div class="form-group col-md-4">
                                <label for="product_id">@lang('Select a Product')</label>
                                <select class="form-control select" name="product_id" required="">
                                    <option selected disabled>@lang('Select a Product')</option>

                                    @foreach ($products as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->id === $video->product_id ? 'selected' : '' }}>
                                            &nbsp;&nbsp;{{ $item->name }}</option>
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
                                    <input type="text" value="{{ $video->video_url }}" name="video_url"
                                        class="form-control marker" required="">
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
                        <a href="{{ route('videos.index') }}" class="btn btn-info">
                            <i class="fas fa-arrow-circle-left"></i> @lang('dashboard.Back')
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>


@endsection
