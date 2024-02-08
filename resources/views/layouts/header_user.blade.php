<header id="header">
	<div class="d-flex" style="margin: 15px !important;">

		<div class="profile">
			<img src="{{ asset('Foto/Logo.png')}}" alt="" class="img-fluid rounded-circle">
		</div>

		<nav id="navbar" class="nav-menu navbar" style="padding: 0px !important;">
			<ul style="display: flex !important; margin-top: 10px !important;">
				<li><a href="/" class="nav-link scrollto"><i class="bx bx-home"></i> <span>Beranda</span></a></li>
				<li><a href="/create-datauji" class="nav-link scrollto"><i class="bx bx-list-check"></i> <span>Cek Rekomendasi</span></a></li>
                <li><a href="/hasil" class="nav-link scrollto"><i class="bx bx-book-content"></i> <span>Hasil Rekomendasi</span></a></li>
                @if (session()->has('email'))
	    			<li><a href="/logout" class="nav-link scrollto"><i class="bx bx-log-out"></i> <span>Keluar</span></a></li>
                @else
    				<li><a href="/login" class="nav-link scrollto"><i class="bx bx-log-in"></i> <span>Masuk</span></a></li>
                @endif
			</ul>
		</nav>
	</div>
</header>
