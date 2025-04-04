<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreMessageRequest;
use App\Models\Message;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MessageController extends Controller
{
    public function detail()
    {
        $all_message = Message::where('restaurant_id', '=', Auth::user()->restaurant_id)->get();

        return view('backend.messages.detail', compact('all_message'));
    }

    public function index()
    {
        $all_message = Message::where('restaurant_id', '=', Auth::user()->restaurant_id)->get();

        return view('backend.messages.index', compact('all_message'));
    }


    public function show($id)
    {
        $message = Message::where('restaurant_id', '=', Auth::user()->restaurant_id)->findOrFail($id);

        return view('backend.messages.show', compact('message'));
    }

    public function destroy($id)
    {
        Message::where('restaurant_id', '=', Auth::user()->restaurant_id)->find($id)->delete();

        return redirect()
            ->route('messages.index')
            ->withSuccessMessage(__('alerts.Record has been deleted'));
    }
}
