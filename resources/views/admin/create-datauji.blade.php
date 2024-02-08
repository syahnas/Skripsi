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
                    <div class="mb-3">
                        <h1>@if (session()->has('level'))  Cek Rekomendasi Program Studi @else Cek Rekomendasi Program Studi  @endif</h1>
                    </div>
                </div>
                @if (!session()->has('email'))
                <script language="javascript">
                    alert ("Apabila ingin akses menu ini hrus login terlebih dahulu");
                    location.href="/login";
                </script>';
                @endif
                <section class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card card-primary">
                                    <div class="card-header">
                                    </div>
                                    <div class="card-body">
                                        <form action="/simpandu" method="POST" enctype="multipart/form-data">
                                            {{ csrf_field() }}
                                            @if (session()->get('level')=='admin')
                                            <div class="form-group">
                                                <label for="nama" class="form-label">Nama</label>
                                                <input required type="text" name="nama" class="form-control" id="nama"
                                                placeholder="" autofocus>
                                            </div>
                                            @else
                                            <div class="form-group">
                                                <label for="nama" class="form-label">Nama</label>
                                                <input required type="text" name="nama" class="form-control" id="nama"
                                                placeholder="" autofocus value="{{ session()->get('nama') }}" readonly>
                                            </div>
                                            @endif
                                            <div class="form-group">
                                                <label for="mtk" class="form-label">Nilai Matematika</label>
                                                <input required type="text" name="mtk" class="form-control" id="mtk" placeholder="Silahkan Isi Nilai Matematika Anda">
                                            </div>
                                            <div class="form-group">
                                                <label for="bindo" class="form-label">Nilai Bahasa Indonesia</label>
                                                <input required type="text" name="bindo" class="form-control" id="bindo"
                                                placeholder="Silahkan Isi Nilai Bahasa Indonesia Anda">
                                            </div>
                                            <div class="form-group">
                                                <label for="bing" class="form-label">Nilai Bahasa Inggris</label>
                                                <input required type="text" name="bing" class="form-control" id="bing"
                                                placeholder="Silahkan Isi Nilai Bahasa Inggris Anda">
                                            </div>
                                            <div class="form-group">
                                                <label for="ipa" class="form-label">Nilai Ilmu Pengetahuan Alam</label>
                                                <input required type="text" name="ipa" class="form-control" id="ipa"
                                                placeholder="Silahkan Isi Nilai Ilmu Pengetahuan Alam Anda">
                                            </div>
                                    <div class="form-group col-md-6">
                                        <label for="senbud">Nilai Seni Budaya</label>
                                        <input type="number" required min="10"  max="100" name="senbud" class="form-control" id="senbud" placeholder="Silahkan Isi Nilai Seni Budaya Anda">
                                    </div>

                                    <div class="form-group col-md-6">
                                    <label for="validationCustom03" class="form-label">Nilai Psikotes</label>
                                    <input type="number" class="form-control @error('psikotes') is-invalid @enderror" id="validationCustom03" placeholder="Silahkan Isi Nilai Psikotes Anda" name="psikotes" value="{{old('psikotes')}}">
                                    <strong>*Jika nilai psikotes kurang dari 90, maka akan di nyatakan gagal</strong>
                                    @error('psikotes')
                                        <div class="invalid-feedback">
                                            {{$message}}
                                        </div>
                                    @enderror
                                    </div>
                                            <div class="card-footer">
                                                <button type="submit" class="btn btn-primary">Proses Data</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-md-6"></div>
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
                        <h2>
                            @if (session()->has('level')) Cek Rekomendasi Program Studi @else Cek Rekomendasi Program Studi  @endif
                        </h2>
                    </div>
                    <div class="row" data-aos="fade-in">
                        <div class="col-lg-12 mt-5 mt-lg-0 d-flex align-items-stretch">
                            <form action="/simpandu" method="POST" enctype="multipart/form-data" class="php-email-form" novalidate="">
                                {{ csrf_field() }}
                                <div class="row">
                                    <div class="form-group col-md-62">
                                        <label for="nama">Nama</label>
                                        <input type="text" required name="nama" class="form-control" id="nama" placeholder="" autofocus value="{{ session()->get('nama') }}">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label for="mtk">Nilai Matematika</label>
                                        <input type="number" required min="10"  max="100" name="mtk" class="form-control" id="mtk" placeholder="Silahkan Isi Nilai Matematika Anda">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="bindo">Nilai Bahasa Indonesia</label>
                                        <input type="number" required min="10"  max="100" name="bindo" class="form-control" id="bindo" placeholder="Silahkan Isi Nilai Bahasa Indonesia Anda">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="bing">Nilai Bahasa Inggris</label>
                                        <input type="number" required min="10"  max="100" name="bing" class="form-control" id="bing" placeholder="Silahkan Isi Nilai Bahasa Inggris Anda">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="ipa">Nilai ILmu Pengetahuan Alam</label>
                                        <input type="number" required min="10"  max="100" name="ipa" class="form-control" id="ipa" placeholder="Silahkan Isi Nilai Ilmu Pengetahuan Alam Anda">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="senbud">Nilai Seni Budaya</label>
                                        <input type="number" required min="10"  max="100" name="senbud" class="form-control" id="senbud" placeholder="Silahkan Isi Nilai Seni Budaya Anda">
                                    </div>
                                    <div class="form-group col-md-6">
                                    <label for="validationCustom03" class="form-label">Nilai Psikotes</label>
                                    <input type="number" class="form-control @error('psikotes') is-invalid @enderror" id="validationCustom03" name="psikotes" value="{{old('psikotes')}}">
                                    <strong>*Jika nilai psikotes kurang dari 90, maka akan di nyatakan gagal</strong>
                                    @error('psikotes')
                                        <div class="invalid-feedback">
                                            {{$message}}
                                        </div>
                                    @enderror
                                    </div>
                                    <!-- <div class="form-group col-md-6">
                                        <label for="validationCustom03" >Nilai Psikotes</label>
                                        <input require type="number" min="90" max="100" name="psikotes" id="validationCustom03" class="form-control @error('psikotes') is-invalid @enderror" id="psikotes" placeholder="Silahkan Isi Nilai Psikotes" value="{{old('psikotes')}}">
                                        @error('psikotes')
                                        <div class="invalid-feedback">
                                            {{$message}}
                                        </div>
                                        @enderror
                                        <strong>*Jika nilai psikotes kurang dari 90, maka akan di nyatakan gagal</strong>
                                    </div> -->
                                </div>
                                <div class="text-center">
                                    <button type="submit">Proses Data</button>
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
