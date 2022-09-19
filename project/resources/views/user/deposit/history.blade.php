@extends('layouts.user')

@section('title')
   @langg('Deposit History')
@endsection

@section('breadcrumb')
    @langg('Deposit History')
@endsection

@section('content')

    <div class="row row-deck row-cards">
        <div class="col-12">
            <div class="card">
                <div class="table-responsive">
                  <table class="table table-vcenter card-table table-striped">
                    <thead>
                      <tr>
                        <th>@langg('Amount')</th>
                        <th>@langg('Charge')</th>
                        <th>@langg('Method')</th>
                        <th>@langg('Status')</th>
                        <th>@langg('Date')</th>
                      </tr>
                    </thead>
                    <tbody>
                      @forelse ($deposits as $item)
           
                        <tr>
                          <td data-label="@langg('Amount')">{{amount($item->amount,$item->currency->type,2)}} {{$item->currency->code}}</td>
                          <td data-label="@langg('Charge')">{{amount($item->charge,$item->currency->type,2)}} {{$item->currency->code}}</td>
                          <td data-label="@langg('Method')">{{$item->gateway->name}}</td>
                          <td data-label="@langg('Status')"><span class="badge {{$item->status == 'completed' ? 'bg-success':'bg-warning'}}">{{$item->status}}</span></td>
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

@endsection