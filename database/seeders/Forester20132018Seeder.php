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
                'price' => 150,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_ab1026e8e67b479fa8f62e4ce3b98236~mv2.png/v1/fill/w_500,h_500,al_c,q_85,enc_avif,quality_auto/3f9f45_ab1026e8e67b479fa8f62e4ce3b98236~mv2.png',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'საბარგულის შუა მოლდინგი', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            
            [
                'price' => 350,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_4fbb408d3d62478ebb030aa01f06b1f8~mv2.jpg/v1/fill/w_500,h_500,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_4fbb408d3d62478ebb030aa01f06b1f8~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'BSD სარკე', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 450,
                'image_link' => 'https://static.wixstatic.com/media/72107a_20a8658ec7fa498baeb94498305de4cd~mv2.png/v1/fill/w_500,h_375,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_20a8658ec7fa498baeb94498305de4cd~mv2.png',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ფარი', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],

            [
                'price' => 280,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_3ba5268156094f6db4d966ac6b2c34cd~mv2.jpg/v1/fill/w_500,h_667,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_3ba5268156094f6db4d966ac6b2c34cd~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა სტოპი - (2016-2018)', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],  
            [
                'price' => 320,
                'image_link' => 'https://static.wixstatic.com/media/72107a_d8945f1a506044c7a7bf57417f81d801~mv2.png/v1/fill/w_450,h_337,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_d8945f1a506044c7a7bf57417f81d801~mv2.png',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა სტოპი', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 280,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_064ff63fbb514a74b3001d3b0d59f595~mv2.jpg/v1/fill/w_450,h_300,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_064ff63fbb514a74b3001d3b0d59f595~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ფარი', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 20,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_503aa727fb17418c973cb5067057ca04~mv2.jpg/v1/fill/w_450,h_337,al_c,lg_1,q_80,enc_avif,quality_auto/3f9f45_503aa727fb17418c973cb5067057ca04~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა ამრეკლი', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 400,
                'image_link' => 'https://static.wixstatic.com/media/72107a_e8281d2933cb4c7baacadde51ae97724~mv2.png/v1/fill/w_450,h_337,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_e8281d2933cb4c7baacadde51ae97724~mv2.png',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ფარი', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 650,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_4a9443dd83e9496c9a4953d7721a0e26~mv2.jpeg/v1/fill/w_167,h_167,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_4a9443dd83e9496c9a4953d7721a0e26~mv2.jpeg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ფარები წყვილი (Gray)', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 300,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_8715921190474b62901c145d97f807dd~mv2.jpg/v1/fill/w_600,h_600,al_c,lg_1,q_80,enc_avif,quality_auto/3f9f45_8715921190474b62901c145d97f807dd~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'კაპოტი ალუმინის', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 750,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_c2e84eda1bc440adba1659c97335ad38~mv2.jpg/v1/fill/w_560,h_420,al_c,lg_1,q_80,enc_avif,quality_auto/3f9f45_c2e84eda1bc440adba1659c97335ad38~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'კაპოტი ალუმინის', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 350,
                'image_link' => 'https://static.wixstatic.com/media/72107a_9c72b42b62e6485fb2c03cb4c4fbb218~mv2.jpg/v1/fill/w_605,h_403,al_c,lg_1,q_80,enc_avif,quality_auto/72107a_9c72b42b62e6485fb2c03cb4c4fbb218~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'კაპოტი', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 110,
                'image_link' => 'https://static.wixstatic.com/media/72107a_a48924a5e173496780a6da17f2581819~mv2.jpg/v1/fill/w_560,h_560,al_c,lg_1,q_80,enc_avif,quality_auto/72107a_a48924a5e173496780a6da17f2581819~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ფრთა', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 250,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_1cd15b4713414a258a38aa0fc714c033~mv2.jpg/v1/fill/w_720,h_720,al_c,lg_1,q_85,enc_avif,quality_auto/3f9f45_1cd15b4713414a258a38aa0fc714c033~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ბამპერი 2016-2018 წ', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 370,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_1cd15b4713414a258a38aa0fc714c033~mv2.jpg/v1/fill/w_720,h_720,al_c,lg_1,q_85,enc_avif,quality_auto/3f9f45_1cd15b4713414a258a38aa0fc714c033~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ბამპერი 2016-2018 წ', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 200,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_1cd15b4713414a258a38aa0fc714c033~mv2.jpg/v1/fill/w_720,h_720,al_c,lg_1,q_85,enc_avif,quality_auto/3f9f45_1cd15b4713414a258a38aa0fc714c033~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ბამპერი', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 270,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_a00d75868dd64071ac4c92e85e03bef7~mv2.jpg/v1/fill/w_600,h_600,al_c,lg_1,q_80,enc_avif,quality_auto/3f9f45_a00d75868dd64071ac4c92e85e03bef7~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ბამპერი - 2013-2015 წ', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 200,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_32384afa82c34acdae4b9abb0bed3c95~mv2.jpg/v1/fill/w_560,h_560,al_c,lg_1,q_80,enc_avif,quality_auto/3f9f45_32384afa82c34acdae4b9abb0bed3c95~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ბამპერი - Sport', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 300,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_32384afa82c34acdae4b9abb0bed3c95~mv2.jpg/v1/fill/w_560,h_560,al_c,lg_1,q_80,enc_avif,quality_auto/3f9f45_32384afa82c34acdae4b9abb0bed3c95~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ბამპერი - Sport', 'description' => ''],
                    'en' => ['name' => '', 'description' => '']
                ]
            ],
            [
                'price' => 250,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_9fde243ccb6846079888e4dd774d60ac~mv2.jpg/v1/fill/w_640,h_640,al_c,q_85,enc_avif,quality_auto/3f9f45_9fde243ccb6846079888e4dd774d60ac~mv2.jpg',
                'category_id' => 446,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა ბამპერი', 'description' => ''],
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
