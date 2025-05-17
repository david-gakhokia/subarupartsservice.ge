<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Backend\RoleController;
use App\Http\Controllers\Backend\PermissionController;
use App\Http\Controllers\Backend\UserController;
use App\Http\Controllers\Backend\DashboardController;
use App\Http\Controllers\Backend\ContactController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\TableController;
use App\Http\Controllers\Backend\PlaceController;
use App\Http\Controllers\Backend\ProductController;
use App\Http\Controllers\Backend\ReservationController;
use App\Http\Controllers\Backend\MessageController;
use App\Http\Controllers\Backend\SettingController;
use App\Http\Controllers\Backend\VideoController;
use App\Http\Controllers\Backend\ImageController;
use App\Http\Controllers\Backend\AboutController;
use App\Http\Controllers\Backend\CalendarController;
use App\Http\Controllers\Backend\ReportController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\EmailController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\TicketContriller;
use Illuminate\Support\Facades\Artisan;

// Start Backend Routes

Auth::routes();

Route::get('/form', function () {
    return view('front.form');
});


Route::get('/', [HomeController::class, 'index']);
Route::get('category/{id}', [HomeController::class, 'category']);
Route::get('/products/filter', [HomeController::class, 'filter'])->name('products.filter');
Route::get('/product/{id}', [HomeController::class, 'show']);



// Route::get('products', [HomeController::class, 'products']);
// Route::get('product/{id}', [HomeController::class, 'product'])->name('product');

Route::get('search-product', [SearchController::class, 'search_product'])->name('search-product');
// Route::get('/products/search', [HomeController::class, 'search'])->name('products.search');



Route::group(['prefix' => 'admin', 'middleware' => ['auth']], function () {

    Route::get('/clear-cache', function () {
        $exitCode1 = Artisan::call('cache:clear');
        $exitCode2 = Artisan::call('config:clear');
        $exitCode3 = Artisan::call('route:clear');
        $exitCode4 = Artisan::call('view:clear');

        return response()->json([
            'cache_clear' => $exitCode1 == 0 ? 'Cache cleared successfully' : 'Failed to clear cache',
            'config_clear' => $exitCode2 == 0 ? 'Config cleared successfully' : 'Failed to clear config',
            'route_clear' => $exitCode3 == 0 ? 'Route cleared successfully' : 'Failed to clear route',
            'view_clear' => $exitCode4 == 0 ? 'View cleared successfully' : 'Failed to clear view',
        ]);
    });

    // Setting
    Route::get('/my-settings', [SettingController::class, 'index'])->name('my-settings');
    Route::put('/restaurant/update', [SettingController::class, 'update'])->name('restaurant.update');

    Route::resource('users', UserController::class);
    Route::resource('roles', RoleController::class);
    Route::resource('permissions', PermissionController::class);

    // Categories
    Route::resource('categories', CategoryController::class);
    // Route::get('a', [CategoryController::class, 'create'])->name('all-categories');

    Route::get('all-categories', [CategoryController::class, 'allCategories'])->name('all-categories');
    Route::get('all-category', [CategoryController::class, 'all_category'])->name('all-category');
    Route::get('category-create', [CategoryController::class, 'create'])->name('category-create');
    Route::get('categories-test/{id}', [CategoryController::class, 'category_test'])->name('categories-test');
    Route::get('my-categories', [CategoryController::class, 'myCategories'])->name('my-categories');
    Route::get('main-categories', [CategoryController::class, 'mainCategories'])->name('main-categories');
    Route::get('sub-categories', [CategoryController::class, 'subCategories'])->name('sub-categories');
    Route::get('sub-category-create', [CategoryController::class, 'sub_category_create'])->name('sub-category-create');
    Route::delete('/categories/{id}/delete-image', [CategoryController::class, 'deleteImage'])->name('categories.deleteImage');
    Route::delete('/categories/{id}', [CategoryController::class, 'destroy'])->name('categories.destroy');
    // Products
    // Route::resource('products', ProductController::class);
    Route::get('products', [ProductController::class, 'index'])->name('products.index');
    Route::get('menu', [ProductController::class, 'grid'])->name('menu');
    Route::get('products/create', [ProductController::class, 'create'])->name('products.create');
    Route::post('products', [ProductController::class, 'store'])->name('products.store');
    Route::get('products/{id}/edit', [ProductController::class, 'edit'])->name('products.edit');
    Route::put('products/{id}', [ProductController::class, 'update'])->name('products.update');
    // Route::delete('products/{id}', [ProductController::class, 'destroy'])->name('products.destroy');
    Route::delete('products/{id}', [ProductController::class, 'destroy'])->name('products.destroy');

    Route::delete('/products/{id}/delete-image', [ProductController::class, 'deleteImage'])->name('products.deleteImage');
    Route::delete('products/bulk-delete', [ProductController::class, 'bulkDelete'])->name('products.bulkDelete');
    Route::delete('/products/delete-multiple', [ProductController::class, 'deleteMultiple'])->name('products.deleteMultiple');

    // Places
    Route::resource('places', PlaceController::class);

    // Tables
    Route::resource('tables', TableController::class);


    // Calendar
    Route::get('calendar', [CalendarController::class, 'index'])->name('calendar');
    // Route::get('reports', [ReportController::class, 'index'])->name('reports');


    // Reservation
    Route::resource('reservations', ReservationController::class);
    // Route::get('reservations', [ReservationController::class, 'index'])->name('reservations');
    Route::get('review/{id}', [ReservationController::class, 'review']);
    // ადმინისტრატორის ცხრილი
    Route::get('reservation-table', [ReservationController::class, 'admin_table'])->name('reservation-table');


    // რეპორტები
    Route::get('reports', [ReportController::class, 'index'])->name('reports');
    Route::get('all-reservations', [ReportController::class, 'all_reservations'])->name('all-reservations');
    Route::get('last-month', [ReportController::class, 'last_month'])->name('last-month');
    Route::get('last-year', [ReportController::class, 'last_year'])->name('last-year');

    // Tikets
    Route::get('tickets', [TicketContriller::class, 'index'])->name('tickets');

    Route::resource('messages', MessageController::class);
    Route::get('message', [MessageController::class, 'detail'])->name('message');



    // About
    Route::get('about', [AboutController::class, 'index'])->name('admin.about');
    Route::post('about', [AboutController::class, 'store'])->name('admin.about.store');

    // Video
    Route::resource('videos', VideoController::class);

    //Images
    Route::resource('images', ImageController::class);
    Route::post('/image', [ImageController::class, 'store'])->name('admin.image.store');

    // Settings Route
    // Route::group(['prefix' => 'setting'], function () {
    //     // General
    //     Route::get('general', [SettingController::class, 'general'])->name('setting.general');
    //     Route::post('general', [SettingController::class, 'store'])->name('setting.store');
    // });

    Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');
});
