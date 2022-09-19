@extends('layouts.user')

@section('title')
    @langg('Withdraw Money')
@endsection

@section('content')
    <div class="row row-deck row-cards mb-5">
        <div class="col-12">
            <div class="card">
            <div class="card-body">
                <form action="" id="form" method="post">
                  @csrf
                    <div class="row">
                        <div class="col-md-6 mb-2">
                            <div class="form-label ">@langg('Amount : ') <code class="limit"></code> </div>
                            <input type="text" name="amount" id="amount" class="form-control shadow-none mb-2"  required>
                            <small class="text-danger charge"></small>
                        </div>

                        <div class="col-md-6">
                            <div class="form-label">@langg('Select Method')</div>
                            <select class="form-select method shadow-none" name="method_id">
                                <option value="" selected>@langg('Select')</option>
                                @foreach ($methods as $method)
                                  <option value="{{$method->id}}" data-min="{{$method->min_amount}}" data-max="{{$method->max_amount}}" data-fixed="{{$method->fixed_charge}}" data-percent="{{$method->percent_charge}}" data-ins="{{$method->withdraw_instruction}}">{{$method->name}}</option>
                                @endforeach
                            </select>
                        </div>

                       
                        <div class="col-md-12 my-3 info d-none">
                            <ul class="list-group mt-2">
                                <li class="list-group-item d-flex justify-content-between font-weight-bold">@langg('Withdraw Amount : ')<span class="exAmount"></span></li>

                                <li class="list-group-item d-flex justify-content-between font-weight-bold">@langg('Total Charge : ')<span class="exCharge"></span></li>
                                
                                <li class="list-group-item d-flex justify-content-between font-weight-bold">@langg('Total Amount : ')<span class="total_amount"></span></li>
                            </ul>

                            <div class="mt-4 text-center">
                                <h5 class="text-danger">
                                    @langg('Withdraw instruction')
                                </h5>
                                <p class="instruction mt-2"></p>
                            </div>

                            <div class="mt-3 text-center">
                                <h5 class="text-danger">
                                    @langg('Provide your withdraw account details.')
                                </h5>

                                <textarea name="user_data" id="" class="form-control shadow-none" cols="30" rows="10" required></textarea>
                            </div>
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
                                <h3>@langg('Confirm Withdraw')</h3>
                               
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
           

            var min = parseFloat(selected.data('min')).toFixed()
            var max = parseFloat(selected.data('max')).toFixed()
            var fixed = parseFloat(selected.data('fixed')).toFixed()
            var percent = parseFloat(selected.data('percent')).toFixed()
            var code = "{{$gs->curr_code}}"

            var totalCharge = parseFloat(fixed)+parseFloat((amount * (percent/100)))

            $('.limit').text('@langg('Min') : '+min+' '+code+' --- '+ 'Max : '+max+' '+code)
            $('.charge').text('@langg('Total Charge') : '+fixed+' '+code+' + '+percent+'%')

            if(min > amount || max < amount){
                toast('error','@langg('Please follow the limit')')
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
                toast('error','@langg('Please select the withdraw method first.')')
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