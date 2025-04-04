<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Translatable;


class Slide extends Model
{
    use HasFactory, Translatable;
    protected $guarded = ['id'];
    public $translatedAttributes = ['title', 'description'];


    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function restaurants()
    {
        return $this->belongsToMany(Restaurant::class);
    }
}
