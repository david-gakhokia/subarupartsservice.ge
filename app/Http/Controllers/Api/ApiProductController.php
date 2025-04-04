<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ProductResource;
use App\Models\Image;
use App\Models\Product;
use App\Models\Client;
use App\Models\Video;
use App\Models\Category;

use Illuminate\Http\Request;

class ApiProductController extends Controller
{
    public function index()
    {
        $products = Product::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->orderBy('rank', 'ASC')
            ->get();

        return $products;
    }

    public function today_offers($id)
    {
    }

    public function latest_product()
    {
        $products = Product::translatedIn(app()->getLocale())
            ->latest()
            ->take(4)
            ->get();
        // return  'ok';
        return $products;
    }

    public function show($id)
    {
        $product = Product::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->findOrFail($id);

        return $product;
    }

    public function product_images($id)
    {
        $images = Image::where('product_id', '=', $id)
            ->where('status', 1)
            ->get();
        return $images;
    }

    public function product_videos($id)
    {
        $videos = Video::where('product_id', '=', $id)
            ->where('status', 1)
            ->get();
        return $videos;
    }
}
