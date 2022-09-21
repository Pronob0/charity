@extends('layouts.admin')

@section('title')
   @langg('Edit Job')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header d-flex justify-content-between">
        <h1>@langg('Reward Setting')</h1>
       
    </div>
</section>
@endsection

@section('content')
<div class="row justify-content-center">

    <div class="col-md-8">
       <div class="card">
            <div class="card-body">
                @include('admin.partials.form-both')
                <form id="geniusformUpdate" action="{{route('admin.gs.update')}}" method="post">
                    @csrf
                    <div class="row">

                        <div class="form-group col-md-12">
                            <label>@langg('Reward Point')</label>
                            <input class="form-control" type="number" name="reward_amount_for_point" required value="{{$gs->reward_amount_for_point}}">
                            <small class="text-primary">@langg('This point will be added for amount (1)')</small>
                            <br>
                            <small class="text-success">@langg('For Example, if you input 10 points in the field that will be consider for reward ($1)')</small>
                        </div>
                    </div>
                    
                    <div class="form-group text-right col-md-12">
                        <button class="btn  btn-primary btn-lg" type="submit">@langg('Submit')</button>
                    </div>
                </form>
            </div>
       </div>
    </div>
</div>
@endsection
@push('script')

<script>
    
   
</script>
    
@endpush