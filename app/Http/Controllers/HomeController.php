<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Place;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{

    public function index()
    {
        $categories = Category::with('children')
            ->translatedIn(app()->getLocale())
            ->orderBy('rank', 'ASC')
            ->where('status', 1)
            ->get();

        return view('front.home', compact('categories'));
    }

    public function products()
    {
        $products = Product::with('category')
            ->translatedIn(app()->getLocale())
            ->orderBy('rank', 'ASC')
            ->get();

        return view('front.products', compact('products'));
    }

    public function category($id)
    {
        $category = Category::where('id', '=', $id)
            ->where('status', 1)
            ->first();

        $subCategories = Category::where('parent_id', '=', $id)
            ->where('status', 1)
            ->get();

        $productsByCategories = Product::where('category_id', '=', $id)
            ->where('status', 1)
            ->get();

        // Fetch places with product counts
        $places = Place::withCount(['products' => function ($query) use ($id) {
            $query->where('category_id', $id);
        }])->get();

        // მოძებნეთ წინა და შემდეგი კატეგორიები
        $previousCategory = Category::where('id', '<', $id)
            ->where('status', 1)
            ->orderBy('id', 'desc')
            ->first();

        $nextCategory = Category::where('id', '>', $id)
            ->where('status', 1)
            ->orderBy('id', 'asc')
            ->first();

        // return $productsByCategories;   

        return view('front.category', compact('category', 'subCategories', 'productsByCategories', 'previousCategory', 'nextCategory', 'places'));
    }

    public function show($id)
    {
        $product = Product::findOrFail($id);
        return response()->json([
            'id' => $product->id,
            'name' => $product->name,
            'image_link' => asset($product->image_link),
            'description' => $product->description,
            'price' => $product->price,
        ]);
    }

    public function filter(Request $request)
    {
        $placeId = $request->input('place');
        $categoryId = $request->input('category');

        // ფილტრაცია პროდუქციის მიხედვით
        $productsByCategories = Product::where('place_id', $placeId)
            ->where('category_id', $categoryId)
            ->get();

        $places = Place::withCount('products')->get();
        $category = Category::find($categoryId);

        return view('front.category', compact('productsByCategories', 'places', 'category'));
    }


    public function search(Request $request)
    {
        $query = $request->input('query');
    
        $products = Product::whereHas('translations', function ($q) use ($query) {
            $q->where('locale', app()->getLocale())
              ->where(function ($q) use ($query) {
                  $q->where('name', 'LIKE', "%{$query}%")
                    ->orWhere('description', 'LIKE', "%{$query}%");
              });
        })->get();
    
        return view('front.products.search_results', compact('products', 'query'));
    }
}
