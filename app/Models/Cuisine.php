<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Cuisine extends Model
{
    use HasFactory, Translatable;
    protected $guarded = ['id'];
    public $translatedAttributes = ['name'];

    public function restaurants()
    {
        return $this->belongsToMany(Restaurant::class);
    }
}
