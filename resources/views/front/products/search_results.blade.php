@extends('front.layouts.app')

@section('content')
    <div class="shop__section section--padding">
        <div class="container">
            <div class="row">
                @if ($products->isEmpty())
                    <p>No products found.</p>
                @else
                    <div class="col-xl-12 col-lg-8 shop-col-width-lg-8">
                        <div class="shop__right--sidebar">
                            <div class="categories__shop mb-50">
                       
                                <ul class="categories__shop--inner">
                                    @forelse ($products as $item)
                                        <li class="categories__shop--card">
                                            <a class="categories__shop--card__link" data-bs-toggle="modal"
                                                data-bs-target="#productModal-{{ $item->id }}"
                                                href="javascript:void(0)">
                                                <div class="categories__thumbnail mb-15">
                                                    <img class="categories__thumbnail--img"
                                                        src="{{ asset($item->image_link) }}" alt="categories-img">
                                                </div>
                                                <div class="categories__content">
                                                    <h2 class="categories__content--title">{{ $item->name }}</h2>
                                                    <span class="categories__content--subtitle">{{ $item->price }}
                                                        GEL</span>
                                                </div>
                                            </a>
                                        </li>
                                    @endforeach

                                </ul>
                            </div>
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </div>
@endsection
