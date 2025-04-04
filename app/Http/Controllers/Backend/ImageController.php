<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Image;
use App\Models\Product;
use App\Models\Place;
use App\Models\Project;
use App\Models\Service;
use App\Models\Restaurant;
use Illuminate\Support\Facades\Auth;

class ImageController extends Controller
{
    public function index()
    {
        $images = Image::orderBy('id', 'DESC')
            ->where('status', 1)
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->get();

        return view('backend.images.index', compact('images'));
    }

    public function create()
    {
        // $products = Product::translatedIn(app()->getLocale())
        //     ->where('restaurant_id', '=', Auth::user()->restaurant_id)
        //     ->where('status', 1)
        //     ->get();
        $restaurants = Restaurant::translatedIn(app()->getLocale())
            ->where('id', '=', Auth::user()->restaurant_id)
            ->where('status', 1)
            ->get();
        $places = Place::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->where('status', 1)
            ->get();

        return view('backend.images.create', compact('restaurants', 'places'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'image' => 'required',
            'status' => 'required',
        ]);

        $images = $request->image;
        foreach ($images as $image) {
            $image_new_name = time() . $image->getClientOriginalName();
            $image->move('images/product_images', $image_new_name);
            $post = new Image();
            $post->rank = Image::where('product_id', $request->product_id)->count() + 1;
            // $post->rank = Image::where('project_id', $request->project_id)->count() + 1;
            $post->product_id = $request->product_id;
            $post->restaurant_id = $request->restaurant_id;
            $post->place_id = $request->place_id;
            $post->name = $request->name;
            $post->status = $request->status;
            $post->image = 'images/product_images/' . $image_new_name;
            $post->save();
        }

        return redirect()
            ->route('images.create')
            ->withSuccessMessage(__('alerts.New record has been added'));
    }

    public function show($id)
    {
        return $id;
    }

    public function edit($id)
    {
        $image = Image::findOrFail($id);
        $categories = Category::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->get();

        $products = Product::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->get();

        $places = Place::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->where('status', 1)
            ->get();

        $restaurants = Restaurant::translatedIn(app()->getLocale())
            ->where('id', '=', Auth::user()->restaurant_id)
            ->where('status', 1)
            ->get();

        return view('backend.images.edit', compact('image', 'categories', 'products','places' , 'restaurants'));
    }

    public function update(Request $request, $id)
    {
        $data = $request->all();

        if ($image = $request->file('image')) {
            $destinationPath = 'images/project_images';
            $profileImage = date('YmdHis') . '.' . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $data['image'] = 'images/project_images/' . $profileImage;
        }

        Image::findOrFail($id)->update($data);

        return redirect()
            ->route('images.index')
            ->withSuccessMessage(__('alerts.Record has been updated'));
    }

    public function destroy($id)
    {
        Image::find($id)->delete();

        return redirect()
            ->route('images.index')
            ->withSuccessMessage(__('alerts.Record has been deleted'));
    }
}
