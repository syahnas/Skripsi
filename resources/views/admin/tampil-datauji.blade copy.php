<!DOCTYPE html>
<html lang="en">
@includeIf('layouts.head')

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Navbar -->
        @includeIf('layouts.navbar')
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="index3.html" class="brand-link">
                <img src="{{asset('Foto/logo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                    style="opacity: .8">
                <span class="brand-text font-weight-light">S1 INFORMATIKA</span>
            </a>

            <!-- Sidebar -->
            @includeIf('layouts.sidebar')
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="mb-5">
                    <h1>Hasil Perhitungan Data Uji</h1>
                </div>
                <div class="container-fluid">
                    <div class="row mb-2">
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="content">
                    <div class="card card-info card-outline">   
                        <div class="card-body">
                            <h2>Data Uji</h2>
                            <table class="table table-bordered">

                                <tr>
                                    <th>No</th>
                                    <th>NRM</th>
                                    <th>Nama</th>
                                    <th>Matematika</th>
                                    <th>Bahasa Indonesia</th>
                                    <th>Bahasa Inggris</th>
                                    <th>IPA Umum</th>
                                    <th>Minat</th>
                                </tr>
                                @php
                                $no = 1;
                                @endphp
                                @foreach ($datauji as $du)
                                <tr>
                                    <td>{{$no++ }}</td>
                                    <td>{{$du->id}}</td>
                                    <td>{{$du->nama}}</td>
                                    <td>{{$du->mtk}}</td>
                                    <td>{{$du->bindo}}</td>
                                    <td>{{$du->bing}}</td>
                                    <td>{{$du->ipa}}</td>
                                    <td>{{$du->minat}}</td>
                                </tr>
                                @endforeach
                            </table>
                        </div>
                        <div class="card-footer">
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div><!-- /.container-fluid -->
            </section>

            <section class="content">
                <div class="content">
                    <div class="card card-info card-outline">   
                        <div class="card-body">
                            <h2>Data Training</h2>
                           <table class="table table-bordered">

                                <tr>
                                    <th>No</th>
                                    <th>NRM</th>
                                    <th>Nama</th>
                                    <th>Matematika</th>
                                    <th>Bahasa Indonesia</th>
                                    <th>Bahasa Inggris</th>
                                    <th>IPA Umum</th>
                                    <th>Minat</th>
                                    <th>Program Studi</th>
                                </tr>
                                @php
                                $no = 1;
                                $DY =[];
                                $i=0;
                                $j=0;
                                @endphp
                                @foreach ($datatraining as $dtrain)
                                @php $DY[$i][$j++] = $dtrain->mtk @endphp
                                @php $nilai_mtk[] = $dtrain->mtk; @endphp
                                @php $nilai_bindo[] = $dtrain->bindo; @endphp
                                @php $nilai_bing[] = $dtrain->bing; @endphp
                                @php $nilai_ipa[] = $dtrain->ipa; @endphp
                                @php $i++ @endphp
                                <tr>
                                    <td>{{$no++ }}</td>
                                    <td>{{$dtrain->id}}</td>
                                    <td>{{$dtrain->nama}}</td>
                                    <td>{{$dtrain->mtk}}</td>
                                    <td>{{$dtrain->bindo}}</td>
                                    <td>{{$dtrain->bing}}</td>
                                    <td>{{$dtrain->ipa}}</td>
                                    <td>{{$dtrain->minat}}</td>
                                    <td>{{$dtrain->prodi}}</td>
                                </tr>
                                @endforeach
                            </table>
                        </div>
                        <div class="card-footer">
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div><!-- /.container-fluid -->
            </section>


            <section class="content">
                <div class="content">
                    <div class="card card-info card-outline">   
                        <div class="card-body">
                            <h2>Data Perhitungan Data Training</h2>
                           <table class="table table-bordered">

                                <tr>
                                    <th>No</th>
                                    <th>NRM</th>
                                    <th>Nama</th>
                                    <th>Matematika</th>
                                    <th>Bahasa Indonesia</th>
                                    <th>Bahasa Inggris</th>
                                    <th>IPA Umum</th>
                                    <th>Minat</th>
                                    <th>Program Studi</th>
                                </tr>
                                @php
                                $no = 1;
                                DB::table('normalisasi')->truncate();
                                @endphp
                                @foreach ($datatraining as $dtrain)
                                @php
                                DB::table('normalisasi')->insert([
                                    'id'=>$dtrain->id,
                                    'nama'=>$dtrain->nama,
                                    'mtk'=>abs((min($nilai_mtk)-$dtrain->mtk)/(max($nilai_mtk)-min($nilai_mtk))),
                                    'bindo'=>abs((min($nilai_bindo)-$dtrain->bindo)/(max($nilai_bindo)-min($nilai_bindo))),
                                    'bing'=>abs((min($nilai_bing)-$dtrain->bing)/(max($nilai_bing)-min($nilai_bing))),
                                    'ipa'=>abs((min($nilai_ipa)-$dtrain->ipa)/(max($nilai_ipa)-min($nilai_ipa))),
                                    'minat'=>$dtrain->minat,
                                    'prodi'=>'?'
                                    ]);
                                    @endphp
                                <tr>
                                    <td>{{$no++ }}</td>
                                    <td>{{$dtrain->id}}</td>
                                    <td>{{$dtrain->nama}}</td>
                                    <td>{{abs((min($nilai_mtk)-$dtrain->mtk)/(max($nilai_mtk)-min($nilai_mtk)))}}</td>
                                    <td>{{abs((min($nilai_bindo)-$dtrain->bindo)/(max($nilai_bindo)-min($nilai_bindo)))}}</td>
                                    <td>{{abs((min($nilai_bing)-$dtrain->bing)/(max($nilai_bing)-min($nilai_bing)))}}</td>
                                    <td>{{abs((min($nilai_ipa)-$dtrain->ipa)/(max($nilai_ipa)-min($nilai_ipa)))}}</td>
                                    <td>{{$dtrain->minat}}</td>
                                    <td>?</td>
                                </tr>
                                @endforeach
                            </table>
                        </div>
                        <div class="card-footer">
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div><!-- /.container-fluid -->
            </section>

            <section class="content">
                <div class="content">
                    <div class="card card-info card-outline">   
                        <div class="card-body">
                            <h2>Data Perhitungan Data Uji</h2>
                           <table class="table table-bordered">

                                <tr>
                                    <th>No</th>
                                    <th>NRM</th>
                                    <th>Nama</th>
                                    <th>Matematika</th>
                                    <th>Bahasa Indonesia</th>
                                    <th>Bahasa Inggris</th>
                                    <th>IPA Umum</th>
                                    <th>Minat</th>
                                    <th>Program Studi</th>
                                </tr>
                                @php
                                $no = 1;
                                @endphp
                                @foreach ($datauji as $du)
                                <!-- @php
                                DB::table('normalisasi')->insert([
                                    'id'=>$du->id,
                                    'nama'=>$du->nama,
                                    'mtk'=>abs((min($nilai_mtk)-$du->mtk)/(max($nilai_mtk)-min($nilai_mtk))),
                                    'bindo'=>abs((min($nilai_bindo)-$du->bindo)/(max($nilai_bindo)-min($nilai_bindo))),
                                    'bing'=>abs((min($nilai_bing)-$du->bing)/(max($nilai_bing)-min($nilai_bing))),
                                    'ipa'=>abs((min($nilai_ipa)-$du->ipa)/(max($nilai_ipa)-min($nilai_ipa))),
                                    'minat'=>$du->minat,
                                    'prodi'=>'?'
                                    ]);
                                    @endphp -->

                                @php $nilai_mtk[] = $du->mtk; @endphp
                                @php $nilai_bindo[] = $du->bindo; @endphp
                                @php $nilai_bing[] = $du->bing; @endphp
                                @php $nilai_ipa[] = $du->ipa; @endphp
                                @php $nilai_minat[] = $du->minat; @endphp
                                @php $i++ @endphp
                                <tr>
                                    <td>{{$no++ }}</td>
                                    <td>{{$du->id}}</td>
                                    <td>{{$du->nama}}</td>
                                    <td>{{abs((min($nilai_mtk)-$du->mtk)/(max($nilai_mtk)-min($nilai_mtk)))}}</td>
                                    <td>{{abs((min($nilai_bindo)-$du->bindo)/(max($nilai_bindo)-min($nilai_bindo)))}}</td>
                                    <td>{{abs((min($nilai_bing)-$du->bing)/(max($nilai_bing)-min($nilai_bing)))}}</td>
                                    <td>{{abs((min($nilai_ipa)-$du->ipa)/(max($nilai_ipa)-min($nilai_ipa)))}}</td>
                                    <td>{{$du->minat}}</td>
                                    <td>?</td>
                                </tr>
                                @endforeach
                            </table>
                        </div>
                        <div class="card-footer">
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div><!-- /.container-fluid -->
            </section>


            <section class="content">
                <div class="content">
                    <div class="card card-info card-outline">   
                        <div class="card-body">
                            <h2>Data Perhitungan Jarak</h2>
                           <table class="table table-bordered">

                                <tr>
                                    <th>No</th>
                                    <th>NRM</th>
                                    <th>Nama</th>
                                    <th>Distance</th>
                                    <th>K1</th>
                                    <th>K2</th>
                                    <th>K3</th>
                                    <th>K4</th>
                                    <th>K5</th>
                                </tr>
                                @php
                                $no = 1;
                                $DY =[];
                                $i=0;
                                $j=0;
                                @endphp
                                @foreach ($datatraining as $dtrain)
                                @php $i++ @endphp
                                <tr>
                                    <td>{{$no++ }}</td>
                                    <td>{{$dtrain->id}}</td>
                                    <td>{{$dtrain->nama}}</td>
                                    <td>{{$dtrain->mtk}}</td>
                                    <td>{{$dtrain->bindo}}</td>
                                    <td>{{$dtrain->bing}}</td>
                                    <td>{{$dtrain->ipa}}</td>
                                    <td>{{$dtrain->minat}}</td>
                                    <td>{{$dtrain->prodi}}</td>
                                </tr>
                                @endforeach
                            </table>
                        </div>
                        <div class="card-footer">
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div><!-- /.container-fluid -->
            </section>






            <!-- /.content -->
        </div>

        </section><!-- End Hero -->
        <!-- /.content-header -->

        <!-- Main content -->

        <!-- /.col-md-6 -->
    </div>
    <!-- /.row -->
    </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    @includeIf('layouts.footer')

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    @includeIf('layouts.script')
</body>

</html>
