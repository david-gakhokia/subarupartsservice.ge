@extends('backend.layouts.app')

@section('title', __('dashboard.Edit'))

@section('content')

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
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="text-left">@lang('dashboard.Edit')</h4>
                </div>
                <div class="card-body">

                    <form action="{{ route('places.update', $place->id) }}" class="needs-validation" method="POST"
                        enctype="multipart/form-data">
                        @method('PUT')
                        @csrf
                        <div class="card-body">
                            <div class="form-row">

                                @foreach (config('translatable.locales') as $locale)
                                    <div class="form-group col-md-6">
                                        <label>@lang('dashboard.Name') ({{ strtoupper($locale) }})</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                    <i class="fas fa-file-alt"></i>
                                                </div>
                                            </div>
                                            @if ($place->translate($locale) == '')
                                                <input type="text" name="{{ $locale }}[name]" value=""
                                                    class="form-control marker">
                                            @else
                                                <input type="text" name="{{ $locale }}[name]"
                                                    value="{{ $place->translate($locale)->name }}"
                                                    class="form-control marker">
                                            @endif
                                            <div class="invalid-feedback">
                                                @lang('validation.Opss, This field is required')
                                            </div>

                                        </div>
                                    </div>
                                @endforeach


                                <div class="form-group col-md-3">
                                    <label>@lang('dashboard.Rank')</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="fas fa-arrows-alt-v"></i>
                                            </div>
                                        </div>
                                        <input type="number" name="rank" value="{{ $place->rank }}"
                                            class="form-control marker">
                                    </div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="status">@lang('dashboard.Select a Status')</label>
                                    <select class="form-control" name="status">
                                        <option class="badge badge-success badge-shadow" value="1">
                                            <i class="fas fa-check-circle"></i>@lang('dashboard.Active')
                                        </option>
                                        <option class="badge badge-danger badge-shadow" value="2">
                                            <i class="fas fa-check-circle"></i>@lang('dashboard.Not active')
                                        </option>
                                    </select>
                                    <div class="invalid-feedback">
                                        {{ __('Opss , Status is Required') }} !
                                    </div>
                                </div>
   

                            </div>


                    
                        </div>
                        <div class="card-footer text-right">
                            <button class="btn btn-success">
                                <i class="fas fa-save"></i> @lang('dashboard.Update')
                            </button>
                            <a href="{{ route('places.index') }}" class="btn btn-info">
                                <i class="fas fa-arrow-circle-left"></i> @lang('dashboard.Back')
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
