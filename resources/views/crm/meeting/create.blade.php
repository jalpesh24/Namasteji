@extends('layouts.base')

@section('caption', 'Add Meeting')

@section('title', 'Add Meeting')

@section('lyric', 'lorem ipsum')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Add New Meeting</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('meeting.index') }}" title="Go back"> <i class="fas fa-backward "></i> </a>
            </div>
        </div>
    </div>

    @if ($errors->any())
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <form action="{{ route('meeting.store') }}" method="POST" >      

        <div class="row">
            <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                    <strong>Name Of Meeting Person:</strong>
                    <input type="text" name="name" class="form-control" placeholder="Name">
                </div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                    <strong> Select Meeting Person :</strong>
                    <select name="select_type" class = "form-control">
                        <option value=""> Select Meeting Person  </option>
                        <option value="police"> Police  </option>
                        <option value="rto"> Rto  </option>                       
                    </select>
                </div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                    <strong>Marketing Category:</strong>
                    <select name="market_category" class = "form-control">
                        <option value="">Select Option  </option>
                        @foreach ($Marketingcategory as $marketingcat)
                            <option value="{{$marketingcat->id}}">{{$marketingcat->name}} </option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                    <strong>Product Category:</strong>
                    <select name="product_category" class = "form-control">
                        <option value="">Select Option  </option>
                        @foreach ($ProductCategory as $ProductCat)
                            <option value="{{$ProductCat->id}}">{{$ProductCat->name}} </option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                    <strong>Select Date:</strong>
                    <input type="date" name="sel_date" class="form-control" placeholder="Date">
                </div>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                    <strong>Email:</strong>
                    <input type="email" name="email" class="form-control" placeholder="Email" required>
                </div>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                    <strong>Phone:</strong>
                    <input type="phone" name="phone" class="form-control" placeholder="Phone" required>
                </div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                    <strong>Description:</strong>
                    <textarea class="form-control" style="height:50px" name="description"
                        placeholder="Description"></textarea>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Address:</strong>
                    <textarea class="form-control" style="height:50px" name="address"
                        placeholder="Address"></textarea>
                </div>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                    <strong>Country Zone:</strong>
                    <select name="country_zone" class = "form-control">
                        <option value="">Select Option  </option>
                        @foreach ($CountryzoneModel as $Countryzone)
                            <option value="{{$Countryzone->id}}">{{$Countryzone->name}} </option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                    <strong>State Zone:</strong>
                    <select name="state_zone" class = "form-control">
                        <option value="">Select Option  </option>
                        @foreach ($StatezoneModel as $Statezone)
                            <option value="{{$Statezone->id}}">{{$Statezone->name}} </option>
                        @endforeach
                    </select>
                </div>
            </div>            
            <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                    <strong>District Zone:</strong>
                    <select name="district_zone" class = "form-control">
                        <option value="">Select Option  </option>
                        @foreach ($DistrictzoneModel as $Districtzone)
                            <option value="{{$Districtzone->id}}">{{$Districtzone->name}} </option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                    <strong>Country:</strong>
                    <select id="country" name="country" class = "form-control">
                    <option value="India">India</option>
</select>
                </div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                    <strong>State:</strong>
                    <select name="state" class = "form-control">
                        <option value="">Select Option  </option>
                        
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Puducherry">Puducherry</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Odisha">Odisha</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>
</select>
                </div>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-6">
                <div class="form-group">
                    <strong>District:</strong>
                    <select name="district" class = "form-control">
                        <option value="">Select Option  </option>
                    <option value="AHMEDABAD">Ahmedabad</option>
                    <option value="AMRELI">Amreli</option>
                    <option value="ANAND">Anand</option>
                    <option value="BANASKANTHA">Banaskantha</option>
                    <option value="BHARUCH">Bharuch</option>
                    <option value="BHAVNAGAR">Bhavnagar</option>
                    <option value="BOTAD">Botad</option>
                    <option value="CHHOTA-UDAIPUR">Chhota Udaipur</option>
                    <option value="DAHOD">Dahod</option>
                    <option value="GANDHINAGAR">Gandhinagar</option>
                    <option value="GIR-SOMNATH">Gir Somnath</option>
                    <option value="JAMNAGAR">Jamnagar</option>
                    <option value="JUNAGADH">Junagadh</option>
                    <option value="KHEDA">Kheda</option>
                    <option value="KUTCH">Kutch</option>
                    <option value="MAHISAGAR">Mahisagar</option>
                    <option value="MEHSANA">Mehsana</option>
                    <option value="MORBI">Morbi</option>
                    <option value="NAVSARI">Navsari</option>
                    <option value="PANCHMAHAL">Panchmahal</option>
                    <option value="PATAN">Patan</option>
                    <option value="PORBANDAR">Porbandar</option>
                    <option value="RAJKOT">Rajkot</option>
                    <option value="SABARKANTHA">Sabarkantha</option>
                    <option value="SURAT">Surat</option>
                    <option value="SURENDRANAGAR">Surendranagar</option>
                    <option value="UNA">Una</option>
                    <option value="VADODARA">Vadodara</option>
                    <option value="VALSAD">Valsad</option>
                    </select>
                </div>
            </div>
            
            <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>

    </form>
@endsection