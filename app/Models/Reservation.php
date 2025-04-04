<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Mail;
use App\Mail\ContactMail;
use Carbon\Carbon;

class Reservation extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'email', 'phone', 'date', 'time', 'person', 'table_id', 'place_id', 'restaurant_id', 'country', 'event', 'status', 'message'];

    public function setDateAttribute($value)
    {
        $this->attributes['date'] = (new Carbon($value))->format('y-m-d');
    }

    public function table()
    {
        return $this->belongsTo(Table::class);
    }

    public function place()
    {
        return $this->belongsTo(Place::class);
    }

    public function restaurant()
    {
        return $this->belongsTo(Restaurant::class);
    }
    public static function boot()
    {
        parent::boot();
        static::created(function ($item) {
            $email = $item->email;
            $adminEmail = 'reservations@foodly.space';
            $bccEmail = 'foodly.portal@gmail.com';
            Mail::to($email)
                ->cc($adminEmail)
                ->bcc($bccEmail)
                ->send(new ContactMail($item));
        });
    }
}
