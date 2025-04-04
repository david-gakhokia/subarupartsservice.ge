@extends('backend.layouts.app')

@section('title', __('dashboard.Products'))

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


    <section class="section">
        <div class="section-body">
            <div class="card note">
                <div class="card-body">
                    <div class="page-content note-has-grid">
                        <ul class="nav nav-pills p-3 mb-3 rounded-pill align-items-center">
                            <li class="nav-item">
                                <a href="javascript:void(0)"
                                    class="nav-link rounded-pill note-link d-flex align-items-center px-2 px-md-3 mr-0 mr-md-2 active"
                                    id="all-category">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                        viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                        stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-circle">
                                        <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
                                        <polyline points="22 4 12 14.01 9 11.01"></polyline>
                                    </svg><span class="d-md-block">{{ __('All') }}</span>
                                </a>
                            </li>
                            @forelse ($categories as $key => $category)
                                @if ($category->parent_id != null)
                                    <li class="nav-item">
                                        <a href="javascript:void(0)"
                                            class="nav-link rounded-pill note-link d-flex align-items-center px-2 px-md-3 mr-0 mr-md-2"
                                            id="note-{{ $category->id }}"> <svg xmlns="http://www.w3.org/2000/svg"
                                                width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                stroke-linejoin="round" class="feather feather-star">
                                                <polygon
                                                    points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2">
                                                </polygon>
                                            </svg><span class="d-md-block">{{ $category->name }}</span>
                                        </a>
                                    </li>
                                @endif
                            @empty
                            @endforelse
                            <li class="nav-item ms-auto">
                                <a href="{{ route('products.create') }}" class="btn btn-icon icon-left btn-success rounded-pill"><i
                                        class="fas fa-plus"></i> {{ __('Add') }}</a>
                            </li>
                        </ul>

                        <div class="tab-content bg-transparent">
                            <div id="note-full-container" class="note-has-grid row">
                                {{-- @forelse ($categories as $key => $category)
                                    @if ($category->parent_id != null)
                                        @foreach ($category->children as $childKey => $child) --}}
                                @foreach ($categories as $category)
                                    @if ($category->parent_id != null)
                                        @foreach ($category->products as $item)
                                            <div class="col-md-3 all-category note-{{ $category->id }}">
                                                <div class="note-card note-card-body note-bg-green">
                                                    <span class="side-stick"></span>
                                                    <div class="note-header">
                                                        <h6 class="note-title text-truncate mb-0"
                                                            data-noteheading="Birthday Gift for wife">
                                                            {{ $item->name }}
                                                        </h6>
                                                        <div class="text ml-2">
                                                            <span class="mr-1">
                                                                <a href="{{ route('products.edit', $item->id) }}">
                                                                    <i class="far fa-edit favourite-note font-17"></i>
                                                                </a>
                                                            </span>
                                                            <span class="mr-1">
                                                                <form action="{{ route('products.destroy', $item->id) }}" method="POST" style="display:inline;">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="submit" class="btn btn-link p-0 m-0">
                                                                        <i class="far fa-trash-alt remove-note font-17"></i>
                                                                    </button>
                                                                </form>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <p class="note-date font-12">{{ $item->rank }}</p>
                                                    <div class="note-content">
                                                        <p class="note-inner-content">{{ $item->description }}</p>
                                                        <img src="{{ $item->image ? asset('uploads/products/' . $item->image) : 'https://img.icons8.com/windows/36/000000/no-image.png' }}"
                                                            width="100%">
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif
                                    @endforeach
                                {{-- @empty
                                    <p>No categories found</p>
                                @endforelse --}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
