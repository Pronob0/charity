@extends('layouts.user')

@section('title')
   @langg('Withdraw History')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header">
        <h1>@langg('Withdraw History')</h1>
    </div>
</section>
@endsection

@section('content')
  
        <div class="row row-deck row-cards">
            <div class="col-12">
                <div class="card">
                    <div class="table-responsive">
                    <table class="table table-vcenter card-table table-striped">
                        <thead>
                        <tr>
                            <th>@langg('Transaction')</th>
                            <th>@langg('Amount')</th>
                            <th>@langg('Charge')</th>
                            <th>@langg('Total Amount')</th>
                            <th>@langg('Method Name')</th>
                            <th>@langg('Status')</th>
                            <th>@langg('Date')</th>
                        </tr>
                        </thead>
                        <tbody>
                        @forelse ($withdrawals as $item)
                            <tr>
                                <td data-label="@langg('Transaction')">{{$item->trx}}</td>
                                <td data-label="@langg('Amount')">{{numFormat($item->amount)}} {{$item->currency->code}}</td>
                                <td data-label="@langg('Charge')">{{numFormat($item->charge)}} {{$item->currency->code}}</td>
                                <td data-label="@langg('Total Amount')">{{numFormat($item->total_amount)}} {{$item->currency->code}}</td>
                                <td data-label="@langg('Method Name')">{{$item->method->name}}</td>
                                <td data-label="@langg('Status')">

                                    @if($item->status == 1)
                                        <span class="badge bg-success">@langg('Accepted')</span>
                                    @elseif($item->status == 2)
                                         <span class="badge bg-danger">@langg('Rejected')</span>
                                         <button class="badge bg-secondary reason" data-bs-toggle="modal" data-bs-target="#modal-team" data-reason="{{$item->reject_reason}}"><i class="fas fa-info"></i></button>
                                    @else
                                        <span class="badge bg-warning">@langg('Pending')</span>

                                    @endif
                                </td>
                                <td data-label="@langg('Date')">{{dateFormat($item->created_at)}}</td>
                            </tr>
                            @empty
                            <tr>
                                <td class="text-center" colspan="12">@langg('No data found!')</td>
                            </tr>
                         @endforelse
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
        </div>


    <div class="modal modal-blur fade" id="modal-team" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">@langg('Reject Reasons')</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <div>
                <textarea class="form-control reject-reason" rows="5" disabled></textarea>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn ms-auto" data-bs-dismiss="modal">Close</button>
             
            </div>
          </div>
        </div>
      </div>
@endsection

@push('script')
    <script>
        'use strict';
        $('.reason').on('click',function() { 
            $('#modal-team').find('.reject-reason').val($(this).data('reason'))
            $('#modal-team').modal('show')
        })
    </script>
@endpush