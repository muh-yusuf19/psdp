-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2020 at 03:13 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psdp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cek_status_peminjaman`
--

CREATE TABLE `cek_status_peminjaman` (
  `id` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `kategori_peminjaman` varchar(255) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cek_status_peminjaman`
--

INSERT INTO `cek_status_peminjaman` (`id`, `id_peminjaman`, `kategori_peminjaman`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
(3, 7, 'kusus', '2000-01-01', '2000-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `cms_captcha`
--

CREATE TABLE `cms_captcha` (
  `captcha_id` bigint(13) NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_captcha`
--

INSERT INTO `cms_captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(3265, 1592200144, '::1', '808318'),
(3264, 1592200059, '::1', '483415'),
(3267, 1592225576, '::1', '853362'),
(3266, 1592225576, '::1', '977760');

-- --------------------------------------------------------

--
-- Table structure for table `cms_log`
--

CREATE TABLE `cms_log` (
  `id_log` int(30) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `kegiatan` text,
  `user` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_log`
--

INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(1, '::1', '', '2019-01-30 20:39:29', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(2, '::1', '', '2019-11-05 17:45:51', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(3, '::1', '', '2019-11-05 17:47:27', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>001/kalingga/11/2019</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2019-11-05</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-02-01</b></li><li><b>fsc_cert</b> dengan value <b>34124</b></li><li><b>fsc_lisence</b> dengan value <b>524554</b></li><li><b>buyer_po_nr</b> dengan value <b>778</b></li><li><b>pembayaran</b> dengan value <b>2</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'superadmin'),
(4, '::1', '', '2020-03-10 17:15:13', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(5, '::1', '', '2020-03-12 09:55:56', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Instansi</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>instansi</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/instansi</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'superadmin'),
(6, '::1', '', '2020-03-12 13:25:13', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(7, '::1', '', '2020-03-12 13:39:55', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>1</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(8, '::1', '', '2020-03-12 13:40:20', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>logo</b> dengan value <b>files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(9, '::1', '', '2020-03-12 13:40:52', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(10, '::1', '', '2020-05-08 07:34:20', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(11, '::1', '', '2020-05-08 07:47:34', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'superadmin'),
(12, '::1', '', '2020-05-08 07:47:56', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>lihat</b></li></ul>', 'superadmin'),
(13, '::1', '', '2020-05-08 09:37:33', 'Login  by Kholiq', 'kholiq'),
(14, '::1', '', '2020-05-08 09:39:40', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop Besar</b></li></ul>', 'kholiq'),
(15, '::1', '', '2020-06-10 16:57:28', 'Login  by Kholiq', 'kholiq'),
(16, '::1', '', '2020-06-10 17:03:10', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>1</b></li><li><b>stock</b> dengan value <b>2</b></li><li><b>stock_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>4</b></li><li><b>pendanaan</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>10000</b></li><li><b>kondisi</b> dengan value <b>rusak</b></li></ul>', 'kholiq'),
(17, '::1', '', '2020-06-10 17:03:20', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama_bahan</b> dengan value <b>1</b></li><li><b>satuan_bahan</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>1</b></li><li><b>stock</b> dengan value <b>2</b></li><li><b>stock_minimal</b> dengan value <b>3</b></li><li><b>lokasi</b> dengan value <b>4</b></li><li><b>pendanaan</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>10000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq'),
(18, '::1', '', '2020-06-10 18:04:03', 'Logout SILADU by Kholiq', 'kholiq'),
(19, '::1', '', '2020-06-10 18:04:18', 'Login  by Kholiq', 'kholiq'),
(20, '::1', '', '2020-06-10 22:19:46', 'Login  by Kholiq', 'kholiq'),
(21, '::1', '', '2020-06-10 22:24:39', 'Logout INVENTORY by ', 'Tamu'),
(22, '::1', '', '2020-06-10 22:25:10', 'Login  by Kholiq', 'kholiq'),
(23, '::1', '', '2020-06-10 22:33:53', 'Logout INVENTORY by ', 'Tamu'),
(24, '::1', '', '2020-06-10 22:34:18', 'Login  by User01', 'user01'),
(25, '::1', '', '2020-06-12 20:56:57', 'Login  by User01', 'user01'),
(26, '::1', '', '2020-06-12 21:57:53', 'Logout INVENTORY by User01', 'user01'),
(27, '::1', '', '2020-06-12 22:00:13', 'Login  by User01', 'user01'),
(28, '::1', '', '2020-06-12 22:10:29', 'Logout INVENTORY by User01', 'user01'),
(29, '::1', '', '2020-06-12 22:10:48', 'Login  by User01', 'user01'),
(30, '::1', '', '2020-06-12 23:59:25', 'Login  by User01', 'user01'),
(31, '::1', '', '2020-06-13 00:15:30', 'Logout INVENTORY by ', 'Tamu'),
(32, '::1', '', '2020-06-13 00:15:48', 'Login  by User01', 'user01'),
(33, '::1', '', '2020-06-13 01:50:33', 'Logout INVENTORY by User01', 'user01'),
(34, '::1', '', '2020-06-13 01:50:54', 'Login  by User01', 'user01'),
(35, '::1', '', '2020-06-13 01:52:06', 'Login  by User01', 'user01'),
(36, '::1', '', '2020-06-13 13:03:58', 'Login  by User01', 'user01'),
(37, '::1', '', '2020-06-13 13:38:19', 'Login  by User01', 'user01'),
(38, '::1', '', '2020-06-13 13:41:18', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>nama_barang</b> dengan value <b>Microphone</b></li><li><b>satuan_barang</b> dengan value <b>buah</b></li><li><b>stock_barang</b> dengan value <b>3</b></li><li><b>harga_barang</b> dengan value <b>100000</b></li><li><b>tgl_masuk</b> dengan value <b>2020-06-20</b></li><li><b>keterangan</b> dengan value <b>kondisi baik</b></li></ul>', 'user01'),
(39, '::1', '', '2020-06-13 13:42:52', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>nama_barang</b> dengan value <b>Meja besar</b></li><li><b>satuan_barang</b> dengan value <b>buah</b></li><li><b>stock_barang</b> dengan value <b>3</b></li><li><b>harga_barang</b> dengan value <b>100000</b></li><li><b>tgl_masuk</b> dengan value <b>2020-06-12</b></li><li><b>keterangan</b> dengan value <b>kondisi baik</b></li></ul>', 'user01'),
(40, '::1', '', '2020-06-13 13:44:22', 'Login  by User01', 'user01'),
(41, '::1', '', '2020-06-13 14:16:22', 'Logout INVENTORY by User01', 'user01'),
(42, '::1', '', '2020-06-13 14:16:41', 'Login  by User01', 'user01'),
(43, '::1', '', '2020-06-13 14:20:33', 'Login  by User01', 'user01'),
(44, '::1', '', '2020-06-13 14:25:00', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>12</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>natrium</b></li><li><b>tahun</b> dengan value <b>2019</b></li></ul>', 'user01'),
(45, '::1', '', '2020-06-13 14:30:27', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama_barang</b> dengan value <b>Microphone</b></li><li><b>satuan_barang</b> dengan value <b>buah</b></li><li><b>stock_barang</b> dengan value <b>3</b></li><li><b>harga_barang</b> dengan value <b>100000</b></li><li><b>tgl_masuk</b> dengan value <b>2020-06-20</b></li><li><b>keterangan</b> dengan value <b>kondisi buruk</b></li></ul>', 'user01'),
(46, '::1', '', '2020-06-13 14:30:38', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama_barang</b> dengan value <b>Microphone</b></li><li><b>satuan_barang</b> dengan value <b>buah</b></li><li><b>stock_barang</b> dengan value <b>4</b></li><li><b>harga_barang</b> dengan value <b>100000</b></li><li><b>tgl_masuk</b> dengan value <b>kosong</b></li><li><b>keterangan</b> dengan value <b>kondisi buruk</b></li></ul>', 'user01'),
(47, '::1', '', '2020-06-13 14:36:36', 'Menghapus laporan dengan id 3', 'user01'),
(48, '::1', '', '2020-06-13 14:37:28', 'Login  by User01', 'user01'),
(49, '::1', '', '2020-06-13 14:49:13', 'Login  by User01', 'user01'),
(50, '::1', '', '2020-06-13 14:50:13', 'Menambah Kelola kelola_penyimpanan dengan data sbb:<br />\r\n                    <ul><li><b>tahun_anggaran</b> dengan value <b>2020</b></li><li><b>total_anggaran</b> dengan value <b>1000000</b></li></ul>', 'user01'),
(51, '::1', '', '2020-06-13 14:53:25', 'Mengedit Kelola kelola_penyimpanandengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li></ul>', 'user01'),
(52, '::1', '', '2020-06-13 14:54:13', 'Mengedit Kelola kelola_penyimpanandengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>tahun_anggaran</b> dengan value <b>2019</b></li><li><b>total_anggaran</b> dengan value <b>1000000</b></li></ul>', 'user01'),
(53, '::1', '', '2020-06-13 14:55:26', 'Logout INVENTORY by ', 'Tamu'),
(54, '::1', '', '2020-06-13 14:55:49', 'Login  by User01', 'user01'),
(55, '::1', '', '2020-06-13 21:57:01', 'Login  by User01', 'user01'),
(56, '::1', '', '2020-06-13 21:58:02', 'Mengedit Kelola kelola_penyimpanandengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>tahun_anggaran</b> dengan value <b>2020</b></li><li><b>total_anggaran</b> dengan value <b>1000000</b></li></ul>', 'user01'),
(57, '::1', '', '2020-06-14 13:58:28', 'Login  by User01', 'user01'),
(58, '::1', '', '2020-06-14 14:57:26', 'Menambah Kelola kelola_penyimpanan dengan data sbb:<br />\r\n                    <ul><li><b>nama_barang</b> dengan value <b>Kursi</b></li><li><b>satuan_barang</b> dengan value <b>buah</b></li><li><b>jmlh_barang</b> dengan value <b>2</b></li><li><b>harga_barang</b> dengan value <b>100000</b></li><li><b>alasan_pengajuan</b> dengan value <b>rusak</b></li><li><b>alamat_pengajuan</b> dengan value <b>semarang</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-15</b></li></ul>', 'user01'),
(59, '::1', '', '2020-06-14 15:58:35', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama_barang</b> dengan value <b>Meja Besar</b></li><li><b>satuan_barang</b> dengan value <b>Buah</b></li><li><b>harga_barang</b> dengan value <b>3000000</b></li></ul>', 'user01'),
(60, '::1', '', '2020-06-14 16:03:19', 'Menambah Kelola kelola_penyimpanan dengan data sbb:<br />\r\n                    <ul><li><b>tahun_anggaran</b> dengan value <b>2018</b></li><li><b>total_anggaran</b> dengan value <b>40000</b></li></ul>', 'user01'),
(61, '::1', '', '2020-06-14 16:03:22', 'Menghapus laporan dengan id 7', 'user01'),
(62, '::1', '', '2020-06-14 16:05:56', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama_barang</b> dengan value <b>Meja Besar</b></li><li><b>satuan_barang</b> dengan value <b>Buah</b></li><li><b>harga_barang</b> dengan value <b>3000000</b></li></ul>', 'user01'),
(63, '::1', '', '2020-06-14 16:07:29', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama_barang</b> dengan value <b>Meja Besar</b></li><li><b>satuan_barang</b> dengan value <b>Buah</b></li><li><b>stock_barang</b> dengan value <b>7</b></li><li><b>harga_barang</b> dengan value <b>3000000</b></li><li><b>tgl_masuk</b> dengan value <b>kosong</b></li><li><b>keterangan</b> dengan value <b>Suara terlalu kecil</b></li></ul>', 'user01'),
(64, '::1', '', '2020-06-14 16:08:18', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>kosong</b></li><li><b>nama_barang</b> dengan value <b>Komputer</b></li><li><b>satuan_barang</b> dengan value <b>buah</b></li><li><b>stock_barang</b> dengan value <b>5</b></li><li><b>harga_barang</b> dengan value <b>1000000</b></li><li><b>tgl_masuk</b> dengan value <b>2020-06-01</b></li><li><b>keterangan</b> dengan value <b>kondisi baik</b></li></ul>', 'user01'),
(65, '::1', '', '2020-06-14 16:08:34', 'Mengedit Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_barang</b> dengan value <b>Komputer</b></li><li><b>satuan_barang</b> dengan value <b>buah</b></li><li><b>stock_barang</b> dengan value <b>7</b></li><li><b>harga_barang</b> dengan value <b>1000000</b></li><li><b>tgl_masuk</b> dengan value <b>kosong</b></li><li><b>keterangan</b> dengan value <b>kondisi baik</b></li></ul>', 'user01'),
(66, '::1', '', '2020-06-14 16:09:42', 'Menambah Kelola kelola_penyimpanan dengan data sbb:<br />\r\n                    <ul><li><b>tahun_anggaran</b> dengan value <b>2018</b></li><li><b>total_anggaran</b> dengan value <b>1000000</b></li></ul>', 'user01'),
(67, '::1', '', '2020-06-14 16:09:52', 'Mengedit Kelola kelola_penyimpanandengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>tahun_anggaran</b> dengan value <b>2022</b></li><li><b>total_anggaran</b> dengan value <b>1000000</b></li></ul>', 'user01'),
(68, '::1', '', '2020-06-14 16:12:27', 'Menghapus laporan dengan id 3', 'user01'),
(69, '::1', '', '2020-06-14 16:12:37', 'Menghapus laporan dengan id 6', 'user01'),
(70, '::1', '', '2020-06-14 16:14:12', 'Menghapus laporan dengan id 2', 'user01'),
(71, '::1', '', '2020-06-15 09:37:34', 'Login  by User01', 'user01'),
(72, '::1', '', '2020-06-15 12:47:37', 'Logout INVENTORY by ', 'Tamu'),
(73, '::1', '', '2020-06-15 12:49:03', 'Login  by User01', 'user01'),
(74, '::1', '', '2020-06-15 13:12:02', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>User02</b></li><li><b>email</b> dengan value <b>user02@mail.com</b></li><li><b>username</b> dengan value <b>user02</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*B3AD996B12F211BEA47A7C666CC136FB26DC96AF</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/2b3fc722b44ff598c7be78a1afb3d685.jpg</b></li><li><b>no_hp</b> dengan value <b>0852</b></li></ul>', 'user01'),
(75, '::1', '', '2020-06-15 13:12:22', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>31</b></li><li><b>nama</b> dengan value <b>User02</b></li><li><b>email</b> dengan value <b>user02@mail.com</b></li><li><b>username</b> dengan value <b>user02</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>0852</b></li></ul>', 'user01'),
(76, '::1', '', '2020-06-15 13:53:05', 'Menghapus laporan dengan id 31', 'user01');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menu`
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
-- Dumping data for table `cms_menu`
--

INSERT INTO `cms_menu` (`id`, `alias`, `nama`, `deskripsi`, `allowed_level`, `url`, `aktif`, `urutan`, `grup`) VALUES
(3, 'menu', 'Menu', 'Untuk memanajemen menu administrasi (back-end)', '+1+', 'cms/manage/menu', 0, 7, 1),
(89, 'reset_pass', 'Reset Password User', 'Reset Password User', '+1+', 'apl/reset', 1, 1, 3),
(35, 'semua', 'semua', 'untuk login semua', '+1+2+3+4+5+6+8+7+', 'cms/login/admin_page', 1, 1, 3),
(88, 'crud_user', 'Tambah,edit,delete user', 'tambah_edit_delete', '+1+2+3+4+5+6+7+8+', 'apl/crud', 1, 1, 3),
(102, 'log', 'Log System', 'Log System', '+1+', 'cms/catatan/catat', 0, 2, 1),
(136, 'satuan', 'Satuan', '-', '+1+2+4+', 'master/satuan', 1, 9, 2),
(104, 'status_pak', 'Home', 'Status Pengajuan PAK', '+1+2+3+4+5+6+7+8+', 'pak/dashboard/status_pak', 1, 1, 101),
(135, 'nama_bahan', 'Nama Bahan', '-', '+1+2+4+', 'master/master_bahan', 1, 8, 2),
(134, 'nama_alat', 'Nama Alat', '-', '+1+2+4+', 'master/nama_alat', 1, 7, 2),
(131, 'kategori_alat_bahan', 'Kategori Alat dan Bahan', '-', '+1+2+4+', 'master/kategori_alat_bahan', 1, 4, 2),
(128, 'instansi', 'Instansi', '-', '+1+2+', 'master/instansi', 1, 1, 2),
(138, 'kelola_alat', 'Kelola Barang', '-', '+1+4+', 'kelola/kelola_alat', 1, 1, 4),
(140, 'sumber_pendanaan', 'Sumber Pendanaan', '-', '+1+3+', 'master/sumber_pendanaan', 1, 10, 2),
(142, 'kelola_penyimpanan', 'Kelola Anggaran', '-', '+1+4+', 'kelola/kelola_penyimpanan', 1, 3, 4),
(144, 'buat_peminjaman', 'Buat Peminjaman', '-', '+1+4+5+6+7+8+', 'peminjaman/buat_peminjaman', 0, 1, 6),
(145, 'cek_status_peminjaman', 'Cek Status Peminjaman', '-', '+1+4+5+6+7+8+', 'peminjaman/cek_status_peminjaman', 0, 2, 6),
(146, 'pengajuan_barang', 'Pengajuan Barang', '-', '+1+4+', 'kelola/pengajuan_barang', 1, 4, 4),
(149, 'kelola_user', 'Kelola User', '-', '+1+2+', 'kelola/kelola_user', 1, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menu_grup`
--

CREATE TABLE `cms_menu_grup` (
  `id_grup_menu` int(11) NOT NULL,
  `nama_grup` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_menu_grup`
--

INSERT INTO `cms_menu_grup` (`id_grup_menu`, `nama_grup`, `icon`) VALUES
(3, 'Hidden Menu', NULL),
(1, 'Manajemen', 'fa fa-fw fa-book'),
(2, 'Master', 'fa fa-fw fa-archive'),
(101, 'Dashboard', 'fa fa-dashboard'),
(4, 'Kelola', 'fa fa-fw fa-tasks'),
(5, 'Pengajuan', 'fa fa-fw fa-envelope'),
(6, 'Peminjaman', 'fa fa-fw fa-pen-square');

-- --------------------------------------------------------

--
-- Table structure for table `cms_online`
--

CREATE TABLE `cms_online` (
  `user_id` int(5) NOT NULL,
  `last_activity` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_online`
--

INSERT INTO `cms_online` (`user_id`, `last_activity`) VALUES
(2, ''),
(3, '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `bagian` int(11) DEFAULT '1',
  `no_hp` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cms_user`
--

INSERT INTO `cms_user` (`id`, `nama`, `jenis_kelamin`, `gambar`, `email`, `username`, `password`, `level`, `bagian`, `no_hp`, `last_login`) VALUES
(1, 'User01', NULL, NULL, 'user@mail.com', 'user01', '*F1378C253EEBE31F135CC41EF4A98D077EB98F5D', 1, 1, '9', '2020-06-15 12:49:03'),
(17, 'admin', '1', 'files/2020/05/24dfeeb34e92bc2ddf1aca0bf3c2ce98.jpg', 'admin', 'admin', '*6D45FD76D5E9C6A404E39C25106A7F032659ACB8', 2, 0, '88888888888', '2020-06-03 21:51:58'),
(18, 'kepala_lab', '2', 'files/2020/05/b9bc5717ad559fdd46b73b0c369b089a.jpg', 'kepala_lab', 'kepala_lab', '*9575C0046B29C853A98731B0053B780947E0524B', 3, 1, '9', NULL),
(19, 'laboran', '1', 'files/2020/05/21c379d76f68969567b1b2e5c40e48f3.jpg', 'laboran', 'laboran', '*C7E1AAB5C1E92CE2835AB5E35BC54EAC2D290817', 4, 1, '9', '2020-06-03 21:48:20'),
(20, 'koordinator_lab', '1', 'files/2020/05/ae5395d6d32f2bbdfc3a08767e41152d.jpg', 'koordinator_lab', 'koordinator_lab', '*EC2A9F2AC0FF65E0B34FB7C1CE20030855EFF156', 5, 1, '9', NULL),
(21, 'asisten', '2', 'files/2020/05/ea2fbde56d3e1f0a302267e4d4f7b04f.jpg', 'asisten', 'asisten', '*34D4F44511DF537724AECB9C20245800A653C680', 6, 1, '9', NULL),
(23, 'mahasiswa', '2', 'files/2020/05/3448f7f0daa177766c9142c47441a803.jpg', 'mahasiswa', 'mahasiswa', '*58B1E0151C7DBF4DF0D59581B6C5C4E031D9F62A', 8, 1, '9', '2020-05-29 13:09:24'),
(30, 'dosen', '1', 'files/2020/06/106292ac4c5fa37adf7eb3cc11880936.jpg', 'dosen', 'dosen', '*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710', 7, 1, '9', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `id` int(11) NOT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`id`, `jenis_kelamin`) VALUES
(1, 'Laki-Laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori_alat_bahan` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori_alat_bahan`, `keterangan`) VALUES
(1, 'kategori1', 'alat'),
(4, 'katgeori 2', 'bahan');

-- --------------------------------------------------------

--
-- Table structure for table `kelola_alat`
--

CREATE TABLE `kelola_alat` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(225) NOT NULL,
  `satuan_barang` varchar(225) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelola_bahan`
--

CREATE TABLE `kelola_bahan` (
  `id` int(11) NOT NULL,
  `nama_bahan` varchar(150) NOT NULL,
  `satuan_bahan` varchar(100) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `stock` int(11) NOT NULL,
  `stock_minimal` int(11) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `pendanaan` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `kondisi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelola_bahan`
--

INSERT INTO `kelola_bahan` (`id`, `nama_bahan`, `satuan_bahan`, `kategori`, `stock`, `stock_minimal`, `lokasi`, `pendanaan`, `harga`, `kondisi`) VALUES
(1, '1', '1', '1', 2, 3, '4', '3', 10000, 'baik');

-- --------------------------------------------------------

--
-- Table structure for table `kelola_barang`
--

CREATE TABLE `kelola_barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `satuan_barang` varchar(100) NOT NULL,
  `stock_barang` int(11) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `tgl_masuk` datetime NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelola_barang`
--

INSERT INTO `kelola_barang` (`id`, `nama_barang`, `satuan_barang`, `stock_barang`, `harga_barang`, `tgl_masuk`, `keterangan`) VALUES
(1, 'Meja Besar', 'Buah', 7, 3000000, '0000-00-00 00:00:00', 'Suara terlalu kecil'),
(2, 'Microphone', 'buah', 4, 100000, '0000-00-00 00:00:00', 'kondisi buruk');

-- --------------------------------------------------------

--
-- Table structure for table `kelola_jatuh_tempo`
--

CREATE TABLE `kelola_jatuh_tempo` (
  `id` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `nama_peminjam` varchar(255) NOT NULL,
  `nomor_induk` int(11) NOT NULL,
  `status_user` varchar(255) NOT NULL,
  `kategori_peminjaman` varchar(255) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelola_jatuh_tempo`
--

INSERT INTO `kelola_jatuh_tempo` (`id`, `id_peminjaman`, `nama_peminjam`, `nomor_induk`, `status_user`, `kategori_peminjaman`, `tanggal_kembali`, `status`) VALUES
(4, 7, 'jamesbon', 505, 'mahasiswa', 'umum', '2020-02-03', 'ada');

-- --------------------------------------------------------

--
-- Table structure for table `kelola_penyimpanan`
--

CREATE TABLE `kelola_penyimpanan` (
  `id` int(10) NOT NULL,
  `tahun_anggaran` varchar(50) NOT NULL,
  `total_anggaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelola_penyimpanan`
--

INSERT INTO `kelola_penyimpanan` (`id`, `tahun_anggaran`, `total_anggaran`) VALUES
(8, '2022', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `master_bagian`
--

CREATE TABLE `master_bagian` (
  `id` int(11) NOT NULL,
  `bagian` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_bagian`
--

INSERT INTO `master_bagian` (`id`, `bagian`) VALUES
(0, 'NonAktif'),
(1, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `master_bahan`
--

CREATE TABLE `master_bahan` (
  `id` int(11) NOT NULL,
  `kode` varchar(4) DEFAULT NULL,
  `jenis_bahan` varchar(10) DEFAULT NULL,
  `nama_bahan` varchar(100) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_bahan`
--

INSERT INTO `master_bahan` (`id`, `kode`, `jenis_bahan`, `nama_bahan`, `tahun`) VALUES
(1, 'BK01', 'Buku', 'Lean UX', 2010),
(2, '12', 'cair', 'natrium', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `master_instansi`
--

CREATE TABLE `master_instansi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `kementerian` varchar(255) DEFAULT NULL,
  `tahun_ajaran` varchar(255) DEFAULT NULL,
  `nama_fakultas` varchar(255) DEFAULT NULL,
  `nama_dekan` varchar(255) DEFAULT NULL,
  `alamat_fakultas` varchar(255) DEFAULT NULL,
  `telepon_fakultas` varchar(255) DEFAULT NULL,
  `nama_jurusan` varchar(255) DEFAULT NULL,
  `nama_kajur` varchar(255) DEFAULT NULL,
  `nama_kalab` varchar(255) DEFAULT NULL,
  `telepon_jurusan` varchar(255) DEFAULT NULL,
  `alamat_jurusan` varchar(255) DEFAULT NULL,
  `deskripsi_jurusan` varchar(255) DEFAULT NULL,
  `peta_jurusan` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `zona_waktu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_instansi`
--

INSERT INTO `master_instansi` (`id`, `nama`, `alamat`, `kode`, `provinsi`, `email`, `website`, `logo`, `telepon`, `kementerian`, `tahun_ajaran`, `nama_fakultas`, `nama_dekan`, `alamat_fakultas`, `telepon_fakultas`, `nama_jurusan`, `nama_kajur`, `nama_kalab`, `telepon_jurusan`, `alamat_jurusan`, `deskripsi_jurusan`, `peta_jurusan`, `favicon`, `zona_waktu`) VALUES
(1, 'Universitas Negeri Semarang', 'Kampus Sekaran, Gunungpati, Semarang', '', '', '', '', 'files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `master_level`
--

CREATE TABLE `master_level` (
  `id` int(11) NOT NULL,
  `level` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_level`
--

INSERT INTO `master_level` (`id`, `level`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'Kepala Lab'),
(4, 'Laboran'),
(5, 'Koordinator Lab'),
(6, 'Assisten Lab'),
(7, 'Dosen'),
(8, 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `master_nama_alat`
--

CREATE TABLE `master_nama_alat` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `nama_alat` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_nama_alat`
--

INSERT INTO `master_nama_alat` (`id`, `kode`, `nama_alat`, `keterangan`) VALUES
(1, 'MK01', 'Mikroskop', 'lihat'),
(2, 'MK02', 'Mikroskop Besar', 'Mikroskop Besar');

-- --------------------------------------------------------

--
-- Table structure for table `master_satuan`
--

CREATE TABLE `master_satuan` (
  `id` int(11) NOT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_satuan`
--

INSERT INTO `master_satuan` (`id`, `nama_satuan`, `keterangan`) VALUES
(1, 'mater', 'umum'),
(3, 'buah', 'kusus');

-- --------------------------------------------------------

--
-- Table structure for table `master_sumber_pendanaan`
--

CREATE TABLE `master_sumber_pendanaan` (
  `id` int(11) NOT NULL,
  `sumber_pendanaan` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_sumber_pendanaan`
--

INSERT INTO `master_sumber_pendanaan` (`id`, `sumber_pendanaan`, `status`) VALUES
(3, 'fakultas', 'tidak ada');

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE `master_user` (
  `id` int(11) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_user`
--

INSERT INTO `master_user` (`id`, `nip`, `level`) VALUES
(2, 'jihan', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_barang`
--

CREATE TABLE `pengajuan_barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `satuan_barang` varchar(100) NOT NULL,
  `jmlh_barang` int(11) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `alasan_pengajuan` varchar(200) NOT NULL,
  `alamat_pengajuan` text NOT NULL,
  `tgl_pengajuan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengajuan_barang`
--

INSERT INTO `pengajuan_barang` (`id`, `nama_barang`, `satuan_barang`, `jmlh_barang`, `harga_barang`, `alasan_pengajuan`, `alamat_pengajuan`, `tgl_pengajuan`) VALUES
(1, 'Meja Besar', 'Buah', 4, 3000000, 'Meja sudah rusak', 'Semarang', '2020-06-14 06:55:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cek_status_peminjaman`
--
ALTER TABLE `cek_status_peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_captcha`
--
ALTER TABLE `cms_captcha`
  ADD PRIMARY KEY (`captcha_id`) USING BTREE,
  ADD KEY `word` (`word`) USING BTREE;

--
-- Indexes for table `cms_log`
--
ALTER TABLE `cms_log`
  ADD PRIMARY KEY (`id_log`) USING BTREE;

--
-- Indexes for table `cms_menu`
--
ALTER TABLE `cms_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  ADD PRIMARY KEY (`id_grup_menu`) USING BTREE;

--
-- Indexes for table `cms_online`
--
ALTER TABLE `cms_online`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- Indexes for table `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelola_alat`
--
ALTER TABLE `kelola_alat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelola_bahan`
--
ALTER TABLE `kelola_bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelola_barang`
--
ALTER TABLE `kelola_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelola_jatuh_tempo`
--
ALTER TABLE `kelola_jatuh_tempo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelola_penyimpanan`
--
ALTER TABLE `kelola_penyimpanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bagian`
--
ALTER TABLE `master_bagian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bahan`
--
ALTER TABLE `master_bahan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_instansi`
--
ALTER TABLE `master_instansi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_level`
--
ALTER TABLE `master_level`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_satuan`
--
ALTER TABLE `master_satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_sumber_pendanaan`
--
ALTER TABLE `master_sumber_pendanaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pengajuan_barang`
--
ALTER TABLE `pengajuan_barang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cek_status_peminjaman`
--
ALTER TABLE `cek_status_peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_captcha`
--
ALTER TABLE `cms_captcha`
  MODIFY `captcha_id` bigint(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3268;

--
-- AUTO_INCREMENT for table `cms_log`
--
ALTER TABLE `cms_log`
  MODIFY `id_log` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `cms_menu`
--
ALTER TABLE `cms_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  MODIFY `id_grup_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelola_alat`
--
ALTER TABLE `kelola_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelola_bahan`
--
ALTER TABLE `kelola_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kelola_barang`
--
ALTER TABLE `kelola_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kelola_jatuh_tempo`
--
ALTER TABLE `kelola_jatuh_tempo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelola_penyimpanan`
--
ALTER TABLE `kelola_penyimpanan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `master_bagian`
--
ALTER TABLE `master_bagian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_bahan`
--
ALTER TABLE `master_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_instansi`
--
ALTER TABLE `master_instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_level`
--
ALTER TABLE `master_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_satuan`
--
ALTER TABLE `master_satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_sumber_pendanaan`
--
ALTER TABLE `master_sumber_pendanaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengajuan_barang`
--
ALTER TABLE `pengajuan_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
