<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreSettingRequest;
use App\Http\Requests\UpdateRestaurantRequest;
use App\Models\Network;
use App\Models\Restaurant;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;



class SettingController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function index()
    {
        $restaurant = Restaurant::translatedIn(app()->getLocale())->where('id', '=', Auth::user()->restaurant_id)->first();

        return view('backend.settings.index', compact('restaurant'));
    }


    public function update(UpdateRestaurantRequest $request)
    {
        $restaurant = Restaurant::findOrFail(Auth::user()->restaurant_id);

        $data = $request->all();

        // Add +995 prefix if not already present
        if (!str_starts_with($data['whatsapp'], '+995')) {
            $data['whatsapp'] = '+995' . $data['whatsapp'];
        }

        if (!str_starts_with($data['manager_whatsapp'], '+995')) {
            $data['manager_whatsapp'] = '+995' . $data['manager_whatsapp'];
        }

        if ($logo = $request->file('logo')) {
            $destinationPath = 'uploads/restaurants';
            $logoImage = date('YmdHis') . '.' . $logo->getClientOriginalExtension();
            $logo->move($destinationPath, $logoImage);
            $data['logo'] = "$logoImage";
        }
        if ($cover = $request->file('cover')) {
            $destinationPath = 'uploads/restaurants';
            $coverImage = date('YmdHi') . '.' . $cover->getClientOriginalExtension();
            $cover->move($destinationPath, $coverImage);
            $data['cover'] = "$coverImage";
        }

        $restaurant->update($data);

        return redirect()
            ->route('my-settings')
            ->withSuccessMessage(__('alerts.Record has been updated'));
    }




    public function networks()
    {
        $networks = Network::all();
        return view('backend.settings.networks.index', compact('networks'));
    }

    public function save_network(Request $request)
    {

        $data = $request->all();

        if ($image = $request->file('image')) {
            $destinationPath = 'uploads/settings';
            $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $data['image'] = "$profileImage";
        }

        Network::create($data);

        return back()->withSuccessMessage(__('alerts.Record has been updated'));
    }



    public function show_network($id)
    {
        $network = Network::findOrFail($id);

        return view('backend.settings.networks.show', compact('network'));
    }

    public function edit_network($id)
    {
        $network = Network::findOrFail($id);

        return view('backend.settings.networks.edit', compact('network'));
    }


    public function destroy($id)
    {
        Network::find($id)->delete();
        return back()->withSuccessMessage(__('alerts.Record has been deleted'));
    }
}
