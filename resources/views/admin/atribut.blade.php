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
                    <h1>Nilai Atribut</h1>

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
                            </div>

                            <div class="card-body">
                                <table class="table table-bordered">

                                    <tr>
                                        <th>No</th>
                                        <th>Kode Atribut</th>
                                        <th>Nama Atribut</th>
                                    </tr>
                                    @php
                                    $no = 1;
                                    @endphp
                                    @foreach ($atribut as $a)
                                    <tr>
                                        <td>{{$no++ }}</td>
                                        <td>{{$a->kode}}</td>
                                        <td>{{$a->nama}}</td>
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
