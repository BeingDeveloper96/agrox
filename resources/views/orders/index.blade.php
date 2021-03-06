@extends('layouts.admin')

@section('content')
<div class="ibox">
    <div class="ibox-body">
        <h5 class="font-strong mb-4">Orders</h5>
        <div class="flexbox mb-4">
            <div class="flexbox">
                
            </div>
            <div class="flexbox">
                <div class="input-group-icon input-group-icon-left mr-3">
                    <span class="input-icon input-icon-right font-16"><i class="ti-search"></i></span>
                    <input class="form-control form-control-rounded form-control-solid" id="key-search" type="text" placeholder="Search ...">
                </div>
                <a class="btn btn-success btn-air" href="/dashboard/posts/create">
                    <i class="la la-plus"></i> <span class="btn-text-pg">Add New </span>
                </a>
                <a class="btn btn-warning ml-2 btn-air" href="/dashboard/orders/rejected">
                    <i class="la la-trash"></i> <span class="btn-text-pg">Rejected </span>
                </a>
            </div>
        </div>
        <div class="table-responsive row">
            <table class="table table-bordered table-hover" id="datatable">
                <thead class="thead-default thead-lg">
                    <tr>
                        <th>ID</th>
                        <th>Customer</th>
                        <th>Total</th>
                        <th>Status</th>
                        <th>Payment</th>
                        <th>Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($orders as $order)
                    @php
                        extract($order)
                    @endphp
                        <tr>
                            <td>{{ $id }}</td>
                            <td>{{ $billing_name }}</td>
                            <td>Rs {{ $billing_total }}</td>
                            <td>
                                @if ($status == 'Pending')
                                    <span id="{{ $id }}" class="badge badge-pill badge-info">{{ $status }}</span>
                                @elseif ($status == 'Complete')
                                    <span id="{{ $id }}" class="badge badge-pill badge-success">{{ $status }}</span>
                                @elseif ($status == 'Cancelled')
                                    <span id="{{ $id }}" class="badge badge-pill badge-warning">{{ $status }}</span>
                                @endif
                            </td>
                            <td>Cash On Delivery</td>
                            <td>{{ $created_at }}</td>
                            <td>
                                <a class="text-light mr-3 font-16" href="{{ route('orders.show', $id) }}"><i class="ti-eye"></i></a>

                                @if ($status == 'Pending')
                                {{ Form::open(['route' => ['orders.complete', $id], 'class' =>'d-inline ', 'method' => 'put']) }}
                                    <button title="Set Order as Complete" type="submit" class="no-btn text-light font-16"><i class="ti-check"></i></button>
                                {{ Form::close() }}
                                @endif
                                @if ($status != 'Complete')
                                {{ Form::open(['route' => ['orders.reject', $id], 'class' =>'d-inline ', 'method' => 'delete']) }}
                                    <button type="submit" title="Reject Order" class="no-btn text-light font-16"><i class="ti-trash"></i></button>
                                {{ Form::close() }}
                                @endif
                            </td>
                        </tr>
                    @empty
                    <tr class="odd"><td valign="top" colspan="5" class="dataTables_empty">No records found</td></tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection

@section('datatables')
    @include('includes.datatables')
@endsection