<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\Video;
use App\Models\Project;
use App\Models\Restaurant;
use Illuminate\Support\Facades\Auth;

class VideoController extends Controller
{

    public function index()
    {
        $videos = Video::orderBy('id', 'DESC')
        ->where('status', 1)
        ->where('restaurant_id', '=', Auth::user()->restaurant_id)
        ->get();
        return view('backend.videos.index', compact('videos'));
    }


    public function create()
    {
        $products = Product::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->get();
        $restaurants = Restaurant::translatedIn(app()->getLocale())
            ->where('id', '=', Auth::user()->restaurant_id)
            ->where('status', 1)
            ->get();

        $categories = Category::all();

        return view('backend.videos.create', compact('products', 'categories','restaurants'));
    }


    public function store(Request $request)
    {
        $data = $request->all();
        Video::create($data);

        return redirect()->route('videos.index')->withSuccessMessage(__('alerts.New record has been added'));
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $video = Video::findOrFail($id);
        $products = Product::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->get();

        return view('backend.videos.edit', compact('video', 'products'));
    }


    public function update(Request $request, $id)
    {
        $data = $request->all();

        Video::findOrFail($id)->update($data);

        return redirect()->route('videos.index')->withSuccessMessage(__('alerts.Record has been updated'));
    }


    public function destroy($id)
    {
        video::find($id)->delete();

        return redirect()->route('videos.index')->withSuccessMessage(__('alerts.Record has been deleted'));
    }
}
