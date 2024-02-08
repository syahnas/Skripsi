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
                        <h1>Hasil Perhitungan Data Uji</h1>
                    </div>
                    <div class="container-fluid">
                        <div class="row mb-2"></div>
                    </div>
                </div>

                <section class="content" @if (session()->get('level')=='admin') @else style="display:none;" @endif>
                    <div class="content">
                        <div class="card card-info card-outline">
                            <div class="card-body">
                                <h2>Data Uji</h2>
                                <table class="table table-bordered">

                                    <tr>
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>Nilai Matematika</th>
                                        <th>Nilai Bahasa Indonesia</th>
                                        <th>Nilai Bahasa Inggris</th>
                                        <th>Nilai Ilmu Pengetahuan Alam</th>
                                        <th>Nilai Seni Budaya</th>
                                        <th>Nilai Psikotes</th>
                                    </tr>
                                    @php
                                    $no = 1;
                                    @endphp
                                    @foreach ($datauji as $du)
                                    <tr>
                                        <td>{{$no++ }}</td>
                                        <td>{{$du->nama}}</td>
                                        <td>{{$du->mtk}}</td>
                                        <td>{{$du->bindo}}</td>
                                        <td>{{$du->bing}}</td>
                                        <td>{{$du->ipa}}</td>
                                        <td>{{$du->senbud}}</td>
                                        <td>{{$du->psikotes}}</td>
                                    </tr>
                                    @endforeach
                                </table>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="content" @if (session()->get('level')=='admin') @else style="display:none;" @endif>
                    <div class="content">
                        <div class="card card-info card-outline">
                            <div class="card-body">
                                <h2>Data Training</h2>
                                <table class="table table-bordered">

                                    <tr>
                                        <th>No</th>
                                        <th>NRM</th>
                                        <th>Nama</th>
                                        <th>Nilai Matematika</th>
                                        <th>Nilai Bahasa Indonesia</th>
                                        <th>Nilai Bahasa Inggris</th>
                                        <th>Nilai Ilmu Pengetahuan Alam</th>
                                        <th>Nilai Seni Budaya</th>
                                        <th>Nilai Psikotes</th>
                                        <th>Rekomendasi Program Studi</th>
                                    </tr>
                                    @php
                                    $no = 1;
                                    $DY =[];
                                    $nilai_mtk =[];
                                    $nilai_bindo =[];
                                    $nilai_bing =[];
                                    $nilai_ipa =[];
                                    $nilai_senbud =[];
                                    $nilai_psikotes =[];
                                    $nilai_prodi =[];
                                    $i=0;
                                    $j=0;
                                    @endphp
                                    @foreach ($datatraining as $dtrain)
                                    @php $DY[$i][$j++] = $dtrain->mtk @endphp
                                    @php $nilai_mtk[] = $dtrain->mtk; @endphp
                                    @php $nilai_bindo[] = $dtrain->bindo; @endphp
                                    @php $nilai_bing[] = $dtrain->bing; @endphp
                                    @php $nilai_ipa[] = $dtrain->ipa; @endphp
                                    @php $nilai_senbud[] = $dtrain->senbud; @endphp
                                    @php $nilai_psikotes[] = $dtrain->psikotes; @endphp
                                    @php $nilai_prodi[] = $dtrain->prodi; @endphp
                                    @php $i++ @endphp
                                    <tr>
                                        <td>{{$no++ }}</td>
                                        <td>{{$dtrain->nrm}}</td>
                                        <td>{{$dtrain->nama}}</td>
                                        <td>{{$dtrain->mtk}}</td>
                                        <td>{{$dtrain->bindo}}</td>
                                        <td>{{$dtrain->bing}}</td>
                                        <td>{{$dtrain->ipa}}</td>
                                        <td>{{$dtrain->senbud}}</td>
                                        <td>{{$dtrain->psikotes}}</td>
                                        <td>{{$dtrain->prodi}}</td>
                                    </tr>
                                    @endforeach
                                </table>
                            </div>
                        </div>
                    </div>
                </section>


                <section class="content" @if (session()->get('level')=='admin') @else style="display:none;" @endif>
                    <div class="content">
                        <div class="card card-info card-outline">
                            <div class="card-body">
                                <h2>Perhitungan Normalisasi Data Training</h2>
                                <table class="table table-bordered">

                                    <tr>
                                        <th>No</th>
                                        <th>NRM</th>
                                        <th>Nama</th>
                                        <th>Nilai Matematika</th>
                                        <th>Nilai Bahasa Indonesia</th>
                                        <th>Nilai Bahasa Inggris</th>
                                        <th>Nilai Ilmu Pengetahuan Alam</th>
                                        <th>Nilai Seni Budaya</th>
                                        <th>Nilai Psikotes</th>
                                        <th>Rekomendasi Program Studi</th>
                                    </tr>
                                    @php
                                    $no = 1;
                                    DB::table('normalisasi')->truncate();
                                    @endphp
                                    @foreach ($datatraining as $dtrain)
                                    @php
                                    DB::table('normalisasi')->insert([
                                    'nrm'=>$dtrain->nrm,
                                    'nama'=>$dtrain->nama,
                                    'mtk'=>abs((min($nilai_mtk)-$dtrain->mtk)/(max($nilai_mtk)-min($nilai_mtk))),
                                    'bindo'=>abs((min($nilai_bindo)-$dtrain->bindo)/(max($nilai_bindo)-min($nilai_bindo))),
                                    'bing'=>abs((min($nilai_bing)-$dtrain->bing)/(max($nilai_bing)-min($nilai_bing))),
                                    'ipa'=>abs((min($nilai_ipa)-$dtrain->ipa)/(max($nilai_ipa)-min($nilai_ipa))),
                                    'senbud'=>abs((min($nilai_senbud)-$dtrain->senbud)/(max($nilai_senbud)-min($nilai_senbud))),
                                    'psikotes'=>abs((min($nilai_psikotes)-$dtrain->psikotes)/(max($nilai_psikotes)-min($nilai_psikotes))),
                                    'prodi'=>$dtrain->prodi
                                    ]);
                                    @endphp
                                    <tr>
                                        <td>{{$no++ }}</td>
                                        <td>{{$dtrain->nrm}}</td>
                                        <td>{{$dtrain->nama}}</td>
                                        <td>{{abs((min($nilai_mtk)-$dtrain->mtk)/(max($nilai_mtk)-min($nilai_mtk)))}}</td>
                                        <td>{{abs((min($nilai_bindo)-$dtrain->bindo)/(max($nilai_bindo)-min($nilai_bindo)))}}</td>
                                        <td>{{abs((min($nilai_bing)-$dtrain->bing)/(max($nilai_bing)-min($nilai_bing)))}}</td>
                                        <td>{{abs((min($nilai_ipa)-$dtrain->ipa)/(max($nilai_ipa)-min($nilai_ipa)))}}</td>
                                        <td>{{abs((min($nilai_senbud)-$dtrain->senbud)/(max($nilai_senbud)-min($nilai_senbud)))}}</td>
                                        <td>{{abs((min($nilai_psikotes)-$dtrain->psikotes)/(max($nilai_psikotes)-min($nilai_psikotes)))}}</td>
                                        <td>{{$dtrain->prodi}}</td>
                                    </tr>
                                    @endforeach
                                </table>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="content" @if (session()->get('level')=='admin') @else style="display:none;" @endif>
                    <div class="content">
                        <div class="card card-info card-outline">
                            <div class="card-body">
                                <h2>Perhitungan Normalisasi Data Uji</h2>
                                <table class="table table-bordered">

                                    <tr>
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>Nilai Matematika</th>
                                        <th>Nilai Bahasa Indonesia</th>
                                        <th>Nilai Bahasa Inggris</th>
                                        <th>Nilai Ilmu Pengetahuan Alam</th>
                                        <th>Nilai Seni Budaya</th>
                                        <th>Nilai Psikotes</th>
                                        <th>Rekomendasi Program Studi</th>
                                    </tr>
                                    @php
                                    $no = 1;
                                    $akhir_mtk =[];
                                    $akhir_bindo =[];
                                    $akhir_bing =[];
                                    $akhir_ipa =[];
                                    $akhir_senbud =[];
                                    $akhir_psikotes =[];
                                    @endphp
                                    @foreach ($datauji as $du)

                                    <tr>
                                        <td>{{$no++ }}</td>
                                        <td>{{$du->nama}}</td>
                                        <td>{{abs((min($nilai_mtk)-$du->mtk)/(max($nilai_mtk)-min($nilai_mtk)))}}</td>
                                        <td>{{abs((min($nilai_bindo)-$du->bindo)/(max($nilai_bindo)-min($nilai_bindo)))}}</td>
                                        <td>{{abs((min($nilai_bing)-$du->bing)/(max($nilai_bing)-min($nilai_bing)))}}</td>
                                        <td>{{abs((min($nilai_ipa)-$du->ipa)/(max($nilai_ipa)-min($nilai_ipa)))}}</td>
                                        <td>{{abs((min($nilai_senbud)-$du->senbud)/(max($nilai_senbud)-min($nilai_senbud)))}}</td>
                                        <td>{{abs((min($nilai_psikotes)-$du->psikotes)/(max($nilai_psikotes)-min($nilai_psikotes)))}}</td>
                                        <td>?</td>
                                    </tr>
                                    @php $akhir_mtk[] = abs((min($nilai_mtk)-$du->mtk)/(max($nilai_mtk)-min($nilai_mtk))); @endphp
                                    @php $akhir_bindo[] = abs((min($nilai_bindo)-$du->bindo)/(max($nilai_bindo)-min($nilai_bindo))); @endphp
                                    @php $akhir_bing[] = abs((min($nilai_bing)-$du->bing)/(max($nilai_bing)-min($nilai_bing))); @endphp
                                    @php $akhir_ipa[] = abs((min($nilai_ipa)-$du->ipa)/(max($nilai_ipa)-min($nilai_ipa))); @endphp
                                    @php $akhir_senbud[] = abs((min($nilai_senbud)-$du->senbud)/(max($nilai_senbud)-min($nilai_senbud))); @endphp
                                    @php $akhir_psikotes[] = abs((min($nilai_psikotes)-$du->psikotes)/(max($nilai_psikotes)-min($nilai_psikotes))); @endphp
                                    @endforeach
                                </table>
                            </div>
                        </div>
                    </div>
                </section>


                <section class="content" @if (session()->get('level')=='admin') @else style="display:none;" @endif>
                    <div class="content">
                        <div class="card card-info card-outline">
                            <div class="card-body">
                                <h2>Data Perhitungan Jarak</h2>
                                <table class="table table-bordered">

                                    <tr>
                                        <th>No</th>
                                        <th>NRM</th>
                                        <th>Nama</th>
                                        <th>Jarak Antara Data</th>
                                        <th>Kelas Terdekat Pertama</th>
                                        <th>Kelas Terdekat Kedua</th>
                                        <th>Kelas Terdekat Ketiga</th>
                                        <th>Kelas Terdekat Keempat</th>
                                        <th>Kelas Terdekat Kelima</th>
                                        <th>Kelas Terdekat Keenam</th>
                                    </tr>
                                    @php
                                    $no = 1;
                                    $nilai_jarak = 0;
                                    $p1 = 0;
                                    $p2 = 0;
                                    $p3 = 0;
                                    $p4 = 0;
                                    $p5 = 0;
                                    $p6 = 0;
                                    $nilai_knn =[];
                                    @endphp
                                    @foreach ($normalisasi as $dtnormal)
                                    @php $jarak[] = number_format(SQRT((pow(($dtnormal->mtk-$akhir_mtk[0]),2)) + (pow(($dtnormal->bindo-$akhir_bindo[0]),2)) + (pow(($dtnormal->bing-$akhir_bing[0]),2)) + (pow(($dtnormal->ipa-$akhir_ipa[0]),2))  + (pow(($dtnormal->senbud-$akhir_senbud[0]),2)) + (pow(($dtnormal->psikotes-$akhir_psikotes[0]),2))),4); @endphp
                                    @endforeach
                                    @foreach ($normalisasi as $dtnormal)
                                    @php
                                    if ($jarak[$nilai_jarak]<$jarak[0]){
                                        $k1 = $nilai_prodi[$nilai_jarak];
                                        $p1++;
                                        $nilai_knn[]=$nilai_prodi[$nilai_jarak];
                                    }else{
                                        $k1 = '-';
                                    }
                                    if ($jarak[$nilai_jarak]<$jarak[1]){
                                        $k2 = $nilai_prodi[$nilai_jarak];
                                        $p2++;
                                        $nilai_knn[]=$nilai_prodi[$nilai_jarak];
                                    }else{
                                        $k2 = '-';
                                    }
                                    if ($jarak[$nilai_jarak]<$jarak[2]){
                                        $k3 = $nilai_prodi[$nilai_jarak];
                                        $p3++;
                                        $nilai_knn[]=$nilai_prodi[$nilai_jarak];
                                    }else{
                                        $k3 = '-';
                                    }
                                    if ($jarak[$nilai_jarak]<$jarak[3]){
                                        $k4 = $nilai_prodi[$nilai_jarak];
                                        $p4++;
                                        $nilai_knn[]=$nilai_prodi[$nilai_jarak];
                                    }else{
                                        $k4 = '-';
                                    }
                                    if ($jarak[$nilai_jarak]<$jarak[4]){
                                        $k5 = $nilai_prodi[$nilai_jarak];
                                        $p5++;
                                        $nilai_knn[]=$nilai_prodi[$nilai_jarak];
                                    }else{
                                        $k5 = '-';
                                    }
                                    if ($jarak[$nilai_jarak]<$jarak[5]){
                                        $k6 = $nilai_prodi[$nilai_jarak];
                                        $p6++;
                                        $nilai_knn[]=$nilai_prodi[$nilai_jarak];
                                    }else{
                                        $k6 = '-';
                                    }
                                    $nilai_jarak++;
                                    @endphp
                                    <tr>
                                        <td>{{$no++ }}</td>
                                        <td>{{$dtnormal->nrm}}</td>
                                        <td>{{$dtnormal->nama}}</td>
                                        <td>{{number_format(SQRT((pow(($dtnormal->mtk-$akhir_mtk[0]),2)) + (pow(($dtnormal->bindo-$akhir_bindo[0]),2)) + (pow(($dtnormal->bing-$akhir_bing[0]),2)) + (pow(($dtnormal->ipa-$akhir_ipa[0]),2)) + (pow(($dtnormal->psikotes-$akhir_psikotes[0]),2))),4)}}</td>
                                        <td>{{$k1}}</td>
                                        <td>{{$k2}}</td>
                                        <td>{{$k3}}</td>
                                        <td>{{$k4}}</td>
                                        <td>{{$k5}}</td>
                                        <td>{{$k6}}</td>
                                    </tr>
                                    @endforeach
                                </table>
                            </div>
                            <div class="card-footer">
                            </div>
                        </div>
                    </div>
                </section>


                <section class="content">
                    <div class="content">
                        <div class="card card-info card-outline">
                            <div class="card-body">
                                <h2>Hasil Perhitungan KNN</h2>
                                <table class="table table-bordered">

                                    <tr>
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>Nilai Matematika</th>
                                        <th>Nilai Bahasa Indonesia</th>
                                        <th>Nilai Bahasa Inggris</th>
                                        <th>Nilai Ilmu Pengetahuan Alam</th>
                                        <th>Nilai Seni Budaya</th>
                                        <th>Nilai Psikotes</th>
                                        <th>Rekomendasi Program Studi</th>
                                    </tr>
                                    @php
                                    $no = 1;
                                    $max = collect([$p1++, $p2++, $p3++, $p4++, $p5++, $p6++])->max();
                                    if ($max==0){
                                        $knn ='S1 Teknik Sipil';
                                    }elseif ($max==1){
                                        $knn ='S1 Informatika';
                                    }elseif ($max==2){
                                        $knn ='S1 Perencanaan Wilayah dan Kota';
                                    }elseif ($max==3){
                                        $knn ='S1 Arsitektur';
                                    }
                                    $count=array_count_values($nilai_knn);
                                    arsort($count);
                                    $keys=array_keys($count);
                                    @endphp
                                    @foreach ($datauji as $du)
                                    @php
                                    DB::table('hasil')->insert([
                                    'id_datauji'=>$du->id,
                                    'id_user'=>session()->get('id'),
                                    'hasil_prodi'=>key($count)
                                    ]);
                                    @endphp
                                    <tr>
                                        <td>{{$no++ }}</td>
                                        <td>{{$du->nama}}</td>
                                        <td>{{$du->mtk}}</td>
                                        <td>{{$du->bindo}}</td>
                                        <td>{{$du->bing}}</td>
                                        <td>{{$du->ipa}}</td>
                                        <td>{{$du->senbud}}</td>
                                        <td>{{$du->psikotes}}</td>
                                        <td>{{key($count)}}</td>
                                    </tr>
                                    @endforeach
                                </table>
                            </div>
                            <div class="card-footer">
                                <h4>Menurut data nilai yg anda masukkan, sistem ini memberikan rekomendasi Program Studi kepada anda yaitu {{key($count)}}</h4>
                                <br>
                                <a class="btn btn-info btn-sm" href="/hasil">
                                    <i class="fas fa-pencil-alt">
                                    </i> Kembali
                                </a>
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
                        <h2>Hasil Perhitungan Data Uji</h2>
                    </div>
                    <div class="row" data-aos="fade-in">
                        <div class="col-lg-12 mt-5 mt-lg-0 d-flex align-items-stretch">
                            <form action="" method="POST" enctype="multipart/form-data" class="php-email-form" novalidate="">
                                <div class="row">
                                    <div class="col-lg-12 pt-4 pt-lg-0 content" data-aos="fade-left">
                                        @php
                                        $no = 1;
                                        $DY =[];
                                        $nilai_mtk =[];
                                        $nilai_bindo =[];
                                        $nilai_bing =[];
                                        $nilai_ipa =[];
                                        $nilai_senbud =[];
                                        $nilai_psikotes =[];
                                        $nilai_prodi =[];
                                        $i=0;
                                        $j=0;
                                        @endphp
                                        @foreach ($datatraining as $dtrain)
                                        @php $DY[$i][$j++] = $dtrain->mtk @endphp
                                        @php $nilai_mtk[] = $dtrain->mtk; @endphp
                                        @php $nilai_bindo[] = $dtrain->bindo; @endphp
                                        @php $nilai_bing[] = $dtrain->bing; @endphp
                                        @php $nilai_ipa[] = $dtrain->ipa; @endphp
                                        @php $nilai_senbud[] = $dtrain->senbud; @endphp
                                        @php $nilai_psikotes[] = $dtrain->psikotes; @endphp
                                        @php $nilai_prodi[] = $dtrain->prodi; @endphp
                                        @php $i++ @endphp
                                        @endforeach


                                        @php
                                        $no = 1;
                                        DB::table('normalisasi')->truncate();
                                        @endphp
                                        @foreach ($datatraining as $dtrain)
                                        @php
                                        DB::table('normalisasi')->insert([
                                        'nrm'=>$dtrain->nrm,
                                        'nama'=>$dtrain->nama,
                                        'mtk'=>abs((min($nilai_mtk)-$dtrain->mtk)/(max($nilai_mtk)-min($nilai_mtk))),
                                        'bindo'=>abs((min($nilai_bindo)-$dtrain->bindo)/(max($nilai_bindo)-min($nilai_bindo))),
                                        'bing'=>abs((min($nilai_bing)-$dtrain->bing)/(max($nilai_bing)-min($nilai_bing))),
                                        'ipa'=>abs((min($nilai_ipa)-$dtrain->ipa)/(max($nilai_ipa)-min($nilai_ipa))),
                                        'senbud'=>abs((min($nilai_senbud)-$dtrain->senbud)/(max($nilai_senbud)-min($nilai_senbud))),
                                        'psikotes'=>abs((min($nilai_psikotes)-$dtrain->psikotes)/(max($nilai_psikotes)-min($nilai_psikotes))),
                                        'prodi'=>$dtrain->prodi
                                        ]);
                                        @endphp
                                        @endforeach

                                        @php
                                        $no = 1;
                                        $akhir_mtk =[];
                                        $akhir_bindo =[];
                                        $akhir_bing =[];
                                        $akhir_ipa =[];
                                        $akhir_senbud =[];
                                        $akhir_psikotes =[];
                                        @endphp
                                        @foreach ($datauji as $du)
                                        @php $akhir_mtk[] = abs((min($nilai_mtk)-$du->mtk)/(max($nilai_mtk)-min($nilai_mtk))); @endphp
                                        @php $akhir_bindo[] = abs((min($nilai_bindo)-$du->bindo)/(max($nilai_bindo)-min($nilai_bindo))); @endphp
                                        @php $akhir_bing[] = abs((min($nilai_bing)-$du->bing)/(max($nilai_bing)-min($nilai_bing))); @endphp
                                        @php $akhir_ipa[] = abs((min($nilai_ipa)-$du->ipa)/(max($nilai_ipa)-min($nilai_ipa))); @endphp
                                        @php $akhir_senbud[] = abs((min($nilai_senbud)-$du->senbud)/(max($nilai_senbud)-min($nilai_senbud))); @endphp
                                        @php $akhir_psikotes[] = abs((min($nilai_psikotes)-$du->psikotes)/(max($nilai_psikotes)-min($nilai_psikotes))); @endphp
                                        @endforeach

                                        @php
                                        $no = 1;
                                        $nilai_jarak = 0;
                                        $p1 = 0;
                                        $p2 = 0;
                                        $p3 = 0;
                                        $p4 = 0;
                                        $p5 = 0;
                                        $p6 = 0;
                                        $nilai_knn =[];
                                        @endphp
                                        @foreach ($normalisasi as $dtnormal)
                                        @php $jarak[] = number_format(SQRT((pow(($dtnormal->mtk-$akhir_mtk[0]),2)) + (pow(($dtnormal->bindo-$akhir_bindo[0]),2)) + (pow(($dtnormal->bing-$akhir_bing[0]),2)) + (pow(($dtnormal->ipa-$akhir_ipa[0]),2)) + (pow(($dtnormal->psikotes-$akhir_psikotes[0]),2))),4); @endphp
                                        @endforeach
                                        @foreach ($normalisasi as $dtnormal)
                                        @php
                                        if ($jarak[$nilai_jarak]<$jarak[0]){
                                            $k1 = $nilai_prodi[$nilai_jarak];
                                            $p1++;
                                            $nilai_knn[]=$nilai_prodi[$nilai_jarak];
                                        }else{
                                            $k1 = '-';
                                        }
                                        if ($jarak[$nilai_jarak]<$jarak[1]){
                                            $k2 = $nilai_prodi[$nilai_jarak];
                                            $p2++;
                                            $nilai_knn[]=$nilai_prodi[$nilai_jarak];
                                        }else{
                                            $k2 = '-';
                                        }
                                        if ($jarak[$nilai_jarak]<$jarak[2]){
                                            $k3 = $nilai_prodi[$nilai_jarak];
                                            $p3++;
                                            $nilai_knn[]=$nilai_prodi[$nilai_jarak];
                                        }else{
                                            $k3 = '-';
                                        }
                                        if ($jarak[$nilai_jarak]<$jarak[3]){
                                            $k4 = $nilai_prodi[$nilai_jarak];
                                            $p4++;
                                            $nilai_knn[]=$nilai_prodi[$nilai_jarak];
                                        }else{
                                            $k4 = '-';
                                        }
                                        if ($jarak[$nilai_jarak]<$jarak[4]){
                                            $k5 = $nilai_prodi[$nilai_jarak];
                                            $p5++;
                                            $nilai_knn[]=$nilai_prodi[$nilai_jarak];
                                        }else{
                                            $k5 = '-';
                                        }
                                        if ($jarak[$nilai_jarak]<$jarak[5]){
                                            $k6 = $nilai_prodi[$nilai_jarak];
                                            $p6++;
                                            $nilai_knn[]=$nilai_prodi[$nilai_jarak];
                                        }else{
                                            $k6 = '-';
                                        }
                                        $nilai_jarak++;
                                        @endphp
                                        @endforeach

                                        <h3>Hasil Perhitungan KNN</h3>
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>No</th>
                                                        <th>Nama</th>
                                                        <th>Nilai Matematika</th>
                                                        <th>Nilai Bahasa Indonesia</th>
                                                        <th>Nilai Bahasa Inggris</th>
                                                        <th>Nilai Ilmu Pengetahuan Alam</th>
                                                        <th>Nilai Seni Budaya</th>
                                                        <th>Nilai Psikotes</th>
                                                        <th>Rekomendasi Program Studi</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @php
                                                    $no = 1;
                                                    $max = collect([$p1++, $p2++, $p3++, $p4++, $p5++, $p6++])->max();
                                                    if ($max==0){
                                                        $knn ='S1 Teknik Sipil';
                                                    }elseif ($max==1){
                                                        $knn ='S1 Informatika';
                                                    }elseif ($max==2){
                                                        $knn ='S1 Perencanaan Wilayah dan Kota';
                                                    }elseif ($max==3){
                                                        $knn ='S1 Arsitektur';
                                                    }
                                                    $count=array_count_values($nilai_knn);
                                                    arsort($count);
                                                    $keys=array_keys($count);
                                                    @endphp
                                                    @foreach ($datauji as $du)
                                                    @php
                                                    DB::table('hasil')->insert([
                                                    'id_datauji'=>$du->id,
                                                    'id_user'=>session()->get('id'),
                                                    'hasil_prodi'=>key($count)
                                                    ]);
                                                    @endphp
                                                    <tr>
                                                        <td>{{$no++ }}</td>
                                                        <td>{{$du->nama}}</td>
                                                        <td>{{$du->mtk}}</td>
                                                        <td>{{$du->bindo}}</td>
                                                        <td>{{$du->bing}}</td>
                                                        <td>{{$du->ipa}}</td>
                                                        <td>{{$du->senbud}}</td>
                                                        <td>{{$du->psikotes}}</td>
                                                        <td>{{key($count)}}</td>
                                                    </tr>
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                        <p>Menurut data nilai yg anda masukkan, sistem ini memberikan rekomendasi Program Studi kepada anda yaitu {{key($count)}}</p>

                                        <a class="btn btn-danger" href="/hasil">
                                            <i class="bx bx-left-arrow-alt"></i>
                                            Kembali
                                        </a>
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
