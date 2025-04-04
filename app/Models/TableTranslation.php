<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TableTranslation extends Model
{
    use HasFactory;
    public $timestamps = true;

    protected $fillable = ['name', 'description', 'person', 'restaurant_id', 'place_id', 'latitude', 'longitude', 'rank', 'status'];
}
