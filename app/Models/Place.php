<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Place extends Model implements TranslatableContract
{
    use HasFactory, Translatable;

    protected $guarded = ['id'];
    public $translatedAttributes = ['name', 'description'];

    public function tables()
    {
        return $this->hasMany(Table::class);
    }

    public function restaurant()
    {
        return $this->belongsTo(Restaurant::class);
    }

    public function products()
    {
        return $this->hasMany(Product::class);
    }

    // public function restaurants()
    // {
    //     return $this->hasMany(Restaurant::class);
    // }
}
