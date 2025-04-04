<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Reservation;
use App\Models\Table;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use App\Mail\RestaurantPendingEmail;

class ReservationController extends Controller
{

    public function index()
    {
            $reservations = Reservation::where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->orderBy('id', 'DESC')
            ->get();

        return view('backend.reservations.index', compact('reservations'));
    }


    public function calendar()
    {
            $reservations = Reservation::where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->orderBy('id', 'DESC')
            ->get();

        return view('backend.calendar.index', compact('reservations'));
    }


    public function admin_table()
    {
            $reservations = Reservation::where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->orderBy('id', 'DESC')
            ->get();

        return view('backend.reservations.admin-table', compact('reservations'));
    }

    public function create()
    {

        if ( Auth::user()->roles->first()->name == 'admin') {
            $tables = Table::all();

        }else{
            $tables = Table::where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->get();
        }



        return view('backend.reservations.create', compact('tables'));
    }


    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $reservation = Reservation::find($id);
        $tables = Table::where('restaurant_id', '=', Auth::user()->restaurant_id)
        ->get();

        return view('backend.reservations.edit', compact('reservation', 'tables'));
    }

    public function review($id)
    {
        $reservation = Reservation::find($id);
        // $tables = Table::get()->all();
        $tables = Table::where('restaurant_id', '=', Auth::user()->restaurant_id)
        ->where('status', 1)
        ->get();

        return view('backend.reservations.review', compact('reservation', 'tables'));
    }



    public function update(Request $request, $id)
    {

        // ვალიდაციის მონაცემები
        $validateData = $request->validate(
            [
                'booking_id' => 'required',
                'name' => 'required',
                'email' => 'required|email',
                'phone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/',
                'date' => 'required',
                'time' => 'required',
                'seats' => 'required',
                'table_id' => 'required',
                'restaurant_email' => 'required|email',
                'status' => 'required',
            ],
            [
                'booking_id.required' => __('ID'),
                'name.required' => __('dashboard.Name'),
                'email.required' => 'input Email',
                'phone.required' => 'input Phone',
                'date.required' => 'input Date',
                'time.required' => 'input Time',
                'restaurant_email.required' => 'restaurant email',
                'table_id.required' => 'input Table',
                'status.required' => 'შეარჩიეთ ჯავშნის სტატუსი',
            ]
        );

        // მოძებნეთ და განაახლეთ $reservation ცვლადი
        $reservation = Reservation::findOrFail($id);
        $reservation->update($validateData);

        // დაამატეთ ეს ხაზი, რათა შეამოწმოთ restaurant_email მნიშვნელობა
        // dd($request->restaurant_email);

        if ($request->input('status') == 'Confirmed') {
            // ელ.ფოსტის გაგზავნა ადმინისტრატორის მისამართზე
            Mail::to('info@foodly.space')->send(new \App\Mail\AdminConfirmedEmail($reservation));

            // ელ.ფოსტის გაგზავნა კლიენტის მისამართზე
            Mail::to($reservation->email)->send(new \App\Mail\ClientConfirmedEmail($reservation));

            // ელ.ფოსტის გაგზავნა რესტორნის მისამართზე
            Mail::to($request->restaurant_email)->send(new \App\Mail\RestaurantConfirmedEmail($reservation));
        }

        elseif ($request->input('status') == 'Pending') {
            // ელ.ფოსტის გაგზავნა ადმინისტრატორის მისამართზე
            Mail::to('info@foodly.space')->send(new \App\Mail\AdminPendingEmail($reservation));

            // ელ.ფოსტის გაგზავნა კლიენტის მისამართზე
            Mail::to($reservation->email)->send(new \App\Mail\ClientPendingEmail($reservation));

            // ელ.ფოსტის გაგზავნა რესტორნის მისამართზე
            Mail::to($request->restaurant_email)->send(new \App\Mail\RestauranPendingEmail($reservation));
        }

        elseif ($request->input('status') == 'Cancelled') {
            // ელ.ფოსტის გაგზავნა ადმინისტრატორის მისამართზე
            Mail::to('info@foodly.space')->send(new \App\Mail\AdminCancelledEmail($reservation));

            // ელ.ფოსტის გაგზავნა კლიენტის მისამართზე
            Mail::to($reservation->email)->send(new \App\Mail\ClientCancelledEmail($reservation));

            // ელ.ფოსტის გაგზავნა რესტორნის მისამართზე
            Mail::to($request->restaurant_email)->send(new \App\Mail\RestaurantCancelledEmail($reservation));
        }

        return redirect()
            ->route('reservations.index')
            ->withSuccessMessage(__('alerts.Record has been updated'));
    }


    // public function update(Request $request, $id)
    // {

    //     $request->all();
    //     $validateData = $request->validate(
    //         [
    //             'booking_id' => 'required',
    //             'name' => 'required|max:20',
    //             'email' => 'required|email',
    //             'phone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/',
    //             'date' => 'required',
    //             'time' => 'required',
    //             'person' => '',
    //             'table_id' => 'required',
    //             'restaurant_email' => '',
    //             'status' => 'required',
    //         ],
    //         [
    //             'booking_id.required' => __('ID'),
    //             'name.required' => __('dashboard.Name'),
    //             'email.required' => 'input Email',
    //             'phone.required' => 'input Phone',
    //             'date.required' => 'input Date',
    //             'time.required' => 'input Time',
    //             // 'person.required' => 'input Person',
    //             'restaurant_email.required' => 'restaurant email',
    //             'table_id.required' => 'input Table',
    //             'status.required' => 'შეარჩიეთ ჯავშნის სტატუსი',
    //         ],
    //     );

    //     Reservation::findOrFail($id)->update($validateData);
    //     // return $validateData;


    //     // return $request->restaurant_email;

    //     if ($request->status == 'Confirmed') {

    //         //  Send Confirmation email
    //         Mail::send(
    //             'emails.confirmation',
    //             [
    //                 'booking_id' => $request->get('booking_id'),
    //                 'name' => $request->get('name'),
    //                 'email' => $request->get('email'),
    //                 'phone' => $request->get('phone'),
    //                 'date' => $request->get('date'),
    //                 'time' => $request->get('time'),
    //                 'person' => $request->get('person'),
    //                 'table_id' => $request->get('table_id'),
    //                 'restaurant_email' => $request->get('restaurant_email'),
    //                 'restaurant_name' => $request->get('restaurant_name'),
    //                 'restaurant_place' => $request->get('restaurant_place'),
    //                 'restaurant_table' => $request->get('restaurant_table'),
    //                 'status' => $request->get('status'),
    //             ],
    //             function ($message) use ($request) {
    //                 $message->from('booking@foodly.com.ge'); // გამგზავნის ( Foodly-s სერვერის ელ.ფოსტა)
    //                     $message->to($request->email) // კლიენტის ელ.ფოსტა
    //                     // ->cc('foodly.ge@gmail.com')         // Foodly-ს ადმინისტრაციის ელ.ფოსტა
    //                     ->bcc($request->restaurant_email)  // რესტორნის ელ.ფოსტა
    //                     ->subject('FOODLY - შენი რეზერვაცია დადასტურებულია 😊','-', $request->restaurant_name);
    //             },
    //         );
    //     }
    //     elseif($request->status == 'Pending'){
    //         //  Send  Email Pending Status
    //         Mail::send(
    //             'emails.pending',
    //             [
    //                 'booking_id' => $request->get('booking_id'),
    //                 'name' => $request->get('name'),
    //                 'email' => $request->get('email'),
    //                 'phone' => $request->get('phone'),
    //                 'date' => $request->get('date'),
    //                 'time' => $request->get('time'),
    //                 'person' => $request->get('person'),
    //                 'table_id' => $request->get('table_id'),
    //                 'restaurant_email' => $request->get('restaurant_email'),
    //                 'restaurant_name' => $request->get('restaurant_name'),
    //                 'restaurant_place' => $request->get('restaurant_place'),
    //                 'restaurant_table' => $request->get('restaurant_table'),
    //                 'status' => $request->get('status'),
    //             ],
    //             function ($message) use ($request) {
    //                 $message->from('booking@foodly.com.ge'); // გამგზავნის ( Foodly-s სერვერის ელ.ფოსტა)
    //                     $message->to($request->email) // კლიენტის ელ.ფოსტა
    //                     // ->cc('foodly.ge@gmail.com')         // Foodly-ს ადმინისტრაციის ელ.ფოსტა
    //                     ->bcc($request->restaurant_email)  // რესტორნის ელ.ფოსტა
    //                     ->subject('FOODLY - რეზერვაციის მოთხოვნა განიხილება 🤔','-', $request->restaurant_name);
    //             },
    //         );
    //     }

    //     elseif($request->status == 'Cancelled'){
    //         //  Send email Canceled Status
    //         Mail::send(
    //             'emails.canceled',
    //             [
    //                 'booking_id' => $request->get('booking_id'),
    //                 'name' => $request->get('name'),
    //                 'email' => $request->get('email'),
    //                 'phone' => $request->get('phone'),
    //                 'date' => $request->get('date'),
    //                 'time' => $request->get('time'),
    //                 'person' => $request->get('person'),
    //                 'table_id' => $request->get('table_id'),
    //                 'restaurant_email' => $request->get('restaurant_email'),
    //                 'restaurant_name' => $request->get('restaurant_name'),
    //                 'restaurant_place' => $request->get('restaurant_place'),
    //                 'restaurant_table' => $request->get('restaurant_table'),
    //                 'status' => $request->get('status'),
    //             ],
    //             function ($message) use ($request) {
    //                 $message->from('booking@foodly.com.ge'); // გამგზავნის ( Foodly-s სერვერის ელ.ფოსტა)
    //                     $message->to($request->email) // კლიენტის ელ.ფოსტა
    //                     // ->cc('foodly.ge@gmail.com')         // Foodly-ს ადმინისტრაციის ელ.ფოსტა
    //                     ->bcc($request->restaurant_email)  // რესტორნის ელ.ფოსტა
    //                     ->subject('FOODLY - უპს! შენი რეზერვაცია უარყოფილია  😔','-', $request->restaurant_name);
    //             },
    //         );
    //     }

    //     return redirect()
    //         ->route('reservations.index')
    //         ->withSuccessMessage(__('alerts.Record has been updated'));
    // }

    public function destroy($id)
    {
        Reservation::find($id)->delete();

        return redirect()
            ->back()
            ->withSuccessMessage(__('alerts.Record has been deleted'));
    }
}
