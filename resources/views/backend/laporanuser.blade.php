@extends('backend/layouts.template')
@section('content')
<style type="text/css">
    #nama_hewan {
    visibility: hidden;

    /*height: 80%;*/
}
</style>
<main id="main" class="main">

    <div class="pagetitle">
        <h1>Laporan</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="">Home</a></li>
                <li class="breadcrumb-item active">Laporan</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    @if (session('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif

    {{-- menampilkan error validasi --}}
    @if ($errors->any())
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif

    <section class="section">
        <div class="row">
            <div class="col-lg-12">


                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Pelaporan</h5>
                        <p>Berikut adalah data laporan yang sudah dilaporkan.</p>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#largeModal" onclick="getLocation()">
        <i class="bi bi-plus"></i>Tambah Laporan!</button>
                        <!-- Table with stripped rows -->
                        <div class="table-responsive">
                        <table class="table datatable">
                            <thead>
                                <tr>
                                    <th scope="col">No</th>
                                    <th scope="col">Tanggal</th>
                                    <th scope="col">Nama Pelapor</th>
                                    <th scope="col">Urgensi</th>
                                    <th scope="col">Deskripsi Laporan</th>
                                    <th scope="col">Detail</th>
                                    <th scope="col">Status</th>
                                </tr>
        </thead>
        <tbody>
         <div class="modal fade" id="largeModal" tabindex="-1">
<div class="modal-dialog modal-xl">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title">Tambah Laporan!</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <!-- General Form Elements -->
            <form class="form-validate" id="pelaporan" method="POST" action="{{ route('inputlaporan.store') }}" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="id_user" value="{{ Auth::user()->id }}">
                <input type="hidden" id="latitude" name="latitude" value="">
                <input type="hidden" id="longitude" name="longitude" value="">
                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">Nama Pelapor</label>
                        <div class="col-sm-10">
                            <input type="text" name="nama_pelapor"
                                value="{{ $infouser[0]->nama_lengkap }}"
                                class="form-control" disabled>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">No Hp</label>
                        <div class="col-sm-10">
                            <input type="text" name="no_Hp"
                                value="{{ $infouser[0]->noHp }}"
                                class="form-control" disabled>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">Deskripsi
                            Laporan</label>
                        <div class="col-sm-10">
                            <textarea style="width: 100%;" name="deskripsi_laporan"></textarea>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">Alamat
                            Kejadian</label>
                        <div class="col-sm-8">
                            <input type="text" name="alamat_kejadian" class="form-control">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">Kategori Laporan</label>
                        <div class="col-sm-10">
                            <div class="input-group mb-3">
                              <select class="form-select" id="inputGroupSelect01" name="kategori_laporan_id" onchange="showDiv('nama_hewan', this)">
                                <option selected>Pilih...</option>
                                <option value="1">Kebakaran</option>
                                <option value="2">Bencana Alam</option>
                                <option value="3">Penyelamatan</option>
                                <option value="4">Hewan Buas</option>
                                <option value="5">Custom</option>
                              </select>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3" id="nama_hewan">
                        <label for="inputText" class="col-sm-2 col-form-label">Nama Hewan</label>
                        <div class="col-sm-10">
                            <input type="text" name="nama_hewan" class="form-control">
                        </div>
                    </div>
                    <!-- jadiin dropdown -->
                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">Kondisi Cuaca</label>
                        <div class="col-sm-10">
                            <div class="input-group mb-3">
                              <select class="form-select" id="inputGroupSelect01" name="kondisi_cuaca_id">
                                <option selected>Pilih...</option>
                                <option value="1">Cerah</option>
                                <option value="2">Berkabut</option>
                                <option value="3">Mendung</option>
                                <option value="4">Hujan</option>
                              </select>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">Urgensi</label>
                        <div class="col-sm-10">
                            <div class="input-group mb-3">
                              <select class="form-select" id="inputGroupSelect01" name="urgensi">
                                <option selected>Pilih...</option>
                                <option value="Tinggi">Tinggi</option>
                                <option value="Sedang">Sedang</option>
                                <option value="Rendah">Rendah</option>
                              </select>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">Nama Korban</label>
                        <div class="col-sm-10">
                            <input type="text" name="nama_korban" class="form-control">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">NIK Korban</label>
                        <div class="col-sm-10">
                            <input type="text" name="NIK" class="form-control">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">Umur Korban</label>
                        <div class="col-sm-10">
                            <input type="number" name="umur_korban" class="form-control">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">Bukti
                            Kejadian</label>
                        <div class="col-sm-10">
                            <input type="file" name="bukti_foto_laporan_pengguna" class="form-control">
                        </div>
                    </div>
                    <div class="row mb-3">
                    </div>
            </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Kembali</button>
                    <button type="submit" class="btn btn-primary">Tambahkan</button>
                </div>
            </form><!-- End General Form Elements -->
        </div>
    </div>
</div>
</div>
@php $no = 1; @endphp
@foreach ($data as $laporan)
    <tr>
        <th scope="row">{{ $no++ }}</th>
        <td>{{ date('d-m-Y', strtotime($laporan->tgl_pelaporan)) }}
            ({{ $laporan->waktu_pelaporan }})</td>
        <td>{{ $infouser[0]->nama_lengkap }}</td>
        <td>{{ $laporan->urgensi }}</td>
        <td>{{ $laporan->deskripsi_laporan }}</td>

        <td><a href="#" type="button" class="btn btn-primary"
                data-bs-toggle="modal"
                data-bs-target="#largeModalTampil{{ $laporan->idLaporan }}">Cek Detail
        </td>
        <td>
            <a href="#" type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#largeModalEdit{{ $laporan->idLaporan }}"><i class="bi bi-pen"></i>Edit</a>
                    </td>

        <div class="modal fade" id="largeModalEdit{{ $laporan->idLaporan }}" tabindex="-1">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Update Data Laporan</h5>
                            <button type="button" class="btn-close"
                                data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <!-- General Form Elements -->
                            <form action="{{ route('inputlaporan.update', ['inputlaporan' => $laporan->idLaporan]) }}" 
                            method="POST">
                                @method('PUT')
                                @csrf
                <input type="hidden" name="id_user" value="{{ Auth::user()->id }}">
                <input type="hidden" id="latitude2" name="latitude" value="{{ $laporan->latitude }}">
                <input type="hidden" id="longitude2" name="longitude" value="{{ $laporan->longitude }}">
                <input type="hidden" id="detail_korban" name="detail_korban_id" value="{{ $laporan->detail_korban_id }}">
                <input type="hidden" id="detailLaporanPengguna" name="detail_laporan_pengguna_id" value="{{ $laporan->detail_laporan_pengguna_id }}">

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">Nama Pelapor</label>
                        <div class="col-sm-10">
                            <input type="text" name="nama_pelapor"
                                value="{{ $infouser[0]->nama_lengkap }}"
                                class="form-control" disabled>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">No Hp</label>
                        <div class="col-sm-10">
                            <input type="text" name="no_Hp"
                                value="{{ $infouser[0]->noHp }}"
                                class="form-control" disabled>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">Deskripsi
                            Laporan</label>
                        <div class="col-sm-10">
                            <textarea style="width: 100%;" name="deskripsi_laporan">{{ $laporan->deskripsi_laporan }}</textarea>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">Alamat
                            Kejadian</label>
                        <div class="col-sm-8">
                            <input type="text" name="alamat_kejadian" class="form-control" value="{{ $laporan->alamat }}">
                        </div>
                        <div class="col-sm-2">
                                    @if (!empty($laporan->latitude) && !empty($laporan->longitude))
                                        <a href="https://www.google.com/maps/search/?api=1&query={{ $laporan->latitude }},{{ $laporan->longitude }}"
                                            target="_blank"
                                            class="btn btn-primary btn-block">Cek
                                            Lokasi</a>
                                    @else
                                        <a href="javascript:void(0);"
                                            style="display: none;"
                                            class="btn btn-primary btn-block">Cek
                                            Lokasi</a>
                                    @endif
                                </div>
                            
                    </div>

                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">Kategori Laporan</label>
                        <div class="col-sm-10">
                            <div class="input-group mb-3">
                              <select class="form-select" id="inputGroupSelect01" name="kategori_laporan_id" onchange="showDiv('nama_hewan2', this)">
                                <option @if($laporan->kategori_laporan_id == null) selected @endif>Pilih...</option>
                                <option value="1" @if($laporan->kategori_laporan_id == 1) selected @endif>Kebakaran</option>
                                <option value="2" @if($laporan->kategori_laporan_id == 2) selected @endif>Bencana Alam</option>
                                <option value="3" @if($laporan->kategori_laporan_id == 3) selected @endif>Penyelamatan</option>
                                <option value="4" @if($laporan->kategori_laporan_id == 4) selected @endif>Hewan Buas</option>
                                <option value="5" @if($laporan->kategori_laporan_id == 5) selected @endif>Custom</option>
                              </select>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3" id="nama_hewan2">
                        <label for="inputText" class="col-sm-2 col-form-label">Nama Hewan</label>
                        <div class="col-sm-10">
                            <input type="text" name="nama_hewan" class="form-control" value="{{ $laporan->nama_hewan }}">
                        </div>
                    </div>
                    <!-- jadiin dropdown -->
                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">Kondisi Cuaca</label>
                        <div class="col-sm-10">
                            <div class="input-group mb-3">
                              <select class="form-select" id="inputGroupSelect01" name="kondisi_cuaca_id">
                                <option @if($laporan->kondisi_cuaca_id == null) selected @endif>Pilih...</option>
                                <option value="1" @if($laporan->kondisi_cuaca_id == 1) selected @endif>Cerah</option>
                                <option value="2" @if($laporan->kondisi_cuaca_id == 2) selected @endif>Berkabut</option>
                                <option value="3" @if($laporan->kondisi_cuaca_id == 3) selected @endif>Mendung</option>
                                <option value="4" @if($laporan->kondisi_cuaca_id == 4) selected @endif>Hujan</option>
                              </select>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">Urgensi</label>
                        <div class="col-sm-10">
                            <div class="input-group mb-3">
                              <select class="form-select" id="inputGroupSelect01" name="urgensi">
                                <option @if($laporan->urgensi == null) selected @endif>Pilih...</option>
                                <option value="Tinggi" @if($laporan->urgensi == 'Tinggi') selected @endif>Tinggi</option>
                                <option value="Sedang" @if($laporan->urgensi == 'Sedang') selected @endif>Sedang</option>
                                <option value="Rendah" @if($laporan->urgensi == 'Rendah') selected @endif>Rendah</option>
                              </select>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">Nama Korban</label>
                        <div class="col-sm-10">
                            <input type="text" name="nama_korban" class="form-control" value="{{ $laporan->nama_lengkap }}">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">NIK Korban</label>
                        <div class="col-sm-10">
                            <input type="text" name="NIK" class="form-control" value="{{ $laporan->NIK }}">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">Umur Korban</label>
                        <div class="col-sm-10">
                            <input type="number" name="umur_korban" class="form-control" value="{{ $laporan->umur }}">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label for="inputText"
                            class="col-sm-2 col-form-label">Bukti
                            Kejadian</label>
                        <div class="col-sm-10">
                            <input type="file" name="bukti_foto_laporan_pengguna" class="form-control" value="{{ $laporan->bukti_foto_laporan_pengguna }}">
                        </div>
                    </div>
                    <div class="row mb-3">
                    </div>
            </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Kembali</button>
                    <button type="submit" class="btn btn-primary">Tambahkan</button>
                </div>
                            </form>
                            <!-- End General Form Elements -->
                        </div>
                    </div>
                </div>
        </div>

        <!-- End Basic Modal-->

        <div class="modal fade" id="largeModalTampil{{ $laporan->idLaporan }}"
            tabindex="-1">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Pelaporan <small>({{ $laporan->nama_kategori }})</small>
                        </h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!-- General Form Elements -->

                        <form class="form-validate" id="artikeledukasi_form"
                            method="POST"
                            action="{{ route('laporan.update-status', $laporan->idLaporan) }}"
                            enctype="multipart/form-data">
                            {!! csrf_field() !!}
                            {!! isset($berita) ? method_field('PUT') : '' !!}

                            <input type="hidden" name="id"
                                value="{{ $laporan->idLaporan }}" /></br>

                            <div class="row mb-3">
                                <label for="inputText"
                                    class="col-sm-2 col-form-label">Nama Pelapor</label>
                                <div class="col-sm-10">
                                    <input type="text" name="nama_pelapor"
                                        value="{{ isset($laporan) ? $infouser[0]->nama_lengkap : '' }}"
                                        class="form-control" disabled>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="inputText"
                                    class="col-sm-2 col-form-label">No Hp</label>
                                <div class="col-sm-10">
                                    <input type="text" name="deskripsi_laporan"
                                        value="{{ isset($laporan) ? $infouser[0]->noHp : '' }}"
                                        class="form-control" disabled>
                                </div>
                            </div>


                            @if ($laporan->kategori_laporan_id == 4)
                                <div class="row mb-3">
                                    <label for="inputText"
                                        class="col-sm-2 col-form-label">Nama
                                        Hewan</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="nama_pelapor"
                                            value="{{ isset($laporan) ? $laporan->nama_hewan : '' }}"
                                            class="form-control" disabled>
                                    </div>
                                </div>
                            @else
                                <!-- Tidak menampilkan input field jika kategori_laporan_id tidak sama dengan 4 -->
                            @endif


                            <div class="row mb-3">
                                <label for="inputText"
                                    class="col-sm-2 col-form-label">Deskripsi
                                    Laporan</label>
                                <div class="col-sm-10">
                                    <textarea style="width: 100%;" disabled>{{ isset($laporan) ? $laporan->deskripsi_laporan : '' }}</textarea>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="inputText"
                                    class="col-sm-2 col-form-label">Alamat
                                    Kejadian</label>
                                <div class="col-sm-8">
                                    <input type="text" name="alamat_kejadian"
                                        value="{{ isset($laporan) ? $laporan->alamat : '' }}"
                                        class="form-control" disabled>
                                </div>
                                <div class="col-sm-2">
                                    @if (!empty($laporan->latitude) && !empty($laporan->longitude))
                                        <a href="https://www.google.com/maps/search/?api=1&query={{ $laporan->latitude }},{{ $laporan->longitude }}"
                                            target="_blank"
                                            class="btn btn-primary btn-block">Cek
                                            Lokasi</a>
                                    @else
                                        <a href="javascript:void(0);"
                                            style="display: none;"
                                            class="btn btn-primary btn-block">Cek
                                            Lokasi</a>
                                    @endif
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText"
                                    class="col-sm-2 col-form-label">Kondisi Cuaca</label>
                                <div class="col-sm-10">
                                    <input type="text" name="nama_pelapor"
                                        value="{{ isset($laporan) ? $laporan->nama_kondisi_cuaca : '' }}"
                                        class="form-control" disabled>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="inputText"
                                    class="col-sm-2 col-form-label">Nama Korban</label>
                                <div class="col-sm-10">
                                    <input type="text" name="nama_pelapor"
                                        value="{{ isset($laporan) ? $laporan->nama_lengkap : '' }}"
                                        class="form-control" disabled>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText"
                                    class="col-sm-2 col-form-label">NIK Korban</label>
                                <div class="col-sm-10">
                                    <input type="text" name="nama_pelapor"
                                        value="{{ isset($laporan) ? $laporan->NIK : '' }}"
                                        class="form-control" disabled>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText"
                                    class="col-sm-2 col-form-label">Umur Korban</label>
                                <div class="col-sm-10">
                                    <input type="text" name="nama_pelapor"
                                        value="{{ isset($laporan) ? $laporan->umur : '' }}"
                                        class="form-control" disabled>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="inputText"
                                    class="col-sm-2 col-form-label">Bukti
                                    Kejadian</label>
                                <div class="col-sm-10">
                                    <!-- <img src="storage/gambar_pelaporan/kebakaran.jpeg" width="60%"> -->
                                    <img src="{{ asset('img-pelaporan/' . $laporan->bukti_foto_laporan_pengguna . '.jpg') }}"
                                        width="40%">
                                </div>
                            </div>
                            <div class="row mb-3">
                            </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-bs-dismiss="modal"
                            aria-label="Close">Tutup</button>
                    </div>

                    </form><!-- End General Form Elements -->
                </div>
            </div>
        </div>


        <!-- End Large Modal-->
    </tr>
@endforeach
                            </tbody>
                        </table>
                        </div>
                        <!-- End Table with stripped rows -->
                    </div>
                </div>
            </div>
        </div>

    </section>
</main>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const button = document.getElementById('prosesButton');
        button.addEventListener('click', function(event) {
            event.preventDefault(); // Prevent the default form submission (if inside a form)

            // Call the updatePost() function when the button is clicked
            updatePost();
        });
    });

    function updatePost() {
        const socket = new WebSocket(`ws://127.0.0.1:6001/rlt/laporan?appKey=EDKNGKServer`);
        socket.onopen = function(event) {
            console.log('on open!!');

            socket.send(JSON.stringify({
                    "command": "Subscribe",
                    "channel": "RLPelaporan"
                }

            ))
            socket.send(JSON.stringify({
                    "command": "AddData",
                    "channel": "RLPelaporan",
                    "user": "controller"
                }

            ))

            setTimeout(() => {
                socket.close();
            }, 2000);

        }
        // socket.close();
        // socket.onmessage = function (event) {
        //     console.log(event);

        // }
    }
    function getLocation() {
        navigator.geolocation.getCurrentPosition(showPosition)
    }
    function showPosition(position) {
          // $latitude = position.coords.latitude;
          // $longitude = position.coords.longitude;
          document.getElementById("latitude").value = position.coords.latitude;
          document.getElementById("longitude").value = position.coords.longitude;    //for seting value
          // let num = Number(document.getElementById("myNum").value) ;
    }
    function showDiv(divId, element)
    {
        if (element.value == 4) {
            document.getElementById(divId).style.visibility ='visible';            
        } else {
            document.getElementById(divId).style.visibility ='hidden';
        }
    }
</script>
@endsection

