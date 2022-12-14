@extends('layouts.frontend')

@section('title')
    @langg('Home')
@endsection

@section('content')
    @foreach ($sections as $section)
        @if($section->status == 1)
            @includeif('frontend.sections.'.$section->slug,['section' => $section])
        @endif
    @endforeach
@endsection