<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRegionRestaurantTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('region_restaurant', function (Blueprint $table) {
            $table->id();
            $table->unsignedBiginteger('region_id');
            $table->unsignedBiginteger('restaurant_id');
            $table
                ->foreign('region_id')
                ->references('id')
                ->on('regions')
                ->onDelete('cascade');
            $table
                ->foreign('restaurant_id')
                ->references('id')
                ->on('restaurants')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('region_restaurant');
    }
}
