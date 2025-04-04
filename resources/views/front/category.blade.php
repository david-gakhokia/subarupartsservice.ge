@extends('front.layouts.app')

@section('content')

<section class="breadcrumb__section breadcrumb__bg">
    <div class="container">
        <div class="row row-cols-1">
            <div class="col">
                <div class="breadcrumb__content text-center">
                    <h1 class="breadcrumb__content--title"> <a href="{{ url('category/' . $category->id) }}"> ყველა</a></h1>
                    <ul class="breadcrumb__content--menu d-flex justify-content-center">
                        @foreach ($places as $item)
                        <li class="breadcrumb__content--menu__items"><a href="{{ route('products.filter', ['place' => $item->id, 'category' => $category->id]) }}">{{ $item->name }} </a></li>
                        {{-- <li class="breadcrumb__content--menu__items"><span>{{ $item->name }} </span></li> --}}
                        @endforeach

                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
    <!-- Start shop section -->
    <div class="shop__section section--padding">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-4 shop-col-width-lg-4">
                    <div class="shop__sidebar--widget widget__area d-none d-lg-block">

                        {{-- @include('front.sections.categories') --}}

                        <div class="single__widget widget__bg">
                            <h2 class="widget__title h3"><a href="{{ url('/') }}">კატეგორია</a></h2>
                            <ul class="widget__form--check">
                                <h4 class="title h4 mb-1"><a href="{{ url('category/' . $category->id) }}"> ყველა </a></h4>
                                @foreach ($places as $item)
                                    <li class="widget__form--check__list">
                                        <a
                                            href="{{ route('products.filter', ['place' => $item->id, 'category' => $category->id]) }}">
                                            <p class="widget__form--check__list--title"> {{ $item->name }}  </p>
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>

                    </div>
                </div>
                <div class="col-xl-9 col-lg-8 shop-col-width-lg-8">
                    <div class="shop__right--sidebar">
                        <div class="categories__shop mb-10">
                            <h2 class="text-center mb-4">{{ $category->name }}</span></h2>
                          
                            <ul class="categories__shop--inner">
                                @forelse ($productsByCategories as $item)
                                    <li class="categories__shop--card">
                                        <a class="categories__shop--card__link" data-bs-toggle="modal"
                                            data-bs-target="#productModal-{{ $item->id }}" 
                                            href="javascript:void(0)">
                                            <div class="categories__thumbnail mb-15">
                                                <img class="categories__thumbnail--img" src="{{ asset($item->image_link) }}"
                                                    alt="categories-img">
                                            </div>
                                            <div class="categories__content">
                                                <h2 class="categories__content--title">{{ $item->name }}</h2>
                                                <span class="categories__content--subtitle">{{ $item->price }} GEL</span>
                                            </div>
                                        </a>
                                    </li>
                                @endforeach

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @include('front.partials.modal')
@endsection
