<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ReservationResource;
use App\Models\Reservation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Carbon\Carbon;

class ApiReservationController extends Controller
{
    public function reservation_all()
    {
        $reservations = Reservation::orderBy('id', 'DESC')->get();
        return $reservations;
    }

    public function lastMinute()
    {
        $oneMinuteAgo = Carbon::now()->subMinute();
        $reservations = Reservation::where('created_at', '>=', $oneMinuteAgo)->get();

        return $reservations;
    }

    public function lastMonth()
    {

        $oneMonthAgo = Carbon::now()->subMonth();
        $reservations = Reservation::where('created_at', '>=', $oneMonthAgo)->get();

        return $reservations;
    }

    public function last24Hours()
    {
        $twentyFourHoursAgo = Carbon::now()->subDay();
        $reservations = Reservation::where('created_at', '>=', $twentyFourHoursAgo)->get();

        return $reservations;
    }

    public function last3Months()
    {
        $threeMonthsAgo = Carbon::now()->subMonths(3);
        $reservations = Reservation::where('created_at', '>=', $threeMonthsAgo)->get();

        return $reservations;
    }
    public function lastYear()
    {
        $oneYearAgo = Carbon::now()->subYear();
        $reservations = Reservation::where('created_at', '>=', $oneYearAgo)->get();

        return $reservations;
    }

    public function index()
    {
        return ReservationResource::collection(Reservation::all());

    }
    public function reservation_by_restaurantId($id)
    {

        $reservations = Reservation::where('restaurant_id', '=', $id)
        ->orderBy('id', 'DESC')
        ->with('table')
        ->with('place')
        ->get();

        return $reservations;

    }


}
