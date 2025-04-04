<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Table extends Model
{
    use HasFactory, Translatable;
    protected $guarded = ['id'];
    public $translatedAttributes = ['name', 'description'];

    public function place()
    {
        return $this->belongsTo(Place::class);
    }

    public function restaurant()
    {
        return $this->belongsTo(Restaurant::class);
    }
}
