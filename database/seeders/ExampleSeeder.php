<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;
use App\Models\ProductTranslation;

class Forester20132018Seeder extends Seeder
{
    public function run(): void
    {
        $products = [


            [
                'price' => 70,
                'image_link' => '',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => '', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            

        ];



        foreach ($products as $productData) {
            $translations = $productData['translations'];
            unset($productData['translations']);

            $product = Product::create($productData);

            foreach ($translations as $locale => $fields) {
                ProductTranslation::create([
                    'product_id' => $product->id,
                    'locale' => $locale,
                    'name' => $fields['name'],
                    'description' => $fields['description'],
                ]);
            }
        }
    }
}
