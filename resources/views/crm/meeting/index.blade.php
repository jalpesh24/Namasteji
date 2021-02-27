@extends('layouts.base')

@section('caption', 'List of Meetings')

@section('title', 'List of Meetings')

@section('lyric', '')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Meetings </h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-success" href="{{ route('meeting.create') }}" title="Create a Meetings"> <i class="fas fa-plus-circle"></i>
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
        @foreach ($Meetings as $meeting)
            <tr>
                <td>{{ ++$i }}</td>
                <td>{{ $meeting->name }}</td>
                <td>{{ $meeting->type }}</td>              
                <td>{{ date_format($meeting->created_at, 'jS M Y') }}</td>
                <td>
                    <form action="{{ route('meeting.destroy', $meeting->id) }}" method="POST">

                        <a href="{{ route('meeting.show', $meeting->id) }}" title="show">
                            <i class="fas fa-eye text-success  fa-lg"></i>
                        </a>

                        <a href="{{ route('meeting.edit', $meeting->id) }}">
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

    {!! $Meetings->links() !!}

@endsection