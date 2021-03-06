@extends('layouts.main')

@section('content')
<div class="section pt-7 pb-7">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="single-blog">
                    <div class="post-thumbnail">
                        <a href="{{ asset('/storage/' . $post->featured_image) }}">
                            <img src="{{ asset('/storage/' . $post->featured_image) }}" alt="" />
                        </a>
                    </div>
                    <div class="entry-meta">
                        <span class="posted-on">
                            <i class="ion-calendar"></i> 
                            <span>{{ date('F, j Y', strtotime($post->created_at)) }}</span>
                        </span>
                        <span class="categories">
                            <i class="ion-folder"></i> 
                            @forelse ($post_categories as $category)
                            <a href="{{ route('blog.index', ['category' => $category->slug]) }}">{{ $category->name }}</a>
                                @if (! $loop->last)
                                    , 
                                @endif
                            @empty
                                Uncategorized
                            @endforelse
                        </span>
                        <span class="comment">
                            <i class="ion-chatbubble-working"></i> {{ count($comments) }}
                        </span>
                        <span class="comment">
                            <i class="ion-heart"></i> {{ $post->likes_count }}
                        </span>

                        <ul style="display: inline-block;" class="post-meta w-30">
                            <li style="display: inline-block; color: #5fbd74" class=""> <i class="star fa fa-star"></i> </li>
                            <li id="post-rating" style="display: inline-block;" class=""> {{ $postRating }} </li> &nbsp; 
                        @auth
                            @if($userLiked !== null)
                            <li id="like-post" data-id="{{ $post->id }}" style="cursor:pointer; display: inline-block; color: #5fbd74" class="">
                                @if ($userLiked)
                                    LIKED
                                @else
                                    LIKE
                                @endif
                            </li>
                            @endif
                        @endauth
                        </ul>
                        @auth
                        <ul id="rating" style="display: inline-block;" class="post-meta pull-right w-30">
                            <li>Rate :</li>
                            <li id="1" class="star-outer"> <i class="star fa fa-star"></i> </li>
                            <li id="2" class="star-outer"> <i class="star fa fa-star"></i> </li>
                            <li id="3" class="star-outer"> <i class="star fa fa-star"></i> </li>
                            <li id="4" class="star-outer"> <i class="star fa fa-star"></i> </li>
                            <li id="5" class="star-outer"> <i class="star fa fa-star"></i> </li>
                        </ul>
                        @endauth
                    </div>
                    <h1 class="entry-title">{{ $post->title }}</h1>
                    <div class="entry-content">
                        {!! $post->body !!}
                    </div>
                    <div class="attachments mb-3 mt-3 p-3" style="border-top: 1px solid #f1eeea; border-bottom: 1px solid #f1eeea;">
                        <h5>Attachments</h5>
                        @if ($post->attachments)
                        @php
                            $attachments = explode(',', $post->attachments)
                        @endphp
                            <ul class="list-unstyled">
                                @foreach ($attachments as $key => $item)
                                <li>
                                    <a href="{{ asset('/storage/' . $item) }}" download> Attachment - {{$key + 1}}</a>
                                </li>
                                @endforeach
                            </ul>
                        @else 
                            <p class="lead">No Attachment</p>
                        @endif
                    </div>
                    <div class="entry-footer">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="tags"> 
                                    @forelse ($post_categories as $category)
                                        <a href="{{ route('blog.index', ['category' => $category->slug]) }}">{{ $category->name }}</a>
                                    @empty
                                        Uncategorized
                                    @endforelse
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="entry-author">
                        <div class="row">
                            <div class="col-xs-2 col-md-2">
                                <a href="{{ route('profile.show', $post->user->id) }}">
                                    <img alt="" src="{{ avatar($post->user->avatar) }}" class="avatar" />
                                </a>
                            </div>
                            <div class="col-xs-10 col-md-10">
                                <a href="{{ route('profile.show', $post->user->id) }}">
                                    <h3 class="name">{{ $post->user->name }}</h3>
                                </a>
                                <div class="desc">{{ $post->user->bio }}</div>
                            </div>
                        </div>
                    </div>
                    <div class="comments-area">
                        <div class="single-comments-list mt-0">
                            <div class="mb-2">
                                <h2 class="comment-title">{{ count($comments) }} comment(s) for {{ $post->title }}</h2>
                            </div>
                            <ul class="comment-list">
                                @forelse ($comments as $comment)
                                <li>
                                    <div class="comment-container">
                                        <div class="comment-author-vcard">
                                            <a href="{{ route('profile.show', $comment->user->id) }}">
                                                <img alt="" src="{{ avatar($comment->user->avatar) }}" />
                                            </a>
                                        </div>
                                        <div class="comment-author-info">
                                            <a href="{{ route('profile.show', $comment->user->id) }}">
                                                <span class="comment-author-name">{{ $comment->user->name }}</span>
                                            </a>
                                            <a href="#" class="comment-date">{{ date('F, j Y', strtotime($comment->created_at)) }}</a>
                                            <p>{{ $comment->discussion }}</p>
                                        </div>
                                        <div class="reply">
                                            <a class="comment-reply-link" href="#comment">Reply</a>
                                        </div>
                                    </div>
                                </li>
                                @empty
                                    <div><p class="lead textcenter">No Comments</p></div>
                                @endforelse
                            </ul>
                        </div>
                        @if (Auth::check())
                        <div class="single-comment-form">
                            <div>
                                <h2 class="mb-1 comment-title" style="display:inline-block">Leave A Comment</h2>
                            </div>
                            {{ Form::open(['method' => 'POST', 'class' => 'comment-form', 'id' => 'create-comment']) }}
                                <div class="row">
                                    <div class="col-md-12">
                                        <textarea id="comment" name="comment" cols="45" rows="5" placeholder="Message *"></textarea>
                                        <label for="comment" id="comment-error" style="display:none" class="text-danger">Comment field is required</label>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-2">
                                        <input name="submit" type="submit" id="submit" class="btn btn-alt btn-border" value="Submit">
                                    </div>
                                </div>
                            {{ Form::close() }}
                        </div>
                        @else
                        <p class="lead"><a style="color:#5fbd74" href="{{ route('login') }}">Login</a> to share your comments</p>
                        @endif
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="sidebar">
                    <div class="widget widget-product-search">
                        <form class="form-search">
                            <input type="text" class="search-field" placeholder="Search blogs…" value="{{ request()->search_query ?? '' }}" name="search_query" />
                            <input type="submit" value="Search" />
                        </form>
                    </div>
                    <div class="widget widget-product-categories">
                        <h3 class="widget-title">Post Categories</h3>
                        <ul class="product-categories">
                            @forelse ($categoriesPostCount as $category)
                            <li>
                                <a class="{{ request()->category == $category->slug ? 'active' : '' }}" href="{{ route('blog.index', ['category' => $category->slug]) }}">{{ $category->name }}</a>
                                <span class="count">{{ $category->posts_count }}</span>
                            </li>
                            @empty
                                
                            @endforelse
                        </ul>
                    </div>
                    <div class="widget widget-product-categories">
                        <h3 class="widget-title">Tags</h3>
                        <ul class="product-categories">
                            <li>
                                <a href="{{ route('blog.index', ['tag' =>'success_story']) }}">
                                    Succes Story
                                </a>
                            </li>  
                            <li>
                                <a href="{{ route('blog.index', ['tag' => 'farmer_experience']) }}">
                                    Farmer Experience
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="widget widget_posts_widget">
                        <h3 class="widget-title">Popular Posts</h3>
                        @forelse ($popular as $item) 
                        <div class="item">
                            <div class="thumb"> 
                                <img src="{{ asset('/storage/' . $item['featured_image']) }}" alt="" />
                            </div>
                            <div class="info">
                                <span class="title">
                                    <a href="{{ route('blog.show', $item['slug']) }}"> {{ $item['title'] }} </a> 
                                </span> 
                                <span class="date"> {{ date('F, j Y', strtotime($item['created_at'])) }} </span>
                            </div>
                        </div>
                        @empty
                            <div><p class="lead text-center">No Posts Found</p></div>
                        @endforelse
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@if (Auth::check())
    
@section('page_script')
<script>
        $(document).ready(function() {

            $('.star-outer').click(function() {
                let url = "{{ route('postRating.store', $post->id) }}";
                let rating = this.id;

                $.ajax({
                    url: url,
                    method: 'POST',
                    data: {rating: rating}
                }).done(function(data) {
                    if(data.success) {
                        $('#post-rating').html(data.postRating);
                        unstyle_stars();
                        style_stars(rating);
                    }
                });
            });

            style_stars('{{ $userRating }}');

            function style_stars(count) {
                for (let i = 1; i <= count; i++ ) {
                    document.getElementById(i).style.color='#5fbd74';
                }
            }

            function unstyle_stars() {
                $('.star-outer').css('color', '#aaa')
            }

            $(document).on('submit', '#create-comment', function(e) {
                e.preventDefault();
                let url = '{{ route("comment.create", $post->id) }}'

                $.ajax({
                    url: url,
                    method: 'POST',
                    data: $(this).serialize()
                }).done(function(data) {
                    if(data.success) {
                        toastr.success(data.success, 'Success');

                        $('#comment-error').hide();

                        $('.comment-list').append(
                            `
                            <li>
                                <div class="comment-container">
                                    <div class="comment-author-vcard">
                                        <img alt="" src="{{ avatar(auth()->user()->avatar) }}" />
                                    </div>
                                    <div class="comment-author-info">
                                        <span class="comment-author-name">{{ auth()->user()->name }}</span>
                                        <a href="" class="comment-date">{{ date('F, j Y', time()) }}</a>
                                        <p>${$('#comment').val()}</p>
                                    </div>
                                    <div class="reply">
                                        <a class="comment-reply-link" href="#comment">Reply</a>
                                    </div>
                                </div>
                            </li>
                            `
                        );

                        $('#create-comment').trigger("reset");
                    }
                }).fail(function(data) {
                    $('#comment-error').show();
                });
            });

            $(document).on('click', '#like-post', function() {
                $.ajax({
                    url: "{{ route('blog.like', $post->id) }}",
                    method: 'POST'
                }).done(function(data) {
                    $('#like-post').text(data.text);
                }).fail(function(data) {
                    console.log(data);
                });
            });
        });
    </script>
@endsection
@endif