@extends('backend.layouts.app')

@section('title', __('dashboard.Categories'))

@section('content')
    <div class="container">
        <h1>@lang('dashboard.Categories')</h1>
        <ul>
            @each('backend.categories.category-item', $categories, 'category')
        </ul>
    </div>
@endsection
