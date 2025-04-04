<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryResource;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ApiCategoryController extends Controller
{
    public function categories_by_restaurantId($id)
    {
        $subCategories = Category::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', $id)
            ->where('status', '=', '1')
            ->orderBy('rank', 'ASC')
            ->get();

        return $subCategories;
    }

    public function main_category_by_restaurantId($id)
    {
        $subCategories = Category::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', $id)
            ->where('status', '=', '1')
            ->whereNull('parent_id')
            ->orderBy('rank', 'ASC')
            ->get();

        return $subCategories;
    }
    public function sub_category_by_restaurantId($id)
    {
        $subCategories = Category::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', $id)
            ->where('status', '=', '1')
            ->orderBy('rank', 'ASC')
            ->where('parent_id', '<>', '1')
            ->get();

        return $subCategories;
    }

    public function show($id)
    {
        $category = Category::where('id', '=', $id)
            ->where('status', 1)
            ->first();
        $products = Product::where('category_id', '=', $id)
            ->where('status', 1)
            ->get();

        return $products;
    }

}
