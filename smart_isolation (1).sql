-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2021 pada 16.21
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_isolation`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat`
--

CREATE TABLE `alat` (
  `id_alat` varchar(5) NOT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `id_petugas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alat`
--

INSERT INTO `alat` (`id_alat`, `tanggal_peminjaman`, `tanggal_pengembalian`, `id_petugas`) VALUES
('AL001', '2021-07-15', '2021-07-29', 'PT001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kesehatan`
--

CREATE TABLE `data_kesehatan` (
  `id_alat` varchar(5) NOT NULL,
  `id_pasien` varchar(5) NOT NULL,
  `id_petugas` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `data_suhu_tubuh` float NOT NULL,
  `data_kadar_saturasi` float NOT NULL,
  `data_detak_jantung` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_kesehatan`
--

INSERT INTO `data_kesehatan` (`id_alat`, `id_pasien`, `id_petugas`, `tanggal`, `waktu`, `data_suhu_tubuh`, `data_kadar_saturasi`, `data_detak_jantung`) VALUES
('AL001', 'PS001', 'PT001', '2021-07-15', '15:45:00', 34, 94, 100),
('AL001', 'PS001', 'PT001', '2021-07-15', '15:48:05', 34, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-15', '16:18:02', 34, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-15', '16:24:27', 34, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-15', '16:25:44', 36, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-15', '16:29:38', 34, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-15', '16:30:09', 34, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-15', '16:32:17', 34, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-15', '16:32:22', 34, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-15', '16:32:28', 34, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-15', '16:37:28', 34, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-15', '16:40:14', 34, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-17', '14:51:38', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-17', '14:52:07', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-17', '14:52:16', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-17', '14:57:23', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-17', '14:57:27', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-17', '14:57:33', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-17', '14:57:47', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-17', '14:57:56', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-17', '14:57:59', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-17', '14:58:05', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-17', '14:58:12', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-17', '14:58:34', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-17', '14:59:06', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-18', '11:14:25', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-18', '11:14:45', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-18', '11:14:58', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-18', '11:16:27', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-18', '11:16:32', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-18', '12:03:33', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-18', '12:05:12', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-18', '12:06:42', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-18', '13:24:50', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-18', '13:26:57', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-18', '13:44:36', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '09:35:00', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-19', '09:35:14', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-19', '09:37:09', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-19', '09:37:24', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '09:37:29', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '09:37:40', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '09:37:53', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '09:37:59', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '09:38:13', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '09:38:23', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '09:38:26', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '09:38:49', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '09:38:55', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '11:21:27', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-19', '11:21:38', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-19', '11:22:25', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-19', '11:49:21', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-19', '11:49:30', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-19', '11:49:34', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-19', '11:50:00', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '11:50:03', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-19', '20:24:29', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '20:25:09', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '20:25:11', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '20:25:13', 35, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '20:28:04', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '20:33:43', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '20:33:45', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:03:50', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:05:51', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:05:56', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:06:00', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:06:13', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:07:04', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:41:14', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:41:22', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:42:59', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:01', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:01', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:05', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:05', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:08', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:08', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:11', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:11', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:16', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:20', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:20', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:24', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:24', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:35', 33, 96, 173),
('AL001', 'PS001', 'PT001', '2021-07-19', '22:43:44', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:06:39', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:09:50', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:10:09', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:10:09', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:10:15', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:10:15', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:10:38', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:10:38', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:11:01', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:15:27', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:15:32', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:15:32', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:15:36', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:15:36', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:17:02', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:17:02', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:17:33', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:17:56', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:19:23', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:19:24', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:19:28', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:19:28', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:19:32', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:19:32', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:19:35', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:19:35', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:20:25', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:20:35', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:21:09', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:21:17', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:21:34', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:21:36', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:21:36', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:21:44', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:21:44', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:21:47', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:15', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:19', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:19', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:23', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:24', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:28', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:31', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:32', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:32', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:34', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:34', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:39', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:39', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:40', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:40', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:43', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:23:51', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:40:20', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:40:49', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:40:49', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:40:53', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:40:53', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:40:55', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:40:55', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:40:58', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:40:58', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:41:02', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:41:10', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:43:14', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:43:20', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:43:20', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:43:26', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:43:26', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:44:13', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:44:13', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:44:24', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:44:24', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:44:26', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:44:26', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:44:31', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:44:38', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:44:49', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:44:49', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:44:53', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:44:57', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:45:01', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:45:01', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:45:12', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:45:12', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:48:15', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:48:19', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:48:25', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:48:30', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:48:31', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:48:35', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:48:35', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:48:43', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:48:43', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:48:43', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:48:46', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '09:48:46', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:15:33', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:16:13', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:16:38', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:17:01', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:17:12', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:17:12', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:17:13', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:17:13', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:17:15', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:17:15', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:17:16', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:17:16', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:17:16', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:17:16', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:17:17', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:17:17', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:17:28', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:18:08', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:18:13', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:18:13', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:18:17', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:18:17', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:19:04', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:19:04', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:19:07', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:19:09', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:19:28', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:19:44', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:19:46', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:21:04', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:21:08', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:21:14', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:21:18', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:21:18', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:21:23', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:21:23', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:21:32', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:21:38', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:24:12', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:24:14', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:24:14', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:24:14', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:24:15', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:24:15', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:24:15', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:24:16', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:24:24', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:24:24', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:24:27', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:24:27', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:24:33', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:15', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:16', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:19', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:20', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:22', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:22', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:25', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:25', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:26', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:26', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:29', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:36', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:43', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:46', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:46', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:47', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:47', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:25:53', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:26:01', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:26:04', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:26:04', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:26:08', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:26:08', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:26:09', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:26:12', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:26:17', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:56:29', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:56:35', 33, 102, 94),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:56:39', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-20', '10:56:46', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:16:17', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:16:29', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:18:49', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:19:53', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:20:21', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:26:10', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:26:10', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:26:13', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:26:13', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:26:15', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:26:15', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:26:21', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:26:28', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:26:38', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:32:54', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:33:28', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:36:29', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:36:31', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:36:31', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:43:19', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:51:12', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:51:27', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:52:17', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:52:49', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '08:52:59', 35, 37, 87),
('AL001', 'PS001', 'PT001', '2021-07-22', '09:00:57', 35, 253, 40),
('AL001', 'PS001', 'PT001', '2021-07-22', '09:08:01', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:48:04', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:53:21', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:53:30', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:53:30', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:53:34', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:53:34', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:53:38', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:53:38', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:56:20', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:56:27', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:56:37', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:56:39', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:56:59', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:56:59', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:57:10', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:57:10', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:57:12', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:57:21', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:57:21', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:57:46', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:57:46', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:57:50', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:59:14', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:59:21', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:59:21', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:59:26', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:59:35', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '19:59:35', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:01:00', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:01:00', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:01:04', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:02:49', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:02:50', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:09:31', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:09:32', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:09:32', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:09:35', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:09:35', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:35:23', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:35:25', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:35:25', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:35:28', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:35:28', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:36:07', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:36:07', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:36:09', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:36:09', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:36:10', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:36:10', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:36:13', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:36:19', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:36:27', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:36:35', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:36:35', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:36:39', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:36:39', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:37:05', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:37:05', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:37:05', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:37:05', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:37:05', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:37:27', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:37:32', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:38:12', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:38:24', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:38:24', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:38:32', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:38:32', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:38:40', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:38:46', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:38:46', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:38:50', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:38:50', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:39:10', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:39:17', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:39:52', 0, 0, 0),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:39:58', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:40:02', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:40:02', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:40:09', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:40:09', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:40:24', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:41:38', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:41:40', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:41:40', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:41:41', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:41:41', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:41:41', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:41:41', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:41:58', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:42:02', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:42:08', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:42:08', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:42:12', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:42:12', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:42:26', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:42:56', 35, 95, 88),
('AL001', 'PS001', 'PT001', '2021-07-22', '20:43:01', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` varchar(5) NOT NULL,
  `id_petugas` varchar(5) NOT NULL,
  `password_pasien` varchar(16) NOT NULL,
  `nama_pasien` varchar(30) NOT NULL,
  `tmpt_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `alamat_pasien` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `id_petugas`, `password_pasien`, `nama_pasien`, `tmpt_lahir`, `tgl_lahir`, `no_tlp`, `alamat_pasien`) VALUES
('PS001', 'PT001', '123456', 'Budi', 'Depok', '1994-06-22', '081234567890', 'Jalan Bersama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas_puskesmas`
--

CREATE TABLE `petugas_puskesmas` (
  `id_petugas` varchar(5) NOT NULL,
  `password_petugas` varchar(16) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `no_telepon` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas_puskesmas`
--

INSERT INTO `petugas_puskesmas` (`id_petugas`, `password_petugas`, `nama_petugas`, `no_telepon`) VALUES
('PT001', '123456', 'Ekida', '081112233445');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_detak`
--

CREATE TABLE `tabel_detak` (
  `id_pasien` varchar(5) NOT NULL,
  `cek_detak1` float NOT NULL,
  `cek_detak2` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_detak`
--

INSERT INTO `tabel_detak` (`id_pasien`, `cek_detak1`, `cek_detak2`) VALUES
('PS001', 100, 88);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_detak_total_07`
--

CREATE TABLE `tabel_detak_total_07` (
  `id_pasien` varchar(30) NOT NULL,
  `hari1` float NOT NULL,
  `hari2` float NOT NULL,
  `hari3` float NOT NULL,
  `hari4` float NOT NULL,
  `hari5` float NOT NULL,
  `hari6` float NOT NULL,
  `hari7` float NOT NULL,
  `hari8` float NOT NULL,
  `hari9` float NOT NULL,
  `hari10` float NOT NULL,
  `hari11` float NOT NULL,
  `hari12` float NOT NULL,
  `hari13` float NOT NULL,
  `hari14` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_detak_total_07`
--

INSERT INTO `tabel_detak_total_07` (`id_pasien`, `hari1`, `hari2`, `hari3`, `hari4`, `hari5`, `hari6`, `hari7`, `hari8`, `hari9`, `hari10`, `hari11`, `hari12`, `hari13`, `hari14`) VALUES
('PS001', 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_detak_total_19`
--

CREATE TABLE `tabel_detak_total_19` (
  `id_pasien` varchar(30) NOT NULL,
  `hari1` float NOT NULL,
  `hari2` float NOT NULL,
  `hari3` float NOT NULL,
  `hari4` float NOT NULL,
  `hari5` float NOT NULL,
  `hari6` float NOT NULL,
  `hari7` float NOT NULL,
  `hari8` float NOT NULL,
  `hari9` float NOT NULL,
  `hari10` float NOT NULL,
  `hari11` float NOT NULL,
  `hari12` float NOT NULL,
  `hari13` float NOT NULL,
  `hari14` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_detak_total_19`
--

INSERT INTO `tabel_detak_total_19` (`id_pasien`, `hari1`, `hari2`, `hari3`, `hari4`, `hari5`, `hari6`, `hari7`, `hari8`, `hari9`, `hari10`, `hari11`, `hari12`, `hari13`, `hari14`) VALUES
('PS001', 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_saturasi`
--

CREATE TABLE `tabel_saturasi` (
  `id_pasien` varchar(5) NOT NULL,
  `cek_saturasi1` float NOT NULL,
  `cek_saturasi2` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_saturasi`
--

INSERT INTO `tabel_saturasi` (`id_pasien`, `cek_saturasi1`, `cek_saturasi2`) VALUES
('PS001', 94, 95);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_saturasi_total_07`
--

CREATE TABLE `tabel_saturasi_total_07` (
  `id_pasien` varchar(30) NOT NULL,
  `hari1` float NOT NULL,
  `hari2` float NOT NULL,
  `hari3` float NOT NULL,
  `hari4` float NOT NULL,
  `hari5` float NOT NULL,
  `hari6` float NOT NULL,
  `hari7` float NOT NULL,
  `hari8` float NOT NULL,
  `hari9` float NOT NULL,
  `hari10` float NOT NULL,
  `hari11` float NOT NULL,
  `hari12` float NOT NULL,
  `hari13` float NOT NULL,
  `hari14` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_saturasi_total_07`
--

INSERT INTO `tabel_saturasi_total_07` (`id_pasien`, `hari1`, `hari2`, `hari3`, `hari4`, `hari5`, `hari6`, `hari7`, `hari8`, `hari9`, `hari10`, `hari11`, `hari12`, `hari13`, `hari14`) VALUES
('PS001', 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_saturasi_total_19`
--

CREATE TABLE `tabel_saturasi_total_19` (
  `id_pasien` varchar(30) NOT NULL,
  `hari1` float NOT NULL,
  `hari2` float NOT NULL,
  `hari3` float NOT NULL,
  `hari4` float NOT NULL,
  `hari5` float NOT NULL,
  `hari6` float NOT NULL,
  `hari7` float NOT NULL,
  `hari8` float NOT NULL,
  `hari9` float NOT NULL,
  `hari10` float NOT NULL,
  `hari11` float NOT NULL,
  `hari12` float NOT NULL,
  `hari13` float NOT NULL,
  `hari14` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_saturasi_total_19`
--

INSERT INTO `tabel_saturasi_total_19` (`id_pasien`, `hari1`, `hari2`, `hari3`, `hari4`, `hari5`, `hari6`, `hari7`, `hari8`, `hari9`, `hari10`, `hari11`, `hari12`, `hari13`, `hari14`) VALUES
('PS001', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_suhu`
--

CREATE TABLE `tabel_suhu` (
  `id_pasien` varchar(5) NOT NULL,
  `cek_suhu1` float NOT NULL,
  `cek_suhu2` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_suhu`
--

INSERT INTO `tabel_suhu` (`id_pasien`, `cek_suhu1`, `cek_suhu2`) VALUES
('PS001', 34, 35);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_suhu_total_07`
--

CREATE TABLE `tabel_suhu_total_07` (
  `id_pasien` varchar(30) NOT NULL,
  `hari1` float NOT NULL,
  `hari2` float NOT NULL,
  `hari3` float NOT NULL,
  `hari4` float NOT NULL,
  `hari5` float NOT NULL,
  `hari6` float NOT NULL,
  `hari7` float NOT NULL,
  `hari8` float NOT NULL,
  `hari9` float NOT NULL,
  `hari10` float NOT NULL,
  `hari11` float NOT NULL,
  `hari12` float NOT NULL,
  `hari13` float NOT NULL,
  `hari14` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_suhu_total_07`
--

INSERT INTO `tabel_suhu_total_07` (`id_pasien`, `hari1`, `hari2`, `hari3`, `hari4`, `hari5`, `hari6`, `hari7`, `hari8`, `hari9`, `hari10`, `hari11`, `hari12`, `hari13`, `hari14`) VALUES
('PS001', 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_suhu_total_19`
--

CREATE TABLE `tabel_suhu_total_19` (
  `id_pasien` varchar(30) NOT NULL,
  `hari1` float NOT NULL,
  `hari2` float NOT NULL,
  `hari3` float NOT NULL,
  `hari4` float NOT NULL,
  `hari5` float NOT NULL,
  `hari6` float NOT NULL,
  `hari7` float NOT NULL,
  `hari8` float NOT NULL,
  `hari9` float NOT NULL,
  `hari10` float NOT NULL,
  `hari11` float NOT NULL,
  `hari12` float NOT NULL,
  `hari13` float NOT NULL,
  `hari14` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_suhu_total_19`
--

INSERT INTO `tabel_suhu_total_19` (`id_pasien`, `hari1`, `hari2`, `hari3`, `hari4`, `hari5`, `hari6`, `hari7`, `hari8`, `hari9`, `hari10`, `hari11`, `hari12`, `hari13`, `hari14`) VALUES
('PS001', 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alat`
--
ALTER TABLE `alat`
  ADD PRIMARY KEY (`id_alat`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indeks untuk tabel `data_kesehatan`
--
ALTER TABLE `data_kesehatan`
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `id_alat` (`id_alat`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indeks untuk tabel `petugas_puskesmas`
--
ALTER TABLE `petugas_puskesmas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tabel_detak`
--
ALTER TABLE `tabel_detak`
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indeks untuk tabel `tabel_detak_total_07`
--
ALTER TABLE `tabel_detak_total_07`
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indeks untuk tabel `tabel_detak_total_19`
--
ALTER TABLE `tabel_detak_total_19`
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indeks untuk tabel `tabel_saturasi`
--
ALTER TABLE `tabel_saturasi`
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indeks untuk tabel `tabel_saturasi_total_07`
--
ALTER TABLE `tabel_saturasi_total_07`
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indeks untuk tabel `tabel_saturasi_total_19`
--
ALTER TABLE `tabel_saturasi_total_19`
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indeks untuk tabel `tabel_suhu`
--
ALTER TABLE `tabel_suhu`
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indeks untuk tabel `tabel_suhu_total_07`
--
ALTER TABLE `tabel_suhu_total_07`
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indeks untuk tabel `tabel_suhu_total_19`
--
ALTER TABLE `tabel_suhu_total_19`
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `alat`
--
ALTER TABLE `alat`
  ADD CONSTRAINT `alat_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas_puskesmas` (`id_petugas`);

--
-- Ketidakleluasaan untuk tabel `data_kesehatan`
--
ALTER TABLE `data_kesehatan`
  ADD CONSTRAINT `data_kesehatan_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`),
  ADD CONSTRAINT `data_kesehatan_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `petugas_puskesmas` (`id_petugas`),
  ADD CONSTRAINT `data_kesehatan_ibfk_3` FOREIGN KEY (`id_alat`) REFERENCES `alat` (`id_alat`);

--
-- Ketidakleluasaan untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD CONSTRAINT `pasien_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas_puskesmas` (`id_petugas`);

--
-- Ketidakleluasaan untuk tabel `tabel_detak`
--
ALTER TABLE `tabel_detak`
  ADD CONSTRAINT `tabel_detak_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);

--
-- Ketidakleluasaan untuk tabel `tabel_detak_total_07`
--
ALTER TABLE `tabel_detak_total_07`
  ADD CONSTRAINT `tabel_detak_total_07_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);

--
-- Ketidakleluasaan untuk tabel `tabel_detak_total_19`
--
ALTER TABLE `tabel_detak_total_19`
  ADD CONSTRAINT `tabel_detak_total_19_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);

--
-- Ketidakleluasaan untuk tabel `tabel_saturasi`
--
ALTER TABLE `tabel_saturasi`
  ADD CONSTRAINT `tabel_saturasi_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);

--
-- Ketidakleluasaan untuk tabel `tabel_saturasi_total_07`
--
ALTER TABLE `tabel_saturasi_total_07`
  ADD CONSTRAINT `tabel_saturasi_total_07_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);

--
-- Ketidakleluasaan untuk tabel `tabel_saturasi_total_19`
--
ALTER TABLE `tabel_saturasi_total_19`
  ADD CONSTRAINT `tabel_saturasi_total_19_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);

--
-- Ketidakleluasaan untuk tabel `tabel_suhu`
--
ALTER TABLE `tabel_suhu`
  ADD CONSTRAINT `tabel_suhu_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);

--
-- Ketidakleluasaan untuk tabel `tabel_suhu_total_07`
--
ALTER TABLE `tabel_suhu_total_07`
  ADD CONSTRAINT `tabel_suhu_total_07_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);

--
-- Ketidakleluasaan untuk tabel `tabel_suhu_total_19`
--
ALTER TABLE `tabel_suhu_total_19`
  ADD CONSTRAINT `tabel_suhu_total_19_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
