-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jan 2026 pada 07.32
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ukm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `prodi` varchar(50) DEFAULT NULL,
  `id_inputer` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL DEFAULT 'aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nim`, `nama`, `prodi`, `id_inputer`, `id_user`, `status`) VALUES
(3, '2300101', 'Abdul', 'Sistem Informasi', 2, NULL, 'aktif'),
(7, '2300103', 'Saep', 'Sistem Informasi', 2, NULL, 'aktif'),
(11, '2300102', 'Kemod', 'Desain Komunikasi Visual', 2, NULL, 'aktif'),
(12, '2300105', 'Udin Sedunia', 'Teknik Informatika', 2, NULL, 'aktif'),
(13, '2300107', 'Usman', 'Teknik Informatika', 2, NULL, 'tidak aktif'),
(15, '2300109', 'samsul', 'Sistem Informasi', 2, NULL, 'aktif'),
(16, '2300111', 'Epul', 'Desain Komunikasi Visual', 5, NULL, 'tidak aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventaris`
--

CREATE TABLE `inventaris` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `kondisi` varchar(50) DEFAULT NULL,
  `id_pencatat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `inventaris`
--

INSERT INTO `inventaris` (`id_barang`, `nama_barang`, `jumlah`, `kondisi`, `id_pencatat`) VALUES
(17, 'Bola Basket Molten GG7X', 10, 'baik', 2),
(18, 'Bola Basket Proteam', 13, 'baik', 2),
(19, 'Jersey Tim (Home - Putih)', 12, 'baik', 2),
(20, 'Jersey Tim (Away - Biru)', 12, 'baik', 2),
(21, 'Cone Latihan (Marker)', 30, 'baik', 2),
(22, 'Rompi Latihan (Scrimege)', 20, 'baik', 2),
(23, 'Stopwatch Digital', 2, 'baik', 5),
(24, 'Papan Strategi (Tactical Board)', 2, 'baik', 5),
(25, 'Pompa Bola Elektrik', 1, 'baik', 5),
(26, 'Ring Basket Portable', 2, 'rusak', 5),
(27, 'Pompa Bola Manual', 1, 'rusak', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `status` enum('dipinjam','kembali') DEFAULT 'dipinjam',
  `catatan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `id_anggota`, `id_barang`, `id_user`, `tgl_pinjam`, `tgl_kembali`, `jumlah`, `status`, `catatan`) VALUES
(1, 11, 18, 2, '2026-01-23', '2026-01-23', 1, 'kembali', NULL),
(2, 11, 17, 2, '2026-01-23', '2026-01-23', 2, 'kembali', NULL),
(3, 7, 18, 2, '2026-01-23', NULL, 1, 'dipinjam', NULL),
(4, 15, 18, 5, '2026-01-23', '2026-01-23', 1, 'kembali', NULL),
(5, 11, 18, 5, '2026-01-23', NULL, 1, 'dipinjam', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','bendahara','anggota') NOT NULL DEFAULT 'anggota'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama_lengkap`, `username`, `password`, `role`) VALUES
(2, 'Farhandhika Nurrohman', 'Han', '$2y$10$gFAANVCp1X/fLp3bh2QwReAVgXtD1nx9ldbOl4P9g.oY5xwxcFTUm', 'admin'),
(4, 'Suratep bin tarmin', 'atep', '$2y$10$Hu/86mJJ4xuv6/nlkn875e87lbxvYdDadH6pkuZeb1c8rUG4EMs2C', 'anggota'),
(5, 'Susanti putriani', 'susanti', '$2y$10$DmuGSEs18ziYcE1l1aYH/.Gi3F7WpmRD9Pw.lpmlXfHZpD1e1Rr/u', 'bendahara');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `fk_anggota_user` (`id_inputer`);

--
-- Indeks untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_pencatat` (`id_pencatat`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_anggota_user` FOREIGN KEY (`id_inputer`) REFERENCES `users` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  ADD CONSTRAINT `inventaris_ibfk_1` FOREIGN KEY (`id_pencatat`) REFERENCES `users` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `inventaris` (`id_barang`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
