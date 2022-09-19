@extends('layouts.user')

@section('title')
    @langg('Deposit')
@endsection

@section('breadcrumb')
@langg('Deposit')
@endsection

@section('content')

    <div class="row row-deck row-cards mb-5">
        <div class="col-12">
            <div class="card">
            <div class="card-body">
                <form action="{{route('user.deposit.submit')}}" id="form" method="post">
                  @csrf
                    <div class="row">
                        <div class="col-md-6 mb-2">
                            <div class="form-label ">@langg('Amount : ')  </div>
                            <div class="input-group">
                                <input type="text" name="amount" id="amount" class="form-control shadow-none"  required>
                                <span class="input-group-text">{{getCurrencyCode()}}</span>
                            </div>
                            
                        </div>

                        <input type="hidden" name="curr_code">
                        <div class="col-md-6">
                            <div class="form-label">@langg('Select Gateway')</div>
                            <select class="form-select method shadow-none" name="gateway">
                                <option value="" selected>@langg('Select')</option>
                                @foreach ($gateways as $item)
                                 <option value="{{$item->id}}" selected>{{ $item->name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="col-md-12 my-3 info d-none">
                            <ul class="list-group mt-2">
                                <li class="list-group-item d-flex justify-content-between font-weight-bold">@langg('Amount : ')<span class="exAmount"></span></li>
                            </ul>
                        </div>
                      
                        <div class="col-md-12 mb-3">
                            <div class="form-label">&nbsp;</div>
                            <a href="#" class="btn btn-primary w-100 confirm">
                                @langg('Confirm')
                            </a>
                        </div>


                        <div class="modal modal-blur fade" id="modal-success" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                <div class="modal-status bg-primary"></div>
                                <div class="modal-body text-center py-4">
                                <i  class="fas fa-info-circle fa-3x text-primary mb-2"></i>
                                <h3>@langg('Confirm Payment')</h3>
                               
                                </div>
                                <div class="modal-footer">
                                <div class="w-100">
                                    <div class="row">
                                    <div class="col"><a href="#" class="btn w-100" data-bs-dismiss="modal">
                                        @langg('Cancel')
                                        </a></div>
                                    <div class="col">
                                        <button type="submit" class="btn btn-primary w-100 confirm">
                                           @langg('Confirm')
                                        </button>
                                    </div>
                                    </div>
                                </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            </div>
        </div>
    </div>




@endsection

@push('script')
   <script>
       'use strict';

        $('.method').on('change',function () { 
            var amount = parseFloat($('#amount').val())
            var selected = $('.method option:selected')

            if(selected.val() == '' ){
                $('.info').addClass('d-none')
                return false;
            }
            if($('#amount').val() == ''){
                toast('error','@langg('Please provide the amount first.')')
                return false;
            }
 
            var min = parseFloat(selected.data('min')).toFixed(8)
            var max = parseFloat(selected.data('max')).toFixed(8)
            var code = '{{getCurrencyCode()}}'

            var totalCharge = parseFloat(fixed)+parseFloat((amount * (percent/100)))

            $('.limit').text('Min : '+min+' '+code+' --- '+ 'Max : '+max+' '+code)
            $('.charge').text('Total Charge : '+fixed+' '+code+' + '+percent+'%')

            if(min > amount || max < amount){
                toast('error','Please follow the limit')
                return false;
            }

            $('.info').removeClass('d-none')
            $('.exAmount').text(amount +' '+ code)
            $('.exCharge').text(totalCharge +' '+ code)
            $('.total_amount').text(amount+totalCharge +' '+ code)
            $('.instruction').html(selected.data('ins'))
        })

        $('.confirm').on('click',function () { 
            var selectedMethod = $('.method option:selected')
            var selectedWallet = $('.wallet option:selected')

            if(selectedMethod.val() == '' ){
                $('.info').addClass('d-none')
                toast('error','@langg('Please select the payment method first.')')
                return false;
            }
            if($('#amount').val() == ''){
                toast('error','@langg('Please provide the amount first.')')
                return false;
            }
            if(selectedWallet.val() == ''){
                toast('error','@langg('Please select the wallet first.')')
                return false;
            }

            $('#modal-success').modal('show')
        })
   </script>
@endpush