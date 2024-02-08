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
                <span class="brand-text font-weight-light">DATA UJI</span>
            </a>

            <!-- Sidebar -->
            @includeIf('layouts.sidebar')
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="mb-3">
                    <h1>Data Uji</h1>
                </div>
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-12">
                            <!-- jquery validation -->
                            <div class="card card-primary">
                                <div class="card-header">
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <div class="card-body">
                                    <form method="POST" action="/createnor">
                                        @csrf
                                        <div class="form-group">
                                            <label for="nama">Nama</label>
                                            <input type="text" class="form-control" id="nama" name="nama" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="mtk">Nilai Matematika</label>
                                            <input type="number" class="form-control" id="mtk" name="mtk" step="0.01" min="0" max="100" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="bindo">Nilai Bahasa Indonesia</label>
                                            <input type="number" class="form-control" id="bindo" name="bindo" step="0.01" min="0" max="100" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="bing">Nilai Bahasa Inggris</label>
                                            <input type="number" class="form-control" id="bing" name="bing" step="0.01" min="0" max="100" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="mtk">Nilai IPA Umum</label>
                                            <input type="number" class="form-control" id="ipa" name="ipa" step="0.01" min="0" max="100" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="mtk">Minat</label>
                                            <input type="text" class="form-control" id="minat" name="minat" required>
                                        </div>
                                        <!-- /.card-body -->
                                        <div class="card-footer">
                                            <button type="submit" class="btn btn-primary">Simpan</button>
                                        </div>
                                    </form>

                                    {{-- <form action="/simpandu" method="POST" enctype="multipart/form-data">
                                        {{csrf_field()}}
                                        <div class="form-group">
                                            <label for="nama" class="form-label">Nama</label>
                                            <input type="text" name="nama" class="form-control" id="nama"
                                                placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="mtk" class="form-label">Matematika</label>
                                            <input type="text" name="mtk" class="form-control" id="mtk" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="bindo" class="form-label">Bahasa Indonesia</label>
                                            <input type="text" name="bindo" class="form-control" id="bindo"
                                                placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="bing" class="form-label">Bahasa Inggris</label>
                                            <input type="text" name="bing" class="form-control" id="bing"
                                                placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="ipa" class="form-label">IPA Umum</label>
                                            <input type="text" name="ipa" class="form-control" id="ipa"
                                                placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="minat" class="form-label">Minat</label>
                                            <input type="text" name="minat" class="form-control" id="minat" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="jurusan" class="form-label">Jurusan</label>
                                            <input type="text" name="jurusan" class="form-control" id="jurusan" placeholder="">
                                        </div>
                                        <!-- /.card-body -->
                                        <div class="card-footer">
                                            <button type="submit" class="btn btn-primary">Simpan</button>
                                        </div>
                                    </form> --}}
                                </div>
                                <!-- /.card -->
                            </div>
                            <!--/.col (left) -->
                            <!-- right column -->
                            <div class="col-md-6">

                            </div>
                            <!--/.col (right) -->
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
            </section>
        </div>
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
