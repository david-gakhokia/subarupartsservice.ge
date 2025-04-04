<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGroupRestaurantTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('group_restaurant', function (Blueprint $table) {
            $table->id();
            $table->unsignedBiginteger('group_id');
            $table->unsignedBiginteger('restaurant_id');
            $table
                ->foreign('group_id')
                ->references('id')
                ->on('groups')
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
        Schema::dropIfExists('group_restaurant');
    }
}
