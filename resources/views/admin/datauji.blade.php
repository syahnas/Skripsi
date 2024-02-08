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
                <span class="brand-text font-weight-light">KP2MB</span>
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
                    <h1>Data Uji</h1>
                </div>
                <div class="card-tools">
                    <a href="/create-datauji" class="btn btn-success">+ Tambah</a>
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
                        <div class="card-header">
                            <h5></h5>
                            <div class="row g-3 align-items-center">
                                <div class="col-auto">
                                    <form action="/datauji" method="GET">
                                        <input type="search" class="form-control" id="exampleInputEmail1" name="search"
                                            aria-describedby="emailHelp" placeholder="search">
                                    </form>
                                </div>
                            </div>
                        </div>

                        <div class="card-body">
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
                                    <th>Aksi</th>
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
                                    <td>
                                        <a class="btn btn-info btn-sm" href="/edit-datauji/{{$du->id}}">
                                            <i class="fas fa-pencil-alt">
                                            </i>
                                        </a>
                                        <a class="btn btn-danger btn-sm delete" href="/delete/{{$du->id}}">
                                            <i class="fas fa-trash">
                                            </i>
                                        </a>
                                    </td>
                                </tr>
                                @endforeach
                            </table>
                        </div>
                        <div class="card-footer">
                            {{$datauji->links()}}
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
