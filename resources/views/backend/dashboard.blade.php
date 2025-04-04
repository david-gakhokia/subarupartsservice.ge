@extends('backend.layouts.app')

@section('title', __('Admin Dashboard'))

@section('content')
    <div class="row">
        @can('reservation-list')
            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                <a href="{{ route('places.index') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon l-bg-red">
                            <i class="fas fa-align-left"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="padding-20">
                                <div class="text-right">
                                    <h3 class="font-light mb-0">
                                        <i class="ti-arrow-up text-success"></i>
                                        {{ $places->count() }}
                                    </h3>
                                    <span class="text-muted">კატეგორიები</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        @endcan

        @can('category-list')
            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                <a href="{{ route('main-categories') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon l-bg-green">
                            <i class="fas fa-car"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="padding-20">
                                <div class="text-right">
                                    <h3 class="font-light mb-0">
                                        <i class="ti-arrow-up text-success"></i>
                                        {{ $categories->count() }}
                                    </h3>
                                    <span class="text-muted">მოდელები</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        @endcan

        @can('product-list')
            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                <a href="{{ route('products.index') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon l-bg-purple">
                            <i class="fas fa-box-open"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="padding-20">
                                <div class="text-right">
                                    <h3 class="font-light mb-0">
                                        <i class="ti-arrow-up text-success"></i>
                                        {{ $productCount->count() }}
                                    </h3>
                                    <span class="text-muted">ნაწილები</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        @endcan

        {{-- @can('place-list')
            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                <a href="{{ route('places.index') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon l-bg-orange">
                            <i class="far fa-bell"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="padding-20">
                                <div class="text-right">
                                    <h3 class="font-light mb-0">
                                        <i class="ti-arrow-up text-success"></i>
                                        {{ $places->count() }}
                                    </h3>
                                    <span class="text-muted">@lang('dashboard.Places')</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        @endcan --}}

        {{-- @can('table-list')
            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                <a href="{{ route('tables.index') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon l-bg-yellow">
                            <i class="fas fa-table"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="padding-20">
                                <div class="text-right">
                                    <h3 class="font-light mb-0">
                                        <i class="ti-arrow-up text-success"></i>
                                        {{ $tables->count() }}
                                    </h3>
                                    <span class="text-muted">@lang('dashboard.Tables')</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        @endcan --}}

        {{-- @can('view-gallery')
            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                <a href="{{ url('admin/images') }}">
                    <div class="card card-statistic-1">
                        <div class="card-icon l-bg-cyan">
                            <i class="far fa-images"></i>
                        </div>
                        <div class="card-wrap">
                            <div class="padding-20">
                                <div class="text-right">
                                    <h3 class="font-light mb-0">
                                        <i class="ti-arrow-up text-success"></i>
                                        {{ $images->count() }}
                                    </h3>
                                    <span class="text-muted">@lang('dashboard.Images')</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        @endcan --}}
        {{-- @can('view-events')
        <div class="col-lg-4 col-md-6 col-sm-6 col-12">
            <a href="#0">
                <div class="card card-statistic-1">
                    <div class="card-icon l-bg-orange">
                        <i class="fas fa-calendar-alt"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="padding-20">
                            <div class="text-right">
                                <h3 class="font-light mb-0">
                                    <i class="ti-arrow-up text-success"></i>
                                    {{ $posts->count() }}
                                </h3>
                                <span class="text-muted">@lang('Events')</span>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        @endcan --}}
        {{-- @can('view-gallery') --}}
        {{-- <div class="col-lg-4 col-md-6 col-sm-6 col-12">
            <a href="{{ url('admin/images') }}">
                <div class="card card-statistic-1">
                    <div class="card-icon l-bg-orange">
                        <i class="fas fa-chart-bar"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="padding-20">
                            <div class="text-right">
                                <h3 class="font-light mb-0">
                                    <i class="ti-arrow-up text-success"></i>
                                    {{ $images->count() }}
                                </h3>
                                <span class="text-muted">@lang('Events')</span>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div> --}}
        {{-- @endcan --}}

    </div>

@endsection
