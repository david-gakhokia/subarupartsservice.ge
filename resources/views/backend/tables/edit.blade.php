@extends('backend.layouts.app')

@section('title', __('dashboard.Edit'))

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
                    <h4>@lang('Table Edit')</h4>
                </div>
                <div class="card-body">
                    @auth
                        <form action="{{ route('tables.update', $table->id) }}" class="needs-validation" novalidate=""
                            method="POST" enctype="multipart/form-data">
                            @method('PUT')
                            @csrf
                            <input type="number" name="restaurant_id" id="restaurant_id"
                                    value="{{ Auth::user()->restaurant_id }}" hidden>
                            <div class="form-row">
                                @foreach (config('translatable.locales') as $locale)
                                    <div class="form-group col-md-4">
                                        <label>@lang('dashboard.Table Number') ({{ strtoupper($locale) }}) *</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                    <i class="fas fa-file-alt"></i>
                                                </div>
                                            </div>
                                            @if ($table->translate($locale) == '')
                                                <input type="text" name="{{ $locale }}[name]" value=""
                                                    class="form-control marker">
                                            @else
                                                <input type="text" name="{{ $locale }}[name]"
                                                    value="{{ $table->translate($locale)->name }}" class="form-control marker">
                                            @endif
                                            <div class="invalid-feedback">
                                                @lang('validation.Opss, This field is required')
                                            </div>
                                        </div>
                                    </div>
                                @endforeach


                                @foreach (config('translatable.locales') as $locale)
                                    <div class="form-group col-md-4">
                                        <label>@lang('dashboard.Description') ({{ strtoupper($locale) }})</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                    <i class="fas fa-file-alt"></i>
                                                </div>
                                            </div>
                                            @if ($table->translate($locale) == '')
                                                <input type="text" name="{{ $locale }}[description]" value=""
                                                    class="form-control marker">
                                            @else
                                                <input type="text" name="{{ $locale }}[description]"
                                                    value="{{ $table->translate($locale)->description }}"
                                                    class="form-control marker">
                                            @endif

                                        </div>
                                    </div>
                                @endforeach
                                <div class="form-group col-md-4">
                                    <label for="place_id">@lang('Space') *</label>
                                    <select class="form-control" name="place_id">
                                        @foreach ($places as $place)
                                            <option value="{{ $place->id }}"
                                                {{ $place->id === $table->place_id ? 'selected' : '' }}> {{ $place->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group col-md-2">
                                    <label for="place_id">@lang('dashboard.Person') *</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="fas fa-user"></i>
                                            </div>
                                        </div>
                                        <input type="number" name="seats" value="{{ $table->seats }}"
                                            class="form-control marker" placeholder="{{ $table->seats }}">
                                        <div class="invalid-feedback">
                                            @lang('validation.Opss, This field is required')
                                        </div>
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
                                        <input type="number" name="rank" value="{{ $table->rank }}"
                                            class="form-control marker">
                                    </div>
                                </div>
                                <div class="form-group col-md-4">
                                    <label>@lang('dashboard.Select a Status') *</label>
                                    <select name="status" class="form-control" required="">

                                        @if ($table->status == 1)
                                            <option value="1" selected>@lang('dashboard.Active')</option>
                                            <option value="0">@lang('dashboard.Not active')</option>
                                        @else
                                            <option value="1">@lang('dashboard.Active')</option>
                                            <option value="0" selected>@lang('dashboard.Not active')</option>
                                        @endif
                                    </select>
                                </div>

                            </div>
                            <div class="form-row">

                                <div class="form-group col-md-6">
                                    <label>@lang('dashboard.Icon')</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="fas fa-image"></i>
                                            </div>
                                        </div>
                                        <input type="file" name="icon" id="icon" class="form-control file">
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
                                        <input type="file" name="image" id="image" class="form-control file">
                                    </div>
                                </div>

                                <div class="form-group col-md-6">
                                    <label>@lang('dashboard.Icon')</label>
                                    <div class="input-group">
                                        @if ($table->icon)
                                            <img src="{{ asset('uploads/tables/' . $table->icon) }}" alt="{{ $table->icon }}"
                                                height="100">
                                        @else
                                            <img src="{{ asset('images/no-image.jpg') }}" width="150">
                                        @endif
                                    </div>

                                </div>

                                <div class="form-group col-md-6">
                                    <label>@lang('dashboard.Image')</label>
                                    <div class="input-group">
                                        @if ($table->image)
                                            <img src="{{ asset('uploads/tables/' . $table->image) }}"
                                                alt="{{ $table->image }}" height="100">
                                        @else
                                            <img src="{{ asset('images/no-image.jpg') }}" width="150">
                                        @endif
                                    </div>
                                </div>
                            </div>

                            <div class="form-group text-right">
                                <button type="submit" class="btn btn-success"><i class="fas fa-check"></i>
                                    @lang('dashboard.Update')</button>

                                <a href="{{ route('tables.index') }}" class="btn btn-icon icon-left btn-secondary"><i
                                        class="fas fa-backward"></i> @lang('dashboard.Back') </a>
                            </div>
                        </form>
                    @endauth
                </div>
            </div>
        </div>
    </div>

@endsection
