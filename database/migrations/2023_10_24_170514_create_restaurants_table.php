<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRestaurantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('restaurants', function (Blueprint $table) {
            $table->id();
            $table->longText('logo')->nullable();
            $table->longText('cover')->nullable();
            $table->integer('phone')->nullable();
            $table->string('email')->nullable();
            $table->string('website')->nullable();
            $table->longtext('map_iframe')->nullable();
            $table->string('latitude')->nullable();
            $table->string('longitude')->nullable();
            $table
                ->integer('rank')
                ->unique()
                ->nullable();
            $table->boolean('status');
            $table->string('price')->nullable();
            $table->longText('images')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.php artisan migrate:status




     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('restaurants');
    }
}
