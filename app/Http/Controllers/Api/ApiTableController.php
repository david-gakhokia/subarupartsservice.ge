<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\TableResource;
use App\Models\Table;
use Illuminate\Http\Request;

class ApiTableController extends Controller
{
    public function index()
    {
        // return TableResource::collection(Table::all());
        $tables = Table::where('status', 1)
            ->orderBy('rank')
            ->get();
        return $tables;
    }

    public function store(Request $request)
    {
        //
    }

    public function show($id)
    {
        $table = Table::where('status', 1)->findOrFail($id);

        return $table;
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
