<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SlideTranslation extends Model
{
    use HasFactory;
    public $timestamps = true;
    protected $fillable = ['title', 'description', 'category_id', 'rank', 'status'];
}
