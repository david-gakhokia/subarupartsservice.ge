@extends('front.layouts.app')

@section('content')
    <section class="categories__section section--padding">
        <div class="container">
            <div class="mb-30">
                <h2 class="text-center">შეარჩიე მოდელი </h2>
            </div>
            <div class="categories__inner--style3 d-flex">
                @foreach ($categories as $category)
                    @if ($category->parent_id == null)
                        {{-- მხოლოდ ძირითადი კატეგორიები --}}
                        <div class="categories__card--style3 text-center">
                            <a class="categories__card--link" href="{{ url('category/' . $category->id) }}">
                                <div class="categories__thumbnail">
                                    <img class="categories__thumbnail--img" src="{{ asset($category->image_link) }}"
                                        alt="categories-img">
                                </div>
                                <div class="categories__content style3">
                                    <h2 class="categories__content--title">{{ $category->name }}</h2>
                                </div>
                            </a>
                        </div>
                    @endif
                @endforeach

            </div>
        </div>
    </section>
@endsection
