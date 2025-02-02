  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{asset('AdminLTE')}}/index3.html" class="brand-link">
      <img src="{{asset('AdminLTE')}}/dist/img/default_logo_sekolah_pintar.png" alt=" #" class="brand-image img-circle elevation-3" style="opacity: .8">
      <h6 class="brand-text font-weight-light">Perpustakaan 
        SMPN 1 LG</h6>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
        <img src="{{ asset('AdminLTE/dist/img/user.jpg') }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Petugas Perpustakaan </a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="{{asset('AdminLTE')}}/index.html" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                Database
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('dasboard_buku') }}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Buku</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('dasboard_siswa') }}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Siswa</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('dasboard_non_siswa') }}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Non Siswa</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('dasboard_petugas') }}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Petugas</p>
                </a>
              </li>
            </ul>
          </li>
          
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                Transaksi
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('dasboard_peminjaman') }}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Peminjaman</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('dasboard_pengembalian') }}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pengembalian</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Laporan
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('laporan_buku') }}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Buku</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('laporan_anggota') }}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Siswa</p>
                </a>
              </li> 
              <li class="nav-item">
                <a href="{{ route('laporan_non_siswa') }}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Anggota</p>
                </a>
              </li> 
              <li class="nav-item">
                <a href="{{ route('laporan_peminjaman') }}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Peminjaman</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{ route('laporan_pengembalian') }}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pengembalian</p>
                </a>
              </li>
            </ul>
          </li>

          
          
          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>