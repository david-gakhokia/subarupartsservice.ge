<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\PlaceResource;
use App\Models\Place;
use Illuminate\Http\Request;

class ApiPlaceController extends Controller
{
    public function index()
    {
        $places = Place::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->orderBy('rank')
            ->get();

        return $places;
        // return PlaceResource::collection(Place::all());
    }

    public function store(Request $request)
    {
        //
    }

    public function show($id)
    {
        $place = Place::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->findOrFail($id);

        return $place;
    }

    public function place_with_tables($id)
    {
        $place = Place::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->with('tables')
            ->findOrFail($id);

        return $place;
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
