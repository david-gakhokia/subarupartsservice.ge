<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_translations', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('table_id')->unsigned();
            $table->string('locale')->index();
            $table->string('name');
            $table->longText('description')->nullable();
            $table->unique(['table_id', 'locale']);
            $table
                ->foreign('table_id')
                ->references('id')
                ->on('tables')
                ->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('table_translations');
    }
}
