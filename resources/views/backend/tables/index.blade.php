@extends('backend.layouts.app')

@section('title', __('dashboard.Tables'))

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
        <div class="col-12 col-md-6 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4>@lang('dashboard.Tables')</h4>
                    @can('product-create')
                        <h4 class="nav-item ml-auto">
                            <a href="{{ route('tables.create') }}" class="btn btn-icon icon-left btn-success rounded-pill">
                                <i class="fas fa-plus"></i> @lang('dashboard.Add')
                            </a>
                        </h4>
                    @endcan
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped" id="table-1">
                            <thead>
                                <tr>
                                    <th>@lang('Table')</th>
                                    <th>@lang('Space')</th>
                                    <th><i class="fa fa-sort"></i></th>
                                    <th>@lang('Person')</th>
                                    <th>@lang('Floor')</th>
                                    <th>@lang('dashboard.Image')</th>
                                    <th>@lang('dashboard.Status')</th>
                                    <th>@lang('dashboard.Action')</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($tables as $index => $item)
                                    <tr class="text-left">
                                        <td>#{{ $item->name }}</td>
                                        <td>
                                            @if ($item->place->status == 1)
                                                <div class="badge-outline col-green">
                                                    {{ $item->place ? $item->place->name : '' }}
                                                </div>
                                            @else
                                                <div class="badge-outline col-red">
                                                    {{ $item->place ? $item->place->name : '' }} -
                                                    {{ __('dashboard.Not active') }}
                                                </div>
                                            @endif
                                        </td>
                                        <td>
                                            <div class="badge-outline col-indigo">
                                                {{ $item->rank }}
                                            </div>
                                        </td>
                                        <td>
                                            <div class="badge-outline col-blue">
                                                <i class="far fa-user"></i> {{ $item->seats }}
                                            </div>
                                        </td>
                                        <td>
                                            @if ($item->place->status == 1)
                                                <div class="badge-outline col-green">
                                                    {{ $item->place ? $item->place->description : '' }}
                                                </div>
                                            @else
                                                <div class="badge-outline col-red">
                                                    {{ $item->place ? $item->place->description : '' }} -
                                                    {{ __('dashboard.Not active') }}
                                                </div>
                                            @endif
                                        </td>
                                        <td>
                                            @if ($item->image)
                                                <img src="{{ asset('uploads/tables/' . $item->image) }}" width="50">
                                            @else
                                                <img src="{{ asset('images/no-image.svg') }}" width="30" />
                                            @endif
                                        </td>

                                        <td>
                                            @if ($item->status == 1)
                                                <div class="badge-outline col-green">
                                                    @lang('dashboard.Active')
                                                </div>
                                            @else
                                                <div class="badge-outline col-red">
                                                    @lang('dashboard.Not active')
                                                </div>
                                            @endif
                                        </td>

                                        <td>
                                            <div class="action-button-list">
                                                @can('table-edit')
                                                    <a href="{{ route('tables.edit', $item->id) }}"
                                                        class="btn btn-icon btn-primary btn-action" data-toggle="tooltip"
                                                        data-original-title="@lang('dashboard.Edit')">
                                                        <i class="far fa-edit"></i>
                                                    </a>
                                                @endcan
                                                @can('table-delete')
                                                    <form action="{{ route('tables.destroy', $item->id) }}" method="POST">
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
