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
                                    <form action="/updatedu/{{$datauji->id}}" method="POST" enctype="multipart/form-data">
                                        {{ csrf_field() }}
                                        <div class="form-group">
                                            <label for="id" class="form-label">NRM</label>
                                            <input type="text" name="id" class="form-control" id="id"
                                                placeholder="" value="{{$datauji->id}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="nama" class="form-label">Nama</label>
                                            <input type="text" name="nama" class="form-control" id="nama"
                                                placeholder="" value="{{$datauji->nama}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="mtk" class="form-label">Nilai Matematika</label>
                                            <input type="text" name="mtk" class="form-control" id="mtk"
                                            placeholder="" value="{{$datauji->mtk}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="bindo" class="form-label">Nilai Bahasa Indonesia</label>
                                            <input type="text" name="bindo" class="form-control" id="bindo"
                                                placeholder="" value="{{$datauji->bindo}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="bing" class="form-label">Nilai Bahasa Inggris</label>
                                            <input type="text" name="bing" class="form-control" id="bing"
                                                placeholder="" value="{{$datauji->bing}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="ipa" class="form-label">Nilai Ilmu Pengetahuan Alam</label>
                                            <input type="text" name="ipa" class="form-control" id="ipa"
                                                placeholder="" value="{{$datauji->ipa}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="psikotes" class="form-label">Nilai Psikotes</label>
                                            <input type="text" name="psikotes" class="form-control" id="psikotes"
                                                placeholder="" value="{{$datauji->psikotes}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="senbud" class="form-label">Nilai Seni Budaya</label>
                                            <input type="text" name="senbud" class="form-control" id="senbud"
                                                placeholder="" value="{{$datauji->senbud}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="minat" class="form-label">Minat</label>
                                            <!-- <input type="text" name="minat" class="form-control" id="minat"
                                            placeholder="" value="{{$datauji->minat}}"> -->
                                            <select class="form-control" name="minat"
                                                aria-label="Default select example">
                                                <option value="S1 Teknik Sipil" {{$datauji->minat == 'S1 Teknik Sipil'? 'selected' : ''}} >S1 Teknik Sipil</option>
                                                <option value="S1 Informatika" {{$datauji->minat == 'S1 Informatika'? 'selected' : ''}}>S1 Informatika</option>
                                                <option value="S1 Perencanaan Wilayah dan Kota" {{$datauji->minat == 'S1 Perencanaan Wilayah dan Kota'? 'selected' : ''}}>S1 Perencanaan Wilayah dan Kota</option>
                                                <option value="S1 Arsitektur" {{$datauji->minat == 'S1 Arsitektur'? 'selected' : ''}}>S1 Arsitektur</option>
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
