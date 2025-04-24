<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;
use App\Models\ProductTranslation;

class ProductSeeder extends Seeder
{
    public function run(): void
    {
        $products = [
            ['price' => 320, 'image_link' => 'https://example.com/images/placeholder.jpg', 'category_id' => 443, 'place_id' => 80, 'translations' => ['ka' => ['name' => 'წინა ბამპერი - 2015-16 წ', 'description' => 'წინა ბამპერი - 2015-16 წ Subaru XV-სთვის'], 'en' => ['name' => 'Auto Part', 'description' => 'წინა ბამპერი - 2015-16 წ for Subaru XV']]],
            ['price' => 80, 'image_link' => 'https://example.com/images/placeholder.jpg', 'category_id' => 443, 'place_id' => 80, 'translations' => ['ka' => ['name' => 'ღია ცხაური', 'description' => 'ღია ცხაური Subaru XV-სთვის'], 'en' => ['name' => 'Auto Part', 'description' => 'ღია ცხაური for Subaru XV']]],
            ['price' => 80, 'image_link' => 'https://example.com/images/placeholder.jpg', 'category_id' => 443, 'place_id' => 80, 'translations' => ['ka' => ['name' => 'წინა ბამპერის ქვედა ბადე - 2015 წ', 'description' => 'წინა ბამპერის ქვედა ბადე - 2015 წ Subaru XV-სთვის'], 'en' => ['name' => 'Auto Part', 'description' => 'წინა ბამპერის ქვედა ბადე - 2015 წ for Subaru XV']]],
            ['price' => 300, 'image_link' => 'https://example.com/images/placeholder.jpg', 'category_id' => 443, 'place_id' => 80, 'translations' => ['ka' => ['name' => 'უკანა სტოპი - ამერიკული ვერსია', 'description' => 'უკანა სტოპი - ამერიკული ვერსია Subaru XV-სთვის'], 'en' => ['name' => 'Auto Part', 'description' => 'უკანა სტოპი - ამერიკული ვერსია for Subaru XV']]],
            ['price' => 170, 'image_link' => 'https://example.com/images/placeholder.jpg', 'category_id' => 443, 'place_id' => 80, 'translations' => ['ka' => ['name' => 'ეკრანი', 'description' => 'ეკრანი Subaru XV-სთვის'], 'en' => ['name' => 'Auto Part', 'description' => 'ეკრანი for Subaru XV']]],
            ['price' => 300, 'image_link' => 'https://example.com/images/placeholder.jpg', 'category_id' => 443, 'place_id' => 80, 'translations' => ['ka' => ['name' => 'კაპოტი', 'description' => 'კაპოტი Subaru XV-სთვის'], 'en' => ['name' => 'Auto Part', 'description' => 'კაპოტი for Subaru XV']]],
            ['price' => 380, 'image_link' => 'https://example.com/images/placeholder.jpg', 'category_id' => 443, 'place_id' => 80, 'translations' => ['ka' => ['name' => 'წინა ფარი', 'description' => 'წინა ფარი Subaru XV-სთვის'], 'en' => ['name' => 'Auto Part', 'description' => 'წინა ფარი for Subaru XV']]],
            // ... განაგრძეთ ყველა პროდუქტის დამატება იგივე სტრუქტურით
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
