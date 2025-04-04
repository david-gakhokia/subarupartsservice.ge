@extends('backend.layouts.app')

@section('title', __('dashboard.Videos'))

@section('content')

    <section class="section">
        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>@lang('dashboard.Videos')</h4>
                            <h4 class="nav-item ml-auto">
                                <a href="{{ route('videos.create') }}"
                                    class="btn btn-icon icon-left btn-success rounded-pill">
                                    <i class="fas fa-plus"></i> @lang('dashboard.Add')</a>
                            </h4>
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
                        <div class="card-body">
                            <div class="table-responsive">
                                {{-- <table class="table table-striped table-hover" id="tableExport" style="width:100%;"> --}}
                                <table class="table table-striped table-hover" id="table-1">
                                    <thead>
                                        <tr>
                                            <th class="text-left">
                                                #
                                            </th>
                                            <th>{{ __('dashboard.Name') }}</th>
                                            <th>{{ __('Video') }}</th>
                                            <th>{{ __('dashboard.Status') }}</th>
                                            <th>{{ __('dashboard.Action') }}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($videos as $item)
                                            <tr class="text-left">
                                                <td>
                                                    {{ $item->id }}
                                                </td>
                                                <td>{{ $item->name }}</td>

                                                <td>
                                                    @if ($item->video_url)
                                                        <embed src="{{ $item->video_url }}">
                                                    @else
                                                        <img src="https://img.icons8.com/windows/100/000000/no-image.png"
                                                            height="70" />
                                                    @endif
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
                                                        @can('video-edit')
                                                            <a href="{{ route('videos.edit', $item->id) }}"
                                                                class="btn btn-icon btn-primary btn-action"
                                                                data-toggle="tooltip" title="{{ __('dashboard.Edit') }}">
                                                                <i class="far fa-edit"></i>
                                                            </a>
                                                        @endcan
                                                        @can('video-delete')
                                                            <form action="{{ route('videos.destroy', $item->id) }}"
                                                                method="POST">
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
        </div>
    </section>

@endsection
