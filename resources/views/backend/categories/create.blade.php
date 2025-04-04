@extends('backend.layouts.app')

@section('title', __('dashboard.Add'))

@section('content')
    @if (session('success'))
        <div class="alert alert-success alert-dismissible fade show mb-2 " role="alert">
            <strong>{{ session('success') }}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif
    @if (count($errors) > 0)
        <div class="alert alert-danger alert-dismissible fade show mb-2 " role="alert">
            <strong>@lang('validation.Opps')</strong> @lang('validation.Something went wrong, please check below errors')<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>

            <button type="button" class="close" users-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif

    <div class="row">
        <div class="col-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4>ახალი მოდელის დამატება</h4>
                </div>
                <form action="{{ route('categories.store') }}" class="needs-validation" novalidate="" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    <div class="card-body">
                        <div class="form-row">
                            @foreach (config('translatable.locales') as $locale)
                                <div class="form-group col-md-6">
                                    <label>@lang('dashboard.Name') ({{ strtoupper($locale) }})*</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="fas fa-marker"></i>
                                            </div>
                                        </div>
                                        <input type="text" name="{{ $locale }}[name]"
                                            value="{{ old($locale . '.name') }}" class="form-control marker" required="">
                                        <div class="invalid-feedback">
                                            @lang('validation.Opss, This field is required')
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                            <div class="form-group col-md-6">
                                <label>@lang('dashboard.Image')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-image"></i>
                                        </div>
                                    </div>
                                    <input type="file" name="image" class="form-control file">
                                </div>
                                <div class="invalid-feedback">
                                    @lang('validation.Opss, This field is required')

                                </div>
                            </div>


                            <div class="form-group col-md-12">
                                <label>@lang('dashboard.Image') ლინკი</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-image"></i>
                                        </div>
                                    </div>
                                    <input type="text" name="image_link" class="form-control file">
                                </div>   
                            </div>

                            <div class="form-group col-md-3">
                                <label>@lang('dashboard.Rank')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-arrows-alt-v"></i>
                                        </div>
                                    </div>
                                    <input type="number" name="rank" class="form-control marker">
                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="status">@lang('dashboard.Select a Status')</label>
                                <select class="form-control" name="status">
                                    <option class="badge badge-success badge-shadow" value="1">
                                        <i class="fas fa-check-circle"></i>@lang('dashboard.Active')
                                    </option>

                                    <option class="badge badge-danger badge-shadow" value="0">
                                        <i class="fas fa-check-circle"></i>@lang('dashboard.Not active')
                                    </option>
                                </select>
                                <div class="invalid-feedback">
                                    {{ __('Opss , Status is Required') }} !
                                </div>
                            </div>
                        </div>
                        <div class="card-footer text-right">
                            <button class="btn btn-success">
                                <i class="fas fa-save"></i> @lang('dashboard.Save')
                            </button>
                            <a href="{{ route('places.index') }}" class="btn btn-info">
                                <i class="fas fa-arrow-circle-left"></i> @lang('dashboard.Back')
                            </a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection
