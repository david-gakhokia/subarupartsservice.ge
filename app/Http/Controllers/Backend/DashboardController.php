<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Image;
use App\Models\Page;
use App\Models\Place;
use App\Models\Post;
use App\Models\Product;
use App\Models\Table;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use App\Models\Reservation;
use App\Models\Restaurant;
use App\Models\Setting;
use Carbon\Carbon;

class DashboardController extends Controller
{
    public function index()
    {

        $categories = Category::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->get();
        $tables = Table::translatedIn(app()->getLocale())
            ->orderBy('rank')
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->get();

        $places = Place::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->get();

        $posts = Post::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->get();

        $images = Image::orderBy('id', 'DESC')
            ->where('status', 1)
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->get();

        $productCount = Product::whereHas('category', function ($query) {
            $query->where('restaurant_id', '=', Auth::user()->restaurant_id);
        });

        $reservations = Reservation::where('restaurant_id', '=', Auth::user()
        ->restaurant_id)->orderBy('created_at', 'DESC');

        $twentyFourHoursAgo = Carbon::now()->subDay();
        $latestreservations = Reservation::where('restaurant_id', '=', Auth::user()
            ->restaurant_id)->where('created_at', '>=', $twentyFourHoursAgo)
            ->orderBy('created_at', 'DESC')
            ->latest()
            ->take(5)
            ->get();

        return view('backend.dashboard', compact(['productCount', 'tables', 'places', 'categories', 'reservations','latestreservations', 'images', 'posts']));
    }
}
