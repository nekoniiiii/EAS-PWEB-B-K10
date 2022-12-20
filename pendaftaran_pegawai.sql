-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2022 pada 03.48
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendaftaran_pegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berkas`
--

CREATE TABLE `berkas` (
  `id_berkas` int(5) NOT NULL,
  `nik` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jenis_kelamin` varchar(200) NOT NULL,
  `tempat_lahir` varchar(200) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kualifikasi_pendidikan` varchar(200) NOT NULL,
  `formasi_jabatan` varchar(200) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berkas`
--

INSERT INTO `berkas` (`id_berkas`, `nik`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `kualifikasi_pendidikan`, `formasi_jabatan`, `foto`) VALUES
(1, '098765432112345', 'Chika Chiki', 'Perempuan', 'Kediri', '2002-01-05', 'S-1 Perikanan', 'Pengamat Utama Teknologi Perikanan', '19122022213851'),
(2, '09876543212345', 'Cika Chiki', 'Perempuan', 'Jakarta', '2000-07-05', 'S-1 Perikanan', 'Pengamat Utama Teknologi Perikanan', '19122022214144');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto_ktp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `foto_ktp`) VALUES
(1, 'neisa14', 'neisahibatillah@gmail.com', 'abc', NULL),
(2, 'abc', 'abc@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(4, 'asd', 'asd@gmail.com', '202cb962ac59075b964b07152d234b70', '50cebfe4734e7d0367f7edc05b8a5bb0.png'),
(5, 'admin', 'admin1@gmail.com', 'e00cf25ad42683b3df678c61f42c6bda', NULL),
(6, 'theresianwg', 'theresianawangsih@gmail.com', '593d75ed6403606e8172bda143ba6663', 'Tanpa judul (Wallpaper Desktop) (1440 × 1024 piksel) (2).png'),
(7, 'Cikachiki', 'cikachiki@gmail.com', 'a8793de322b3787e4574623586620018', 'R (1).png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`id_berkas`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berkas`
--
ALTER TABLE `berkas`
  MODIFY `id_berkas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
