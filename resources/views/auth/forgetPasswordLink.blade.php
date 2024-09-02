@extends('backend.layout.head')
@push('title')
    <title>Reset Password</title>
@endpush

<body class="hold-transition login-page">
    <style>
        footer {
            display: none !important;
        }
    </style>

    <div class="login-box text-center">


        <div class="card">
            <div class="card-header">Reset Password</div>
            <div class="card-body">
                <form action="{{ route('reset.password.post') }}" method="POST">
                    @csrf
                    <input type="hidden" name="email" value="{{$email}}">
                    <div class="form-group row">
                        <div class="col-md-12 text-left">
                            <label for="password" class="col-form-label">Password</label>
                            <input type="password" id="password" class="form-control" name="password" required
                                autofocus>
                            @if ($errors->has('password'))
                                <span class="text-danger">{{ $errors->first('password') }}</span>
                            @endif
                        </div>
                    </div>

                    <div class="form-group row">

                        <div class="col-md-12 text-left">
                            <label for="password-confirm" class="col-form-label">Confirm
                                Password</label>
                            <input type="password" id="password-confirm" class="form-control"
                                name="password_confirmation" required autofocus>
                            @if ($errors->has('password_confirmation'))
                                <span class="text-danger">{{ $errors->first('password_confirmation') }}</span>
                            @endif
                        </div>
                    </div>

                    <div class="col-md-6 offset-md-4">
                        <button type="submit" class="btn btn-primary">
                            Reset Password
                        </button>
                    </div>
                </form>

            </div>
        </div>
    </div>

</body>


@include('backend.layout.footer')
