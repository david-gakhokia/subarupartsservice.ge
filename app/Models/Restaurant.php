<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Restaurant extends Model implements TranslatableContract
{
    use HasFactory, Translatable;

    protected $guarded = ['id'];
    public $translatedAttributes = ['name', 'description', 'address'];
    // public $translatable = ['name', 'description', 'address'];

    public function places()
    {
        return $this->hasMany(Place::class);
    }

    public function categories()
    {
        return $this->hasMany(Category::class);
    }

    // public function slides()
    // {
    //     return $this->belongsToMany(Slide::class);
    // }

    public function groups()
    {
        return $this->belongsToMany(Group::class);
    }
    public function users()
    {
        return $this->hasMany(User::class);
    }

    public function products()
    {
        return $this->hasMany(Product::class);
    }
}
