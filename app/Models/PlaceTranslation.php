<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PlaceTranslation extends Model
{
    use HasFactory;

    public $timestamps = true;
    protected $fillable = ['name', 'description', 'restaurant_id', 'status'];
}
