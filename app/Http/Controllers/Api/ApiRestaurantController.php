<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Restaurant;

class ApiRestaurantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $restaurants = Restaurant::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->orderBy('Rank')
            ->get();
        return $restaurants;
    }

    public function store(Request $request)
    {
        //
    }

    public function show($id)
    {
        $restaurant = Restaurant::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->findOrFail($id);

        return $restaurant;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
