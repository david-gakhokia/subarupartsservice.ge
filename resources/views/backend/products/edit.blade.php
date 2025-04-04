@extends('backend.layouts.app')

@section('title', __('dashboard.Edit Product'))

@section('content')

    <div class="row">

        <div class="col-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4>@lang('dashboard.Edit')</h4>
                </div>
                <form action="{{ route('products.update', $product->id) }}" class="needs-validation" method="POST"
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
                                        @if ($product->translate($locale) == '')
                                            <input type="text" name="{{ $locale }}[name]" value=""
                                                class="form-control marker">
                                        @else
                                            <input type="text" name="{{ $locale }}[name]"
                                                value="{{ $product->translate($locale)->name }}"
                                                class="form-control marker">
                                        @endif

                                        <div class="invalid-feedback">
                                            @lang('validation.Opss, This field is required')
                                        </div>
                                    </div>
                                </div>
                            @endforeach


                            <div class="form-group col-md-3">
                                <label>@lang('Queue')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-arrows-alt-v"></i>
                                        </div>
                                    </div>
                                    <input type="number" step="1" name="rank" class="form-control phone-number"
                                        value="{{ old('rank', $product->rank) }}" placeholder="@lang('Queue')">
                                </div>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="status">@lang('dashboard.Select a Status')</label>
                                <select class="form-control" name="status">
                                    @if ($product->status == 1)
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

                            </div>

                            <div class="form-group col-md-4">
                                <label for="category_id">მანქანის მოდელი *</label>
                                <select class="form-control select" name="category_id" required="" id="categorySelect">
                                    <option selected disabled>@lang('dashboard.Select a Category')</option>
                                    @foreach ($subCategories as $category)
                                        <optgroup label="{{ $category->name }}">
                                            <option value="{{ $category->id }}"
                                                {{ $category->id === $product->category_id ? 'selected' : '' }}>
                                                &nbsp; {{ $category->name }}
                                            </option>
                                            @foreach ($category->children as $subCategory)
                                                <option value="{{ $subCategory->id }}"
                                                    {{ $subCategory->id === $product->category_id ? 'selected' : '' }}>
                                                    &nbsp; -- {{ $subCategory->name }}
                                                </option>
                                                @foreach ($subCategory->children as $subSubCategory)
                                                    <option value="{{ $subSubCategory->id }}"
                                                        {{ $subSubCategory->id === $product->category_id ? 'selected' : '' }}>
                                                        &nbsp; ---- {{ $subSubCategory->name }}
                                                    </option>
                                                @endforeach
                                            @endforeach
                                        </optgroup>
                                    @endforeach
                                </select>
                                <div class="invalid-feedback">
                                    @lang('validation.Opss, This field is required')
                                </div>
                            </div>

                            <div class="form-group col-md-4">
                                <label for="place_id">@lang('dashboard.Select a Category') *</label>
                                <select class="form-control select" name="place_id" required="">
                                    <option selected disabled>@lang('dashboard.Select a Category')</option>
                                    @foreach ($places as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->id === $product->place_id ? 'selected' : '' }}>
                                            &nbsp; {{ $item->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>


                            <div class="form-group col-md-3">
                                <label>@lang('dashboard.Price') *</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-money-bill-wave"></i>
                                        </div>
                                    </div>
                                    <input type="number" step="0.5" name="price" class="form-control phone-number"
                                        value="{{ old('price', $product->price) }}" placeholder="@lang('dashboard.Price')"
                                        required="">
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
                            @foreach (config('translatable.locales') as $locale)
                                <div class="form-group col-md-4">
                                    <label>@lang('dashboard.Description') ({{ strtoupper($locale) }})</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="fas fa-file-alt"></i>
                                            </div>
                                        </div>
                                        @if ($product->translate($locale) == '')
                                            <input type="text" name="{{ $locale }}[description]" value=""
                                                class="form-control marker">
                                        @else
                                            <input type="text" name="{{ $locale }}[description]"
                                                value="{{ $product->translate($locale)->description }}"
                                                class="form-control marker">
                                        @endif

                                        <div class="invalid-feedback">
                                            @lang('validation.Opss, This field is required')
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                            <div class="form-group col-md-12">
                                <label>სურათის ლინკი</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-image"></i>
                                        </div>
                                    </div>
                                    <input type="text" name="image_link"
                                        value="{{ old('rank', $product->image_link) }}" class="form-control file">
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="card-footer text-right">
                        <button class="btn btn-success">
                            <i class="fas fa-check"></i> @lang('dashboard.Update')
                        </button>
                        <a href="{{ route('products.index') }}" class="btn btn-info">
                            <i class="fas fa-arrow-circle-left"></i> @lang('dashboard.Back')
                        </a>
                    </div>
                </form>

                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label>@lang('dashboard.Image')</label>
                        <div class="input-group">
                            @if ($product->image)
                                <img src="{{ asset('uploads/products/' . $product->image) }}" height="170"
                                    alt="{{ $product->name }}">
                                <form action="{{ route('products.deleteImage', $product->id) }}" method="post"
                                    style="margin-left: 10px;">
                                    @csrf
                                    @method('delete')
                                    <br>
                                    <button type="submit" class="btn btn-danger">@lang('Delete Image')</button>
                                </form>
                            @else
                                <img src="https://img.icons8.com/windows/100/000000/no-image.png" height="170" />
                            @endif
                        </div>
                    </div>
                    <div class="form-group col-md-4">
                        <label>@lang('dashboard.Image')</label>
                        <div class="input-group">
                            @if ($product->image_link)
                                <img src="{{ asset($product->image_link) }}" height="170" alt="{{ $product->name }}">
                            @else
                                <img src="https://img.icons8.com/windows/100/000000/no-image.png" height="170" />
                            @endif
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>

@endsection
