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
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1 class="m-0">Beranda</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    {{-- <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Dashboard v1</li> --}}
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>

                <section class="content">
                    <div class="container-fluid">
                        <div class="row">

                            @if (session()->get('level')=='admin')
                            <div class="col-lg-4 col-6">
                                <div class="small-box bg-danger">
                                    <div class="inner">
                                        <h3>Nilai Atribut</h3>
                                        <p>Atribut</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-clipboard"></i>
                                    </div>
                                    <a href="/atribut" class="small-box-footer">Lihat Selanjutnya <i
                                        class="fas fa-arrow-circle-right"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-6">
                                <div class="small-box bg-primary">
                                    <div class="inner">
                                        <h3>
                                            @php
                                            $tot = DB::table('datatraining')->get();
                                            @endphp
                                            {{$tot->count()}} Orang
                                        </h3>
                                        <p>Jumlah Data Mahasiswa</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-person-stalker"></i>
                                    </div>
                                    <a href="/datatraining" class="small-box-footer">Lihat Selanjutnya <i
                                        class="fas fa-arrow-circle-right"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-6">
                                <div class="small-box bg-warning">
                                    <div class="inner">
                                        <h3>
                                            @php
                                            $tot = DB::table('datatrain')->get();
                                            @endphp
                                            {{$tot->count()}} Orang
                                        </h3>
                                        <p>Jumlah Data Training</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-person-stalker"></i>
                                    </div>
                                    <a href="/datatrain" class="small-box-footer">Lihat Selanjutnya <i
                                        class="fas fa-arrow-circle-right"></i>
                                    </a>
                                </div>
                            </div>
                            </div>
                            <div class="col-lg-4 col-6">
                                <div class="small-box bg-success">
                                    <div class="inner">
                                        <h3>
                                            @php
                                            $tot = DB::table('datauji')->get();
                                            @endphp
                                            {{$tot->count()}} Orang
                                        </h3>
                                        <p>Jumlah Data Uji</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-person-add"></i>
                                    </div>
                                    <a href="/datauji" class="small-box-footer">Lihat Selanjutnya <i
                                        class="fas fa-arrow-circle-right"></i>
                                    </a>
                                </div>
                            </div>
                            {{-- <div class="col-lg-4 col-6">
                                <div class="small-box bg-warning">
                                    <div class="inner">
                                        <h3>Rekap Hasil </h3>
                                        <p>Rekomendasi</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-clipboard"></i>
                                    </div>
                                    <a href="/hasil" class="small-box-footer">Lihat Selanjutnya <i
                                        class="fas fa-arrow-circle-right"></i>
                                    </a>
                                </div>
                            </div> --}}
                            @else
                            <section class="content">
                                <div class="content">
                                    <div class="card card-info card-outline">
                                        <div class="card-header">
                                            <h5></h5>
                                        </div>

                                        <div class="card-body">
                                            <h2>Rekomendasi Program Studi</h2>
                                            <p align="justify">
                                                Rekomendasi Program Studi merupakan sistem yang akan memberikan Rekomendasi Program Studi yang ada di Fakultas Teknik. Untuk mendapatkan hasil Rekomendasi Program Studi, dengan mengisi formulir cek rekomendasi dan mengisi Nilai Matematika, Nilai Bahasa Indonesia, Nilai Bahasa Inggris, dan Nilai Ilmu Pengetahuan Umum, dan Nilai Psikotes menggunakan algoritma K-Nearest Neighbor (K-NN).
                                            </p>
                                        </div>

                                        <div class="card-body">
                                            <h2>Metode K-Nearest Neighbor</h2>
                                            <p align="justify">
                                                Metode K-Nearest  Neighbor (K-NN)  merupakan metode  klasifikasi  klasik  yang  paling  sederhana. Metode k-NN sering juga disebut dengan Instance-Based Learning, K-NN melakukan klasifikasi terhadap objek berdasarkan jarak antara objek tersebut dengan objek lain.Metode K-NN menggunakan prinsip ketetanggaan (neighbor) untuk memprediksi kelas yang baru.
                                            </p>
                                        </div>
                                        <div class="card-footer">
                                        </div>
                                    </div>
                                </div>
                            </section>
                            @endif
                            <div class="row">
                                <section class="col-lg-5 connectedSortable"></section>
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
            <section id="services" class="services">
                <div class="container">
                    <div class="section-title">
                        <h2>Jadwal Pendaftaran</h2>
                        @php
                        $settings = DB::table('settings')->first();
                        @endphp
                        <p>{!! $settings->keterangan !!}</p>
                    </div>
                </div>
            </section>
        </main>

        @includeIf('layouts.footer_user')

        @includeIf('layouts.script_user')
    </body>
@endif

</html>
