<?php

namespace App\Http\Controllers\CRM;

use App\Http\Controllers\Controller;
use App\Models\MarketingCategory;
use Illuminate\Http\Request;

class MarketingCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $marketingCategory = MarketingCategory::latest()->paginate(5);

        return view('marketingcategory.index', compact('marketingCategory'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('marketingcategory.create');
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

        MarketingCategory::create($request->all());

        return redirect()->route('marketingcategory.index')
            ->with('success', 'MarketingCategory created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MarketingCategory  $MarketingCategory
     * @return \Illuminate\Http\Response
     */
    public function show(MarketingCategory $MarketingCategory)
    {
        return view('marketingcategory.show', compact('marketingcategory'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MarketingCategory  $MarketingCategory
     * @return \Illuminate\Http\Response
     */
    public function edit(MarketingCategory $marketingcategory)
    {
        return view('marketingcategory.edit', compact('marketingcategory'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MarketingCategory  $MarketingCategory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MarketingCategory $MarketingCategory)
    {
        $request->validate([
            'name' => 'required'            
        ]);
        $MarketingCategory->update($request->all());

        return redirect()->route('marketingcategory.index')
            ->with('success', 'MarketingCategory updated successfully');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MarketingCategory  $MarketingCategory
     * @return \Illuminate\Http\Response
     */
    public function destroy(MarketingCategory $MarketingCategory)
    {
        $MarketingCategory->delete();

        return redirect()->route('marketingcategory.index')
            ->with('success', 'MarketingCategory deleted successfully');
    }
}
