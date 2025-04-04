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
            <strong>Opps!</strong> Something went wrong, please check below errors.<br><br>
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
                    <h4>@lang('dashboard.Add')</h4>
                </div>
                <div class="card-body">
                    @auth
                        <form action="{{ route('tables.store') }}" class="needs-validation" novalidate="" method="POST"
                            enctype="multipart/form-data">

                            @csrf
                            <div class="form-row">
                                <input type="number" name="restaurant_id" id="restaurant_id"
                                    value="{{ Auth::user()->restaurant_id }}" hidden>
                                <input type="number" name="status" id="status" value="1" hidden>
                                @foreach (config('translatable.locales') as $locale)
                                    <div class="form-group col-md-4">
                                        <label>@lang('dashboard.Table Number') ({{ strtoupper($locale) }}) *</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                    <i class="fas fa-file-alt"></i>
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

                                <div class="form-group col-md-2">
                                    <label>@lang('dashboard.Person') *</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="fas fa-user"></i>
                                            </div>
                                        </div>
                                        <input type="number" name="required" value="{{ old('required') }}"
                                            class="form-control marker" placeholder="@lang('dashboard.Person')" required="">
                                        <div class="invalid-feedback">
                                            @lang('validation.Opss, This field is required')
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4">
                                    <label>@lang('dashboard.Places') *</label>
                                    <select class="form-control" name="place_id" required="">
                                        <option value="" disabled selected>-- {{ __('dashboard.Places') }} --</option>

                                        @foreach ($places as $place)
                                            <option value="{{ $place->id }}">{{ $place->name }} </option>
                                        @endforeach
                                    </select>
                                    <div class="invalid-feedback">
                                        @lang('validation.Opss, This field is required')
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
                                        <input type="file" name="image" class="form-control file">
                                    </div>
                                    <div class="invalid-feedback">
                                        {{ __('Image is Required') }} ! !
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
                                    </div>
                                </div>

                            </div>

                            <div class="form-group text-right">
                                <button type="submit" class="btn btn-success"><i class="fas fa-check"></i>
                                    @lang('dashboard.Save')
                                </button>
                                <a href="{{ route('tables.index') }}" class="btn btn-icon icon-left btn-secondary">
                                    <i class="fas fa-backward"></i> @lang('dashboard.Back')
                                </a>
                            </div>
                        </form>
                    @endauth
                </div>
            </div>
        </div>
    </div>

@endsection
