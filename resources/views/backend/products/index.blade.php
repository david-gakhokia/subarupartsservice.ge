@extends('backend.layouts.app')

@section('title', __('Menu'))

@section('content')

    <section class="section">
        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>@lang('ავტო ნაწილები')</h4>
                            @can('product-create')
                                <h4 class="nav-item ml-auto">
                                    <a href="{{ route('products.create') }}"
                                        class="btn btn-icon icon-left btn-success rounded-pill">
                                        <i class="fas fa-plus"></i> @lang('dashboard.Add')
                                    </a>
                                </h4>
                            @endcan
                        </div>

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

                        @if (session('success'))
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @endif

                        @if (session('error'))
                            <div class="alert alert-danger">
                                {{ session('error') }}
                            </div>
                        @endif

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover" id="tableExport" style="width:100%;">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>{{ __('dashboard.Name') }}</th>
                                            <th>{{ __('dashboard.Image') }}</th>
                                            <th>მოდელი</th>
                                            <th>კატეგორია</th>
                                            <th>{{ __('dashboard.Price') }}</th>
                                            <th>{{ __('Queue') }}</th>
                                            <th>{{ __('dashboard.Status') }}</th>
                                            <th>{{ __('dashboard.Action') }}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($categories as $item)
                                        {{-- @foreach ($categories as $category) --}}
                                            {{-- @foreach ($category->products as $item) --}}
                                                <tr class="text-left">
                                                    <td>{{ $item->id }}</td>
                                                    <td>{{ $item->name }}</td>
                                                    <td>
                                                        @if ($item->image)
                                                            <img src="{{ asset('uploads/products/' . $item->image) }}"
                                                                height="35">
                                                        @else
                                                            <img src="{{ asset($item->image_link) }}" width="35">
                                                        @endif
                                                    </td> 
                                                    <td>
                                                        @if ($item->category != null)
                                                            <div class="badge badge-success badge-shadow">
                                                                {{ $item->category->name }}
                                                            </div>
                                                        @else
                                                            <div class="badge badge-secondary badge-shadow">
                                                                @lang('No Category')
                                                            </div>
                                                        @endif
                                                    </td>                                                                                                       
                                                    <td>
                                                        @if ($item->place != null)
                                                            <div class="badge badge-success badge-shadow">
                                                                {{ $item->place->name }}
                                                            </div>
                                                        @else
                                                            <div class="badge badge-secondary badge-shadow">
                                                                @lang('No Category')
                                                            </div>
                                                        @endif
                                                    </td>                                                     

                                                   

                                                    
                                                    <td>{{ $item->price }} ₾</td>
                                                    
                                                    <td><div class="badge-outline col-orange" >{{ $item->rank }}</div></td>
                                                    <td>
                                                        @if ($item->status == 1)
                                                            <div class="badge badge-success badge-shadow">
                                                                <i class="far fa-eye"></i>
                                                            </div>
                                                        @else
                                                            <div class="badge badge-danger badge-shadow">
                                                                <i class="far fa-eye-slash"></i>
                                                            </div>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        <div class="button-group action-button-list">
                                                            @can('product-edit')
                                                                <a href="{{ route('products.edit', $item->id) }}">
                                                                    <button type="button"
                                                                        class="btn btn-icon btn-primary btn-action"
                                                                        data-toggle="tooltip"
                                                                        title="{{ __('dashboard.Edit') }}">
                                                                        <i class="far fa-edit"></i>
                                                                    </button>
                                                                </a>
                                                            @endcan
                                                            @can('product-delete')
                                                            <form action="{{ route('products.destroy', $item->id) }}"
                                                                method="POST"
                                                                onsubmit="return confirm('{{ __('Are you sure you want to delete this product') }}');"
                                                                style="display:inline;">
                                                                @csrf
                                                                @method('DELETE')
                                                                <button type="submit"
                                                                    class="btn btn-icon btn-danger btn-action"
                                                                    data-toggle="tooltip"
                                                                    data-original-title="{{ __('dashboard.Delete') }}">
                                                                    <i class="fas fa-times"></i>
                                                                </button>
                                                            </form>
                                                            @endcan
                                                            {{-- @can('product-delete') --}}
                                                            {{-- <form action="{{ route('products.destroy', $item->id) }}"
                                                                method="POST"
                                                                onsubmit="return confirm('{{ __('Are you sure you want to delete this product') }}');">
                                                                @csrf
                                                                @method('DELETE')
                                                                <button type="submit"
                                                                    class="btn btn-icon btn-danger btn-action"
                                                                    data-toggle="tooltip"
                                                                    data-original-title="{{ __('dashboard.Delete') }}">
                                                                    <i class="fas fa-times"></i>
                                                                </button>
                                                            </form> --}}
                                                            {{-- @endcan --}}
                                                        </div>
                                                    </td>
                                                </tr>
                                            {{-- @endforeach --}}
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>

@endsection
