<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function search_product(Request $request)
    {

        $query = $request->input('query');
        $locale = app()->getLocale();

        $products = Product::translatedIn($locale)
            ->whereTranslationLike('name', "%{$query}%", $locale)
            ->get();

        return view('front.products.search_results', compact('products'));
    }
}
