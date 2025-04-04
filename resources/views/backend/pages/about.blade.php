@extends('backend.layouts.app')

@section('title', __('About Us'))

@section('content')
    <!-- Main Content -->
    <form method="POST" enctype="multipart/form-data" action="{{ route('admin.about.store') }}" class="needs-validation">
        @csrf
        <div class="row mt-sm-4">
            {{-- ძირითადი პარამეტრები --}}

            <div class="col-12 col-md-12 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4>@lang('About Us')</h4>

                        <div class="text-right">
                            <h4>
                                @if ($errors)
                                    @foreach ($errors->all() as $error)
                                        <p class="text-danger">{{ $error }}</p>
                                    @endforeach
                                @endif

                                @if (Session::has('success'))
                                    <p class="text-success">{{ session('success') }}</p>
                                @endif
                            </h4>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-row">

                            @foreach (config('translatable.locales') as $locale)
                                <div class="form-group col-md-4">
                                    <label>@lang('dashboard.Title') ({{ strtoupper($locale) }})</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="fas fa-file-alt"></i>
                                            </div>
                                        </div>
                                        <input type="text" name="{{ $locale }}[title]"
                                            @if ($about) value="{{ $about->translate($locale)->title }}" @endif
                                            class="form-control marker">
                                        <div class="invalid-feedback">
                                            @lang('validation.Opss, This field is required')
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                            @foreach (config('translatable.locales') as $locale)
                                <div class="form-group col-md-4">
                                    <label>@lang('dashboard.Name') ({{ strtoupper($locale) }})</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="fas fa-file-alt"></i>
                                            </div>
                                        </div>
                                        <input type="text" name="{{ $locale }}[name]"
                                            @if ($about) value="{{ $about->translate($locale)->name }}" @endif
                                            class="form-control marker">
                                        <div class="invalid-feedback">
                                            @lang('validation.Opss, This field is required')
                                        </div>
                                    </div>
                                </div>
                            @endforeach


                            @foreach (config('translatable.locales') as $locale)
                                <div class="form-group col-md-12">
                                    <div class="form-group mb-0">
                                        <label>@lang('dashboard.Description') ({{ strtoupper($locale) }})</label>
                                        <textarea class="summernote" name="{{ $locale }}[description]">
                                            @if ($about)
{{ $about->translate($locale)->description }}
@endif
                                        </textarea>
                                        <div class="invalid-feedback">
                                            @lang('validation.Opss, This field is required')
                                        </div>
                                    </div>
                                </div>
                            @endforeach
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

                            <div class="form-group col-md-8">
                                <label>@lang('dashboard.Video Link')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-video"></i>
                                        </div>
                                    </div>
                                    <input type="link" name="video"
                                        @if ($about) value="{{ $about->video }}" @endif
                                        class="form-control marker">
                                    <div class="invalid-feedback">
                                        @lang('validation.Opss, This field is required')
                                    </div>
                                </div>
                            </div>





                            @foreach (config('translatable.locales') as $locale)
                                <div class="form-group col-md-12">
                                    <div class="form-group mb-0">
                                        <label>@lang('dashboard.About Us') ({{ strtoupper($locale) }})</label>
                                        <textarea class="summernote" name="{{ $locale }}[body]">
                                            @if ($about)
{{ $about->translate($locale)->body }}
@endif
                                        </textarea>
                                        <div class="invalid-feedback">
                                            @lang('validation.Opss, This field is required')
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                            <div class="form-group col-md-6">
                                <label>@lang('dashboard.Cover')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-image"></i>
                                        </div>
                                    </div>
                                    <input type="file" name="cover" id="cover" class="form-control file">
                                </div>
                                <div class="invalid-feedback">
                                    @lang('validation.Opss, This field is required')
                                </div>
                            </div>

                            <div class="form-group col-md-6">

                                <div class="input-group">
                                    @if ($about->cover)
                                        <img src="{{ asset('uploads/about/' . $about->cover) }}" height="100"
                                            alt="{{ $about->cover }}">
                                    @else
                                        <img src="https://img.icons8.com/windows/100/000000/no-image.png" height="150" />
                                    @endif
                                </div>

                            </div>

                            @foreach (config('translatable.locales') as $locale)
                                <div class="form-group col-md-12">
                                    <div class="form-group mb-0">
                                        <label>@lang('dashboard.About Us') 2 ({{ strtoupper($locale) }})</label>
                                        <textarea class="summernote" name="{{ $locale }}[description2]">
                                            @if ($about)
{{ $about->translate($locale)->description2 }}
@endif
                                        </textarea>
                                        <div class="invalid-feedback">
                                            @lang('validation.Opss, This field is required')
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                            <div class="form-group col-md-6">
                                <label>@lang('dashboard.Image') 2</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-image"></i>
                                        </div>
                                    </div>
                                    <input type="file" name="image2" id="image2" class="form-control file">
                                </div>
                                <div class="invalid-feedback">
                                    @lang('validation.Opss, This field is required')
                                </div>
                            </div>

                            <div class="form-group col-md-6">

                                <div class="input-group">
                                    @if ($about->image2)
                                        <img src="{{ asset('uploads/about/' . $about->image2) }}" height="100"
                                            alt="{{ $about->image2 }}">
                                    @else
                                        <img src="https://img.icons8.com/windows/100/000000/no-image.png"
                                            height="150" />
                                    @endif
                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <button class="btn btn-success mr-1" type="submit"><i class="fas fa-save"></i>
                            @lang('dashboard.Save')</button>
                    </div>
                </div>
            </div>
            {{-- ძირითადი პარამეტრები --}}

        </div>
    </form>
    <!-- Main Content -->

@endsection
