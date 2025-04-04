@extends('backend.layouts.app')

@section('title', __('Settings'))

@section('content')
    <!-- Main Content -->
    <form action="{{ route('restaurant.update') }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="row mt-sm-4">
            <div class="col-12 col-md-12 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h3>@lang('Settings')</h3>

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
                            <input type="text" name="status" value="1" hidden>
                            {{-- <div class="form-group col-md-3">
                                <label>@lang('dashboard.Logo')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-image"></i>
                                        </div>
                                    </div>
                                    <input type="file" name="logo" id="logo" class="form-control file">
                                </div>
                                <div class="invalid-feedback">
                                    @lang('validation.Opss, This field is required')
                                </div>
                            </div> --}}

                            <div class="form-group col-md-6">
                                <label>@lang('dashboard.Logo')</label>
                                <div class="input-group">
                                    @if ($restaurant->logo)
                                        <img src="{{ asset('https://admin.foodly.pro/uploads/restaurants/' . $restaurant->logo) }}" height="200">
                                    @else
                                        <img src="https://img.icons8.com/windows/100/000000/no-image.png" height="50" />
                                    @endif
                                </div>
                            </div>

                            {{-- <div class="form-group col-md-3">
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
                            </div> --}}

                            <div class="form-group col-md-6">
                                <label>@lang('dashboard.Image')</label>
                                <div class="input-group">
                                    @if ($restaurant->cover)
                                        <img src="{{ asset('https://admin.foodly.pro/uploads/restaurants/' . $restaurant->cover) }}" height="200">
                                    @else
                                        <img src="https://img.icons8.com/windows/100/000000/no-image.png" height="100" />
                                    @endif
                                </div>
                            </div>



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
                                            @if ($restaurant) value="{{ $restaurant->translate($locale)->name }}" @endif
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
                                        <textarea class="form-control" name="{{ $locale }}[description]">
@if ($restaurant)
{!! $restaurant->translate($locale)->description !!}
@endif
</textarea>
                                        <div class="invalid-feedback">
                                            @lang('validation.Opss, This field is required')
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                            @foreach (config('translatable.locales') as $locale)
                                <div class="form-group col-md-4">
                                    <label>@lang('dashboard.Address') ({{ strtoupper($locale) }})</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="fas fa-file-alt"></i>
                                            </div>
                                        </div>
                                        <input type="text" name="{{ $locale }}[address]"
                                            @if ($restaurant) value="{{ $restaurant->translate($locale)->address }}" @endif
                                            class="form-control marker">
                                    </div>
                                </div>
                            @endforeach

                            <div class="form-group col-md-6">
                                <label>@lang('Facebook')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fab fa-facebook"></i>
                                        </div>
                                    </div>
                                    <input type="text" name="facebook"
                                        @if ($restaurant) value="{{ $restaurant->facebook }}" @endif
                                        class="form-control marker">
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label>@lang('Instagram')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fab fa-instagram"></i>
                                        </div>
                                    </div>
                                    <input type="text" name="instagram"
                                        @if ($restaurant) value="{{ $restaurant->instagram }}" @endif
                                        class="form-control marker">
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label>@lang('dashboard.Phone')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-phone"></i>
                                        </div>
                                    </div>
                                    <input type="number" name="phone"
                                        @if ($restaurant) value="{{ $restaurant->phone }}" @endif
                                        class="form-control marker">
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label>@lang('Manager Phone')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-phone"></i>
                                        </div>
                                    </div>
                                    <input type="number" name="manager_phone"
                                        @if ($restaurant) value="{{ $restaurant->manager_phone }}" @endif
                                        class="form-control marker">
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label>@lang('WhatsApp')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fab fa-whatsapp"></i>
                                        </div>
                                    </div>
                                    <input type="number" name="whatsapp"
                                    @if ($restaurant) value="{{ str_replace('+995', '', $restaurant->whatsapp) }}" @endif
                                    class="form-control marker">
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label>@lang('Manager WhatsApp')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fab fa-whatsapp"></i>
                                        </div>
                                    </div>
                                    <input type="number" name="manager_whatsapp"
                                    @if ($restaurant) value="{{ str_replace('+995', '', $restaurant->manager_whatsapp) }}" @endif
                                    class="form-control marker">
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label>@lang('dashboard.Email')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-envelope"></i>
                                        </div>
                                    </div>
                                    <input type="email" name="email"
                                        @if ($restaurant) value="{{ $restaurant->email }}" @endif
                                        class="form-control marker">
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label>@lang('Manager Email')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-envelope"></i>
                                        </div>
                                    </div>
                                    <input type="email" name="manager_email"
                                        @if ($restaurant) value="{{ $restaurant->manager_email }}" @endif
                                        class="form-control marker">
                                </div>
                            </div>


                            <div class="form-group col-md-6">
                                <label>@lang('dashboard.Working Hours')</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-clock"></i>
                                        </div>
                                    </div>
                                    <input type="time" name="start_time"
                                        @if ($restaurant) value="{{ $restaurant->start_time }}" @endif
                                        class="form-control">
                                    <input type="time" name="end_time"
                                        @if ($restaurant) value="{{ $restaurant->end_time }}" @endif
                                        class="form-control">
                                    <div class="invalid-feedback">
                                        @lang('validation.Opss, This field is required')
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <div class="card-footer text-right">
                        <button class="btn btn-success mr-1" type="submit"><i class="fas fa-save"></i>
                            @lang('dashboard.Save')</button>
                        {{-- <button class="btn btn-secondary" type="reset"><i class="fas fa-circle-notch"></i> @lang('dashboard.Back')</button> --}}
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- Main Content -->

@endsection
