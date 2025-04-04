<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductTranslation extends Model
{
    use HasFactory;
    public $timestamps = true;

    protected $fillable = ['name', 'description', 'category_id','place_id' ,'image_link', 'restaurant_id', 'price', 'discounted_price', 'unit','quantity' , 'price_cup_id', 'status', 'rank'];
}
