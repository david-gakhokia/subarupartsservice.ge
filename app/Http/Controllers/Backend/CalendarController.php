<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Reservation;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class CalendarController extends Controller
{
    public function index()
    {
        $reservations = Reservation::where('restaurant_id', Auth::user()->restaurant_id)
            ->get(['id', 'date', 'name', 'time']); // საჭირო ველები

        $events = $reservations->map(function ($reservation) {
            $time = Carbon::parse($reservation->time);
            return [
                'title' => $reservation->name . ' (' . $time->format('H:i') . ')', // სახელი და დრო
                'start' => $reservation->date, // დარწმუნდით, რომ ეს ველი შეიცავს თარიღსა და დროს
                'url' => route('reservations.show', $reservation->id), // URL რეზერვაციის დეტალების გვერდზე
            ];
        });

        return view('backend.calendar.index', ['reservations' => $events]);
    }
}
