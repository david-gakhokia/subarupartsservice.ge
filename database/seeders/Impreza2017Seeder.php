<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;
use App\Models\ProductTranslation;

class Impreza2017Seeder extends Seeder
{
    public function run(): void
    {
        $products = [


            [
                'price' => 70,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_78389d8ffdf8411e9a37389fb3abe06d~mv2.jpg/v1/fill/w_281,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_78389d8ffdf8411e9a37389fb3abe06d~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'აირბაგის ხუფი', 'description' => 'აირბაგის ხუფი Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Airbag Cover', 'description' => 'Airbag cover for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 420,
                'image_link' => 'https://static.wixstatic.com/media/72107a_5dcf7c43599449698a495e799b5a1146~mv2.png/v1/fill/w_276,h_221,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_5dcf7c43599449698a495e799b5a1146~mv2.png',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ფარი', 'description' => 'წინა ფარი Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Front Headlight', 'description' => 'Front headlight for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 280,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_62617c29be5149df8f52f2e33564053c~mv2.webp/v1/fill/w_295,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_62617c29be5149df8f52f2e33564053c~mv2.webp',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ფარი', 'description' => 'წინა ფარი Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Front Headlight', 'description' => 'Front headlight for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 270,
                'image_link' => 'https://static.wixstatic.com/media/72107a_f9435ead890d4b2e98813a51f2b43bd2~mv2.png/v1/fill/w_276,h_221,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_f9435ead890d4b2e98813a51f2b43bd2~mv2.png',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა კრილის სტოპი', 'description' => 'უკანა კრილის სტოპი Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Rear Fender Stop Light', 'description' => 'Rear fender stop light for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 200,
                'image_link' => 'https://static.wixstatic.com/media/72107a_cb039c543c5f4d78ae65424696fa4f87~mv2.png/v1/fill/w_276,h_221,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_cb039c543c5f4d78ae65424696fa4f87~mv2.png',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა საბარგულის სტოპი', 'description' => 'უკანა საბარგულის სტოპი Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Rear Trunk Stop Light', 'description' => 'Rear trunk stop light for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 170,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_d9898f897c2c459cb4db80ff6e5730e6~mv2.jpg/v1/fill/w_149,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_d9898f897c2c459cb4db80ff6e5730e6~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'სანისლე ბუდე -sport', 'description' => 'სანათი ბამპერზე Sport ვერსიისთვის Subaru Impreza 2017-2021'],
                    'en' => ['name' => 'Bumper Light - Sport', 'description' => 'Bumper light - Sport for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 100,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_decae10212d041059eae5d8d1969deb4~mv2.jpg/v1/fill/w_295,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_decae10212d041059eae5d8d1969deb4~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'LED სანათი ფარი', 'description' => 'LED სანათი ფარი Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'LED Headlight', 'description' => 'LED headlight for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 650,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_58cf89ed1b5f4802b692e085d256d7fd~mv2.jpg/v1/fill/w_221,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_58cf89ed1b5f4802b692e085d256d7fd~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'კაპოტი ალუმინი', 'description' => 'კაპოტი ალუმინი Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Aluminum Hood', 'description' => 'Aluminum hood for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 420,
                'image_link' => 'https://static.wixstatic.com/media/72107a_30b0c2c867fd48eca21eaacec4e42325~mv2.jpg/v1/fill/w_267,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_30b0c2c867fd48eca21eaacec4e42325~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'კაპოტი რკინა', 'description' => 'კაპოტი რკინა Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Iron Hood', 'description' => 'Iron hood for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 180,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_4783d6aa94144b5191a9df5907fde2fd~mv2.jpg/v1/fill/w_221,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_4783d6aa94144b5191a9df5907fde2fd~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა კრილო', 'description' => 'წინა კრილო Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Front Fender', 'description' => 'Front fender for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 400,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_4243c7a77bb84e22bc802898fcdd4649~mv2.jpg/v1/fill/w_221,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_4243c7a77bb84e22bc802898fcdd4649~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ბამპერი (2020–2022)', 'description' => 'წინა ბამპერი (2020–2022) Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Front Bumper (2020–2022)', 'description' => 'Front bumper (2020–2022) for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 250,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_a9a00e3002c44c19b64f01f71bad3a25~mv2.jpg/v1/fill/w_332,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_a9a00e3002c44c19b64f01f71bad3a25~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ბამპერი', 'description' => 'წინა ბამპერი Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Front Bumper', 'description' => 'Front bumper for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 300,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_ec2566580ac9435980b3f73e7a83b256~mv2.jpg/v1/fill/w_221,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_ec2566580ac9435980b3f73e7a83b256~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა ბამპერი - სედანი', 'description' => 'უკანა ბამპერი სედანისთვის Subaru Impreza 2017-2021'],
                    'en' => ['name' => 'Rear Bumper - Sedan', 'description' => 'Rear bumper - Sedan for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 220,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_660528ddb0d346568a0a393b982808a6~mv2.jpg/v1/fill/w_295,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_660528ddb0d346568a0a393b982808a6~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ეკრანი', 'description' => 'ეკრანი Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Evaporation System', 'description' => 'Evaporation system for Subaru Impreza 2017-2021']
                ]
            ],


            [
                'price' => 80,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_949b189d58a44479bb4c9057b6f3e2dc~mv2.jpg/v1/fill/w_295,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_949b189d58a44479bb4c9057b6f3e2dc~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ჰაერის შემკრები', 'description' => 'ჰაერის შემკრები Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Door Return', 'description' => 'Door return for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 30,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_fb1e3b8cf8ca4e1294d3065a37ebc4e1~mv2.jpg/v1/fill/w_295,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_fb1e3b8cf8ca4e1294d3065a37ebc4e1~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'საქარე მინის კუთხის პლასტმასი', 'description' => 'საქარე მინის კუთხის პლასტმასი Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Windshield Corner Plastic', 'description' => 'Windshield corner plastic for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 100,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_063d7da1235442f9994ba55f549d2bb9~mv2.jpg/v1/fill/w_221,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_063d7da1235442f9994ba55f549d2bb9~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'სანათი ბამპერზე (Sport)', 'description' => 'სანათი ბამპერზე (Sport) Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Bumper Light (Sport)', 'description' => 'Bumper light (Sport) for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 100,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_be9851006b54413ea22040bf49957504~mv2.jpg/v1/fill/w_295,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_be9851006b54413ea22040bf49957504~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'სანათლის მოოლდინგი (2020-2022)', 'description' => 'სანათლის მოოლდინგი Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Headlight Molding (2020-2022)', 'description' => 'Headlight molding (2020-2022) for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 100,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_dccf98c6b54f4144ace6abd2726cc223~mv2.jpg/v1/fill/w_295,h_221,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_dccf98c6b54f4144ace6abd2726cc223~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'სანათლის ფარის მოოლდინგი (Limited)', 'description' => 'სანათლის ფარის მოოლდინგი (Limited) Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Headlight Molding (Limited)', 'description' => 'Headlight molding (Limited) for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 150,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_f7211daeac4d4b72bf8f55c0184a21b0~mv2.jpg/v1/fill/w_143,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_f7211daeac4d4b72bf8f55c0184a21b0~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ცაურა მოლდინგების გარეშე (2020-2022)', 'description' => 'ცაურა მოლდინგების გარეშე (2020-2022)'],
                    'en' => ['name' => 'Front Bumper Garnish (2020-2022)', 'description' => 'Front bumper garnish (2020-2022) for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 70,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_644ba9f54fc74740b07f4143d9ca9ed1~mv2.jpg/v1/fill/w_143,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_644ba9f54fc74740b07f4143d9ca9ed1~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ცხაურის მოლდინგი შავი 2020-2022', 'description' => 'ცხაურის მოლდინგი შავი (2020-2022) Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Lower Front Bumper Grille (2020-2022)', 'description' => 'Lower front bumper grille (2020-2022) for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 70,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_6317023f531849b48695de648684cb0e~mv2.jpg/v1/fill/w_143,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_6317023f531849b48695de648684cb0e~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ცხაურის მოლდიგნი ( 2020 - 2022 )', 'description' => 'ცხაურის მოლდიგნი ( 2020 - 2022 )'],
                    'en' => ['name' => 'Lower Front Bumper Grille (2020-2022)', 'description' => 'Lower front bumper grille (2020-2022) for Subaru Impreza 2017-2021']
                ]
            ],            
            [
                'price' => 50,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_ea06dfaf80fe4b79812f1f78f83bfc1f~mv2.jpg/v1/fill/w_143,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_ea06dfaf80fe4b79812f1f78f83bfc1f~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ცხაურის მოლდინგი ( 2017 - 2019 )', 'description' => 'ცხაურის მოლდინგი ( 2017 - 2019 )'],
                    'en' => ['name' => 'Lower Front Bumper Grille', 'description' => 'Lower front bumper grille for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 160,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_d2fb227dfd104aff98beda8559c0b3bc~mv2.jpg/v1/fill/w_143,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_d2fb227dfd104aff98beda8559c0b3bc~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წყლის რადიატორი', 'description' => 'წყლის რადიატორი'],
                    'en' => ['name' => 'Lower Front Bumper Grille', 'description' => 'Lower front bumper grille for Subaru Impreza 2017-2021']
                ]
            ],            
            [
                'price' => 100,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_d8257074bdfd4ab0bf45a96b72c88914~mv2.jpg/v1/fill/w_143,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_d8257074bdfd4ab0bf45a96b72c88914~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ცხაურის ბადე ( 2017 - 2019 )', 'description' => 'ცხაურის ბადე ( 2017 - 2019 )'],
                    'en' => ['name' => 'Front Bumper Decor', 'description' => 'Front bumper decor for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 100,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_60ed6413da334eaea1f091d295d8d084~mv2.jpg/v1/fill/w_191,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_60ed6413da334eaea1f091d295d8d084~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ბამპერის დამჭერი რკინა', 'description' => 'წინა ბამპერის დამჭერი რკინა'],
                    'en' => ['name' => '.', 'description' => '']
                ]
            ],            
            [
                'price' => 50,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_f681c8ff66d24fcb8ab723627231fcff~mv2.jpg/v1/fill/w_143,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_f681c8ff66d24fcb8ab723627231fcff~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'რაშირიტელი', 'description' => 'რაშირიტელი'],
                    'en' => ['name' => 'Front Bumper Base', 'description' => 'Front bumper base for Subaru Impreza 2017-2021']
                ]
            ],

            [
                'price' => 100,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_e55121d0a3c34deaa7a06a6a9439f64a~mv2.jpg/v1/fill/w_143,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_e55121d0a3c34deaa7a06a6a9439f64a~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ძრავის დამცავი', 'description' => 'ძრავის დამცავი'],
                    'en' => ['name' => 'Front Bumper Base', 'description' => 'Front bumper base for Subaru Impreza 2017-2021']
                ]
            ],


            [
                'price' => 50,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_98cb1abe10c84beb95dc5e53b2cd7b3f~mv2.jpg/v1/fill/w_143,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_98cb1abe10c84beb95dc5e53b2cd7b3f~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ფარის სალასკა', 'description' => 'წინა ფარის სალასკა'],
                    'en' => ['name' => 'Front Bumper Base', 'description' => 'Front bumper base for Subaru Impreza 2017-2021']
                ]
            ],

            [
                'price' => 30,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_a135c892759b43a29a0209efa1d7e15e~mv2.jpg/v1/fill/w_243,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_a135c892759b43a29a0209efa1d7e15e~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'ჰაერის ფილტრი', 'description' => 'ჰაერის ფილტრი Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Air Filter', 'description' => 'Air filter for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 50,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_6446851f01d64448bd315f2342ef5f49~mv2.jpg/v1/fill/w_143,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_6446851f01d64448bd315f2342ef5f49~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'კაპოტის პეტლი', 'description' => 'კაპოტის პეტლი'],
                    'en' => ['name' => 'Hood Lock', 'description' => 'Hood lock for Subaru Impreza 2017-2021']
                ]
            ],

            [
                'price' => 100,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_38acedc10baa44c6a8ea288b668dc5c3~mv2.jpg/v1/fill/w_143,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_38acedc10baa44c6a8ea288b668dc5c3~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა შტანგა ( ნახევარმთვარა ) ახალი ორიგინალი', 'description' => ''],
                    'en' => ['name' => 'Water Tank', 'description' => 'Water tank for Subaru Impreza 2017-2021']
                ]
            ],

            [
                'price' => 150,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_38acedc10baa44c6a8ea288b668dc5c3~mv2.jpg/v1/fill/w_143,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_38acedc10baa44c6a8ea288b668dc5c3~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა შტანგა ( ნახევარმთვარა ) ახალი ორიგინალი', 'description' => ''],
                    'en' => ['name' => 'Water Tank', 'description' => 'Water tank for Subaru Impreza 2017-2021']
                ]
            ],

            [
                'price' => 30,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_25a2ee00f7c04f5ab4c813fbc9cfaf5c~mv2.jpg/v1/fill/w_195,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_25a2ee00f7c04f5ab4c813fbc9cfaf5c~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უდარნი ნაკანეჩნიკი', 'description' => ''],
                    'en' => ['name' => 'Water Tank', 'description' => 'Water tank for Subaru Impreza 2017-2021']
                ]
            ],

            
            [
                'price' => 20,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_075df9ac13ca4ee485df6221f6d48ff3~mv2.jpg/v1/fill/w_169,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_075df9ac13ca4ee485df6221f6d48ff3~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა რაზვალნი ტულკა', 'description' => ''],
                    'en' => ['name' => 'Water Tank', 'description' => 'Water tank for Subaru Impreza 2017-2021']
                ]
            ],

            [
                'price' => 30,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_695da632d7d94e0bb9508f1002d12d46~mv2.webp/v1/fill/w_254,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_695da632d7d94e0bb9508f1002d12d46~mv2.webp',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა ჭრიჭინა ტულკა', 'description' => ''],
                    'en' => ['name' => 'Water Tank', 'description' => 'Water tank for Subaru Impreza 2017-2021']
                ]
            ],

            [
                'price' => 20,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_1fb79c85576845fb9387e2b4e9285172~mv2.jpg/v1/fill/w_214,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/3f9f45_1fb79c85576845fb9387e2b4e9285172~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა რაზვალნი ტულკა', 'description' => ''],
                    'en' => ['name' => 'Water Tank', 'description' => 'Water tank for Subaru Impreza 2017-2021']
                ]
            ],            

            [
                'price' => 30,
                'image_link' => 'https://static.wixstatic.com/media/72107a_478cc189ba9f4944bfdb93ada461a0e1~mv2.jpg/v1/fill/w_241,h_143,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/72107a_478cc189ba9f4944bfdb93ada461a0e1~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'შარავოი ( ბურთულა სახსარი )', 'description' => ''],
                    'en' => ['name' => 'Water Tank', 'description' => 'Water tank for Subaru Impreza 2017-2021']
                ]
            ], 


            [
                'price' => 180,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_2b98b4e2167e4fbb9e51a2368ccf75ec~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'უკანა ხუნდი (NTY)', 'description' => 'უკანა ხუნდი (NTY) Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Rear Hub (NTY)', 'description' => 'Rear hub (NTY) for Subaru Impreza 2017-2021']
                ]
            ],
            [
                'price' => 180,
                'image_link' => 'https://static.wixstatic.com/media/3f9f45_949dca70af984232871b7bf23dfcb7a6~mv2.jpg',
                'category_id' => 444,
                'place_id' => 80,
                'status' => 1,
                'translations' => [
                    'ka' => ['name' => 'წინა ხუნდი (NTY)', 'description' => 'წინა ხუნდი (NTY) Subaru Impreza 2017-2021-ისთვის'],
                    'en' => ['name' => 'Front Hub (NTY)', 'description' => 'Front hub (NTY) for Subaru Impreza 2017-2021']
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
