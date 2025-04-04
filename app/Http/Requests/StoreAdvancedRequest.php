<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreAdvancedRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }


    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $rules =
            [
            'ka.og_title' => '',
            'ka.og_description' => '',
            'facebook_sdk' => '',
            'ka.address' => '',
            'facebook_messenger' => '',
            'meta_pixel' => '',
            'google_analytics' => '',
            'google_ads' => '',
            'google_adsense' => '',
            'google_tag_manager' => '',
            'yandex_metrica' => '',
            'og_url' => '',

            ];

        foreach (config('translatable.locales') as $locale) {
            $rules[$locale . '.og_title'] = 'string';
            $rules[$locale . '.og_description'] = 'string';
    
        }

        return $rules;
    }
}
