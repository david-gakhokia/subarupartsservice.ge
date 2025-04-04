<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AboutTranslation extends Model
{
    use HasFactory;
    public $timestamps = true;

    protected $fillable = ['title', 'title2', 'name', 'description', 'description2', 'body', 'image', 'image2', 'cover' , 'video'];
}
