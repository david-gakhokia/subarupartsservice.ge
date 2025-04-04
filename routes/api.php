<?php

use App\Http\Controllers\Api\ApiCategoryController;
use App\Http\Controllers\Api\ApiPlaceController;
use App\Http\Controllers\Api\ApiProductController;
use App\Http\Controllers\Api\ApiReservationController;
use App\Http\Controllers\Api\ApiSlideController;
use App\Http\Controllers\Api\ApiTableController;
use App\Http\Controllers\Api\ApiRestaurantController;
use App\Http\Controllers\Api\ApiImageController;
use App\Http\Controllers\Api\ApiVideoController;
use App\Http\Controllers\Api\ApiTermsOfServiceController;
use App\Http\Controllers\Api\ApiPrivacyPolicyTranslation;
use App\Http\Controllers\Api\ApiGroupController;
use App\Http\Controllers\Api\ResturantInfoController;



use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

    // Get Reservations
    Route::get('reservation/all', [ApiReservationController::class, 'reservation_all']);
    Route::get('reservation/last-minute', [ApiReservationController::class, 'lastMinute']);
    Route::get('reservation/last-month', [ApiReservationController::class, 'lastMonth']);
    Route::get('reservation/last-24hours', [ApiReservationController::class, 'last24Hours']);
    Route::get('reservation/last-3month', [ApiReservationController::class, 'last3Months']);
    Route::get('reservation/last-year', [ApiReservationController::class, 'lastYear']);



    //Get Category by Restaurant ID
    Route::get('categories/{id}', [ApiCategoryController::class, 'categories_by_restaurantId']);
    Route::get('main-category/{id}', [ApiCategoryController::class, 'main_category_by_restaurantId']);
    Route::get('sub-category/{id}', [ApiCategoryController::class, 'sub_category_by_restaurantId']);


    // Reservations by restaurant id
    Route::get('reservation/restaurant/{id}', [ApiReservationController::class, 'reservation_by_restaurantId']);
    // Restaurants info By id
    Route::get('info/restaurant/{id}', [ResturantInfoController::class, 'index']);

    // Route::get('all-reservations', [ApiGroupController::class, 'index']);

    // Groups
    Route::get('groups', [ApiGroupController::class, 'index']);
    Route::get('group/{id}', [ApiGroupController::class, 'show']);

    // Slides
    Route::get('slides', [ApiSlideController::class, 'index']);
    Route::get('slide/{id}', [ApiSlideController::class, 'show']);

    // Restaurants
    Route::get('restaurants', [ApiRestaurantController::class, 'index']);
    Route::get('restaurant/{id}', [ApiRestaurantController::class, 'show']);

    // Categories
    Route::get('myAllCategories', [ApiCategoryController::class, 'myAllCategories'])->name('myAllCategories');
    Route::get('categories', [ApiCategoryController::class, 'index']);
    // Get Category By id with Products
    Route::get('/category/{id}', [ApiCategoryController::class, 'show']);

    // Get Category Name
    Route::get('/category-name/{id}', [ApiCategoryController::class, 'name']);

    // Get Main Categories
    Route::get('main-categories', [ApiCategoryController::class, 'mainCategories'])->name('main-categories');
    // Get Sub Categories
    Route::get('sub-categories', [ApiCategoryController::class, 'subCategories'])->name('sub-categories');

    // Products
    Route::get('products', [ApiProductController::class, 'index']);
    Route::get('/product/{id}', [ApiProductController::class, 'show']);

    // Places
    Route::get('places', [ApiPlaceController::class, 'index']);
    Route::get('/place/{id}', [ApiPlaceController::class, 'show']);
    // Place with Tables
    Route::get('/place-details/{id}', [ApiPlaceController::class, 'place_with_tables']);

    // Tables
    Route::get('tables', [ApiTableController::class, 'index']);
    Route::get('/table/{id}', [ApiTableController::class, 'show']);

    // Images
    Route::get('images', [ApiImageController::class, 'index']);
    Route::get('/image/{id}', [ApiImageController::class, 'show']);

    // Videos
    Route::get('videos', [ApiVideoController::class, 'index']);
    Route::get('/video/{id}', [ApiVideoController::class, 'show']);

    // Terms-of-service
    Route::get('terms-of-service', [ApiTermsOfServiceController::class, 'index'])->name('terms-of-service');

    // Privacy Policy
    Route::get('privacy-policy', [ApiPrivacyPolicyTranslation::class, 'index'])->name('privacy-policy');




// Route::middleware('auth:sanctum')->group(function () {
    // Groups
    // Route::get('groups', [ApiGroupController::class, 'index']);
    // Route::get('group/{id}', [ApiGroupController::class, 'show']);

    // Restaurants
    // Route::get('slides', [ApiSlideController::class, 'index']);
    // Route::get('slide/{id}', [ApiSlideController::class, 'show']);

    // Restaurants
    // Route::get('restaurants', [ApiRestaurantController::class, 'index']);
    // Route::get('restaurant/{id}', [ApiRestaurantController::class, 'show']);

    // Categories
    // Route::get('myAllCategories', [ApiCategoryController::class, 'myAllCategories'])->name('myAllCategories');

    // Route::get('categories', [ApiCategoryController::class, 'index']);
    // Get Category By id with Products
    // Route::get('/category/{id}', [ApiCategoryController::class, 'show']);

    // Get Category Name
    // Route::get('/category-name/{id}', [ApiCategoryController::class, 'name']);

    // Get Main Categories
    // Route::get('main-categories', [ApiCategoryController::class, 'mainCategories'])->name('main-categories');
    // Get Sub Categories
    // Route::get('sub-categories', [ApiCategoryController::class, 'subCategories'])->name('sub-categories');

    // Products
    // Route::get('products', [ApiProductController::class, 'index']);
    // Route::get('/product/{id}', [ApiProductController::class, 'show']);

    // Places
    // Route::get('places', [ApiPlaceController::class, 'index']);
    // Route::get('/place/{id}', [ApiPlaceController::class, 'show']);
    // Place with Tables
    // Route::get('/place-details/{id}', [ApiPlaceController::class, 'place_with_tables']);

    // Tables
    // Route::get('tables', [ApiTableController::class, 'index']);
    // Route::get('/table/{id}', [ApiTableController::class, 'show']);

    // Images
    // Route::get('images', [ApiImageController::class, 'index']);
    // Route::get('/image/{id}', [ApiImageController::class, 'show']);

    // Videos
    // Route::get('videos', [ApiVideoController::class, 'index']);
    // Route::get('/video/{id}', [ApiVideoController::class, 'show']);

    // Terms-of-service
    // Route::get('terms-of-service', [ApiTermsOfServiceController::class, 'index'])->name('terms-of-service');

    // Privacy Policy
    // Route::get('privacy-policy', [ApiPrivacyPolicyTranslation::class, 'index'])->name('privacy-policy');
// });
// Route::middleware('auth:sanctum')->group(function () {
//     Route::prefix('v1')->group(function () {
//         Route::apiResource('products', ApiProductController::class);
//         Route::apiResource('categories', ApiCategoryController::class);
//         Route::apiResource('reservations', ApiReservationController::class);
//         Route::apiResource('tables', ApiTableController::class);
//         Route::apiResource('places', ApiPlaceController::class);
//         Route::apiResource('slides', ApiSlideController::class);
//     });
// });
