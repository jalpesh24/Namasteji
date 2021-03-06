<?php

namespace App\Http\Controllers\CRM;

use App\Http\Controllers\Controller;
use App\Models\ProductCategory;
use App\Models\MarketingCategory;
use App\Models\Meeting;
use App\Models\DistrictzoneModel;
use App\Models\StatezoneModel;
use App\Models\CountryzoneModel;
use Illuminate\Http\Request;
use Auth;

class MeetingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        
        $Meetings = Meeting::latest()->paginate(5);       

        return view('crm.meeting.index', compact('Meetings'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $Marketingcategory = MarketingCategory::all();
        $ProductCategory = ProductCategory::all();
        $CountryzoneModel = CountryzoneModel::all();
        $StatezoneModel = StatezoneModel::all();
        $DistrictzoneModel = DistrictzoneModel::all();
        return view('crm.meeting.create', compact('Marketingcategory','ProductCategory','CountryzoneModel','StatezoneModel','DistrictzoneModel'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $post = $request->all();
        $userid = Auth::user()->id;
        $request->validate([
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required'  

        ]);
        

            $Meeting = new Meeting;
            $Meeting->name = $post('title');
            $Meeting->email = $post('email');
            $Meeting->description = $post('description');
            $Meeting->address = $post('address');
            $Meeting->date = $post('date');
            $Meeting->phone = $post('phone');
            $Meeting->market_category = $post('market_category');
            $Meeting->product_category = $post('product_category');
            $Meeting->country_zone = $post('country_zone');
            $Meeting->state_zone = $post('state_zone');
            $Meeting->district_zone = $post('district_zone');
            $Meeting->country = $post('country');
            $Meeting->state = $post('state');
            $Meeting->city = $post('city');
            $Meeting->user_id = $userid;
            $Meeting->created_at = now();
            $Meeting->save();

        return redirect()->route('crm.meeting.index')
            ->with('success', 'Meeting created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Meeting  $meeting
     * @return \Illuminate\Http\Response
     */
    public function show(Meeting $meeting)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Meeting  $meeting
     * @return \Illuminate\Http\Response
     */
    public function edit(Meeting $meeting)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Meeting  $meeting
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Meeting $meeting)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Meeting  $meeting
     * @return \Illuminate\Http\Response
     */
    public function destroy(Meeting $meeting)
    {
        //
    }
}
