@extends('layouts.base')

@section('caption', 'List of ProductCategory')

@section('title', 'List of ProductCategory')

@section('lyric', '')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Product Category </h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-success" href="{{ route('productcategory.create') }}" title="Create a project"> <i class="fas fa-plus-circle"></i>
                    </a>
            </div>
        </div>
    </div>

    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif

    <table class="table table-bordered table-responsive-lg">
        <tr>
            <th>No</th>
            <th>Name</th>
            <th>Type</th>           
            <th>Date Created</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($productcategory as $productcat)
            <tr>
                <td>{{ ++$i }}</td>
                <td>{{ $productcat->name }}</td>
                <td>{{ $productcat->type }}</td>              
                <td>{{ date_format($productcat->created_at, 'jS M Y') }}</td>
                <td>
                    <form action="{{ route('productcategory.destroy', $productcat->id) }}" method="POST">

                        <a href="{{ route('productcategory.show', $productcat->id) }}" title="show">
                            <i class="fas fa-eye text-success  fa-lg"></i>
                        </a>

                        <a href="{{ route('productcategory.edit', $productcat->id) }}">
                            <i class="fas fa-edit  fa-lg"></i>

                        </a>

                        @csrf
                        @method('DELETE')

                        <button type="submit" title="delete" style="border: none; background-color:transparent;">
                            <i class="fas fa-trash fa-lg text-danger"></i>

                        </button>
                    </form>
                </td>
            </tr>
        @endforeach
    </table>

    {!! $productcategory->links() !!}

@endsection