@extends('layouts.app')

@section('content')
<section class="container mt-5 pt-5">
    <div class="row align-items-center g-5">
        <div class="col-lg-6">
            <span class="badge rounded-pill bg-primary bg-opacity-10 text-primary px-3 py-2 mb-3">🚀 Teman Setia Freelancer</span>
            <h1 class="display-3 fw-bold mb-3">Kelola <span class="text-gradient">{{ $tema }}</span> Jadi Lebih Santai.</h1>
            <p class="fs-5 text-muted mb-4">Khusus buat kamu mahasiswa {{ $jurusan }}, platform ini bantu kamu kelola project sampingan tanpa ganggu jadwal kuliah. Rapikan workflow, kelola invoice, dan tingkatkan cuan!</p>
            <div class="d-flex gap-3">
                <button class="btn btn-dark btn-lg px-4 rounded-pill shadow">Mulai Sekarang</button>
                <button class="btn btn-link text-dark fw-bold text-decoration-none">Lihat Demo →</button>
            </div>
        </div>
        <div class="col-lg-6">
            <div id="heroCarousel" class="carousel slide shadow-lg rounded-5 overflow-hidden" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://images.unsplash.com/photo-1551434678-e076c223a692?auto=format&fit=crop&w=800&q=80" class="d-block w-100" alt="Kerja Tim">
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?auto=format&fit=crop&w=800&q=80" class="d-block w-100" alt="Diskusi Klien">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="container my-5 py-5" id="fitur">
    <div class="text-center mb-5">
        <h2 class="fw-bold">Kenapa Harus Pindah ke {{ $appName }}?</h2>
        <p class="text-muted">Fitur lengkap yang dirancang khusus untuk memahami cara kerja freelancer.</p>
    </div>

    <div class="row g-4">
        <div class="col-lg-7">
            <div class="bento-card bg-white">
                <div class="h1 mb-4">📅</div>
                <h3 class="fw-bold text-primary">{{ $features[0]['title'] }}</h3>
                <p class="text-secondary lh-lg">{{ $features[0]['desc'] }}</p>
                <div class="mt-4 p-3 bg-light rounded-4 d-flex align-items-center gap-3">
                    <div class="spinner-grow text-success spinner-grow-sm" role="status"></div>
                    <span class="small fw-bold text-muted">Status: Semua deadline aman terkendali!</span>
                </div>
            </div>
        </div>
        
        <div class="col-lg-5">
            <div class="bento-card" style="background: linear-gradient(135deg, #6366f1, #a855f7); color: white;">
                <div class="h1 mb-4">💰</div>
                <h3 class="fw-bold text-white">{{ $features[1]['title'] }}</h3>
                <p class="opacity-75 lh-base small">{{ $features[1]['desc'] }}</p>
                <hr class="opacity-25">
                <div class="d-flex justify-content-between align-items-center">
                    <span class="small fw-light italic">#FreelanceLife</span>
                    <button class="btn btn-light btn-sm rounded-pill px-3">Coba Invoice</button>
                </div>
            </div>
        </div>

        <div class="col-lg-12">
            <div class="bento-card border-0 shadow-sm" style="background: #eff6ff;">
                <div class="row align-items-center p-md-3">
                    <div class="col-md-2 text-center h1">🤝</div>
                    <div class="col-md-7">
                        <h3 class="fw-bold text-dark">{{ $features[2]['title'] }}</h3>
                        <p class="text-muted mb-0">{{ $features[2]['desc'] }}</p>
                    </div>
                    <div class="col-md-3 text-end">
                        <a href="#" class="btn btn-outline-primary rounded-pill px-4">Aktifkan Portal</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection