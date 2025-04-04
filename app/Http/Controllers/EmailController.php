<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Reservation;

class EmailController extends Controller
{
    public function pending($id)
    {
        $reservation = Reservation::find($id);
        // return view('emails.client.pending', compact('reservation'));
        return view('emails.restaurant.pending', compact('reservation'));
        // return view('emails.admin.pending', compact('reservation'));
    }

    public function confirmed($id)
    {
        $reservation = Reservation::find($id);

        return view('emails.client.confirmed', compact('reservation'));
        // return view('emails.restaurant.confirmed', compact('reservation'));
        // return view('emails.admin.confirmed', compact('reservation'));
    }

    public function cancelled($id)
    {
        $reservation = Reservation::find($id);

        return view('emails.client.cancelled', compact('reservation'));
        // return view('emails.restaurant.cancelled', compact('reservation'));
        // return view('emails.admin.cancelled', compact('reservation'));
    }
}
