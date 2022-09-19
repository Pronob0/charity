@extends('layouts.admin')

@section('title')
  @langg('Withdraw Methods')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header justify-content-between">
        <h1>@langg('Withdraw Methods')</h1>
        @if (access('withdraw method create'))
        <a href="{{route('admin.withdraw.create')}}" class="btn btn-primary add"><i class="fa fa-plus"></i> @langg('Add new Method')</a>
            
        @endif
    </div>
</section>
@endsection
@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header justify-content-end">
                    <div class="card-header-form">
                        <form method="GET" action="{{ route('admin.withdraw.search') }}">
                            <div class="input-group">
                                <input type="text" class="form-control" name="search">
                                <div class="input-group-append">
                                    <button class="btn btn-primary border-0"><i class="fas fa-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="card-body">
                    <div class="card-body text-center">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <tr>
                                    <th>@langg('Sl')</th>
                                    <th>@langg('Name')</th>
                                    <th>@langg('status')</th>
                                    <th>@langg('Action')</th>
                                </tr>
                                @forelse ($withdraws as $key => $withdraw)
                                    <tr>

                                        <td data-label="@langg('Sl')">{{$key +  $withdraws->firstItem() }}</td>
                                        <td data-label="@langg('Name')">{{ $withdraw->name }}</td>

                                        <td data-label="@langg('status')">
                                            @if ($withdraw->status)
                                                <div class="badge badge-success">@langg('Active')</div>
                                            @else
                                                <div class="badge badge-danger">@langg('Inactive')</div>
                                            @endif
                                        </td>

                                        @if (access('withdraw method edit'))
                                        <td data-label="@langg('Action')">
                                            <a href="{{ route('admin.withdraw.edit', $withdraw->id) }}"  class="btn btn-primary update"><i class="fa fa-pen"></i></a>
                                        </td>
                                        @else
                                        @langg('N/A')
                                        @endif
                                    </tr>
                                @empty

                                    <tr>

                                        <td class="text-center" colspan="100%">@langg('No Data Found')</td>

                                    </tr>

                                @endforelse
                            </table>
                        </div>
                    </div>
                    @if ($withdraws->hasPages())
                        <div class="card-footer">
                            {{ $withdraws->links('admin.partials.paginate') }}
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>


@endsection
