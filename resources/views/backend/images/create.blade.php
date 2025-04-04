@extends('backend.layouts.app')

@section('title', __('dashboard.Add'))

@section('content')

    <div class="row">

        <div class="col-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4>@lang('dashboard.Add')</h4>
                </div>
                <form action="{{ route('admin.image.store') }}" class="needs-validation" novalidate="" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    <div class="card-body">
                        <div class="form-row">

                            <div class="form-group col-md-4">
                                <label>@lang('dashboard.Name')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-file-alt"></i>
                                        </div>
                                    </div>
                                    <input type="text" name="name" class="form-control marker">
                                    <div class="invalid-feedback">
                                        @lang('validation.Opss, This field is required')
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label>@lang('dashboard.Image')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-image"></i>
                                        </div>
                                    </div>
                                    <input type="file" name="image[]" class="form-control file" multiple>
                                </div>
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
                                    <input type="number" name="rank" class="form-control marker">
                                    <div class="invalid-feedback">
                                        @lang('validation.Opss, This field is required')
                                    </div>
                                </div>
                            </div>

                            <input type="text" name="product_id" value="" hidden>
                            <input type="text" name="service_id" value="" hidden>
                            <input type="text" name="place_id" value="" hidden>
                            <input type="text" name="restaurant_id" value="{{ auth()->user()->restaurant_id }}" hidden>
                            <input type="text" name="status" value="1" hidden>
                        </div>
                    </div>

                    <div class="card-footer text-right">
                        <button class="btn btn-success">
                            <i class="fas fa-save"></i> @lang('dashboard.Save')
                        </button>
                        <a href="{{ route('images.index') }}" class="btn btn-info">
                            <i class="fas fa-arrow-circle-left"></i> @lang('dashboard.Back')
                        </a>
                    </div>
                </form>
            </div>
        </div>

    </div>

@endsection
