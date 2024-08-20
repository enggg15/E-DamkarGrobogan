@extends('layouts.app')

@section('content')
    <div class="container">
        <section
            class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4 position-relative">
            <!-- Background Video -->
            <div class="video-frame">
                <video autoplay muted loop id="background-video">
                    <source src="{{ asset('video/intro.mp4') }}" type="video/mp4">
                    Your browser does not support the video tag.
                </video>
                <div class="overlay"></div>
                <div class="color-overlay"></div>
            </div>

            <div class="container position-relative">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
                        <div class="card mb-3 shadow-sm" style="border-radius: 10px;">
                            <div class="card-body p-4">
                                <div class="text-center mb-4">
                                    <img src="{{ asset('frontend/assets/img/logobolo.png') }}" alt="Logo"
                                        style="width: 100px;">
                                    <h5 class="card-title mt-3">{{ __('Login') }}</h5>
                                    <p class="text-muted">Login untuk mengakses halaman Pelaporan</p>
                                </div>

                                <!-- menampilkan notifikasi apabila email / password salah -->
                                @if (session('error'))
                                    <div class="alert alert-danger">{{ session('error') }}</div>
                                @endif

                                @if (session('success'))
                                    <div id="auto-dismiss-alert" class="alert alert-success">
                                        {{ session('success') }}
                                    </div>
                                @endif

                                <script>
                                    setTimeout(function() {
                                        var alertElement = document.getElementById('auto-dismiss-alert');
                                        if (alertElement) {
                                            alertElement.remove();
                                        }
                                    }, 5000); // Menghilangkan alert setelah 5 detik (5000 milidetik)
                                </script>

                                <form class="row g-3 needs-validation" method="POST" action="{{ route('login') }}"
                                    novalidate>
                                    @csrf

                                    <div class="col-12">
                                        <label for="yourUsername" class="form-label">{{ __('Email User') }}</label>
                                        <div class="input-group has-validation">
                                            <input id="email" type="email" name="email"
                                                class="form-control @error('email') is-invalid @enderror"
                                                value="{{ old('email') }}" required autocomplete="username" autofocus>
                                            @error('email')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <label for="password" class="form-label">{{ __('Kata Sandi') }}</label>
                                        <input id="password" type="password" name="password"
                                            class="form-control @error('password') is-invalid @enderror" required
                                            autocomplete="current-password">
                                        @error('password')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>

                                    <div class="col-12">
                                        <button class="btn btn-primary w-100" type="submit">{{ __('Login') }}</button>
                                    </div>
                                    <div class="col-12 text-center">
                                        <p class="small mb-0">kembali<a href="/"
                                                class="text-black text-decoration-none"> ke Beranda</a></p>
                                    </div>
                                </form>

                            </div>
                        </div>
                        <div class="text-center mt-3">
                            <p class="small text-muted"><a href="https://wa.me/628179851011" target="_blank"
                                    class="text-white text-decoration-none">Copyright &copy; 2024 Wisanggeni Development
                                    System</a></p>
                        </div>
                    </div>
                </div>
        </section>
    </div>

    <style>
        /* Menghilangkan scrollbar pada seluruh halaman */
        body {
            overflow: hidden;
        }

        /* Mengatur video frame */
        .video-frame {
            position: absolute;
            top: 10px;
            left: 10px;
            width: calc(100% - 20px);
            height: calc(100% - 20px);
            border-radius: 10px;
            overflow: hidden;
            z-index: -1;
        }

        /* Mengatur video latar belakang */
        #background-video {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* Overlay untuk gradasi */


        /* Overlay untuk efek visual warna melintas */
        .color-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(45deg,
                    rgba(255, 0, 0, 0.3),
                    rgba(255, 127, 0, 0.3),
                    rgba(255, 255, 0, 0.3),
                    rgba(0, 255, 0, 0.3),
                    rgba(0, 0, 255, 0.3),
                    rgba(75, 0, 130, 0.3),
                    rgba(148, 0, 211, 0.3));
            background-size: 200% 200%;
            animation: colorAnimation 5s ease infinite;
            z-index: 2;
        }

        @keyframes colorAnimation {
            0% {
                background-position: 0% 50%;
            }

            50% {
                background-position: 100% 50%;
            }

            100% {
                background-position: 0% 50%;
            }
        }
    </style>
@endsection
