<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\StoreTableRequest;
use App\Http\Requests\UpdateTableRequest;
use App\Models\Table;
use App\Models\Place;
use App\Models\Restaurant;
use Illuminate\Support\Facades\Auth;

class TableController extends Controller
{
    public function index()
    {

        $tables = Table::translatedIn(app()->getLocale())
            ->orderBy('rank')
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)

            ->get();
        // return $tables;
        $places = Place::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->orderBy('rank')
            ->get();

        $restaurants = Restaurant::translatedIn(app()->getLocale())
            ->where('id', '=', Auth::user()->restaurant_id)
            ->where('status', 1)
            ->get();

        return view('backend.tables.index', compact('tables', 'places', 'restaurants'));
    }

    public function create()
    {
        $places = Place::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->orderBy('rank')
            ->get();

        return view('backend.tables.create', compact('places'));
    }

    public function store(StoreTableRequest $request)
    {
        $data = $request->all();

        if ($icon = $request->file('icon')) {
            $destinationPath = 'uploads/tables';
            $renderImage = date('YmdHi') . '.' . $icon->getClientOriginalExtension();
            $icon->move($destinationPath, $renderImage);
            $data['icon'] = "$renderImage";
        }

        if ($image = $request->file('image')) {
            $destinationPath = 'uploads/tables';
            $profileImage = date('YmdHis') . '.' . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $data['image'] = "$profileImage";
        }

        Table::create($data);

        return redirect()
            ->route('tables.create')
            ->withSuccessMessage(__('alerts.New record has been added'));
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $table = Table::translatedIn(app()->getLocale())->findOrFail($id);

        $places = Place::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->where('status', 1)
            ->orderBy('rank')
            ->get();



        $restaurants = Restaurant::translatedIn(app()->getLocale())
            ->where('id', '=', Auth::user()->restaurant_id)
            ->where('status', 1)
            ->get();
        return view('backend.tables.edit', compact('table', 'places', 'restaurants'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateTableRequest $request, $id)
    {
        $data = $request->all();

        if ($icon = $request->file('icon')) {
            $destinationPath = 'uploads/tables';
            $renderImage = date('YmdHi') . '.' . $icon->getClientOriginalExtension();
            $icon->move($destinationPath, $renderImage);
            $data['icon'] = "$renderImage";
        }

        if ($image = $request->file('image')) {
            $destinationPath = 'uploads/tables';
            $profileImage = date('YmdHis') . '.' . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $data['image'] = "$profileImage";
        }

        Table::find($id)->update($data);

        return redirect()
            ->route('tables.index')
            ->withSuccessMessage(__('alerts.Record has been updated'));
    }

    public function destroy($id)
    {
        Table::find($id)->delete();

        return redirect()
            ->route('tables.index')
            ->withSuccessMessage(__('alerts.Record has been deleted'));
    }
}
