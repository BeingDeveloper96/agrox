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
                                <a href="#">{{ $category }}</a>
                                @if (! $loop->last)
                                    , 
                                @endif
                            @empty
                                Uncategorized
                            @endforelse
                        </span>
                        <span class="comment">
                            <i class="ion-chatbubble-working"></i> 0
                        </span>
                        

                        <ul style="display: inline-block;" class="post-meta w-30">
                            <li style="display: inline-block; color: #5fbd74" class="star-outer"> <i class="star fa fa-star"></i> </li>
                            <li id="post-rating" style="display: inline-block;" class="star-outer"> {{ $postRating }} </li>
                        </ul>

                        <ul id="rating" style="display: inline-block;" class="post-meta pull-right w-30">
                            <li>Rate :</li>
                            <li id="1" class="star-outer"> <i class="star fa fa-star"></i> </li>
                            <li id="2" class="star-outer"> <i class="star fa fa-star"></i> </li>
                            <li id="3" class="star-outer"> <i class="star fa fa-star"></i> </li>
                            <li id="4" class="star-outer"> <i class="star fa fa-star"></i> </li>
                            <li id="5" class="star-outer"> <i class="star fa fa-star"></i> </li>
                        </ul>
                    </div>
                    <h1 class="entry-title">{{ $post->title }}</h1>
                    <div class="entry-content">
                        {!! $post->body !!}
                    </div>
                    <div class="entry-footer">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="tags"> 
                                    @forelse ($post_categories as $category)
                                        <a href="#">{{ $category }}</a>
                                    @empty
                                        Uncategorized
                                    @endforelse
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="entry-author">
                        <div class="row">
                            <div class="col-md-2">
                                <img alt="" src="{{ avatar($post->user->avatar) }}" class="avatar" />
                            </div>
                            <div class="col-md-10">
                                <h3 class="name">{{ $post->user->name }}</h3>
                                <div class="desc">We are online market of organic fruits, vegetables, juices and dried fruits. We bring fresh, seasonal products from our family farm right to your doorstep.</div>
                            </div>
                        </div>
                    </div>
                    <div class="comments-area">
                        <div class="single-comments-list mt-0">
                            <div class="mb-2">
                                <h2 class="comment-title">2 comment(s) for Orange Juice</h2>
                            </div>
                            <ul class="comment-list">
                                <li>
                                    <div class="comment-container">
                                        <div class="comment-author-vcard">
                                            <img alt="" src="{{ asset('images/avatar/avatar.png') }}" />
                                        </div>
                                        <div class="comment-author-info">
                                            <span class="comment-author-name">admin</span>
                                            <a href="#" class="comment-date">July 27, 2016</a>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                                        </div>
                                        <div class="reply">
                                            <a class="comment-reply-link" href="#">Reply</a>
                                        </div>
                                    </div>
                                    <ul class="children">
                                        <li>
                                            <div class="comment-container">
                                                <div class="comment-author-vcard">
                                                    <img alt="" src="{{ asset('images/avatar/ava') }}tar.png" />
                                                </div>
                                                <div class="comment-author-info">
                                                    <span class="comment-author-name">admin</span>
                                                    <a href="#" class="comment-date">July 27, 2016</a>
                                                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                                                </div>
                                                <div class="reply">
                                                    <a class="comment-reply-link" href="#">Reply</a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <div class="comment-container">
                                        <div class="comment-author-vcard">
                                            <img alt="" src="{{ asset('images/avatar/avatar.png') }}" />
                                        </div>
                                        <div class="comment-author-info">
                                            <span class="comment-author-name">admin</span>
                                            <a href="#" class="comment-date">July 27, 2016</a>
                                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                                        </div>
                                        <div class="reply">
                                            <a class="comment-reply-link" href="#">Reply</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        
                        <div class="single-comment-form">
                            <div>
                                <h2 class="mb-1 comment-title" style="display:inline-block">Leave A Comment</h2>
                            </div>
                            <form class="comment-form">
                                <div class="row">
                                    <div class="col-md-12">
                                        <textarea id="comment" name="comment" cols="45" rows="5" placeholder="Message *"></textarea>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-2">
                                        <input name="submit" type="submit" id="submit" class="btn btn-alt btn-border" value="Submit">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="sidebar">
                    <div class="widget widget-product-search">
                        <form class="form-search">
                            <input type="text" class="search-field" placeholder="Search posts…" value="" name="s" />
                            <input type="submit" value="Search" />
                        </form>
                    </div>
                    <div class="widget widget-product-categories">
                        <h3 class="widget-title">Post Categories</h3>
                        <ul class="product-categories">
                            @forelse ($categoriesPostCount as $item)
                            <li><a href="#">{{ $item->name }}</a> <span class="count">{{ $item->posts_count }}</span></li>  
                            @empty
                                
                            @endforelse
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

@section('page_script')

<script>
$(document).ready(function() {
    let current_rating = '';

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
});
</script>
@endsection