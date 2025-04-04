<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\OrderResource;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class ApiOrderController extends Controller
{


    public function index(Request $request)
    {
        $locale = $request->query('language');
        $orders = DB::table('orders')
        ->where('product_translations.locale', '=', $locale)
            ->join('products', 'orders.product_id', '=', 'products.id')
            ->join('product_translations', 'product_translations.product_id', '=', 'products.id')
            ->join('tables', 'orders.table_id', '=', 'tables.id')
            ->select([
                'orders.*',
                'product_translations.name as product_name',
                'products.image as product_image',
                'product_translations.description as product_description',
                'products.price as product_price',
                'tables.name as table_name'
            ])
            ->get();

            return $orders;
    }
    public function index1(Request $request)
    {


        
        $locale = $request->query('language');
        $orders = DB::table('orders')
            // ->where('product_translations.locale', '=', $locale)
            ->join('products', 'orders.product_id', '=', 'products.id')
            ->join('product_translations', 'product_translations.product_id', '=', 'products.id')

            // ->join('tables', 'orders.table_id', '=', 'tables.id')
            // ->join('places', 'tables.place_id', '=', 'places.id')
            // ->select('orders.*', 'products.name as pname', 'products.price', 'products.image', 'tables.place_id', 'tables.name', 'places.name as plname')
            ->select('orders.*','products.*', 'product_translations.*')
            ->get();
    

        // return 'ok';
        return $orders;
        // return OrderResource::collection(Order::all());
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
