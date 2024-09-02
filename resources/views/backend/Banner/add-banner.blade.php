@extends('backend.layout.main')
@push('title')
<title>Add Banner</title>
@endpush
@section('content')
<div class="content-wrapper">

    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Add Banner</h1>
                </div>
                <div class="col-sm-6">

                </div>
            </div>
        </div>
    </section>

    <section class="content">
        <form action="" method="post">
            @csrf
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">1. Banner</h3>
                    <div class="card-tools">

                        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                            <i class="fas fa-minus"></i>
                        </button>

                    </div>
                </div>
                <div class="card-body">

                    <div class="row">
                        <div class="col-12 form-group">
                            <div class="mb-3">
                                <label for="" class="form-label">Sub Heading</label>
                                <input type="text" name="sub_heading" id="" class="form-control" value="" />
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Main Heading</label>
                                <input type="text" name="main_heading" id="" class="form-control" value="" />
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Main Heading 2</label>
                                <input type="text" name="main_heading2" id="" class="form-control" value="" />
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Description</label>
                                <textarea  name="description" id="" class="form-control"  id="" cols="30" rows="10"></textarea>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
            <button class="btn btn-primary add">Submit</button>

    </form>

    </section>

</div>
@endsection
