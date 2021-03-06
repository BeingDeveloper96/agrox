@extends('layouts.admin')

@section('content')
{{-- {{dd($product_categories)}} --}}
<div class="ibox">
    <div class="ibox-body">
        <h5 class="font-strong mb-5">EDIT PRODUCT</h5>
        {{ Form::open(['action' => ['ProductsController@update', $product->id], 'method' => 'PUT', 'enctype' => 'multipart/form-data']) }}
        <div class="row">
            <div class="col-lg-4">
                <div style="width: 325px; height:355px" style="position:relative">
                    <div class="lead" id="featured_image">
                        <img style="width: 325px; height:355px" src="{{ asset('/storage/' . $product->featured_image) }}">
                    </div>
                    <div class="add-featured-img" style="position: absolute;
                    left: 40%;
                    top: 16%;">
                        <div class="file-input-plus file-input" id="feature-image-btn"><i class="la la-plus-circle"></i>
                            <input type="file" name="featured_image" id="upload_featured_image">
                        </div>
                    </div>
                    @error('featured_image')
                        <label for="featured_image" class="col-form-label text-danger">{{ $message }}</label>
                    @enderror
                </div>
                <div class="row mt-4" id="product_images">
                    @if($product->images != "")
                        <?php
                            $product_images = explode(',', $product->images);    
                        ?>
                        @foreach ($product_images as $image)
                            <div class="col-md-3">
                                <img src="{{ asset('/storage/' . $image) }}">
                            </div>
                        @endforeach
                    @endif
                    
                    <div class="col-md-3">
                        <div class="file-input-plus file-input"><i class="la la-plus-circle"></i>
                            <input type="file" name="images[]" id="upload_product_images" multiple="multiple">
                        </div> Add More Images
                        @error('images.*')
                            <label for="images" class="col-form-label text-danger">{{ $message }}</label>
                        @enderror
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                
                    <div class="form-group mb-4">
                        <label>Product Name</label>
                        {{ Form::text('name', $product->name, ['class' => 'form-control form-control-solid', 'placeholder' => 'Enter Product Name']) }}
                        @error('name')
                            <label for="name" class="col-form-label text-danger">{{ $message }}</label>
                        @enderror
                    </div>
                    <div class="row">
                        <div class="col-sm-12 form-group mb-4">
                            <label>Categories</label>
                            <div>
                            @forelse ($categories as $key => $category)
                            @php extract($category) @endphp
                                <div class="form-group">
                                    <label class="checkbox checkbox-grey checkbox-primary">
                                        {{ Form::checkbox('categories[]', $id, in_array($id, $product_categories)) }}
                                    
                                        <span class="input-span"></span> {{ $parent['name'] ? $parent['name']  . ' -> ' . $name : $name }} </label>
                                </div>
                            @empty
                                No Data Found.
                            @endforelse
                            @error('categories')
                                <label for="categories" class="col-form-label text-danger">{{ $message }}</label>
                            @enderror
                            </div>
                        </div>
                        
                    </div>
                    <div class="row">
                        <div class="col-sm-6 form-group mb-4">
                            <label>Price</label>
                            {{ Form::number('price', $product->price, ['class' => 'form-control form-control-solid', 'placeholder' => 'Price']) }}
                            @error('price')
                                <label for="price" class="col-form-label text-danger">{{ $message }}</label>
                            @enderror
                        </div>
                        <div class="col-sm-6 form-group mb-4">
                            <label>Quantity</label>
                            {{ Form::number('quantity', $product->quantity, ['class' => 'form-control form-control-solid', 'placeholder' => 'Quantity']) }}
                            @error('quantity')
                                <label for="quantity" class="col-form-label text-danger">{{ $message }}</label>
                            @enderror
                        </div>
                    </div>
                    {{-- <div class="form-group mb-4">
                        <label>Tags</label>
                        <input class="tagsinput form-control form-control-solid" type="text" placeholder="Tags" value="Fashion,Dress,Broadway,Autumn collection,Shop">
                    </div> --}}
                    <div class="form-group mb-4">
                        <label>Details</label>
                        {{ Form::textarea('details', $product->details, ['class' => 'form-control form-control-solid', 'placeholder' => 'Short Description', 'rows' => 3]) }}
                        @error('details')
                            <label for="details" class="col-form-label text-danger">{{ $message }}</label>
                        @enderror
                    </div>
                    <div class="form-group mb-4">
                        <label>Description</label>
                        {{ Form::textarea('description', $product->description, ['class' => 'form-control form-control-solid', 'placeholder' => 'Description', 'id' => 'summernote']) }}
                        @error('description')
                            <label for="description" class="col-form-label text-danger">{{ $message }}</label>
                        @enderror
                    </div>
                    <div class="form-group mb-4">
                        <label class="ui-switch switch-icon mr-3 mb-0">
                            {{ Form::checkbox('featured', 1, $product->featured) }}
                            <span></span>
                        </label>Featured ?</div>
                        @error('featured')
                            <label for="featured" class="col-form-label text-danger">{{ $message }}</label>
                        @enderror
                    <div class="text-right">
                        <button type="submit" class="btn btn-primary btn-air mr-2">Save</button>
                        <button class="btn btn-secondary">Cancel</button>
                    </div>
                
            </div>
        </div>
        {{Form::close()}}
    </div>
</div>
@endsection

@section('page_script')
    <script src="{{ asset('assets/vendors/summernote/dist/summernote.min.js') }}"></script>
    <script>
        $(function() {
            $('#summernote').summernote();
            $('#summernote_air').summernote({
                airMode: true
            });
        });
    
        $(function() {
            $('.tagsinput').tagsinput({
                tagClass: 'label label-primary'
            });
            $('.tagsinput.form-control-solid').siblings('.bootstrap-tagsinput').addClass('form-control-solid');
        });

        $(document).on('change', '#upload_featured_image', function(e) {
            if(this.files && this.files[0]) {
                let reader = new FileReader();

                reader.onload = function(e) {
                    $('#featured_image').html(
                        `<img style="width: 325px; height:355px" src="${e.target.result}">`
                    );
                }

                reader.readAsDataURL(this.files[0]);
            }
        });

        $(document).on('change', '#upload_product_images', function(e) {
            for(let i = 0; i < this.files.length; i++) {
                if(this.files && this.files[i]) {
                    let reader = new FileReader();

                    reader.onload = function(e) {
                        $('#product_images').html(
                            `<div class="col-md-3">
                                <img src="${e.target.result}">
                            </div>
                            <div class="col-md-3">
                                <div class="file-input-plus file-input"><i class="la la-plus-circle"></i>
                                    <input type="file" name="images[]" id="upload_product_images" multiple="multiple">
                                </div> Add More Images
                                @error('images.*')
                                    <label for="images" class="col-form-label text-danger">{{ $message }}</label>
                                @enderror
                            </div>
                            `
                        );
                    }

                    reader.readAsDataURL(this.files[i]);
                }
            }
        });
    </script>
@endsection