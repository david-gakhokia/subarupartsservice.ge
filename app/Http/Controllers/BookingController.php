<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Reservation;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;



class BookingController extends Controller
{

    public function last24Hours()
    {
        $twentyFourHoursAgo = Carbon::now()->subDay();
        $reservations = Reservation::where('restaurant_id', '=', Auth::user()->restaurant_id)->where('created_at', '>=', $twentyFourHoursAgo)->get();
        return $reservations;
    }

}
