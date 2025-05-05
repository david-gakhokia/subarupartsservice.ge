<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreCategoryRequest;
use App\Http\Requests\UpdateCategoryRequest;
use App\Models\Category;
use App\Models\Restaurant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;


class CategoryController extends Controller
{

    public function allCategories()
    {
        $categories = Category::with('children')
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->whereNull('parent_id')
            ->orderBy('rank', 'ASC')
            ->get();

        return view('backend.categories.all-categories', compact('categories'));
    }

    public function index()
    {
        $categories = Category::translatedIn(app()->getLocale())
            ->with('children')
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->whereNull('parent_id')
            ->orderBy('rank', 'ASC')
            ->take(200)
            ->get();

        $restaurants = Restaurant::translatedIn(app()->getLocale())
            ->where('id', '=', Auth::user()->restaurant_id)
            ->where('status', 1)
            ->get();

        return view('backend.categories.index', compact('categories', 'restaurants'));
    }

    public function all_category()
    {
        $categories = Category::translatedIn(app()->getLocale())
            ->with('children')
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->whereNull('parent_id')
            ->orderBy('rank', 'ASC')
            ->take(200)
            ->get();

        $restaurants = Restaurant::translatedIn(app()->getLocale())
            ->where('id', '=', Auth::user()->restaurant_id)
            ->where('status', 1)
            ->get();

        return view('backend.categories.all', compact('categories', 'restaurants'));
    }

    public function create()
    {


        $mainCategories = Category::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->with('children')
            ->whereNull('parent_id')
            ->orderBy('rank', 'ASC')
            ->get();
        $subCategories = Category::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->orderBy('rank', 'ASC')
            ->where([['status', '=', '1'], ['parent_id', '<>', '1']])
            ->get();
        $restaurants = Restaurant::translatedIn(app()->getLocale())
            ->where('id', '=', Auth::user()->restaurant_id)
            ->where('status', 1)
            ->get();

        return view('backend.categories.create', compact('mainCategories', 'subCategories', 'restaurants'));
    }

    public function sub_category_create()
    {
        $mainCategories = Category::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->with('children')
            ->whereNull('parent_id')
            ->orderBy('rank', 'ASC')
            ->get();

        $restaurants = Restaurant::translatedIn(app()->getLocale())
            ->where('id', '=', Auth::user()->restaurant_id)
            ->where('status', 1)
            ->get();

        return view('backend.categories.sub-category-create', compact('mainCategories', 'restaurants'));
    }


    public function subCategories()
    {

        $subCategories = Category::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->orderBy('rank', 'ASC')
            ->where('parent_id', '<>', '1')
            ->get();

        return view('backend.categories.sub-categories', compact('subCategories'));
    }
    public function mainCategories()
    {

        $mainCategories = Category::where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->where('parent_id', '=', null)
            ->orderBy('rank', 'ASC')
            ->get();

        return view('backend.categories.main-categories', compact('mainCategories'));
    }
    public function store(StoreCategoryRequest $request)
    {
        $data = $request->all();

        if ($image = $request->file('image')) {
            $destinationPath = 'uploads/categories';
            $profileImage = date('YmdHis') . '.' . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $data['image'] = "$profileImage";
        }

        Category::create($data);

        return redirect()
            ->back()
            ->withSuccessMessage(__('alerts.New record has been added'));
    }


    public function edit($id)
    {
        $category = Category::translatedIn(app()->getLocale())->findOrFail($id);

        $categories = Category::translatedIn(app()->getLocale())
            ->where('restaurant_id', '=', Auth::user()->restaurant_id)
            ->where([['parent_id', null], ['id', '!=', $id]])
            ->get();
        $restaurants = Restaurant::translatedIn(app()->getLocale())
            ->where('id', '=', Auth::user()->restaurant_id)
            ->where('status', 1)
            ->get();


        return view('backend.categories.edit', compact('category', 'categories', 'restaurants'));
    }

    public function update(UpdateCategoryRequest $request, $id)
    {
        $data = $request->all();

        if ($image = $request->file('image')) {
            $destinationPath = 'uploads/categories';
            $profileImage = date('YmdHis') . '.' . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $data['image'] = "$profileImage";
        }

        Category::findOrFail($id)->update($data);

        return redirect()
            ->route('main-categories')
            ->withSuccessMessage(__('alerts.Record has been updated'));
    }

    public function destroy($id)
    {
        $category = Category::findOrFail($id);

        // წაშალე კატეგორიის სურათი, თუ არსებობს
        if ($category->image) {
            $imagePath = public_path('uploads/categories/' . $category->image);
            if (File::exists($imagePath)) {
                File::delete($imagePath);
            }
        }

        // წაშალე კატეგორია
        $category->delete();
        return redirect()
            ->route('all-categories')
            ->withSuccessMessage(__('alerts.Record has been deleted'));
    }

    public function deleteImage($id)
    {
        $category = Category::findOrFail($id);

        if ($category->image) {
            $imagePath = public_path('uploads/categories/' . $category->image);

            if (File::exists($imagePath)) {
                File::delete($imagePath);
            }

            $category->image = null;
            $category->save();
        }

        return redirect()->back()->with('success', 'Image deleted successfully.');
    }
}
