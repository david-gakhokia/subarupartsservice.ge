<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\PlaceResource;
use App\Models\Image;
use App\Models\Product;
use Illuminate\Http\Request;

class ApiImageController extends Controller
{
    public function index()
    {
        // return PlaceResource::collection(Place::all());

        $images = Image::where('status', 1)
            ->orderBy('rank')
            ->get();
        return $images;
    }

    public function show($id)
    {
        $image = Image::where('status', 1)->findOrFail($id);

        return $image;
    }
}
