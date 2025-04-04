@extends('backend.layouts.app')

@section('title', __('dashboard.Categories'))

@section('content')
<ul>
    @foreach ($subcategories as $subcategory)
        <li>
            {{ $subcategory->name }} | {{ $subcategory->id }}
            @if ($subcategory->children->isNotEmpty())
                {{-- @include('backend.categories.subcategories', ['subcategories' => $subcategory->children]) --}}
            @endif
        </li>
    @endforeach
</ul>
@endsection
