<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\SlideResource;
use App\Models\Slide;
use Illuminate\Http\Request;

class ApiSlideController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $slides = Slide::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->orderBy('rank')
            ->get();

        return $slides;
        // return SlideResource::collection(Slide::all());
    }

    public function show (Slide $slide,$id)
    {
        $slide = Slide::translatedIn(app()->getLocale())
        ->where('status', 1)
        ->findOrFail($id);

    return $slide;

        // return $slide->load('restaurants');

        // return view('frontend.slides.show', compact('slide'));
    }

    public function show1($id)
    {
        $slide = Slide::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->findOrFail($id);

        return $slide;
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
