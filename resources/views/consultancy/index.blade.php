@extends('layouts.admin')

@section('content')
<div class="flexbox-b mb-5">
    <span class="mr-4 static-badge badge-pink"><i class="la la-envelope"></i></span>
    <div>
        <h5 class="font-strong">Consultancy Service</h5>
        <div class="text-light">{{ auth()->user()->name }}, {{ auth()->user()->email }}</div>
    </div>
</div>
<div class="row">
    <div class="col-lg-3 col-md-4">
        @if(auth()->user()->role_id !== 3)
        <a class="mb-5 btn btn-primary btn-block" data-toggle="modal" data-target="#new-mail-modal" href="javascript:;">
            <span class="btn-icon"><i class="la la-pencil"></i>Create Thread</span>
        </a>
        @endif
        <h6 class="mb-2">Consultancy Topics/Threads</h6>
        <ul class="list-group list-group-divider">
            @forelse ($consultancies as $item)
            <li class="list-group-item flexbox">
                <a style="width: 80%" class="flexbox-b {{ request()->topic == $item->id ? 'topic-active' : '' }}" href="{{ route('consultancies.index', ['topic' => $item->id]) }}">
                    @if ($item->status == 'Pending')
                    <span class="badge badge-pill badge-primary">P</span>&nbsp;
                    @elseif($item->status == 'Rejected')
                    <span class="badge badge-pill badge-warning">R</span>&nbsp;
                    @elseif($item->status == 'Accepted')
                    <span class="badge badge-pill badge-success">A</span>&nbsp;
                    @endif
                    {{ $item->title }}
                </a>
                @if ($item->status == 'Pending')
                    @if(! empty($accepter) && $accepter == auth()->user()->id)
                    {{ Form::open(['route' => ['consultancies.accept', $item->id], 'class' =>'d-inline ', 'method' => 'put']) }}
                        <button title="Accept Thread Request" type="submit" class="no-btn text-success font-18"><i class="ti-check"></i></button>
                    {{ Form::close() }}
                    {{ Form::open(['route' => ['consultancies.reject', $item->id], 'class' =>'d-inline ', 'method' => 'put']) }}
                        <button title="Reject Thread Request" type="submit" class="no-btn text-danger font-18"><i class="ti-close"></i></button>
                    {{ Form::close() }}
                    @endif
                @elseif ($item->status == 'Rejected')
                    @if(! empty($accepter) && $accepter == auth()->user()->id)
                    {{ Form::open(['route' => ['consultancies.accept', $item->id], 'class' =>'d-inline ', 'method' => 'put']) }}
                        <button title="Accept Thread Request" type="submit" class="no-btn text-success font-18"><i class="ti-check"></i></button>
                    {{ Form::close() }}
                    @endif                   
                @endif
            </li>
            @empty
            <li class="list-group-item flexbox">
                <p class="flexbox-b">No Threads to show</p>
            </li>
            @endforelse
        </ul>
    </div>
    <style>
        .star-outer {
            padding-left: 0px !important;
            margin-right: 10px !important;
            cursor:pointer;
        }
        #rating li{
            font-size: 15px;
            display: inline-block;
        }
    </style>
    <div class="col-lg-9 col-md-8">
        <div class="ibox" id="mailbox-container">
            <div class="p-4 row">
                <div class="col-4">
                    <h5 class="font-strong m-0 mr-3">INBOX</h5>
                </div>
                <div class="col-4 text-center">
                    @if(!empty($inbox) && auth()->user()->role_id !== 3)
                    <h5 class="font-strong m-0 mr-3" id="rating" style="display: inline-block;">
                        <li id="1" class="star-outer"> <i class="star fa fa-star"></i> </li>
                        <li id="2" class="star-outer"> <i class="star fa fa-star"></i> </li>
                        <li id="3" class="star-outer"> <i class="star fa fa-star"></i> </li>
                        <li id="4" class="star-outer"> <i class="star fa fa-star"></i> </li>
                        <li id="5" class="star-outer"> <i class="star fa fa-star"></i> </li>
                    </h5>
                    @endif
                </div>
                @if(!empty($inbox) OR $accepter == auth()->user()->id)
                <div class="col-4 text-right">
                    <button class="d-block create-message btn btn-primary btn-air ml-auto p-2" data-toggle="modal" data-target="#create-message-modal"><i class="la la-pencil"></i> Compose</button>
                </div>
                @endif
            </div>
            
            <table class="table table-hover table-inbox" id="table-inbox">
                <tbody class="rowlinkx" data-link="row">
                    @forelse ($inbox as $item)
                    <tr data-id="1">
                        <td>
                            <a class="active" href="{{ route('profile.show', $item['from']['id']) }}">{{ $item['from']['name'] }}</a>
                        </td>
                        <td>
                            <input type="hidden" value="{{ $item['message'] }}" class="message-text-input">
                            <a class="d-block read-message" data-toggle="modal" data-target="#mail-view-modal">{{ Str::limit($item['message'], 80) }}</a>
                        </td>
                        <td></td>
                        <td class="text-right">{{ date('h:i A', strtotime($item['created_at'])) }}</td>
                    </tr>
                    @empty
                        <p class="pl-4">No Message in this thread.</p>
                    @endforelse
                </tbody>
            </table>
            
        </div>
    </div>
</div>
@if (! $consultancies->isEmpty())
<div class="modal fade" id="create-message-modal">
    <div class="modal-dialog" role="document">
        {{ Form::open(['route' => 'message.store', 'class' => 'modal-content', 'method' => 'POST']) }}
            {{ Form::hidden('consultancy_id', request()->topic ? request()->topic : $consultancies[0]->id) }}
            {{ Form::hidden('to', $to) }} 
            <div class="modal-header p-4">
                <h5 class="modal-title">Compose Message</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body p-4">
                <div class="form-group mb-4">
                    {{ Form::textarea('message', null, ['placeholder' => 'Enter Message', 'class' => 'form-control form-control-line', 'required' => true, 'rows' => 5]) }}
                    @error('message')
                        <label for="message">{{ $message }}</label>
                    @enderror
                </div>
            </div>
            <div class="modal-footer justify-content-between bg-primary-50">
                <div>
                    <button type="submit" class="btn btn-primary btn-rounded mr-3">Send</button>
                </div>
            </div>
        {{ Form::close() }}}
    </div>
</div>
@endif
<div class="modal fade" id="new-mail-modal">
    <div class="modal-dialog" role="document">
        {{ Form::open(['route' => 'consultancies.store', 'class' => 'modal-content', 'method' => 'POST']) }}
        <form class="modal-content">
            <div class="modal-header p-4">
                <h5 class="modal-title">CREATE NEW THREAD REQUEST</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body p-4">
                <div class="form-group mb-4">
                    {{ Form::select('category_id', $categories, null, ['placeholder' => 'Select Category', 'class' => 'form-control form-control-line', 'required' => true]) }}
                    @error('category_id')
                        <label for="category_id">{{ $message }}</label>
                    @enderror
                </div>
                <div class="form-group mb-4">
                    {{ Form::select('consultant', $consultants, null, ['placeholder' => 'Select Consultant', 'class' => 'form-control form-control-line', 'required' => true]) }}
                    @error('consultant')
                        <label for="consultant">{{ $message }}</label>
                    @enderror
                </div>
                <div class="form-group mb-4">
                    {{ Form::text('title', null, ['placeholder' => 'Enter Title', 'class' => 'form-control form-control-line', 'required' => true]) }}
                    @error('title')
                        <label for="title">{{ $message }}</label>
                    @enderror
                </div>
                <div class="form-group mb-4">
                    {{ Form::textarea('description', null, ['placeholder' => 'Enter Description', 'class' => 'form-control form-control-line', 'required' => true, 'rows' => 3]) }}
                    @error('description')
                        <label for="description">{{ $message }}</label>
                    @enderror
                </div>
            </div>
            <div class="modal-footer justify-content-between bg-primary-50">
                <div>
                    <button type="submit" class="btn btn-primary btn-rounded mr-3">Create Thread</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="modal fade" id="mail-view-modal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header px-4 py-3 bg-primary-400">
                <div>
                    <h5 class="modal-title text-white">Message</h5></div>
                <button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body p-4">
                <div id="message-text">
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('page_script')
    <script>
        $(document).ready(function() {
            $(document).on('click', '.read-message', function(e) {
                let message = $(this).prev().val();
                $('#message-text').text(message);
            });

            $(document).on('click', '.accept-request', function(e) {
                e.preventDefault();
                let id = $(this).attr('data-id');

                let url = "{{ route('consultancies.accept', ':id') }}";
                url = url.replace(':id', id);

                // $.ajax
            });



            // Rating
            $('.star-outer').click(function() {
                let url = "{{ route('consultant.rating') }}";
                let rating = this.id;
                let consultancy_id = $('input[name=consultancy_id]').val();
                let consultant = $('input[name=to]').val();

                $.ajax({
                    url: url,
                    method: 'POST',
                    data: {
                        rating: rating,
                        consultancy_id: consultancy_id,
                        consultant: consultant
                    }
                }).done(function(data) {
                    unstyle_stars();
                    style_stars(rating);
                });
            });

            style_stars('{{ $userRating->rating ?? "" }}');

            function style_stars(count) {
                for (let i = 1; i <= count; i++ ) {
                    document.getElementById(i).style.color='#18c5a9';
                }
            }

            function unstyle_stars() {
                $('.star-outer').css('color', '#aaa')
            }
        });
    </script>
@endsection