<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreAboutRequest extends FormRequest
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
                'ka.title' => '',
                'ka.title2' => '',
                'ka.name' => '',
                'ka.description' => '',
                'ka.description2' => '',
                'ka.body' => '',
            ];

        foreach (config('translatable.locales') as $locale) {
            $rules[$locale . '.title'] = 'string';
            $rules[$locale . '.title2'] = 'string';
            $rules[$locale . '.name'] = 'string';
            $rules[$locale . '.description'] = 'string';
            $rules[$locale . '.description2'] = 'string';
            $rules[$locale . '.body'] = 'string';
        }

        return $rules;
    }
}
