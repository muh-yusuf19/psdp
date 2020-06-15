-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2020 pada 17.13
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sionlab`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menu`
--

CREATE TABLE `cms_menu` (
  `id` int(11) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `allowed_level` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT '1',
  `urutan` int(11) NOT NULL,
  `grup` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_menu`
--

INSERT INTO `cms_menu` (`id`, `alias`, `nama`, `deskripsi`, `allowed_level`, `url`, `aktif`, `urutan`, `grup`) VALUES
(3, 'menu', 'Menu', 'Untuk memanajemen menu administrasi (back-end)', '+1+', 'cms/manage/menu', 1, 7, 1),
(89, 'reset_pass', 'Reset Password User', 'Reset Password User', '+1+', 'apl/reset', 1, 1, 3),
(35, 'semua', 'semua', 'untuk login semua', '+1+2+3+4+5+6+8+7+', 'cms/login/admin_page', 1, 1, 3),
(88, 'crud_user', 'Tambah,edit,delete user', 'tambah_edit_delete', '+1+2+3+4+5+6+7+8+', 'apl/crud', 1, 1, 3),
(102, 'log', 'Log System', 'Log System', '+1+', 'cms/catatan/catat', 1, 2, 1),
(136, 'satuan', 'Satuan', '-', '+1+2+4+', 'master/satuan', 1, 9, 2),
(104, 'status_pak', 'Home', 'Status Pengajuan PAK', '+1+2+3+4+5+6+7+8+', 'pak/dashboard/status_pak', 1, 1, 101),
(135, 'nama_bahan', 'Nama Bahan', '-', '+1+2+4+', 'master/master_bahan', 1, 8, 2),
(134, 'nama_alat', 'Nama Alat', '-', '+1+2+4+', 'master/nama_alat', 1, 7, 2),
(131, 'kategori_alat_bahan', 'Kategori Alat dan Bahan', '-', '+1+2+4+', 'master/kategori_alat_bahan', 1, 4, 2),
(128, 'instansi', 'Instansi', '-', '+1+2+', 'master/instansi', 1, 1, 2),
(137, 'pengajuan_alat', 'Pengajuan Alat', '-', '+1+3+4+5+7+', 'pengajuan/pengajuan_alat', 1, 1, 5),
(138, 'kelola_alat', 'Kelola Alat', '-', '+1+4+', 'kelola/kelola_alat', 1, 1, 4),
(139, 'periode_pengajuan', 'Periode Pengajuan', '-', '+1+3+', 'pengajuan/periode_pengajuan', 1, 2, 5),
(140, 'sumber_pendanaan', 'Sumber Pendanaan', '-', '+1+3+', 'master/sumber_pendanaan', 1, 10, 2),
(141, 'kelola_bahan', 'Kelola Bahan', '-', '+1+4+', 'kelola/kelola_bahan', 1, 2, 4),
(142, 'kelola_penyimpanan', 'Kelola Penyimpanan', '-', '+1+4+', 'kelola/kelola_penyimpanan', 1, 3, 4),
(143, 'pengajuan_bahan', 'Pengajuan Bahan ', '-', '+1+3+4+5+7+', 'pengajuan/pengajuan_bahan', 1, 3, 5),
(144, 'buat_peminjaman', 'Buat Peminjaman', '-', '+1+4+5+6+7+8+', 'peminjaman/buat_peminjaman', 1, 1, 6),
(145, 'cek_status_peminjaman', 'Cek Status Peminjaman', '-', '+1+4+5+6+7+8+', 'peminjaman/cek_status_peminjaman', 1, 2, 6),
(146, 'kelola_peminjaman', 'Kelola Peminjaman', '-', '+1+4+', 'kelola/kelola_penyimpanan', 1, 4, 4),
(147, 'kelola_jatuh_tempo', 'Kelola Jatuh Tempo', '-', '+1+4+', 'kelola/kelola_jatuh_tempo', 1, 5, 4),
(148, 'kelola_penggantian', 'Kelola Penggantian', '-', '+1+4+', 'kelola/kelola_penggantian', 1, 6, 4),
(149, 'kelola_user', 'Kelola User', '-', '+1+2+', 'kelola/kelola_user', 1, 7, 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cms_menu`
--
ALTER TABLE `cms_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cms_menu`
--
ALTER TABLE `cms_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
