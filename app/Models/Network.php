<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Network extends Model
{
    use HasFactory;
    protected $fillable = ['icon', 'image', 'link', 'name', 'frame'];


}
