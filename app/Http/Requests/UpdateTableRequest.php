<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateTableRequest extends FormRequest
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
        $rules = [
            'ka.name' => 'required',
            'ka.description' => '',
            'person' => '',
            'seats' => 'required',
            'restaurant_id' => '',
            'place_id' => '',
            'icon' => '',
            'image' => '',
            'rank' => '',
            'status' => 'required',
        ];

        foreach (config('translatable.locales') as $locale) {
            $rules[$locale . '.name'] = 'string';
            $rules[$locale . '.description'] = '';
        }

        return $rules;
    }
}
