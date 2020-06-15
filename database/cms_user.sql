-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2020 pada 17.38
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
-- Struktur dari tabel `cms_user`
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
-- Dumping data untuk tabel `cms_user`
--

INSERT INTO `cms_user` (`id`, `nama`, `jenis_kelamin`, `gambar`, `email`, `username`, `password`, `level`, `bagian`, `no_hp`, `last_login`) VALUES
(1, 'Kholiq', NULL, NULL, 'kholiq', 'kholiq', '*F1378C253EEBE31F135CC41EF4A98D077EB98F5D', 1, 1, '9', '2020-06-03 20:40:59'),
(17, 'admin', '1', 'files/2020/05/24dfeeb34e92bc2ddf1aca0bf3c2ce98.jpg', 'admin', 'admin', '*6D45FD76D5E9C6A404E39C25106A7F032659ACB8', 2, 0, '88888888888', '2020-06-03 21:51:58'),
(18, 'kepala_lab', '2', 'files/2020/05/b9bc5717ad559fdd46b73b0c369b089a.jpg', 'kepala_lab', 'kepala_lab', '*9575C0046B29C853A98731B0053B780947E0524B', 3, 1, '9', NULL),
(19, 'laboran', '1', 'files/2020/05/21c379d76f68969567b1b2e5c40e48f3.jpg', 'laboran', 'laboran', '*C7E1AAB5C1E92CE2835AB5E35BC54EAC2D290817', 4, 1, '9', '2020-06-03 21:48:20'),
(20, 'koordinator_lab', '1', 'files/2020/05/ae5395d6d32f2bbdfc3a08767e41152d.jpg', 'koordinator_lab', 'koordinator_lab', '*EC2A9F2AC0FF65E0B34FB7C1CE20030855EFF156', 5, 1, '9', NULL),
(21, 'asisten', '2', 'files/2020/05/ea2fbde56d3e1f0a302267e4d4f7b04f.jpg', 'asisten', 'asisten', '*34D4F44511DF537724AECB9C20245800A653C680', 6, 1, '9', NULL),
(23, 'mahasiswa', '2', 'files/2020/05/3448f7f0daa177766c9142c47441a803.jpg', 'mahasiswa', 'mahasiswa', '*58B1E0151C7DBF4DF0D59581B6C5C4E031D9F62A', 8, 1, '9', '2020-05-29 13:09:24'),
(30, 'dosen', '1', 'files/2020/06/106292ac4c5fa37adf7eb3cc11880936.jpg', 'dosen', 'dosen', '*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710', 7, 1, '9', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
