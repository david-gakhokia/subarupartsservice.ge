<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Group_Restaurant extends Model
{
    use HasFactory;

    protected $fillable = ['group_id', 'restaurant_id'];
}
