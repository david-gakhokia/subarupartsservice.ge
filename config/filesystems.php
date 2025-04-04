<?php

return [

    'default' => env('FILESYSTEM_DRIVER', 'local'),

    'cloud' => env('FILESYSTEM_CLOUD', 's3'),

    'disks' => [

        'local' => [
            'driver' => 'local',
            'root' => storage_path('app'),
        ],

        'public' => [
            'driver' => 'local',
            'root' => storage_path('app/public'),
            'url' => env('APP_URL').'/storage',
            'visibility' => 'public',
        ],

        's3' => [
            'driver' => 's3',
            'key' => env('AWS_ACCESS_KEY_ID'),
            'secret' => env('AWS_SECRET_ACCESS_KEY'),
            'region' => env('AWS_DEFAULT_REGION'),
            'bucket' => env('AWS_BUCKET'),
            'url' => env('AWS_URL'),
            'endpoint' => env('AWS_ENDPOINT'),
            'use_path_style_endpoint' => env('AWS_USE_PATH_STYLE_ENDPOINT', false),
        ],

        // 'r2' => [
        //     'driver' => 's3',
        //     'key' => env('R2_ACCESS_KEY_ID'), // თქვენი Access Key ID
        //     'secret' => env('R2_SECRET_ACCESS_KEY'), // თქვენი Secret Access Key
        //     'region' => env('R2_REGION', 'auto'), // არ არის აუცილებელი, მაგრამ შეიძლება გამოადგეს ზოგიერთ შემთხვევაში
        //     'bucket' => env('R2_BUCKET'), // თქვენი ბაკეტის სახელი (თუ საჭიროა კონკრეტული ბაკეტისთვის)
        //     'endpoint' => env('R2_ENDPOINT'), // თქვენი endpoint
        //     'use_path_style_endpoint' => true, // აუცილებელია R2-ისთვის
        // ],
        'r2' => [
            'driver' => 's3',
            'key' => env('R2_ACCESS_KEY_ID'),
            'secret' => env('R2_SECRET_ACCESS_KEY'),
            'region' => env('R2_DEFAULT_REGION', 'auto'),
            'bucket' => env('R2_BUCKET'),
            'url' => env('R2_URL'),
            'endpoint' => env('R2_ENDPOINT'),
            'use_path_style_endpoint' => env('R2_USE_PATH_STYLE_ENDPOINT', false),
        ],
        // 'r2' => [
        //     'driver' => 's3',
        //     'key' => env('R2_ACCESS_KEY_ID'),
        //     'secret' => env('R2_SECRET_ACCESS_KEY'),
        //     'region' => env('R2_DEFAULT_REGION', 'auto'),
        //     'bucket' => env('R2_BUCKET'),
        //     'url' => env('R2_URL'),
        //     'endpoint' => env('R2_ENDPOINT'),
        //     'use_path_style_endpoint' => env('R2_USE_PATH_STYLE_ENDPOINT', false),
        // ],

    ],

];
