<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Category;
use App\Models\Place;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;


class ProductController extends Controller
{
    public function index()
    {
        // $categories = Category::translatedIn(app()->getLocale())
        
        //     ->with('products')
        //     ->take(10)
        //     ->get();

            // return $categories;

        $categories = Product::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->with('category')
            ->orderBy('rank', 'ASC')
            ->get();
        // return $categories;

        return view('backend.products.index', compact('categories'));
    }

    public function grid()
    {
        $categories = Category::translatedIn(app()->getLocale())
        ->where('restaurant_id', '=', Auth::user()->restaurant_id)
        ->whereNotNull('rank')
        ->with('products')
        ->orderBy('rank', 'ASC')
        ->get();
        return view('backend.products.grid', compact('categories'));
    }

    public function create()
    {
        $subCategories = Category::translatedIn(app()->getLocale())
         
            ->orderBy('rank', 'ASC')
            // ->where('parent_id', '<>', '1')
            ->get();
            $places = Place::translatedIn(app()->getLocale())
            ->get();
        return view('backend.products.create', compact('subCategories', 'places'));
    }

    public function store(StoreProductRequest $request)
    {
        $data = $request->all();

        if ($image = $request->file('image')) {
            $destinationPath = 'uploads/products';
            $profileImage = date('YmdHis') . '.' . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $data['image'] = "$profileImage";
        }

        // ავტორიზებული მომხმარებლის რესტორნის ID-ის დამატება
        $data['restaurant_id'] = auth()->user()->restaurant_id;

        // rank ველის განსაზღვრა
        $maxRank = Product::where('category_id', $data['category_id'])->max('rank');
        $data['rank'] = $maxRank ? $maxRank + 1 : 1;

        Product::create($data);

        return redirect()
            ->route('products.create')
            ->withSuccessMessage(__('alerts.New record has been added'));
    }



    public function edit($id)
    {
        $product = Product::translatedIn(app()->getLocale())->findOrFail($id);
        $subCategories = Category::translatedIn(app()->getLocale())

        ->orderBy('rank', 'ASC')
        // ->where('parent_id', '<>', '1')
        ->get();

        $places = Place::translatedIn(app()->getLocale())
        ->get();

        // return $product;
        return view('backend.products.edit', compact(['product', 'subCategories','places']));
    }

    public function update(UpdateProductRequest $request, $id)
    {
        $data = $request->all();

        if ($image = $request->file('image')) {
            $destinationPath = 'uploads/products';
            $profileImage = date('YmdHis') . '.' . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $data['image'] = "$profileImage";
        }

        // ავტორიზებული მომხმარებლის რესტორნის ID-ის დამატება
        $data['restaurant_id'] = auth()->user()->restaurant_id;


        Product::findOrFail($id)->update($data);

        return redirect()
            ->route('products.index')
            ->withSuccessMessage(__('alerts.Record has been updated'));
    }

    public function deleteImage($id)
    {
        $product = Product::findOrFail($id);
        if ($product->image) {
            $imagePath = public_path('uploads/products/' . $product->image);
            if (file_exists($imagePath)) {
                unlink($imagePath);
            }
            $product->image = null;
            $product->save();
        }
        return redirect()->back()->with('success', 'Image deleted successfully.');
    }



    public function destroy($id)
    {
        $product = Product::find($id);
        if ($product) {
            $product->delete();
            return redirect()->route('products.index')->withSuccessMessage(__('alerts.Record has been deleted'));
        }
        return redirect()->route('products.index')->withSuccessMessage('error', __('alerts.Product not found.'));
    }





}
