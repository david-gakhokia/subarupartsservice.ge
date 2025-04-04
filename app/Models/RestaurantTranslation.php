<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RestaurantTranslation extends Model
{
    use HasFactory;
    public $timestamps = true;

    protected $fillable = ['name', 'description', 'address', 'phone', 'manager_phone', 'manager_whatsapp','whatsapp', 'email', 'manager_email', 'instagram', 'facebook', 'start_time', 'end_time', 'website', 'video_link', 'map_iframe', 'map_iframe', 'longitude', 'rank', 'status'];
}
