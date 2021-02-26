<?php

namespace App\Http\Controllers\CRM;

use App\Http\Controllers\Controller;
use App\Models\ProductCategory;
use App\Models\MarketingCategory;
use Illuminate\Http\Request;

class ProductCategoryController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $productcategory = ProductCategory::latest()->paginate(5);
        foreach($productcategory as $key=>$productcat){
            $Marketingtype = MarketingCategory::where('id',$productcat['market_category'])->first();
            $productcat[$key]['type'] = $Marketingtype['name'];            
       }

        return view('productcategory.index', compact('productcategory'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $Marketingcategory = MarketingCategory::all();
        return view('productcategory.create', compact('Marketingcategory'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required'            
        ]);

        ProductCategory::create($request->all());

        return redirect()->route('productcategory.index')
            ->with('success', 'productcategory created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\productcategory  $productcategory
     * @return \Illuminate\Http\Response
     */
    public function show(ProductCategory $productcategory)
    {
        return view('productcategory.show', compact('productcategory'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\productcategory  $productcategory
     * @return \Illuminate\Http\Response
     */
    public function edit(ProductCategory $productcategory)
    {
        return view('productcategory.edit', compact('productcategory'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\productcategory  $productcategory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ProductCategory $ProductCategory)
    {
        $request->validate([
            'name' => 'required'            
        ]);
        $ProductCategory->update($request->all());

        return redirect()->route('productcategory.index')
            ->with('success', 'ProductCategory updated successfully');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ProductCategory  $ProductCategory
     * @return \Illuminate\Http\Response
     */
    public function destroy(ProductCategory $ProductCategory)
    {
        $ProductCategory->delete();

        return redirect()->route('productcategory.index')
            ->with('success', 'productcategory deleted successfully');
    }
}
