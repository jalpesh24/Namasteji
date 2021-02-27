@extends('layouts.base')

@section('caption', 'Add Product Category')

@section('title', 'Add Product Category')

@section('lyric', 'lorem ipsum')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Add New Product Category</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('productcategory.index') }}" title="Go back"> <i class="fas fa-backward "></i> </a>
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
    <form action="{{ route('productcategory.store') }}" method="POST" >
        @csrf

        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Name:</strong>
                    <input type="text" name="name" class="form-control" placeholder="Name">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
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
            
            <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>

    </form>
@endsection