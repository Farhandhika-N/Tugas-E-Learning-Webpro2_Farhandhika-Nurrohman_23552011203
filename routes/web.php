<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('landing', [
        'appName'  => 'ProFlow',
        'tema'     => 'Manajemen Project Freelance',
        'jurusan'  => 'Teknik Informatika',
        'features' => [
            [
                'title' => 'Pantau Progress Tanpa Pusing', 
                'desc' => 'Lupakan catatan kertas atau chat WA yang berantakan. Di sini, kamu bisa lihat sampai mana projectmu berjalan, apa yang harus dikerjakan besok, dan mana deadline yang sudah mepet. Semuanya divisualisasikan dengan dashboard yang bikin mata nyaman.'
            ],
            [
                'title' => 'Tagihan Cair Lebih Cepat', 
                'desc' => 'Bikin invoice profesional nggak perlu jago desain. Tinggal klik, sistem bakal hitung otomatis biaya projectmu dan kirim ke klien. Ada fitur pengingatnya juga kalau klien lupa bayar, jadi kamu nggak perlu merasa nggak enak buat nagih.'
            ],
            [
                'title' => 'Portal Khusus Klien', 
                'desc' => 'Kasih pengalaman mewah buat klienmu. Mereka punya akses khusus buat cek perkembangan kerjaan kamu tanpa harus bolak-balik tanya "Sudah sampai mana?". Klien senang, reputasi kamu sebagai freelancer pun makin naik!'
            ]
        ]
    ]);
});