@extends('backend.layouts.app')

@section('title', __('dashboard.View'))

@section('content')


    <div class="row mt-sm-4">

        <div class="col-12 col-md-12 col-lg-6">

            <div class="card">
                <div class="card-header">
                    <h4>@lang('dashboard.View')</h4>
                </div>
                <div class="card-body">
                    <div class="py-4">
                        <p class="clearfix">
                            <span class="float-left">
                                @lang('dashboard.Name')
                            </span>
                            <span class="float-right text-muted">
                                {{ $category->id }}
                            </span>
                        </p>
                        <p class="clearfix">
                            <span class="float-left">
                                @lang('dashboard.Email')
                            </span>
                            <span class="float-right text-muted">
                                {{ $category->name }}
                            </span>
                        </p>
                        <p class="clearfix">
                            <span class="float-left">
                                @lang('Resturants')
                            </span>
                            <span class="float-right text-muted">

                                <p>{{ $restaurants = json_decode($category->restaurants) }}</p>


                                {{-- @foreach ($restaurants as $restaurant)
                                <p>{{ $restaurants->id }}</p>
                                @endforeach --}}
                            </span>
                        </p>
                    </div>
                </div>
                <div class="card-footer text-right">
                    <a class="btn btn-primary" href="{{ route('sub-categories') }}">
                        <i class="fas fa-arrow-circle-left"></i> @lang('dashboard.Back')
                    </a>
                </div>
            </div>
        </div>
    </div>



@endsection
