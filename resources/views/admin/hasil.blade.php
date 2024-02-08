<!DOCTYPE html>
<html lang="en">
@if (session()->get('level')=='admin')
    @includeIf('layouts.head')

    <body class="hold-transition sidebar-mini layout-fixed">
        <div class="wrapper">
            @includeIf('layouts.navbar')

            <aside class="main-sidebar sidebar-dark-primary elevation-4">
                <a href="index3.html" class="brand-link">
                    <img src="{{asset('Foto/logo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                    style="opacity: .8">
                    <span class="brand-text font-weight-light">KP2MB</span>
                </a>
                @includeIf('layouts.sidebar')
            </aside>

            <div class="content-wrapper">
                <div class="content-header">
                    <div class="mb-5">
                        <h1>Hasil Rekomendasi Program Studi</h1>
                    </div>
                    <div class="container-fluid">
                        <div class="row mb-2"></div>
                    </div>
                </div>
                @if (!session()->has('email'))
                <script language="javascript">
                    alert ("Apabila ingin akses menu ini hrus login terlebih dahulu");
                    location.href="/login";
                </script>';
                @endif

                <section class="content">
                    <div class="content">
                        <div class="card card-info card-outline">
                            <div class="card-header">
                                <h5></h5>
                            </div>

                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr data-wigdet="expandable-table">
                                            <th>No</th>
                                            <th>Nama</th>
                                            <th>Rekomendasi Program Studi</th>
                                            <th>Deskripsi</th>
                                            <th>Aksi</th>
                                            @if (session()->has('email'))
                                            @endif
                                        </tr>
                                        @php
                                        $no = 1;
                                        @endphp
                                        @foreach ($hasil as $hsl)
                                        <tr>
                                            <td>{{$no++ }}</td>
                                            <td>{{$hsl->nama}}</td>
                                            <td>{{$hsl->hasil_prodi}}</td>
                                            <td>Menurut data nilai yg anda masukkan, sistem ini memberikan rekomendasi Program Studi kepada anda yaitu {{$hsl->hasil_prodi}}</td>
                                            @if (session()->has('email'))
                                            <td>
                                                <a class="btn btn-warning btn-sm" href="/riwayat-datauji/{{$hsl->id_datauji}}">
                                                    <i class="fas fa-refresh">
                                                    </i> Lihat Perhitungan
                                                </a>
                                            </td>
                                            @endif
                                        </tr>
                                        @endforeach
                                    </thead>
                                </table>
                            </div>
                            <div class="card-footer">
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            @includeIf('layouts.footer')
            <aside class="control-sidebar control-sidebar-dark"></aside>
        </div>

        @includeIf('layouts.script')
    </body>
@else
    @includeIf('layouts.head_user')

    <body>
        <i class="bi bi-list mobile-nav-toggle d-xl-none"></i>

        @includeIf('layouts.header_user')

        <main id="main">
            {{-- @if (!session()->has('email'))
            <script language="javascript">
                alert ("Apabila ingin akses menu ini hrus login terlebih dahulu");
                location.href="/login";
            </script>';
            @endif --}}

            <section id="contact" class="contact">
                <div class="container">
                    <div class="section-title">
                        <h2>Hasil Rekomendasi Program Studi</h2>
                    </div>
                    <div class="row" data-aos="fade-in">
                        <div class="col-lg-12 mt-5 mt-lg-0 d-flex align-items-stretch">
                            <form action="" method="POST" enctype="multipart/form-data" class="php-email-form" novalidate="">
                                <div class="row">
                                    <div class="col-lg-12 pt-4 pt-lg-0 content" data-aos="fade-left">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>No</th>
                                                        <th>Nama</th>
                                                        <th>Rekomendasi Program Studi</th>
                                                        <th>Deskripsi</th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @php
                                                    $no = 1;
                                                    @endphp
                                                    @foreach ($hasil as $hsl)
                                                    <tr>
                                                        <td>{{$no++ }}</td>
                                                        <td>{{$hsl->nama ? $hsl->nama : $hsl->nama_datauji}}</td>
                                                        <td>{{$hsl->hasil_prodi}}</td>
                                                        <td>Menurut data nilai yg anda masukkan, sistem ini memberikan rekomendasi Program Studi kepada anda yaitu {{$hsl->hasil_prodi}}</td>
                                                        @if (session()->has('email'))
                                                        <td>
                                                            <a class="btn btn-success" href="/riwayat-datauji/{{$hsl->id_datauji}}">
                                                                <i class="bx bx-math"></i>
                                                                Lihat Perhitungan
                                                            </a>
                                                        </td>
                                                        @else
                                                        <td>
                                                            <a class="btn btn-danger" href="/riwayat-datauji/{{$hsl->id_datauji}}">
                                                                <i class="bx bx-math"></i>
                                                                Lihat Hasil
                                                            </a>
                                                        </td>
                                                        @endif
                                                    </tr>
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </main>

        @includeIf('layouts.footer_user')

        @includeIf('layouts.script_user')
    </body>
@endif
</html>
