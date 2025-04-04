<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TicketContriller extends Controller
{
    public function index()
    {
        return view('backend.tickets.index');
    }
}
