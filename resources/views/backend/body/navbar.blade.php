    <nav class="navbar navbar-expand-lg main-navbar sticky">
        <div class="form-inline mr-auto">
            <ul class="navbar-nav mr-3">
                <li>
                    <a href="#" data-toggle="sidebar" class="nav-link nav-link-lg collapse-btn">
                        <i data-feather="menu"></i>
                    </a>
                </li>
            </ul>
        </div>
        <ul class="navbar-nav navbar-right">
            <li>
                <a href="#" class="nav-link nav-link-lg fullscreen-btn" data-toggle="tooltip"
                    title="@lang('dashboard.Full Screen')">
                    <i data-feather="maximize"></i>
                </a>
            </li>
            <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                    <i data-feather="globe"></i>
                    <span class="d-sm-none d-lg-inline-block"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a href="?language=en" class="dropdown-item">
                        <img src="{{ asset('backend/img/flags/uk.png') }}" />
                        English
                    </a>
                    <a href="?language=ka" class="dropdown-item">
                        <img src="{{ asset('backend/img/flags/ge.png') }}" />
                        ქართული
                    </a>
                </div>
            </li>
            <li class="dropdown dropdown-list-toggle" data-toggle="tooltip" title="@lang('dashboard.Notifications')">
                <a href="#" data-toggle="dropdown" class="nav-link nav-link-lg message-toggle">
                    <i data-feather="bell" class="mailAnim"></i>
                    <span class="badge headerBadge1"> </span>
                </a>
                <div class="dropdown-menu dropdown-list dropdown-menu-right pullDown">
                    <div class="dropdown-header">
                        @lang('dashboard.Notifications')
                        <div class="float-right">

                        </div>
                    </div>
                    <div class="dropdown-list-content dropdown-list-message">

                    </div>
                    <div class="dropdown-footer text-center">
                        <a href="{{ route('messages.index') }}"> @lang('dashboard.View All') <i
                                class="fas fa-chevron-right"></i></a>
                    </div>
                </div>
            </li>
            <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                    <img alt="image" src="{{ asset('backend/img/logo.png') }}" class="user-img-radious-style">
                    <span class="d-sm-none d-lg-inline-block"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right pullDown">
                    <a class="dropdown-item has-icon">
                        <i class="fas fa-user"></i>
                        {{ Auth::user()->name }}
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="{{ route('logout') }}" class="dropdown-item has-icon text-danger"
                        onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                        <i class="fas fa-sign-out-alt"></i>@lang('auth.Logout')
                    </a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </div>
            </li>
        </ul>
    </nav>
