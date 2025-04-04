@extends('auth.layouts.app')

@section('title', __('auth.Register'))

@section('content')


<div class="card card-primary">
    <div class="card-header">
      <h4>@lang('auth.Registration suspended')!</h4>
    </div>
    <div class="card-body">
        <div class="alert alert-light alert-has-icon">
            <div class="alert-icon"><i class="far fa-lightbulb"></i></div>
            <div class="alert-body">
              <p> @lang('auth.Unfortunately registration is not possible')! </p>
            </div>
        </div>
        <a class="btn btn-link" href="{{ route('login') }}">
            <i class="far fa-user"></i> {{ __('auth.Authorization') }}
        </a>
    </div>
</div>

@endsection
