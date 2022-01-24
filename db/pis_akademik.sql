-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2022 at 09:57 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pis_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_menu`
--

CREATE TABLE `tabel_menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `icon` varchar(25) NOT NULL,
  `is_main_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_menu`
--

INSERT INTO `tabel_menu` (`id`, `nama_menu`, `link`, `icon`, `is_main_menu`) VALUES
(1, 'Data Siswa', 'siswa', 'fa fa-users', 0),
(2, 'Data Guru', 'guru', 'fa fa-user-circle', 0),
(3, 'Data Master', '#', 'fa fa-bars', 0),
(4, 'Mata Pelajaran', 'mapel', 'fa fa-book', 3),
(5, 'Ruangan Kelas', 'ruangan', 'fa fa-building', 3),
(6, 'Tingkatan Kelas', 'tingkatan', 'fa fa-sitemap', 3),
(7, 'Jurusan', 'jurusan', 'fa fa-th-large', 3),
(8, 'Tahun Akademik', 'tahunakademik', 'fa fa-calendar-check-o', 3),
(9, 'Kelas', 'kelas', 'fa fa-cubes', 3),
(10, 'Kurikulum', 'kurikulum', 'fa fa-list', 3),
(11, 'Jadwal Pelajaran', 'jadwal', 'fa fa-calendar-plus-o', 0),
(12, 'Peserta Didik', 'siswa/siswa_aktif', 'fa fa-users', 0),
(13, 'Walikelas', 'walikelas', 'fa fa-user-plus', 0),
(14, 'Pengguna Sistem', 'user', 'fa fa-id-badge', 0),
(15, 'Menu', 'menu', 'fa fa-list', 0),
(16, 'Form Pembayaran', 'pembayaran', 'fa fa-dollar', 0),
(17, 'Nilai', 'nilai', 'fa fa-archive', 0),
(19, 'Mapel Siswa', 'mapel_siswa', 'fa fa-book', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agama`
--

CREATE TABLE `tbl_agama` (
  `kd_agama` int(2) NOT NULL,
  `nama_agama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agama`
--

INSERT INTO `tbl_agama` (`kd_agama`, `nama_agama`) VALUES
(1, 'ISLAM'),
(2, 'KRISTEN/ PROTESTAN'),
(3, 'KATHOLIK'),
(4, 'HINDU'),
(5, 'BUDHA'),
(6, 'KHONG HU CHU'),
(99, 'LAIN LAIN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id_guru` int(11) NOT NULL,
  `nuptk` varchar(11) NOT NULL,
  `nama_guru` varchar(40) NOT NULL,
  `gender` enum('P','W') NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id_guru`, `nuptk`, `nama_guru`, `gender`, `username`, `password`) VALUES
(0, '00000000000', 'Default', 'W', '', ''),
(1, '00000000001', 'Fajri, S.Pd.I', 'P', 'fajri', 'e10adc3949ba59abbe56e057f20f883e'),
(2, '00000000002', 'Teuku Tommy Yanuar Satria, S.Pd.I', 'P', 'tommy', 'e10adc3949ba59abbe56e057f20f883e'),
(3, '00000000003', 'Mariyadi, A.Md', 'P', 'mariyadi', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL,
  `kd_mapel` varchar(5) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `jam` varchar(30) NOT NULL,
  `kd_ruangan` varchar(10) NOT NULL,
  `hari` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id_jadwal`, `id_tahun_akademik`, `semester`, `kd_jurusan`, `kd_tingkatan`, `kd_kelas`, `kd_mapel`, `id_guru`, `jam`, `kd_ruangan`, `hari`) VALUES
(19, 6, 'ganjil', 'IPA', '10', '10-A1', 'BID1', 2, '10.45 - 11.30', '000', 'Jumat'),
(20, 6, 'ganjil', 'IPA', '11', '11-A1', 'BID2', 0, '', '000', ''),
(21, 6, 'ganjil', 'IPA', '12', '12-A1', 'BID3', 1, '', '000', ''),
(22, 6, 'ganjil', 'IPA', '10', '10-A1', 'BIO1', 2, '', '000', ''),
(23, 6, 'ganjil', 'IPA', '11', '11-A1', 'BIO2', 0, '', '000', ''),
(24, 6, 'ganjil', 'IPA', '12', '12-A1', 'BIO3', 0, '', '000', ''),
(25, 6, 'ganjil', 'IPA', '10', '10-A1', 'BING1', 0, '', '000', ''),
(26, 6, 'ganjil', 'IPA', '11', '11-A1', 'BING2', 0, '', '000', ''),
(27, 6, 'ganjil', 'IPA', '12', '12-A1', 'BING3', 0, '', '000', ''),
(28, 6, 'ganjil', 'IPA', '11', '11-A1', 'MTK2', 0, '', '000', ''),
(29, 6, 'ganjil', 'IPA', '12', '12-A1', 'MTK3', 0, '', '000', ''),
(30, 6, 'ganjil', 'IPA', '10', '10-A1', 'MTK1', 0, '', '000', ''),
(31, 6, 'ganjil', 'IPS', '10', '10-S1', 'BING1', 0, '', '000', ''),
(32, 6, 'ganjil', 'IPS', '10', '10-S2', 'BING1', 0, '', '000', ''),
(33, 6, 'ganjil', 'IPS', '10', '10-S3', 'BING1', 0, '', '000', ''),
(34, 6, 'ganjil', 'IPS', '11', '11-S1', 'BING2', 0, '', '000', ''),
(35, 6, 'ganjil', 'IPS', '11', '11-S2', 'BING2', 0, '', '000', ''),
(36, 6, 'ganjil', 'IPS', '11', '11-S3', 'BING2', 0, '', '000', ''),
(37, 6, 'ganjil', 'IPS', '12', '12-S1', 'BING3', 0, '', '000', ''),
(38, 6, 'ganjil', 'IPS', '12', '12-S2', 'BING3', 0, '', '000', ''),
(39, 6, 'ganjil', 'IPS', '12', '12-S3', 'BING3', 0, '', '000', ''),
(40, 6, 'ganjil', 'IPS', '10', '10-S1', 'MTK1', 0, '', '000', ''),
(41, 6, 'ganjil', 'IPS', '10', '10-S2', 'MTK1', 0, '', '000', ''),
(42, 6, 'ganjil', 'IPS', '10', '10-S3', 'MTK1', 0, '', '000', ''),
(43, 6, 'ganjil', 'IPS', '11', '11-S1', 'MTK2', 0, '', '000', ''),
(44, 6, 'ganjil', 'IPS', '11', '11-S2', 'MTK2', 0, '', '000', ''),
(45, 6, 'ganjil', 'IPS', '11', '11-S3', 'MTK2', 0, '', '000', ''),
(46, 6, 'ganjil', 'IPS', '12', '12-S1', 'MTK3', 0, '', '000', ''),
(47, 6, 'ganjil', 'IPS', '12', '12-S2', 'MTK3', 0, '', '000', ''),
(48, 6, 'ganjil', 'IPS', '12', '12-S3', 'MTK3', 0, '', '000', ''),
(49, 6, 'ganjil', 'IPS', '10', '10-S1', 'BID1', 0, '', '000', ''),
(50, 6, 'ganjil', 'IPS', '10', '10-S2', 'BID1', 0, '', '000', ''),
(51, 6, 'ganjil', 'IPS', '10', '10-S3', 'BID1', 0, '', '000', ''),
(52, 6, 'ganjil', 'IPS', '11', '11-S1', 'BID2', 0, '', '000', ''),
(53, 6, 'ganjil', 'IPS', '11', '11-S2', 'BID2', 0, '', '000', ''),
(54, 6, 'ganjil', 'IPS', '11', '11-S3', 'BID2', 0, '', '000', ''),
(55, 6, 'ganjil', 'IPS', '12', '12-S1', 'BID3', 0, '', '000', ''),
(56, 6, 'ganjil', 'IPS', '12', '12-S2', 'BID3', 0, '', '000', ''),
(57, 6, 'ganjil', 'IPS', '12', '12-S3', 'BID3', 0, '', '000', ''),
(58, 6, 'ganjil', 'IPA', '10', '10-A1', 'KIM1', 0, '', '000', ''),
(59, 6, 'ganjil', 'IPA', '11', '11-A1', 'KIM2', 0, '', '000', ''),
(60, 6, 'ganjil', 'IPA', '12', '12-A1', 'KIM3', 0, '', '000', ''),
(61, 6, 'ganjil', 'IPA', '10', '10-A1', 'FIS1', 0, '', '000', ''),
(62, 6, 'ganjil', 'IPA', '11', '11-A1', 'FIS2', 0, '', '000', ''),
(63, 6, 'ganjil', 'IPA', '12', '12-A1', 'FIS3', 0, '', '000', ''),
(64, 6, 'ganjil', 'IPS', '10', '10-S1', 'SOS1', 0, '', '000', ''),
(65, 6, 'ganjil', 'IPS', '10', '10-S2', 'SOS1', 0, '', '000', ''),
(66, 6, 'ganjil', 'IPS', '10', '10-S3', 'SOS1', 0, '', '000', ''),
(67, 6, 'ganjil', 'IPS', '11', '11-S1', 'SOS2', 0, '', '000', ''),
(68, 6, 'ganjil', 'IPS', '11', '11-S2', 'SOS2', 0, '', '000', ''),
(69, 6, 'ganjil', 'IPS', '11', '11-S3', 'SOS2', 0, '', '000', ''),
(70, 6, 'ganjil', 'IPS', '12', '12-S1', 'SOS3', 0, '', '000', ''),
(71, 6, 'ganjil', 'IPS', '12', '12-S2', 'SOS3', 0, '', '000', ''),
(72, 6, 'ganjil', 'IPS', '12', '12-S3', 'SOS3', 0, '', '000', ''),
(73, 6, 'ganjil', 'IPS', '10', '10-S1', 'SEJ1', 0, '', '000', ''),
(74, 6, 'ganjil', 'IPS', '10', '10-S2', 'SEJ1', 0, '', '000', ''),
(75, 6, 'ganjil', 'IPS', '10', '10-S3', 'SEJ1', 0, '', '000', ''),
(76, 6, 'ganjil', 'IPS', '11', '11-S1', 'SEJ2', 0, '', '000', ''),
(77, 6, 'ganjil', 'IPS', '11', '11-S2', 'SEJ2', 0, '', '000', ''),
(78, 6, 'ganjil', 'IPS', '11', '11-S3', 'SEJ2', 0, '', '000', ''),
(79, 6, 'ganjil', 'IPS', '12', '12-S1', 'SEJ3', 0, '', '000', ''),
(80, 6, 'ganjil', 'IPS', '12', '12-S2', 'SEJ3', 0, '', '000', ''),
(81, 6, 'ganjil', 'IPS', '12', '12-S3', 'SEJ3', 0, '', '000', ''),
(82, 6, 'ganjil', 'IPS', '10', '10-S1', 'GEO1', 0, '', '000', ''),
(83, 6, 'ganjil', 'IPS', '10', '10-S2', 'GEO1', 0, '', '000', ''),
(84, 6, 'ganjil', 'IPS', '10', '10-S3', 'GEO1', 0, '', '000', ''),
(85, 6, 'ganjil', 'IPS', '11', '11-S1', 'GEO2', 0, '', '000', ''),
(86, 6, 'ganjil', 'IPS', '11', '11-S2', 'GEO2', 0, '', '000', ''),
(87, 6, 'ganjil', 'IPS', '11', '11-S3', 'GEO2', 0, '', '000', ''),
(88, 6, 'ganjil', 'IPS', '12', '12-S1', 'GEO3', 0, '', '000', ''),
(89, 6, 'ganjil', 'IPS', '12', '12-S2', 'GEO3', 0, '', '000', ''),
(90, 6, 'ganjil', 'IPS', '12', '12-S3', 'GEO3', 0, '', '000', ''),
(91, 6, 'ganjil', 'IPA', '10', '10-A1', 'BID1', 0, '', '000', ''),
(92, 6, 'ganjil', 'IPA', '11', '11-A1', 'BID2', 0, '', '000', ''),
(93, 6, 'ganjil', 'IPA', '12', '12-A1', 'BID3', 0, '', '000', ''),
(94, 6, 'ganjil', 'IPA', '10', '10-A1', 'BIO1', 0, '', '000', ''),
(95, 6, 'ganjil', 'IPA', '11', '11-A1', 'BIO2', 0, '', '000', ''),
(96, 6, 'ganjil', 'IPA', '12', '12-A1', 'BIO3', 0, '', '000', ''),
(97, 6, 'ganjil', 'IPA', '10', '10-A1', 'BING1', 0, '', '000', ''),
(98, 6, 'ganjil', 'IPA', '11', '11-A1', 'BING2', 0, '', '000', ''),
(99, 6, 'ganjil', 'IPA', '12', '12-A1', 'BING3', 0, '', '000', ''),
(100, 6, 'ganjil', 'IPA', '11', '11-A1', 'MTK2', 0, '', '000', ''),
(101, 6, 'ganjil', 'IPA', '12', '12-A1', 'MTK3', 0, '', '000', ''),
(102, 6, 'ganjil', 'IPA', '10', '10-A1', 'MTK1', 0, '', '000', ''),
(103, 6, 'ganjil', 'IPS', '10', '10-S1', 'BING1', 0, '', '000', ''),
(104, 6, 'ganjil', 'IPS', '10', '10-S2', 'BING1', 0, '', '000', ''),
(105, 6, 'ganjil', 'IPS', '10', '10-S3', 'BING1', 0, '', '000', ''),
(106, 6, 'ganjil', 'IPS', '11', '11-S1', 'BING2', 0, '', '000', ''),
(107, 6, 'ganjil', 'IPS', '11', '11-S2', 'BING2', 0, '', '000', ''),
(108, 6, 'ganjil', 'IPS', '11', '11-S3', 'BING2', 0, '', '000', ''),
(109, 6, 'ganjil', 'IPS', '12', '12-S1', 'BING3', 0, '', '000', ''),
(110, 6, 'ganjil', 'IPS', '12', '12-S2', 'BING3', 0, '', '000', ''),
(111, 6, 'ganjil', 'IPS', '12', '12-S3', 'BING3', 0, '', '000', ''),
(112, 6, 'ganjil', 'IPS', '10', '10-S1', 'MTK1', 0, '', '000', ''),
(113, 6, 'ganjil', 'IPS', '10', '10-S2', 'MTK1', 0, '', '000', ''),
(114, 6, 'ganjil', 'IPS', '10', '10-S3', 'MTK1', 0, '', '000', ''),
(115, 6, 'ganjil', 'IPS', '11', '11-S1', 'MTK2', 0, '', '000', ''),
(116, 6, 'ganjil', 'IPS', '11', '11-S2', 'MTK2', 0, '', '000', ''),
(117, 6, 'ganjil', 'IPS', '11', '11-S3', 'MTK2', 0, '', '000', ''),
(118, 6, 'ganjil', 'IPS', '12', '12-S1', 'MTK3', 0, '', '000', ''),
(119, 6, 'ganjil', 'IPS', '12', '12-S2', 'MTK3', 0, '', '000', ''),
(120, 6, 'ganjil', 'IPS', '12', '12-S3', 'MTK3', 0, '', '000', ''),
(121, 6, 'ganjil', 'IPS', '10', '10-S1', 'BID1', 0, '', '000', ''),
(122, 6, 'ganjil', 'IPS', '10', '10-S2', 'BID1', 0, '', '000', ''),
(123, 6, 'ganjil', 'IPS', '10', '10-S3', 'BID1', 0, '', '000', ''),
(124, 6, 'ganjil', 'IPS', '11', '11-S1', 'BID2', 0, '', '000', ''),
(125, 6, 'ganjil', 'IPS', '11', '11-S2', 'BID2', 0, '', '000', ''),
(126, 6, 'ganjil', 'IPS', '11', '11-S3', 'BID2', 0, '', '000', ''),
(127, 6, 'ganjil', 'IPS', '12', '12-S1', 'BID3', 0, '', '000', ''),
(128, 6, 'ganjil', 'IPS', '12', '12-S2', 'BID3', 0, '', '000', ''),
(129, 6, 'ganjil', 'IPS', '12', '12-S3', 'BID3', 0, '', '000', ''),
(130, 6, 'ganjil', 'IPA', '10', '10-A1', 'KIM1', 0, '', '000', ''),
(131, 6, 'ganjil', 'IPA', '11', '11-A1', 'KIM2', 0, '', '000', ''),
(132, 6, 'ganjil', 'IPA', '12', '12-A1', 'KIM3', 0, '', '000', ''),
(133, 6, 'ganjil', 'IPA', '10', '10-A1', 'FIS1', 0, '', '000', ''),
(134, 6, 'ganjil', 'IPA', '11', '11-A1', 'FIS2', 0, '', '000', ''),
(135, 6, 'ganjil', 'IPA', '12', '12-A1', 'FIS3', 0, '', '000', ''),
(136, 6, 'ganjil', 'IPS', '10', '10-S1', 'SOS1', 0, '', '000', ''),
(137, 6, 'ganjil', 'IPS', '10', '10-S2', 'SOS1', 0, '', '000', ''),
(138, 6, 'ganjil', 'IPS', '10', '10-S3', 'SOS1', 0, '', '000', ''),
(139, 6, 'ganjil', 'IPS', '11', '11-S1', 'SOS2', 0, '', '000', ''),
(140, 6, 'ganjil', 'IPS', '11', '11-S2', 'SOS2', 0, '', '000', ''),
(141, 6, 'ganjil', 'IPS', '11', '11-S3', 'SOS2', 0, '', '000', ''),
(142, 6, 'ganjil', 'IPS', '12', '12-S1', 'SOS3', 0, '', '000', ''),
(143, 6, 'ganjil', 'IPS', '12', '12-S2', 'SOS3', 0, '', '000', ''),
(144, 6, 'ganjil', 'IPS', '12', '12-S3', 'SOS3', 0, '', '000', ''),
(145, 6, 'ganjil', 'IPS', '10', '10-S1', 'SEJ1', 0, '', '000', ''),
(146, 6, 'ganjil', 'IPS', '10', '10-S2', 'SEJ1', 0, '', '000', ''),
(147, 6, 'ganjil', 'IPS', '10', '10-S3', 'SEJ1', 0, '', '000', ''),
(148, 6, 'ganjil', 'IPS', '11', '11-S1', 'SEJ2', 0, '', '000', ''),
(149, 6, 'ganjil', 'IPS', '11', '11-S2', 'SEJ2', 0, '', '000', ''),
(150, 6, 'ganjil', 'IPS', '11', '11-S3', 'SEJ2', 0, '', '000', ''),
(151, 6, 'ganjil', 'IPS', '12', '12-S1', 'SEJ3', 0, '', '000', ''),
(152, 6, 'ganjil', 'IPS', '12', '12-S2', 'SEJ3', 0, '', '000', ''),
(153, 6, 'ganjil', 'IPS', '12', '12-S3', 'SEJ3', 0, '', '000', ''),
(154, 6, 'ganjil', 'IPS', '10', '10-S1', 'GEO1', 0, '', '000', ''),
(155, 6, 'ganjil', 'IPS', '10', '10-S2', 'GEO1', 0, '', '000', ''),
(156, 6, 'ganjil', 'IPS', '10', '10-S3', 'GEO1', 0, '', '000', ''),
(157, 6, 'ganjil', 'IPS', '11', '11-S1', 'GEO2', 0, '', '000', ''),
(158, 6, 'ganjil', 'IPS', '11', '11-S2', 'GEO2', 0, '', '000', ''),
(159, 6, 'ganjil', 'IPS', '11', '11-S3', 'GEO2', 0, '', '000', ''),
(160, 6, 'ganjil', 'IPS', '12', '12-S1', 'GEO3', 0, '', '000', ''),
(161, 6, 'ganjil', 'IPS', '12', '12-S2', 'GEO3', 0, '', '000', ''),
(162, 6, 'ganjil', 'IPS', '12', '12-S3', 'GEO3', 0, '', '000', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `kd_jurusan` varchar(5) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`kd_jurusan`, `nama_jurusan`) VALUES
('IPA', 'IPA'),
('IPS', 'IPS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kd_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kd_kelas`, `nama_kelas`, `kd_tingkatan`, `kd_jurusan`) VALUES
('10-A1', 'Kelas X-IPA 1', '10', 'IPA'),
('10-S1', 'Kelas X-IPS 1', '10', 'IPS'),
('10-S2', 'Kelas X-IPS 2', '10', 'IPS'),
('10-S3', 'Kelas X-IPS 3', '10', 'IPS'),
('11-A1', 'Kelas XI-IPA 1', '11', 'IPA'),
('11-S1', 'Kelas XI-IPS 1', '11', 'IPS'),
('11-S2', 'Kelas XI-IPS 2', '11', 'IPS'),
('11-S3', 'Kelas XI-IPS 3', '11', 'IPS'),
('12-A1', 'Kelas XII-IPA 1', '12', 'IPA'),
('12-S1', 'Kelas XII-IPS 1', '12', 'IPS'),
('12-S2', 'Kelas XII-IPS 2', '12', 'IPS'),
('12-S3', 'Kelas XII-IPS 3', '12', 'IPS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kurikulum`
--

CREATE TABLE `tbl_kurikulum` (
  `id_kurikulum` int(11) NOT NULL,
  `nama_kurikulum` varchar(30) NOT NULL,
  `is_aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kurikulum`
--

INSERT INTO `tbl_kurikulum` (`id_kurikulum`, `nama_kurikulum`, `is_aktif`) VALUES
(1, 'Kurikulum 2013 (K13)', 'Y'),
(2, 'Kurikulum 2006 (KTSP)', 'N'),
(3, 'Kurikulum 2004 (KBK)', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kurikulum_detail`
--

CREATE TABLE `tbl_kurikulum_detail` (
  `id_kurikulum_detail` int(11) NOT NULL,
  `id_kurikulum` int(11) NOT NULL,
  `kd_mapel` varchar(5) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kurikulum_detail`
--

INSERT INTO `tbl_kurikulum_detail` (`id_kurikulum_detail`, `id_kurikulum`, `kd_mapel`, `kd_jurusan`, `kd_tingkatan`) VALUES
(1, 1, 'BID1', 'IPA', '10'),
(2, 1, 'BID2', 'IPA', '11'),
(3, 1, 'BID3', 'IPA', '12'),
(4, 1, 'BIO1', 'IPA', '10'),
(5, 1, 'BIO2', 'IPA', '11'),
(6, 1, 'BIO3', 'IPA', '12'),
(7, 1, 'BING1', 'IPA', '10'),
(8, 1, 'BING2', 'IPA', '11'),
(9, 1, 'BING3', 'IPA', '12'),
(10, 1, 'MTK2', 'IPA', '11'),
(11, 1, 'MTK3', 'IPA', '12'),
(12, 1, 'MTK1', 'IPA', '10'),
(13, 1, 'BING1', 'IPS', '10'),
(14, 1, 'BING2', 'IPS', '11'),
(15, 1, 'BING3', 'IPS', '12'),
(16, 1, 'MTK1', 'IPS', '10'),
(17, 1, 'MTK2', 'IPS', '11'),
(18, 1, 'MTK3', 'IPS', '12'),
(19, 1, 'BID1', 'IPS', '10'),
(20, 1, 'BID2', 'IPS', '11'),
(21, 1, 'BID3', 'IPS', '12'),
(22, 1, 'KIM1', 'IPA', '10'),
(23, 1, 'KIM2', 'IPA', '11'),
(24, 1, 'KIM3', 'IPA', '12'),
(25, 1, 'FIS1', 'IPA', '10'),
(26, 1, 'FIS2', 'IPA', '11'),
(27, 1, 'FIS3', 'IPA', '12'),
(28, 1, 'SOS1', 'IPS', '10'),
(29, 1, 'SOS2', 'IPS', '11'),
(30, 1, 'SOS3', 'IPS', '12'),
(31, 1, 'SEJ1', 'IPS', '10'),
(32, 1, 'SEJ2', 'IPS', '11'),
(33, 1, 'SEJ3', 'IPS', '12'),
(34, 1, 'GEO1', 'IPS', '10'),
(35, 1, 'GEO2', 'IPS', '11'),
(36, 1, 'GEO3', 'IPS', '12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_user`
--

CREATE TABLE `tbl_level_user` (
  `id_level_user` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level_user`
--

INSERT INTO `tbl_level_user` (`id_level_user`, `nama_level`) VALUES
(1, 'Admin'),
(2, 'Walikelas'),
(3, 'Guru'),
(4, 'Keuangan'),
(5, 'Siswa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `kd_mapel` varchar(5) NOT NULL,
  `nama_mapel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`kd_mapel`, `nama_mapel`) VALUES
('BID1', 'Bahasa Indonesia 1'),
('BID2', 'Bahasa Indonesia 2'),
('BID3', 'Bahasa Indonesia 3'),
('BING1', 'Bahasa Inggris 1'),
('BING2', 'Bahasa Inggris 2'),
('BING3', 'Bahasa Inggris 3'),
('BIO1', 'Biologi 1'),
('BIO2', 'Biologi 2'),
('BIO3', 'Biologi 3'),
('FIS1', 'FISIKA 1'),
('FIS2', 'FISIKA 2'),
('FIS3', 'FISIKA 3'),
('GEO1', 'GEOGRAFI 1'),
('GEO2', 'GEOGRAFI 2'),
('GEO3', 'GEOGRAFI 3'),
('KIM1', 'KIMIA 1'),
('KIM2', 'KIMIA 2'),
('KIM3', 'KIMIA 3'),
('MTK1', 'Matematika 1'),
('MTK2', 'Matematika 2'),
('MTK3', 'Matematika 3'),
('PAI1', 'Pendidikan Agama Islam 1'),
('PAI2', 'Pendidikan Agama Islam 2'),
('PAI3', 'Pendidikan Agama Islam 3'),
('SEJ1', 'SEJARAH 1'),
('SEJ2', 'SEJARAH 2'),
('SEJ3', 'SEJARAH 3'),
('SOS 3', 'SOSIOLOGI 3'),
('SOS1', 'SOSIOLOGI 1'),
('SOS2', 'SOSIOLOGI 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id_nilai`, `id_jadwal`, `nim`, `nilai`) VALUES
(1, 1, '18SI1000', 100),
(2, 1, '18SI1001', 80),
(3, 1, '18SI1002', 70),
(4, 1, '18SI1003', 85),
(5, 1, '18TI2000', 90),
(6, 1, '18TI2001', 100),
(7, 1, '18TI2002', 99),
(8, 1, '18TI2003', 99);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_riwayat_kelas`
--

CREATE TABLE `tbl_riwayat_kelas` (
  `id_riwayat` int(11) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_riwayat_kelas`
--

INSERT INTO `tbl_riwayat_kelas` (`id_riwayat`, `kd_kelas`, `nim`, `id_tahun_akademik`) VALUES
(1, '7-A1', '18SI1000', 1),
(2, '7-A1', '18SI1001', 1),
(3, '7-A1', '18SI1002', 1),
(4, '7-A1', '18SI1003', 1),
(5, '7-A1', '18TI2000', 1),
(6, '7-A1', '18TI2001', 1),
(7, '7-A1', '18TI2002', 1),
(8, '7-A1', '18TI2003', 1),
(9, '7-A1', '', 1),
(10, '8-A1', '14.12.8199', 1),
(11, '8-B1', '14.12.8198', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ruangan`
--

CREATE TABLE `tbl_ruangan` (
  `kd_ruangan` varchar(10) NOT NULL,
  `nama_ruangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ruangan`
--

INSERT INTO `tbl_ruangan` (`kd_ruangan`, `nama_ruangan`) VALUES
('000', 'Default'),
('X-IPA1', 'Ruangan X-IPA 1'),
('X-IPS1', 'Ruangan X-IPS 1'),
('X-IPS2', 'Ruangan X-IPS 2'),
('X-IPS3', 'Ruangan X-IPS 3'),
('XI-IPA1', 'Ruangan XI-IPA 1'),
('XI-IPS1', 'Ruangan XI-IPS 1'),
('XI-IPS2', 'Ruangan XI-IPS 2'),
('XI-IPS3', 'Ruangan XI-IPS 3'),
('XII-IPA1', 'Ruangan XII-IPA 1'),
('XII-IPS1', 'Ruangan XII-IPS 1'),
('XII-IPS2', 'Ruangan XII-IPS 2'),
('XII-IPS3', 'Ruangan XII-IPS 3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nim` varchar(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `kd_agama` int(2) NOT NULL,
  `foto` text NOT NULL,
  `kd_kelas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nim`, `nama`, `gender`, `tanggal_lahir`, `tempat_lahir`, `kd_agama`, `foto`, `kd_kelas`) VALUES
('18SI1000', 'Muhammad Athallah Zuhry', 'L', '1996-12-19', 'Banda Aceh', 1, 'user-siluet.jpg', 'X-IPA'),
('18SI1001', 'Rian Armansyah Maulana', 'L', '1996-01-02', 'Taliwang', 1, 'user-siluet1.jpg', 'X-IPA'),
('18SI1002', 'Rezha Septyan Ramandha', 'L', '1997-01-24', 'Lampung', 1, 'user-siluet2.jpg', 'X-IPA'),
('18SI1003', 'Ovillia Dyah Charisma', 'P', '1996-01-18', 'Semarang', 1, 'user-siluet3.jpg', '12-S2'),
('18TI2000', 'Hadi Luthfi Firdaus', 'L', '1996-01-30', 'Pekanbaru', 1, 'user-siluet4.jpg', '11-S3'),
('18TI2001', 'Muhammad Fajar', 'L', '1995-01-14', 'Yogyakarta', 1, 'user-siluet5.jpg', '12-A1'),
('18TI2002', 'Bagus Widiatmono', 'L', '1996-01-09', 'Purworejo', 1, 'user-siluet6.jpg', '11-S2'),
('18TI2003', 'Aris Harwanto', 'L', '1996-01-13', 'Klaten', 1, 'user-siluet7.jpg', '10-S3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tahun_akademik`
--

CREATE TABLE `tbl_tahun_akademik` (
  `id_tahun_akademik` int(11) NOT NULL,
  `tahun_akademik` varchar(10) NOT NULL,
  `is_aktif` enum('Y','N') NOT NULL,
  `semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tahun_akademik`
--

INSERT INTO `tbl_tahun_akademik` (`id_tahun_akademik`, `tahun_akademik`, `is_aktif`, `semester`) VALUES
(1, '2018/2019', 'N', 'ganjil'),
(2, '2017/2018', 'N', 'genap'),
(5, '2019/2020', 'N', 'genap'),
(6, '2021/2022', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tingkatan_kelas`
--

CREATE TABLE `tbl_tingkatan_kelas` (
  `kd_tingkatan` varchar(5) NOT NULL,
  `nama_tingkatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tingkatan_kelas`
--

INSERT INTO `tbl_tingkatan_kelas` (`kd_tingkatan`, `nama_tingkatan`) VALUES
('10', 'Tingkat Kelas 10 (X)'),
('11', 'Tingkat Kelas 11 (XI)'),
('12', 'Tingkat Kelas 12 (XII)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `id_level_user` int(11) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_level_user`, `foto`) VALUES
(1, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, 'user-siluet2.jpg'),
(2, 'Muhammad Mulvi', 'mulvi', 'e10adc3949ba59abbe56e057f20f883e', 2, 'user-siluet1.jpg'),
(3, 'Ika Nurul Fadhila', 'ika', 'e10adc3949ba59abbe56e057f20f883e', 4, 'user-siluet3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_rule`
--

CREATE TABLE `tbl_user_rule` (
  `id_rule` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_level_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_rule`
--

INSERT INTO `tbl_user_rule` (`id_rule`, `id_menu`, `id_level_user`) VALUES
(1, 16, 4),
(2, 1, 1),
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 5, 1),
(7, 7, 1),
(8, 8, 1),
(9, 11, 1),
(10, 6, 1),
(11, 14, 1),
(12, 15, 1),
(13, 13, 1),
(14, 12, 1),
(15, 10, 1),
(16, 9, 1),
(17, 11, 3),
(19, 17, 3),
(20, 18, 3),
(21, 12, 3),
(22, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_walikelas`
--

CREATE TABLE `tbl_walikelas` (
  `id_walikelas` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_walikelas`
--

INSERT INTO `tbl_walikelas` (`id_walikelas`, `id_guru`, `id_tahun_akademik`, `kd_kelas`) VALUES
(1, 1, 1, '7-A1'),
(2, 0, 1, '7-A2'),
(3, 0, 1, '7-B1'),
(4, 0, 1, '7-B2'),
(5, 0, 1, '8-A1'),
(6, 0, 1, '8-A2'),
(7, 0, 1, '8-B1'),
(8, 0, 1, '8-B2'),
(9, 0, 1, '9-A1'),
(10, 0, 1, '9-A2'),
(11, 0, 1, '9-B1'),
(12, 0, 1, '9-B2'),
(13, 0, 6, '7-A1'),
(14, 0, 6, '7-A2'),
(15, 0, 6, '7-B1'),
(16, 0, 6, '7-B2'),
(17, 0, 6, '8-A1'),
(18, 0, 6, '8-A2'),
(19, 0, 6, '8-B1'),
(20, 0, 6, '8-B2'),
(21, 0, 6, '9-A1'),
(22, 0, 6, '9-A2'),
(23, 0, 6, '9-B1'),
(24, 0, 6, '9-B2');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_kelas`
-- (See below for the actual view)
--
CREATE TABLE `view_kelas` (
`kd_kelas` varchar(5)
,`nama_kelas` varchar(30)
,`kd_tingkatan` varchar(5)
,`kd_jurusan` varchar(5)
,`nama_tingkatan` varchar(30)
,`nama_jurusan` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_user`
-- (See below for the actual view)
--
CREATE TABLE `view_user` (
`id_user` int(11)
,`nama_lengkap` varchar(40)
,`username` varchar(30)
,`password` varchar(40)
,`id_level_user` int(11)
,`foto` text
,`nama_level` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_walikelas`
-- (See below for the actual view)
--
CREATE TABLE `view_walikelas` (
`nama_guru` varchar(40)
,`nama_kelas` varchar(30)
,`id_walikelas` int(11)
,`id_tahun_akademik` int(11)
,`nama_jurusan` varchar(30)
,`nama_tingkatan` varchar(30)
,`tahun_akademik` varchar(10)
);

-- --------------------------------------------------------

--
-- Structure for view `view_kelas`
--
DROP TABLE IF EXISTS `view_kelas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_kelas`  AS SELECT `tk`.`kd_kelas` AS `kd_kelas`, `tk`.`nama_kelas` AS `nama_kelas`, `tk`.`kd_tingkatan` AS `kd_tingkatan`, `tk`.`kd_jurusan` AS `kd_jurusan`, `ttk`.`nama_tingkatan` AS `nama_tingkatan`, `tj`.`nama_jurusan` AS `nama_jurusan` FROM ((`tbl_kelas` `tk` join `tbl_tingkatan_kelas` `ttk`) join `tbl_jurusan` `tj`) WHERE `tk`.`kd_tingkatan` = `ttk`.`kd_tingkatan` AND `tk`.`kd_jurusan` = `tj`.`kd_jurusan` ;

-- --------------------------------------------------------

--
-- Structure for view `view_user`
--
DROP TABLE IF EXISTS `view_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_user`  AS SELECT `tu`.`id_user` AS `id_user`, `tu`.`nama_lengkap` AS `nama_lengkap`, `tu`.`username` AS `username`, `tu`.`password` AS `password`, `tu`.`id_level_user` AS `id_level_user`, `tu`.`foto` AS `foto`, `tlu`.`nama_level` AS `nama_level` FROM (`tbl_user` `tu` join `tbl_level_user` `tlu`) WHERE `tu`.`id_level_user` = `tlu`.`id_level_user` ;

-- --------------------------------------------------------

--
-- Structure for view `view_walikelas`
--
DROP TABLE IF EXISTS `view_walikelas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_walikelas`  AS SELECT `tg`.`nama_guru` AS `nama_guru`, `tk`.`nama_kelas` AS `nama_kelas`, `tw`.`id_walikelas` AS `id_walikelas`, `tw`.`id_tahun_akademik` AS `id_tahun_akademik`, `tj`.`nama_jurusan` AS `nama_jurusan`, `ttk`.`nama_tingkatan` AS `nama_tingkatan`, `tta`.`tahun_akademik` AS `tahun_akademik` FROM (((((`tbl_walikelas` `tw` join `tbl_kelas` `tk`) join `tbl_guru` `tg`) join `tbl_jurusan` `tj`) join `tbl_tingkatan_kelas` `ttk`) join `tbl_tahun_akademik` `tta`) WHERE `tw`.`kd_kelas` = `tk`.`kd_kelas` AND `tw`.`id_guru` = `tg`.`id_guru` AND `tk`.`kd_jurusan` = `tj`.`kd_jurusan` AND `tk`.`kd_tingkatan` = `ttk`.`kd_tingkatan` AND `tw`.`id_tahun_akademik` = `tta`.`id_tahun_akademik` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_menu`
--
ALTER TABLE `tabel_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  ADD PRIMARY KEY (`kd_agama`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kd_kelas`);

--
-- Indexes for table `tbl_kurikulum`
--
ALTER TABLE `tbl_kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`);

--
-- Indexes for table `tbl_kurikulum_detail`
--
ALTER TABLE `tbl_kurikulum_detail`
  ADD PRIMARY KEY (`id_kurikulum_detail`);

--
-- Indexes for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  ADD PRIMARY KEY (`id_level_user`);

--
-- Indexes for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`kd_mapel`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tbl_riwayat_kelas`
--
ALTER TABLE `tbl_riwayat_kelas`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indexes for table `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  ADD PRIMARY KEY (`kd_ruangan`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_tahun_akademik`
--
ALTER TABLE `tbl_tahun_akademik`
  ADD PRIMARY KEY (`id_tahun_akademik`);

--
-- Indexes for table `tbl_tingkatan_kelas`
--
ALTER TABLE `tbl_tingkatan_kelas`
  ADD PRIMARY KEY (`kd_tingkatan`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_user_rule`
--
ALTER TABLE `tbl_user_rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- Indexes for table `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  ADD PRIMARY KEY (`id_walikelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_menu`
--
ALTER TABLE `tabel_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `tbl_kurikulum`
--
ALTER TABLE `tbl_kurikulum`
  MODIFY `id_kurikulum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_kurikulum_detail`
--
ALTER TABLE `tbl_kurikulum_detail`
  MODIFY `id_kurikulum_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  MODIFY `id_level_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_riwayat_kelas`
--
ALTER TABLE `tbl_riwayat_kelas`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_tahun_akademik`
--
ALTER TABLE `tbl_tahun_akademik`
  MODIFY `id_tahun_akademik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user_rule`
--
ALTER TABLE `tbl_user_rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
