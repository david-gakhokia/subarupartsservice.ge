<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Http\Requests\StorePlaceRequest;
use App\Http\Requests\UpdateContactRequest;
use App\Models\Place;
use App\Models\Restaurant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PlaceController extends Controller
{

    public function index()
    {

    $places = Place::translatedIn(app()->getLocale())
        ->where('restaurant_id', '=', Auth::user()->restaurant_id)
        ->orderBy('rank')
        ->get();
    $restaurants = Restaurant::translatedIn(app()->getLocale())
        ->where('id', '=', Auth::user()->restaurant_id)
        ->where('status', 1)
        ->get();


        return view('backend.places.index', compact('places', 'restaurants'));
    }

    public function edit($id)
    {
        $restaurants = Restaurant::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->get();
        $place = Place::translatedIn(app()->getLocale())->findOrFail($id);
        return view('backend.places.edit', compact('place', 'restaurants'));
    }

    public function store(StorePlaceRequest $request)
    {
        $data = $request->all();

        if ($image = $request->file('image')) {
            $destinationPath = 'uploads/places';
            $profileImage = date('YmdHis') . '.' . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $data['image'] = "$profileImage";
        }

        if ($render_image = $request->file('render_image')) {
            $destinationPath = 'uploads/places';
            $renderImage = date('YmdHi') . '.' . $render_image->getClientOriginalExtension();
            $render_image->move($destinationPath, $renderImage);
            $data['render_image'] = "$renderImage";
        }
        Place::create($data);

        return redirect()
            ->route('places.index')
            ->withSuccessMessage(__('alerts.New record has been added'));
    }

    public function show($id)
    {
        //
    }

    public function update(StorePlaceRequest $request, $id)
    {
        $data = $request->all();

        if ($image = $request->file('image')) {
            $destinationPath = 'uploads/places';
            $profileImage = date('YmdHis') . '.' . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $data['image'] = "$profileImage";
        }
        if ($render_image = $request->file('render_image')) {
            $destinationPath = 'uploads/places';
            $renderImage = date('YmdHi') . '.' . $render_image->getClientOriginalExtension();
            $render_image->move($destinationPath, $renderImage);
            $data['render_image'] = "$renderImage";
        }
        Place::find($id)->update($data);
        return redirect()
            ->route('places.index')
            ->withSuccessMessage(__('alerts.Record has been updated'));
    }

    public function destroy($id)
    {
        Place::find($id)->delete();

        return redirect()
            ->route('places.index')
            ->withSuccessMessage(__('alerts.Record has been deleted'));
    }
}
