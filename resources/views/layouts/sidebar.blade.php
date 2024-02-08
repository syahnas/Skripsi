<div class="sidebar">
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
    <div class="info">
    </div>
</div>

<!-- Sidebar Menu -->
<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-header">Selamat Datang {{ session()->get('nama') }}</li>
        <li class="nav-item  ">
            <a href="/" class="nav-link">
                <i class="fa-solid fa-house-chimney"></i>
                <p>Beranda</p>
            </a>
        </li>
        @if (session()->get('level')=='admin') {
        <li class="nav-item  {{ Request::segment(1) === 'atribut' ? 'menu-open' : null }} {{ Request::segment(1) === 'datatraining' ? 'menu-open' : null }} {{ Request::segment(1) === 'datauji' ? 'menu-open' : null }} {{ Request::segment(1) === 'hasil' ? 'menu-open' : null }} {{ Request::segment(1) === 'riwayat-datauji' ? 'menu-open' : null }}">
            <a href="#" class="nav-link">
                <i class="fa fa-users"></i>
                <p>
                    Perhitungan
                    <i class="fa-solid fa-calculator-simple"></i>
                </p>
            </a>
            <ul class="nav nav-treeview menu-open">
                <li class="nav-item">
                    <a href="/atribut" class="nav-link">
                        <i class="fa fa-circle" aria-hidden="true"></i>
                        <p>Nilai Atribut</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/datatraining" class="nav-link">
                        <i class="fa fa-circle" aria-hidden="true"></i>
                        <p>Data Mahasiswa</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/datatrain" class="nav-link">
                        <i class="fa fa-circle" aria-hidden="true"></i>
                        <p>Data Training</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/datauji" class="nav-link">
                        <i class="fa fa-circle" aria-hidden="true"></i>
                        <p>Data Uji</p>
                    </a>
                </li>
                <li class="nav-item menu-open">
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="/hasil" class="nav-link">
                        <i class="fa fa-circle" aria-hidden="true"></i>
                        <p>Hasil Rekomendasi</p>
                    </a>
                </li>
            </ul>
        </li>
                {{-- <li class="nav-item">
                    <a href="/hasil" class="nav-link">
                        <i class="fa-sharp fa-solid fa-books"></i>
                        <p>Rekapitulasi</p>
                    </a>
                </li> --}}
            </ul>
        </li>
        <li class="nav-item">
            <a href="/pengaturan" class="nav-link">
                <i class="fa-solid fa-cog"></i>
                <p>Pengaturan</p>
            </a>
        </li>
        }
        @endif
        @if (session()->get('level')<>'admin') {
       <li class="nav-item menu-open">
            <ul class="nav nav-treeview">
            </ul>
        </li>
        <!-- <li class="nav-header">MAHASISWA</li> -->
        <li class="nav-item menu-open">
            <a href="/create-datauji" class="nav-link">
                <i class="fa-sharp fa-solid fa-check-to-slot"></i>
                <p>Cek Rekomendasi</p>
            </a>
        </li>
       <li class="nav-item menu-open">
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="/hasil" class="nav-link">
                        <i class="fa-solid fa-square-poll-horizontal"></i>
                        <p>Hasil Rekomendasi</p>
                    </a>
                </li>
            </ul>
        </li>
        }
        @endif
        @if (session()->has('email')) {
        <li class="card bg-danger">
            <a href="/logout" class="nav-link">
                <i class="fa-solid fa-right-from-bracket"></i>
                <p>Keluar</p>
            </a>
        </li>
        @else
        <li class="card bg-primary">
            <a href="/login" class="nav-link">
                <i class="fa-solid fa-right-from-bracket"></i>
                <p>Masuk</p>
            </a>
        </li>
        }
        @endif
    </ul>
</nav>
<!-- /.sidebar-menu -->
</div>
