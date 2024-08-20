@extends('frontend/layouts.template')
@section('content')
    <!-- ======= Hero Section ======= -->
    <section id="" class="hero d-flex align-items-center">

        <div class="container">
            <div class="row">
                <div class="col-lg-6 d-flex flex-column justify-content-center">
                    <h1 data-aos="fade-up">Siaga Melindungi Sejak Generasi ke Generasi</h1>
                    <h2 data-aos="fade-up" data-aos-delay="400">Selamat datang di situs resmi kami, di mana keselamatan dan
                        keamanan menjadi prioritas utama. Sebagai Instansi Pemadam Kebakaran Kabupaten Grobogan, kami
                        berkomitmen untuk memberikan respons cepat, efektif, dan efisien dalam menangani kebakaran,
                        penyelamatan darurat, evakuasi, serta penanganan bencana lainnya demi melindungi masyarakat dan
                        lingkungan.</h2>
                    <div data-aos="fade-up" data-aos-delay="600">
                        <div class="text-center text-lg-start">
                            <a href="tel:123456789"
                                class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
                                <span>Lapor</span>
                            </a>
                            <!--<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                                                                                            class="bi bi-google-play" viewBox="0 0 16 16">-->
                            <path
                                d="M14.222 9.374c1.037-.61 1.037-2.137 0-2.748L11.528 5.04 8.32 8l3.207 2.96zm-3.595 2.116L7.583 8.68 1.03 14.73c.201 1.029 1.36 1.61 2.303 1.055zM1 13.396V2.603L6.846 8zM1.03 1.27l6.553 6.05 3.044-2.81L3.333.215C2.39-.341 1.231.24 1.03 1.27" />
                            </svg>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 hero-img" data-aos="zoom-out" data-aos-delay="200">
                    <img src="{{ asset('frontend2/assets/img/homegambar.png') }}" class="img-fluid" alt="">
                </div>
            </div>
        </div>

    </section><!-- End Hero -->
    <section id="hero" class="counts">
        <div class="container" data-aos="fade-up">

            @foreach ($data as $item)
                <div class="row gy-4">

                    <div class="col-lg-3 col-md-6">
                        <div class="count-box">
                            <i class="bi bi-car-front-fill"></i>
                            <div>
                                <span data-purecounter-start="0" data-purecounter-end="{{ $item->jumlah_mobil }}"
                                    data-purecounter-duration="1" class="purecounter"></span>
                                <p>Unit Mobil</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="count-box">
                            <i class="bi bi-people" i></i>
                            <div>
                                <span data-purecounter-start="30" data-purecounter-end="{{ $item->jumlah_personil }}"
                                    data-purecounter-duration="1" class="purecounter"></span>
                                <p>Personil</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="count-box">
                            <i class="bi bi-journal-richtext"></i>
                            <div>
                                <span data-purecounter-start="0" data-purecounter-end="{{ $data1 }}"
                                    data-purecounter-duration="1" class="purecounter"></span>
                                <p>Laporan Selesai</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="count-box">
                            <i class="bi bi-buildings"></i>
                            <div>
                                <span data-purecounter-start="0" data-purecounter-end="{{ $item->jumlah_kantor }}"
                                    data-purecounter-duration="1" class="purecounter"></span>
                                <p>Kantor Damkar</p>
                            </div>
                        </div>
                    </div>
            @endforeach
        </div>

        </div>
    </section><!-- End Counts Section -->


    <main id="main">
        <!-- ======= About Section ======= -->
        <section id="hero" class="about">

            <div class="container" data-aos="fade-up">
                <div class="row gx-0">

                    <div class="col-lg-6 d-flex flex-column justify-content-center" data-aos="fade-up" data-aos-delay="200">

                        <img src="{{ asset('frontend2/assets/img/abcd.png') }}" class="img-fluid" alt="">
                    </div>

                    <div class="col-lg-6 d-flex align-items-center" data-aos="zoom-out" data-aos-delay="200">
                        <div class="content">
                            <h2 style="text-align: justify;">Apa itu E-Damkar Grobogan?</h2>
                            <p style="text-align: justify; font-size: 14px;">
                                E-DAMKAR adalah sistem informasi inovatif yang dikembangkan oleh Pemadam Kebakaran Kabupaten
                                Grobogan untuk memfasilitasi kegiatan operasional dan penanganan keadaan darurat secara
                                efektif. Sistem ini dirancang sebagai solusi modern yang dapat diakses melalui platform web,
                                memungkinkan petugas pemadam kebakaran dan penyelamatan untuk mengakses informasi serta
                                melakukan tindakan dengan cepat dan tepat.
                            </p>
                            <p style="text-align: justify; font-size: 14px;">
                                E-DAMKAR terintegrasi langsung dengan website resmi Pemadam Kebakaran dan Penyelamatan
                                Kabupaten Grobogan, memberikan kemudahan bagi masyarakat luas dan pihak terkait untuk
                                mendapatkan akses cepat terhadap informasi terkini, pengaduan, serta fitur-fitur lain yang
                                tersedia dalam sistem ini.
                            </p>
                            <p style="text-align: justify; font-size: 14px;">
                                Dengan platform web yang responsif, E-DAMKAR memastikan bahwa informasi yang diperlukan
                                dapat diperoleh dengan mudah dan secara real-time oleh semua pihak yang terlibat. Sistem ini
                                merupakan langkah maju dalam meningkatkan kesiapsiagaan dan penanganan keadaan darurat di
                                Kabupaten Grobogan, menjadikan masyarakat lebih aman dan terlindungi.
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </section><!-- End About Section -->

        <section id="hero" class="about">

            <div class="container" data-aos="fade-up">
                <div class="row gx-0">

                    <div class="col-lg-6 d-flex align-items-center justify-content-center" data-aos="zoom-out"
                        data-aos-delay="200">
                        <div class="content">
                            <h2 style="text-align: justify;">Bagaimana Cara Kerja E-Damkar?</h2>
                            <p style="text-align: justify; font-size: 14px;  margin-bottom: 10px;">
                                E-DAMKAR berfungsi sebagai sistem informasi yang mengintegrasikan teknologi berbasis web
                                untuk mendukung operasional dan penanganan keadaan darurat oleh Pemadam Kebakaran Kabupaten
                                Grobogan. Berikut adalah cara kerja E-DAMKAR secara umum:
                            </p>
                            <p style="text-align: justify; font-size: 14px;  margin-bottom: 10px;">
                                Melalui platform web, masyarakat dapat melaporkan kejadian, mengajukan permintaan bantuan,
                                atau mendapatkan informasi mengenai upaya penanggulangan kebakaran dan penyelamatan. Situs
                                web ini menyediakan berbagai fitur yang memudahkan interaksi dan akses informasi terkait
                                pemadam kebakaran.
                            </p>
                            <p style="text-align: justify; font-size: 14px;">
                                Petugas pemadam kebakaran dan penyelamatan dapat mengakses sistem ini untuk mendapatkan
                                informasi real-time, sehingga memungkinkan mereka untuk merespons situasi darurat dengan
                                cepat dan efisien. Selain itu, website ini juga menjadi sumber informasi bagi masyarakat
                                umum dan pihak terkait yang ingin mengetahui perkembangan terkini seputar layanan dan
                                operasi Pemadam Kebakaran Kabupaten Grobogan.
                            </p>
                            <p style="text-align: justify; font-size: 14px;">Dengan cara kerjanya yang terintegrasi dan
                                berbasis teknologi web, E-DAMKAR bertujuan untuk
                                meningkatkan kesiapsiagaan, efisiensi, dan efektivitas dalam penanganan keadaan darurat,
                                serta memberikan akses informasi yang mudah dan cepat kepada masyarakat luas.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-6 d-flex flex-column justify-content-center" data-aos="fade-up" data-aos-delay="200">
                        <img src="{{ asset('frontend2/assets/img/abcd.png') }}" class="img-fluid" alt="">
                    </div>

                </div>
            </div>
        </section><!-- End About Section -->

        <!-- ======= Features Section ======= -->
        <section id="layanan" class="features">
            <!-- Feature Icons -->
            <div class="row feature-icons" data-aos="fade-up">
                <h3>Layanan E-Damkar</h3>

                <div class="row">

                    <div class="col-xl-4 text-center" data-aos="fade-right" data-aos-delay="100">
                        <img src="{{ asset('frontend2/assets/img/features-3.png') }}" class="img-fluid p-4"
                            alt="">
                    </div>

                    <div class="col-xl-8 d-flex content">
                        <div class="row align-self-center gy-4">

                            <div class="col-md-6 icon-box" data-aos="fade-up">
                                <img src="{{ asset('frontend2/assets/img/kebakaran.png') }}" class="img-fluid"
                                    alt="" style="width: 50px; height: 50px; margin-right: 10px;"">
                                <div>
                                    <h4 style="text-align: justify;">Laporan Kebakaran</h4>
                                    <p style="text-align: justify;">E-Damkar akan melayani laporan dari masyarakat yang
                                        melaporkan kejadian Kebakaran dari berbagai lokasi di wilayah Kabupaten Grobogan</p>
                                </div>
                            </div>

                            <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="100">
                                <img src="{{ asset('frontend2/assets/img/hewanbuas.png') }}" class="img-fluid"
                                    alt="" style="width: 50px; height: 50px; margin-right: 10px;"">
                                <div>
                                    <h4 style="text-align: justify;">Laporan Hewan Buas</h4>
                                    <p style="text-align: justify;">E-Damkar akan melayani laporan dari masyarakat yang
                                        melaporkan kejadian Evakuasi Penangkapan Hewan Buas dari berbagai lokasi di wilayah
                                        Kabupaten Grobogan</p>
                                </div>
                            </div>

                            <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="200">
                                <img src="{{ asset('frontend2/assets/img/bencanaalam.png') }}" class="img-fluid"
                                    alt="" style="width: 50px; height: 50px; margin-right: 10px;"">
                                <div>
                                    <h4 style="text-align: justify;">Laporan Bencana Alam</h4>
                                    <p style="text-align: justify;">E-Damkar akan melayani laporan dari masyarakat yang
                                        melaporkan kejadian Evakuasi Bencana Alam dari berbagai lokasi di wilayah Kabupaten
                                        Grobogan</p>
                                </div>
                            </div>

                            <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="300">
                                <img src="{{ asset('frontend2/assets/img/penyelamatan.png') }}" class="img-fluid"
                                    alt="" style="width: 50px; height: 50px; margin-right: 10px;"">
                                <div>
                                    <h4 style="text-align: justify;">Laporan Penyelamatan</h4>
                                    <p style="text-align: justify;">E-Damkar akan melayani laporan dari masyarakat yang
                                        melaporkan kejadian Evakuasi Penyelamatan dari berbagai lokasi di wilayah Kabupaten
                                        Grobogan</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div><!-- End Feature Icons -->

            </div>

        </section><!-- End Features Section -->
        <!-- ======= Recent Blog Posts Section ======= -->
        <section id="berita" class="recent-blog-posts">

            <div class="container" data-aos="fade-up">

                <header class="section-header">
                    <p>Artikel Terbaru</p>
                </header>

                <div class="row">
                    @foreach ($artikel as $item)
                        <div class="col-lg-4 p-3">
                            <div class="post-box">
                                <div class="post-img">
                                    <img src="{{ asset('img-berita/' . $item->foto_artikel_berita) }}" class="img-fluid"
                                        alt="{{ $item->judul_berita }}" style="width: 100%; height: 250px;">
                                </div>
                                <span
                                    class="post-date">{{ \Carbon\Carbon::parse($item->tgl_berita)->locale('id')->isoFormat('dddd, D MMMM YYYY') }}</span>
                                <h3 class="post-title">{{ $item->judul_berita }}</h3>
                                <p>
                                    @php
                                        $deskripsi = explode(' ', $item->deskripsi_berita);
                                        $deskripsi = array_slice($deskripsi, 0, 10);
                                        $deskripsi = implode(' ', $deskripsi);
                                        $deskripsi = rtrim($deskripsi, ',.!?:;'); // Menghapus tanda baca di akhir kalimat
                                        $deskripsi .= ' ...'; // Menambahkan tanda elipsis sebagai penanda akhir kalimat
                                    @endphp
                                    {{ $deskripsi }}
                                </p>
                                <a href="{{ route('detailberita.show', ['id_berita' => $item->id_berita]) }}"
                                    class="readmore stretched-link mt-auto">
                                    <span>Baca selengkapnya</span><i class="bi bi-arrow-right"></i>
                                </a>
                            </div>
                        </div>
                    @endforeach
                </div>


                <div class="row d-flex justify-content-center">
                    <a href="/landingberita" class="button"
                        style="background-color: #ff0000; color: #ffffff; width: 200px; height: 50px;
                        text-align: center; line-height: 50px; border-radius: 25px;">Lihat
                        Selengkapnya <i class="bi bi-arrow-right"></i></a>
                </div>

            </div>

        </section><!-- End Recent Blog Posts Section -->
        <section id="maps" class="features">
            <!-- Feature Icons -->
            <div class="row feature-icons" data-aos="fade-up">
                <h3>Lokasi Kantor</h3>

                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d253400.29511250835!2d110.61345239453127!3d-7.081914499999993!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e70b064559bd7e5%3A0x5b09c9e06e1179c1!2sPos%20Pemadam%20Kebakaran%20Grobogan!5e0!3m2!1sid!2sid!4v1723259833819!5m2!1sid!2sid"
                    width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>

            </div><!-- End Feature Icons -->

            </div>

        </section><!-- End Features Section -->



    </main><!-- End #main -->
@endsection
