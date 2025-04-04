@extends('backend.layouts.app')

@section('title', __('Sub Categories'))

@section('content')


    @if (session('success'))
        <div class="alert alert-success alert-dismissible fade show mb-2 " role="alert">
            <strong>{{ session('success') }}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif
    @if (count($errors) > 0)
        <div class="alert alert-danger alert-dismissible fade show mb-2 " role="alert">
            <strong>@lang('validation.Opps')</strong> @lang('validation.Something went wrong, please check below errors')<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>

            <button type="button" class="close" users-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif

    <div class="row">
        <div class="col-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4>@lang('Sub Categories')</h4>
                    <h4 class="nav-item ml-auto">
                        @can('category-create')
                        <a href="{{ route('sub-category-create') }}" class="btn btn-icon icon-left btn-success rounded-pill">
                            <i class="fas fa-plus"></i> @lang('dashboard.Add')
                        </a>
                        @endcan
                    </h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped" id="table-2">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>@lang('#')</th>
                                    <th>@lang('dashboard.Name')</th>
                                    <th>@lang('dashboard.Image')</th>
                                    <th>@lang('dashboard.Status')</th>
                                    <th>@lang('dashboard.Action')</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($subCategories as $item)
                                    <tr>
                                        <td>{{ $item->id }}</td>
                                        <td>
                                            <p class="badge-outline col-blue">
                                                {{ $item->rank }}
                                            </p>
                                        </td>
                                        <td>{{ $item->name }} </td>
                                        <td>
                                            <img style="background-color: white"
                                                src="{{ asset('uploads/categories/' . $item->image) }}" width="50">
                                        </td>
                                        <td>
                                            @if ($item->status == 1)
                                                <div class="badge badge-success badge-shadow">
                                                    <i class="far fa-eye"></i> @lang('dashboard.Active')
                                                </div>
                                            @else
                                                <div class="badge badge-danger badge-shadow">
                                                    <i class="far fa-eye-slash"></i> @lang('dashboard.Not active')
                                                </div>
                                            @endif
                                        </td>
                                        <td>
                                            <div class="action-button-list">
                                                @can('category-edit')
                                                    <a href="{{ route('categories.edit', $item->id) }}"
                                                        class="btn btn-icon btn-primary btn-action" data-toggle="tooltip"
                                                        data-original-title="@lang('dashboard.Edit')">
                                                        <i class="far fa-edit"></i>
                                                    </a>
                                                @endcan

                                                @can('category-delete')
                                                    <form action="{{ route('categories.destroy', $item->id) }}" method="POST">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-icon btn-danger btn-action"
                                                            data-toggle="tooltip"
                                                            data-original-title="{{ __('dashboard.Delete') }}">
                                                            <i class="fas fa-times"></i>
                                                        </button>
                                                    </form>
                                                @endcan
                                            </div>

                                        </td>
                                    </tr>
                                @endforeach

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>



@endsection
