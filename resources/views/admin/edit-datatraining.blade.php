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
                <div class="mb-3">
                    <h1>Data Training</h1>
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
                                    <form action="/updatedtrain/{{$datatraining->nrm}}" method="POST" enctype="multipart/form-data">
                                        {{ csrf_field() }}
                                        <div class="form-group">
                                            <label for="nrm" class="form-label">NRM</label>
                                            <input type="text" name="nrm" class="form-control" id="nrm"
                                                placeholder="" value="{{$datatraining->nrm}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="nama" class="form-label">Nama</label>
                                            <input type="text" name="nama" class="form-control" id="nama"
                                                placeholder="" value="{{$datatraining->nama}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="mtk" class="form-label">Nilai Matematika</label>
                                            <input type="text" name="mtk" class="form-control" id="mtk"
                                            placeholder="" value="{{$datatraining->mtk}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="bindo" class="form-label">Nilai Bahasa Indonesia</label>
                                            <input type="text" name="bindo" class="form-control" id="bindo"
                                                placeholder="" value="{{$datatraining->bindo}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="bing" class="form-label">Nilai Bahasa Inggris</label>
                                            <input type="text" name="bing" class="form-control" id="bing"
                                                placeholder="" value="{{$datatraining->bing}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="ipa" class="form-label">Nilai Ilmu Pengetahuan Alam</label>
                                            <input type="text" name="ipa" class="form-control" id="ipa"
                                                placeholder="" value="{{$datatraining->ipa}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="senbud" class="form-label">Nilai Seni Budaya</label>
                                            <input type="text" name="senbud" class="form-control" id="senbud"
                                                placeholder="" value="{{$datatraining->senbud}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="psikotes" class="form-label">Nilai Psikotes</label>
                                            <input type="text" name="psikotes" class="form-control" id="psikotes"
                                                placeholder="" value="{{$datatraining->psikotes}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="prodi" class="form-label">Program Studi</label>
                                            <!-- <input type="text" name="prodi" class="form-control" id="prodi"
                                            placeholder="" value="{{$datatraining->prodi}}"> -->
                                            <select class="form-control" name="prodi"
                                                aria-label="Default select example">
                                                <option selected>Pilih Program Studi</option>
                                                <option value="S1 Teknik Sipil" {{$datatraining->prodi == 'S1 Teknik Sipil'? 'selected' : ''}}>S1 Teknik Sipil</option>
                                                <option value="S1 Informatika" {{$datatraining->prodi == 'S1 Informatika'? 'selected' : ''}}>S1 Informatika</option>
                                                <option value="S1 Perencanaan Wilayah dan Kota" {{$datatraining->prodi == 'S1 Perencanaan Wilayah dan Kota'? 'selected' : ''}}>S1 Perencanaan Wilayah dan Kota</option>
                                                <option value="S1 Arsitektur" {{$datatraining->prodi == 'S1 Arsitektur'? 'selected' : ''}}>S1 Arsitektur</option>
                                            </select>
                                        </div>
                                        <!-- /.card-body -->
                                        <div class="card-footer">
                                            <button type="submit" class="btn btn-primary">Simpan</button>
                                        </div>
                                    </form>
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
