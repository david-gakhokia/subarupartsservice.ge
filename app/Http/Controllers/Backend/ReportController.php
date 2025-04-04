<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Reservation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;


class ReportController extends Controller
{

    public function index()
    {
        $reservations = Reservation::where('restaurant_id', '=', Auth::user()->restaurant_id)
        ->orderBy('id', 'DESC')
        ->get();
        return view('backend.reports.index',compact('reservations'));
    }

    public function all_reservations()
    {

       
        $reservations = Reservation::where('restaurant_id', '=', Auth::user()->restaurant_id)
            // ->whereBetween('created_at', [$thirtyDaysAgo, $now])
            ->where('status', 'Completed')
            ->orderBy('created_at', 'DESC')
            ->get();
    
        return view('backend.reports.booking.all-reservations', compact('reservations'));
    }

    public function last_month()
    {
        // ბოლო 30 დღის შუალედის განსაზღვრა
        $thirtyDaysAgo = Carbon::now()->subDays(30)->startOfDay();
        $now = Carbon::now()->endOfDay();
    
        // შემოწმება და ფილტრაცია ბოლო 30 დღის ჯავშნებისთვის
        $reservations = Reservation::where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->whereBetween('created_at', [$thirtyDaysAgo, $now])
            ->where('status', 'Completed')
            ->orderBy('created_at', 'DESC')
            ->get();
    
        return view('backend.reports.booking.last-30-day', compact('reservations'));
    }

    public function last_year()
    {
        // გასული 365 დღის შუალედის განსაზღვრა
        $oneYearAgo = Carbon::now()->subDays(365)->startOfDay();
        $now = Carbon::now()->endOfDay();

        // შემოწმება და ფილტრაცია გასული 365 დღის ჯავშნებისთვის

            $reservations = Reservation::where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->whereBetween('created_at', [$oneYearAgo, $now])
            ->where('status', 'Completed')
            ->orderBy('id', 'DESC')
            ->get();            

        return view('backend.reports.booking.last-365-day', compact('reservations'));
    }



    


    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
