@extends('backend.layouts.app')

@section('title', __('dashboard.Add Product'))

@section('content')

    <style>
        .required-field {
            color: red;
        }
    </style>

    <div class="row">

        <div class="col-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4>@lang('dashboard.Add Product')</h4>
                </div>
                <form action="{{ route('products.store') }}" class="needs-validation" novalidate="" method="POST"
                    enctype="multipart/form-data">
                    @csrf



                    <div class="card-body">
                        <div class="form-row">
                            @foreach (config('translatable.locales') as $locale)
                                <div class="form-group col-md-6">
                                    <label>@lang('dashboard.Name') ({{ strtoupper($locale) }}) <sup
                                            class="required-field">*</sup></label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="fas fa-file-alt"></i>
                                            </div>
                                        </div>
                                        <input type="text" name="{{ $locale }}[name]"
                                            value="{{ old($locale . '.name') }}" class="form-control marker" required="">
                                        <div class="invalid-feedback">
                                            @lang('This field is required')
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                            <div class="form-group col-md-3">
                                <label>@lang('dashboard.Price') <sup class="required-field">*</sup></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-money-bill-wave"></i>
                                        </div>
                                    </div>
                                    <input type="number" step="0.5" name="price" value=""
                                        class="form-control phone-number" placeholder="@lang('dashboard.Price')" required="">
                                    <div class="invalid-feedback">
                                        @lang('This field is required')
                                    </div>
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="category_id">შეარჩიე მოდელი <sup class="required-field">*</sup></label>
                                <select class="form-control select" name="category_id" required="">
                                    <option selected value="" disabled>-- {{ __('dashboard.Select a Category') }} --
                                    </option>
                                    @foreach ($subCategories as $category)
                                        <optgroup label="{{ $category->name }}">
                                            <option value="{{ $category->id }}"
                                                {{ $category->id === old('category_id') ? 'selected' : '' }}>
                                                &nbsp; {{ $category->name }} &nbsp;
                                            </option>
                                            @foreach ($category->children as $subCategory)
                                                <option value="{{ $subCategory->id }}"
                                                    {{ $subCategory->id === old('category_id') ? 'selected' : '' }}>
                                                    &nbsp; -- {{ $subCategory->name }} &nbsp;
                                                </option>
                                                @foreach ($subCategory->children as $subSubCategory)
                                                    <option value="{{ $subSubCategory->id }}"
                                                        {{ $subSubCategory->id === old('category_id') ? 'selected' : '' }}>
                                                        &nbsp; ---- {{ $subSubCategory->name }} &nbsp;
                                                    </option>
                                                @endforeach
                                            @endforeach
                                        </optgroup>
                                    @endforeach
                                </select>
                                <div class="invalid-feedback">
                                    @lang('This field is required')
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="place_id">@lang('dashboard.Select a Category') <sup class="required-field">*</sup></label>
                                <select class="form-control select" name="place_id" required="">
                                    
                                    @foreach ($places as $item)
                                    
                                        <option value="{{ $item->id }}" {{ $category->id === old('place_id') ? 'selected' : '' }}>
                                            &nbsp; {{ $item->name }} &nbsp;
                                        </option>
                                      
                                    @endforeach
                                </select>
                            </div>


                            <div class="form-group col-md-12">
                                <label>ფოტოს ლინკი</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-image"></i>
                                        </div>
                                    </div>
                                    <input type="text" name="image_link" value="" class="form-control">
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
                                    <input type="file" name="image" id="image" class="form-control">
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

                            @foreach (config('translatable.locales') as $locale)
                                <div class="form-group col-md-12">
                                    <div class="form-group mb-0">
                                        <label>@lang('dashboard.Description') ({{ strtoupper($locale) }})</label>

                                        <input type="text" name="{{ $locale }}[description]" value="."
                                            class="form-control marker">
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>

                    <div class="card-footer text-right">
                        <button class="btn btn-success">
                            <i class="fas fa-save"></i> @lang('dashboard.Save')
                        </button>
                        <a href="{{ route('products.index') }}" class="btn btn-info">
                            <i class="fas fa-arrow-circle-left"></i> @lang('dashboard.Back')
                        </a>
                    </div>
                </form>
            </div>
        </div>

    </div>

@endsection
