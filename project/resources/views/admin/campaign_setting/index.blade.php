@extends('layouts.admin')

@section('title')
   @langg('Edit Job')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header d-flex justify-content-between">
        <h1>@langg('Update Campaign Setting')</h1>
       
    </div>
</section>
@endsection

@section('content')
<div class="row justify-content-center">

    <div class="col-md-8">
       <div class="card">
            <div class="card-body">
                @include('admin.partials.form-both')
                <form action="{{ route('admin.campaign.setting.update',$campaign_settings->id) }}" method="post">
                    @csrf
                    <div class="row">

                        <div class="form-group col-md-12 ">
                            <label class="cswitch d-flex justify-content-between align-items-center border p-2">
                                <input id="seo" class="cswitch--input update" name="donation_charge_active_deactive_button" {{ $campaign_settings->donation_charge_active_deactive_button=='on' ? 'checked' :'' }}  type="checkbox"/><span class="cswitch--trigger wrapper"></span>
                                <span class="cswitch--label font-weight-bold">@langg('Donation Charge - Active/Deactivate')</span>
                            </label>
                        </div>

                        <div class="form-group col-md-12">
                            <label>@langg('Donation Charge From')</label>                           
                            <select class="form-control  mb-3" id="categorys" name="donation_charge_form" required>
                                <option value="donor" {{ $campaign_settings->donation_charge_form=="donor" ? 'selected' : '' }}>@lang('Donor')</option>
                                <option value="campaign_owner" {{ $campaign_settings->donation_charge_form=="campaign_owner" ? 'selected': '' }}>@lang('Campaign Owner')</option>
                            </select>
                        </div>

                        <div class="form-group col-md-12">
                            <label>@langg('Donation Charge Type')</label>                           
                            <select class="form-control  mb-3" id="categorys" name="charge_amount_type" required>
                                <option value="fixed" {{ $campaign_settings->charge_amount_type=="fixed" ? 'selected' : '' }}>@lang('Fixed')</option>
                                <option value="percentage" {{ $campaign_settings->charge_amount_type=="percentage" ? 'selected': '' }}>@lang('Percentage')</option>
                            </select>
                        </div>

                        <div class="form-group col-md-12">
                            <label>@langg('Donation Charge')</label>
                            <input class="form-control" type="number" name="charge_amount" required value="{{$campaign_settings->charge_amount}}">
                        </div>

                        <div class="form-group col-md-12">
                            <label>@langg('Default Donation Amount')</label>
                            <input class="form-control" type="number" name="default_donation_amount" required value="{{$campaign_settings->default_donation_amount}}">
                        </div>

                        <div class="form-group col-md-12">
                            <label>@langg('Minimum Donation Amount')</label>
                            <input class="form-control" type="number" name="minimum_donation_amount" value="{{$campaign_settings->minimum_donation_amount}}">
                            <small>@langg('If you dont want to set minimum amount of donation than you can leave this field blank..!')</small>
                        </div>

                        <div class="form-group col-md-12 ">
                            <label class="cswitch d-flex justify-content-between align-items-center border p-2">
                                <input id="seo" class="cswitch--input update" name="donation_countdown" {{ $campaign_settings->donation_countdown=='on' ? 'checked' :'' }}  type="checkbox"/><span class="cswitch--trigger wrapper"></span>
                                <span class="cswitch--label font-weight-bold">@langg('Show/Hide Donation Countdown')</span>
                            </label>
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