<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreAboutRequest;
use App\Models\About;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {
        $about = About::translatedIn(app()->getLocale())->first();
        return view('backend.pages.about', ['about' => $about]);
    }

    public function store(StoreAboutRequest $request)
    {
        $firstData = About::count();

        if ($firstData == 0) {

            $data = $request->all();

            if ($cover = $request->file('cover')) {
                $destinationPath = 'uploads/about';
                $logoImage = date('YmdHis') . "." . $cover->getClientOriginalExtension();
                $cover->move($destinationPath, $logoImage);
                $data['cover'] = "$logoImage";
            }
            if ($image = $request->file('image')) {
                $destinationPath = 'uploads/about';
                $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
                $image->move($destinationPath, $profileImage);
                $data['image'] = "$profileImage";
            }
            if ($image2 = $request->file('image2')) {
                $destinationPath = 'uploads/about';
                $profileImage = date('YmdHis') . "." . $image2->getClientOriginalExtension();
                $image2->move($destinationPath, $profileImage);
                $data['image2'] = "$profileImage";
            }            
            

            About::create($data);

            return $data;

            return back()
                ->withSuccessMessage(__('alerts.New record has been added'));
        } else {

            $firstData = About::first();

            $data = About::find($firstData->id);

            $data = $request->all();

            if ($cover = $request->file('cover')) {
                $destinationPath = 'uploads/about';
                $profileImage = date('YmdHis') . "." . $cover->getClientOriginalExtension();
                $cover->move($destinationPath, $profileImage);
                $data['cover'] = "$profileImage";
            }
            if ($image = $request->file('image')) {
                $destinationPath = 'uploads/about';
                $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
                $image->move($destinationPath, $profileImage);
                $data['image'] = "$profileImage";
            }
            if ($image2 = $request->file('image2')) {
                $destinationPath = 'uploads/about';
                $profileImage = date('YmdHis') . "." . $image2->getClientOriginalExtension();
                $image2->move($destinationPath, $profileImage);
                $data['image2'] = "$profileImage";
            }


            About::findOrFail($firstData->id)->update($data);
            return back()->withSuccessMessage(__('alerts.Record has been updated'));
        }
    }
}
