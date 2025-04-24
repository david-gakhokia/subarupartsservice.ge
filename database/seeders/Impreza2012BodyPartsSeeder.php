<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;
use App\Models\ProductTranslation;

class Impreza2012BodyPartsSeeder extends Seeder
{
    public function run(): void
    {

        $products = [
            [
                'price' => 320,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_fe9c9a9c63ad4c33a72f03ab079fe883~mv2.jpg/v1/fill/w_394,h_177,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_fe9c9a9c63ad4c33a72f03ab079fe883~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => [
                        'name' => 'წინა ბამპერი - 2015-16 წ',
                        'description' => 'წინა ბამპერი - 2015-16 წ Subaru Impreza-სთვის'
                    ],
                    'en' => [
                        'name' => 'Auto Part',
                        'description' => 'წინა ბამპერი - 2015-16 წ for Subaru Impreza'
                    ]
                ]
            ],
            [
                'price' => 80,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_072f94bb19d34d3ab96e8b36afe83300~mv2.jpg/v1/fill/w_331,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_072f94bb19d34d3ab96e8b36afe83300~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => [
                        'name' => 'ღია ცხაური',
                        'description' => 'ღია ცხაური Subaru Impreza-სთვის'
                    ],
                    'en' => [
                        'name' => 'Auto Part',
                        'description' => 'ღია ცხაური for Subaru Impreza'
                    ]
                ]
            ],
            [
                'price' => 80,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_97cac896ba414c0281182746fa2d5a5b~mv2.jpg/v1/fill/w_221,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_97cac896ba414c0281182746fa2d5a5b~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => [
                        'name' => 'წინა ბამპერის ქვედა ბადე - 2015 წ',
                        'description' => 'წინა ბამპერის ქვედა ბადე - 2015 წ Subaru Impreza-სთვის'
                    ],
                    'en' => [
                        'name' => 'Auto Part',
                        'description' => 'წინა ბამპერის ქვედა ბადე - 2015 წ for Subaru Impreza'
                    ]
                ]
            ],
            [
                'price' => 300,
                'image_link' => 'https://static.wixstatic.com/media/72107a_613e219201ed4c11963d8d0f5748c019~mv2.png/v1/fill/w_276,h_221,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_613e219201ed4c11963d8d0f5748c019~mv2.png',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა სტოპი - ამერიკული ვერსია', 'description' => 'უკანა სტოპი - ამერიკული ვერსია Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'უკანა სტოპი - ამერიკული ვერსია for Subaru Impreza']
                ]
            ],
            [
                'price' => 170,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_dc1104a64179476ebc710bc41aad15c4~mv2.jpg/v1/fill/w_297,h_170,al_c,q_80,enc_avif,quality_auto/3f9f45_dc1104a64179476ebc710bc41aad15c4~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ეკრანი', 'description' => 'ეკრანი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'ეკრანი for Subaru Impreza']
                ]
            ],
            [
                'price' => 300,
                'image_link' => 'https://static.wixstatic.com/media/72107a_14a84936c5c145adb03a13007086983d~mv2.png/v1/fill/w_221,h_221,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_14a84936c5c145adb03a13007086983d~mv2.png',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'კაპოტი', 'description' => 'კაპოტი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'კაპოტი for Subaru Impreza']
                ]
            ],
            [
                'price' => 380,
                'image_link' => 'https://static.wixstatic.com/media/72107a_120404c7597f45b899c722610d23e081~mv2.png/v1/fill/w_276,h_221,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_120404c7597f45b899c722610d23e081~mv2.png',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ფარი', 'description' => 'წინა ფარი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'წინა ფარი for Subaru Impreza']
                ]
            ],
            [
                'price' => 300,
                'image_link' => 'https://static.wixstatic.com/media/72107a_af9e852e39cc4d74898ab86ea9e4e16f~mv2.jpg/v1/fill/w_423,h_281,al_c,lg_1,q_80,enc_avif,quality_auto/72107a_af9e852e39cc4d74898ab86ea9e4e16f~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ფარი წინა (შავი ამრეკლით)', 'description' => 'ფარი წინა (შავი ამრეკლით) Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'ფარი წინა (შავი ამრეკლით) for Subaru Impreza']
                ]
            ],
            [
                'price' => 200,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_6c1a92603442410b9b25d0f076ecd078~mv2.jpg/v1/fill/w_246,h_204,al_c,q_80,enc_avif,quality_auto/3f9f45_6c1a92603442410b9b25d0f076ecd078~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა სტოპი', 'description' => 'უკანა სტოპი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'უკანა სტოპი for Subaru Impreza']
                ]
            ],
            [
                'price' => 30,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_3f2abc77f3424cd69bd74c138e3c1a94~mv2.jpeg/v1/fill/w_259,h_194,al_c,q_80,enc_avif,quality_auto/3f9f45_3f2abc77f3424cd69bd74c138e3c1a94~mv2.jpeg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა ამრეკლი', 'description' => 'უკანა ამრეკლი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'უკანა ამრეკლი for Subaru Impreza']
                ]
            ],
            [
                'price' => 150,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_dc1104a64179476ebc710bc41aad15c4~mv2.jpg/v1/fill/w_297,h_170,al_c,q_80,enc_avif,quality_auto/3f9f45_dc1104a64179476ebc710bc41aad15c4~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ეკრანი', 'description' => 'ეკრანი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'ეკრანი', 'description' => 'ეკრანი for Subaru Impreza']
                ]
            ],            
            [
                'price' => 150,
                'image_link' => 'https://static.wixstatic.com/media/72107a_3ee9973a2446480c9599f41182ade6ad~mv2.jpg/v1/fill/w_267,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_3ee9973a2446480c9599f41182ade6ad~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ძელი', 'description' => 'წინა ძელი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'წინა ძელი for Subaru Impreza']
                ]
            ],
            [
                'price' => 140,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_3c519695967f4c538ba63d04586b6f0d~mv2.jpg/v1/fill/w_221,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_3c519695967f4c538ba63d04586b6f0d~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'კონდენციონერის რადიატორი', 'description' => 'კონდენციონერის რადიატორი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'კონდენციონერის რადიატორი for Subaru Impreza']
                ]
            ],
            [
                'price' => 150,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_88550ff181b44ea29849813ac8757bb5~mv2.jpg/v1/fill/w_295,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_88550ff181b44ea29849813ac8757bb5~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წყლის რადიატორი', 'description' => 'წყლის რადიატორი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'წყლის რადიატორი for Subaru Impreza']
                ]
            ],

            [
                'price' => 40,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_21067c2c76b844188d9fbcd95c83a541~mv2.png/v1/fill/w_194,h_221,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_21067c2c76b844188d9fbcd95c83a541~mv2.png',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'დიფუზორის ჩარჩო', 'description' => 'დიფუზორის ჩარჩო Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'დიფუზორის ჩარჩო for Subaru Impreza']
                ]
            ],
            [
                'price' => 110,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_396f189bbac04806b8307cca4fb4d4c6~mv2.png/v1/fill/w_221,h_221,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_396f189bbac04806b8307cca4fb4d4c6~mv2.png',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'დიფუზორის კომპლექტი', 'description' => 'დიფუზორის კომპლექტი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'დიფუზორის კომპლექტი for Subaru Impreza']
                ]
            ],
            [
                'price' => 30,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_45bac75dcdd04f609780fc75b095d96e~mv2.webp/v1/fill/w_295,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_45bac75dcdd04f609780fc75b095d96e~mv2.webp',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'საქარე მინის კუთხის პლასმასი', 'description' => 'საქარე მინის კუთხის პლასმასი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'საქარე მინის კუთხის პლასმასი for Subaru Impreza']
                ]
            ],
            [
                'price' => 40,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_1de8c2baf761405b8057c0ec73af4c79~mv2.jpg/v1/fill/w_221,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_1de8c2baf761405b8057c0ec73af4c79~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ცხაურის სამაგრი', 'description' => 'ცხაურის სამაგრი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'ცხაურის სამაგრი for Subaru Impreza']
                ]
            ],
            [
                'price' => 60,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_503b1cca337c48cf8c5441ca8293af2d~mv2.jpg/v1/fill/w_221,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_503b1cca337c48cf8c5441ca8293af2d~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ჰაერის ფილტრის ყუთის წინა მხარე', 'description' => 'ჰაერის ფილტრის ყუთის წინა მხარე Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'ჰაერის ფილტრის ყუთის წინა მხარე for Subaru Impreza']
                ]
            ],
            [
                'price' => 70,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_ca9adaaa65cb4f0d8e3d4711f57d15e9~mv2.jpg/v1/fill/w_394,h_135,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_ca9adaaa65cb4f0d8e3d4711f57d15e9~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ჰაერის შემკრები', 'description' => 'ჰაერის შემკრები Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'ჰაერის შემკრები for Subaru Impreza']
                ]
            ],
            [
                'price' => 30,
                'image_link' => 'https://static.wixstatic.com/media/72107a_9dde59e4b1d442d18d3108d3c66dfc0f~mv2.jpg/v1/fill/w_221,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_9dde59e4b1d442d18d3108d3c66dfc0f~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წყლის ავზის მატორჩიკი', 'description' => 'წყლის ავზის მატორჩიკი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'წყლის ავზის მატორჩიკი for Subaru Impreza']
                ]
            ],
            [
                'price' => 200,
                'image_link' => 'https://static.wixstatic.com/media/72107a_d03aee20ad1a463da2448af0004b8e9c~mv2.jpg/v1/fill/w_368,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_d03aee20ad1a463da2448af0004b8e9c~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წყლის ავზი "ზბორი"', 'description' => 'წყლის ავზი "ზბორი" Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'წყლის ავზი "ზბორი" for Subaru Impreza']
                ]
            ],
            [
                'price' => 80,
                'image_link' => 'https://static.wixstatic.com/media/72107a_d03aee20ad1a463da2448af0004b8e9c~mv2.jpg/v1/fill/w_368,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_d03aee20ad1a463da2448af0004b8e9c~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წყლის ავზი', 'description' => 'წყლის ავზი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'წყლის ავზი for Subaru Impreza']
                ]
            ],
            [
                'price' => 50,
                'image_link' => 'https://static.wixstatic.com/media/72107a_c33cc3019bde4ff0b054cfbee55c083b~mv2.jpg/v1/fill/w_313,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_c33cc3019bde4ff0b054cfbee55c083b~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ფარის ბრეკეტი', 'description' => 'წინა ფარის ბრეკეტი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'წინა ფარის ბრეკეტი for Subaru Impreza']
                ]
            ],
            [
                'price' => 30,
                'image_link' => 'https://static.wixstatic.com/media/72107a_c58f76502e1b42bda37113040e5689b7~mv2.jpg/v1/fill/w_311,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_c58f76502e1b42bda37113040e5689b7~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ჰაერის ფილტრი', 'description' => 'ჰაერის ფილტრი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'ჰაერის ფილტრი for Subaru Impreza']
                ]
            ],
            [
                'price' => 30,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_673eb61415f74ff9acd093a3c610d6b5~mv2.jpg/v1/fill/w_332,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_673eb61415f74ff9acd093a3c610d6b5~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'სალონის ფილტრი', 'description' => 'სალონის ფილტრი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'სალონის ფილტრი for Subaru Impreza']
                ]
            ],
            [
                'price' => 60,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_6b87389dddd9493e941d59659051bd9e~mv2.jpeg/v1/fill/w_332,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_6b87389dddd9493e941d59659051bd9e~mv2.jpeg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ამორტიზატორის ჩაშკა', 'description' => 'წინა ამორტიზატორის ჩაშკა Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'წინა ამორტიზატორის ჩაშკა for Subaru Impreza']
                ]

            ],
            [
                'price' => 180,
                'image_link' => 'https://static.wixstatic.com/media/72107a_1283b26dd37e4263ad45c3159cee1d9e~mv2.jpg/v1/fill/w_190,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_1283b26dd37e4263ad45c3159cee1d9e~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა ცაბკა (NTY)', 'description' => 'უკანა ცაბკა (NTY) Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'უკანა ცაბკა (NTY) for Subaru Impreza']
                ]
            ],
            [
                'price' => 280,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_184a35d3dde94ce2bf592fd77a580ce8~mv2.png/v1/fill/w_315,h_221,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_184a35d3dde94ce2bf592fd77a580ce8~mv2.png',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ყუმბარა - NTY', 'description' => 'წინა ყუმბარა - NTY Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'წინა ყუმბარა - NTY for Subaru Impreza']
                ]
            ],
            [
                'price' => 20,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_075df9ac13ca4ee485df6221f6d48ff3~mv2.jpg/v1/fill/w_262,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_075df9ac13ca4ee485df6221f6d48ff3~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა რაზვალნი ტულკა', 'description' => 'წინა რაზვალნი ტულკა Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'წინა რაზვალნი ტულკა for Subaru Impreza']
                ]
            ],
            [
                'price' => 40,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_8066dcf262344750b737c7cde65ae9e8~mv2.jpg/v1/fill/w_332,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_8066dcf262344750b737c7cde65ae9e8~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა სტერჟინი', 'description' => 'წინა სტერჟინი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'წინა სტერჟინი for Subaru Impreza']
                ]
            ],
            [
                'price' => 20,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_17cd96f993ab47ad8e46fe7cd383719b~mv2.webp/v1/fill/w_393,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_17cd96f993ab47ad8e46fe7cd383719b~mv2.webp',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა სტერჟინი', 'description' => 'უკანა სტერჟინი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'უკანა სტერჟინი for Subaru Impreza']
                ]
            ],
            [
                'price' => 20,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_1fb79c85576845fb9387e2b4e9285172~mv2.jpg/v1/fill/w_331,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_1fb79c85576845fb9387e2b4e9285172~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა რაზვალნი ტულკა', 'description' => 'უკანა რაზვალნი ტულკა Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'უკანა რაზვალნი ტულკა for Subaru Impreza']
                ]
            ],
            [
                'price' => 30,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_695da632d7d94e0bb9508f1002d12d46~mv2.webp/v1/fill/w_393,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_695da632d7d94e0bb9508f1002d12d46~mv2.webp',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა ჭრიჭინა ტულკა', 'description' => 'უკანა ჭრიჭინა ტულკა Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'უკანა ჭრიჭინა ტულკა for Subaru Impreza']
                ]
            ],
            [
                'price' => 30,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_25a2ee00f7c04f5ab4c813fbc9cfaf5c~mv2.jpg/v1/fill/w_301,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_25a2ee00f7c04f5ab4c813fbc9cfaf5c~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უდარნი ნაკანეჩნიკი', 'description' => 'უდარნი ნაკანეჩნიკი Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'უდარნი ნაკანეჩნიკი for Subaru Impreza']
                ]
            ],
            [
                'price' => 30,
                'image_link' => 'https://static.wixstatic.com/media/72107a_478cc189ba9f4944bfdb93ada461a0e1~mv2.jpg/v1/fill/w_372,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_478cc189ba9f4944bfdb93ada461a0e1~mv2.jpg',
                'category_id' => 443,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'შარავოი (ბურთულა სახსარი)', 'description' => 'შარავოი (ბურთულა სახსარი) Subaru Impreza-სთვის'],
                    'en' => ['name' => 'Auto Part', 'description' => 'შარავოი (ბურთულა სახსარი) for Subaru Impreza']
                ]
            ]
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