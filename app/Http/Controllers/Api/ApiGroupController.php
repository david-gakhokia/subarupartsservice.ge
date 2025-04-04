<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Group;
use App\Models\Restaurant;

class ApiGroupController extends Controller
{
    public function index()
    {
        $groups = Group::translatedIn(app()->getLocale())
            ->where('status', 1)
            ->orderBy('rank')
            ->get();
        return $groups;
    }

    public function show($id)
    {
        $group = Group::translatedIn(app()->getLocale())
            ->with('restaurants')
            ->findOrFail($id);
        return $group;
    }
}
