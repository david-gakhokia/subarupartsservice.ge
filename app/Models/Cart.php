<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;
    protected $fillable = ['quantity'];


    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }

    public function tables()
    {
        return $this->hasMany('App\Models\Tables');
    }

    public function category()
    {
        return $this->belongsTo('App\Models\Category');
    }
}
