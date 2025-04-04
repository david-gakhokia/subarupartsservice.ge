<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Product extends Model
{
    use HasFactory, Translatable;

    protected $guarded = ['id'];
    public $translatedAttributes = ['name', 'description'];


    protected static function boot()
    {
        parent::boot();

        static::creating(function ($product) {
            $maxRank = Product::where('category_id', $product->category_id)->max('rank');
            $product->rank = $maxRank + 1;
        });
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function place()
    {
        return $this->belongsTo(Place::class);
    }

    public function restaurant()
    {
        return $this->belongsTo(Restaurant::class);
    }
}
