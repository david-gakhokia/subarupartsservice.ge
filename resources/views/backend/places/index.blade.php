@extends('backend.layouts.app')

@section('title', __('dashboard.Categories'))

@section('content')

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
        <div class="col-12 col-md-12 col-lg-7">
            <div class="card">
                <div class="card-header">
                    <h4>კატეგორიები</h4>
                </div>

                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped" id="table-1">
                            <thead>
                                <tr>
                                    <th>@lang('#')</th>
                                    <th>@lang('dashboard.Name')</th>
                                    
                                    <th>@lang('dashboard.Status')</th>
                                    <th>@lang('dashboard.Action')</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($places as $item)
                                    <tr class="text-center">
                                        <td>
                                            <div class="badge-outline col-blue">
                                                {{ $item->rank }}
                                            </div>
                                        </td>
                                        <td>{{ $item->name }}</td>
                                        
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
                                                @can('place-edit')
                                                <a href="{{ route('places.edit', $item->id) }}"
                                                    class="btn btn-icon btn-primary btn-action" data-toggle="tooltip"
                                                    data-original-title="@lang('dashboard.Edit')">
                                                    <i class="far fa-edit"></i>
                                                </a>
                                                @endcan
                                                @can('place-delete')
                                                <form action="{{ route('places.destroy', $item->id) }}" method="POST">
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

        <div class="col-12 col-md-12 col-lg-5">
            <div class="card">
                <div class="card-header">
                    <h4>დამატება</h4>
                </div>
                @auth
                    <form action="{{ route('places.store') }}" class="needs-validation" novalidate="" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="card-body">
                            <div class="form-row">

                                <input type="number" name="restaurant_id" id="restaurant_id"
                                    value="{{ Auth::user()->restaurant_id }}" hidden>
                                <input type="number" name="status" id="status" value="1" hidden>
                                
                                @foreach (config('translatable.locales') as $locale)
                                    <div class="form-group col-md-12">
                                        <label>@lang('dashboard.Name') ({{ strtoupper($locale) }}) *</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                    <i class="fas fa-file-alt"></i>
                                                </div>
                                            </div>
                                            <input type="text" name="{{ $locale }}[name]"
                                                value="{{ old($locale . '.name') }}" class="form-control marker"
                                                required="">
                                            <div class="invalid-feedback">
                                                @lang('validation.Opss, This field is required')
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                             
           
                  

                                <div class="form-group col-md-12">
                                    <label>@lang('dashboard.Rank')</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="fas fa-arrows-alt-v"></i>
                                            </div>
                                        </div>
                                        <input type="number" name="rank" class="form-control marker">
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer text-right">
                                <button class="btn btn-success">
                                    <i class="fas fa-save"></i> @lang('dashboard.Save')
                                </button>
                            </div>
                        </div>
                    </form>
                @endauth
            </div>
        </div>
    </div>

@endsection
