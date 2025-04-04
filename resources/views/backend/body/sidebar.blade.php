      <div class="main-sidebar sidebar-style-2">
          <aside id="sidebar-wrapper">
              <div class="sidebar-user">
                  <div class="sidebar-user-picture">
                      <img alt="image" src="{{ asset('backend/img/logo.png') }}">
                  </div>
                  <div class="sidebar-user-details">
                      <div class="user-name">{{ Auth::user()->name }}</div>
                      <div class="user-name">
                          @if (Auth::user()->restaurant_id)
                              {{ Auth::user()->restaurant->name }}
                          @else
                              Super Admin
                          @endif
                      </div>
                      <div class="user-role">{{ Auth::user()->roles->first()->name }}</div>
                  </div>
              </div>
              <ul class="sidebar-menu">
                  <li class="menu-header"></li>
                  <li class="dropdown">
                      <a href="{{ route('dashboard') }}" class="nav-link">
                          <i data-feather="monitor"></i><span>@lang('dashboard.Dashboard')</span>
                      </a>
                  </li>

                  @can('category-list')
                      <li class="dropdown">
                          <a href="{{ route('places.index') }}" class="nav-link">
                              <i data-feather="align-left"></i><span>კატეგორიები</span>
                          </a>
                      </li>
                  @endcan

                  @can('category-list')
                      <li class="dropdown">
                          <a href="{{ route('main-categories') }}" class="nav-link">
                              <i data-feather="shopping-cart"></i><span>მოდელები</span>
                          </a>
                      </li>
                  @endcan

                  @can('product-list')
                      <li class="dropdown">
                          <a href="{{ route('products.index') }}" class="nav-link">
                              <i data-feather="box"></i><span>ნაწილები</span>
                          </a>
                      </li>
                  @endcan    
                  <hr>
                  @can('view-settings')
                      <li class="dropdown">
                          <a href="#0" class="nav-link">
                              <i data-feather="settings"></i><span>@lang('Settings') </span>
                          </a>
                      </li>
                  @endcan
                  {{-- @can('clear-cache')
                      @if (Auth::user()->roles->first()->name == 'Super Admin')
                          <li class="dropdown">
                              <a href="{{ route('clear-cache') }}" class="nav-link">
                                  <i data-feather="database"></i><span>@lang('Settings') </span>
                              </a>
                          </li>
                      @endif
                  @endcan --}}
              </ul>
          </aside>
      </div>
