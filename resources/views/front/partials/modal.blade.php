@forelse ($productsByCategories as $item)
<div class="modal fade" id="productModal-{{ $item->id }}" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog quickview__main--wrapper modal-dialog-centered">
      <div class="modal-content quickview__main__content">
        <div class="modal-header quickview_m_header">
            <button type="button" class="btn-close quickview__close--btn" data-bs-dismiss="modal" aria-label="Close">✕</button>
        </div>
        <div class="modal-body quickview__inner">
            <div class="row row-cols-lg-2 row-cols-md-2">
                <div class="col">
                    <div class="quickview__gallery">
                        <div class="product__media--preview  swiper">
                            <div class="swiper-wrapper">
          
                                <div class="swiper-slide">
                                    <div class="product__media--preview__items">
                                        <a class="product__media--preview__items--link glightbox" data-gallery="product-media-preview" ><img class="product__media--preview__items--img" src="{{ asset($item->image_link) }}" alt="product-media-img"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product__media--nav swiper">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="product__media--nav__items">
                                        <img class="product__media--nav__items--img" src="{{ asset($item->image_link) }}" alt="product-nav-img">
                                    </div>
                                </div>
                                @if($item->image = null)
                                <div class="swiper-slide">
                                    <div class="product__media--nav__items">
                                        <img class="product__media--nav__items--img" src="{{ asset('uploads/products'.$item->image) }}" alt="product-nav-img">
                                    </div>
                                </div>
                                @else
                                <div class="swiper-slide">
                                    <div class="product__media--nav__items">
                                        <img class="product__media--nav__items--img" src="{{ asset($item->image_link) }}" alt="product-nav-img">
                                    </div>
                                </div>
                                @endif

 
                            </div>
                            <div class="swiper__nav--btn swiper-button-next">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"  class=" -chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg>
                            </div>
                            <div class="swiper__nav--btn swiper-button-prev">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"  class=" -chevron-left"><polyline points="15 18 9 12 15 6"></polyline></svg>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="quickview__info">
                        <form action="#">
                            <h2 class="product__details--info__title mb-15">{{  $item->name  }}</h2>
                                
                            <div class="product__card--price mb-15">
                                <span class="current__price">{{  $item->price  }} GEL</span>
                                @if($item->discounted_price != 0)
                                    <span class="old__price"> {{ $item->discounted_price }} GEL</span>
                                @endif
                                
                            </div>
                            <p class="product__details--info__desc mb-15">{{ $item->description }}</p>
                            {{-- <p class="product__details--info__desc mb-15">{{ $category->name }}</p> --}}
                          
     
                        </form>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </div>
</div>
@endforeach