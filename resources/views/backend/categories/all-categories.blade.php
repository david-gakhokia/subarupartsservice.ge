@extends('backend.layouts.app')

@section('title', __('dashboard.Categories'))

@section('content')
    <div class="container">
        <h1>@lang('dashboard.Categories')</h1>
        <div class="mb-3">
            <a href="{{ route('categories.create') }}" class="btn btn-primary">@lang('dashboard.Add Category')</a>
        <ul>
            @each('backend.categories.category-item', $categories, 'category')
        </ul>
    </div>
@endsection
