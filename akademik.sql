-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 10:09 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absen` int(11) NOT NULL,
  `jadwal` date NOT NULL,
  `keterangan` enum('Hadir','Sakit','Izin','Absen') NOT NULL,
  `id_kelas` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absen`, `jadwal`, `keterangan`, `id_kelas`) VALUES
(170, '2019-06-30', 'Hadir', '002'),
(171, '2019-06-30', 'Hadir', '002'),
(172, '2019-06-30', 'Hadir', '002'),
(173, '2019-06-30', 'Hadir', '002'),
(174, '2019-06-30', 'Hadir', '002'),
(175, '2019-06-30', 'Hadir', '002'),
(176, '2019-06-30', 'Hadir', '002'),
(177, '2019-06-30', 'Hadir', '002'),
(178, '2019-06-30', 'Hadir', '002'),
(179, '2019-06-30', 'Hadir', '002'),
(180, '2019-06-30', 'Hadir', '002'),
(181, '2019-06-30', 'Hadir', '002'),
(182, '2019-06-30', 'Hadir', '002'),
(183, '2019-06-30', 'Hadir', '002'),
(184, '2019-06-30', 'Hadir', '002'),
(185, '2019-06-30', 'Hadir', '002'),
(186, '2019-06-30', 'Hadir', '002'),
(187, '2019-06-30', 'Hadir', '002'),
(188, '2019-06-30', 'Hadir', '002'),
(189, '2019-06-30', 'Hadir', '002'),
(190, '2019-06-30', 'Hadir', '002');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_dosen` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` enum('Pria','Wanita') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `last_login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_dosen`, `nama`, `jk`, `tgl_lahir`, `email`, `password`, `no_hp`, `foto`, `status`, `last_login`) VALUES
(1, 'Sutan', 'Pria', '0000-00-00', 'sutan@gmail.com', '$2y$10$Nx44ci/AbhmvY/HPmVXu4O0vGdfZa8vWURXeRLp5omvBl2O8G7s4e', '123123123', 'sutan.jpg', 'admin', '2023-09-22 15:08:00'),
(2, 'Redo', 'Pria', '0000-00-00', 'redo@gmail.com', '$2y$10$nEPv51G9xVLYXMWXWLpDHOV2R8dp53n7H5GLjQwyTVXlDUY7jLOla', '123123123', 'redo.jpg', 'admin', '2023-09-22 15:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `id_dosen` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `id_dosen`) VALUES
('001', 'R6A', '1'),
('002', 'R6X', '1'),
('003', 'R6X', '2'),
('004', 'R6A', '2');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` enum('Pria','Wanita') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_kelas` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`, `jk`, `tgl_lahir`, `alamat`, `id_kelas`) VALUES
('059723095', 'zulfan', 'Pria', '2023-09-05', 'jembung', '12 RPL'),
('0703570', 'sasa', 'Wanita', '2023-09-03', 'jakarta', '12 RPL'),
('12345678', 'putra', 'Pria', '2023-09-22', 'bondowoso', '10 RPL'),
('89659238469', 'suci', 'Wanita', '2023-09-02', 'jakarta', '986598365'),
('9479823477', 'saputra', 'Pria', '2023-09-01', 'jember', '64985639');

-- --------------------------------------------------------

--
-- Table structure for table `matapelajaran`
--

CREATE TABLE `matapelajaran` (
  `id_matkul` int(11) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `jenis_matkul` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matapelajaran`
--

INSERT INTO `matapelajaran` (`id_matkul`, `nama_matkul`, `jenis_matkul`, `sks`, `id_dosen`) VALUES
(1, 'Pemrograman Web 2', 'Semi Praktikum', 3, 1),
(2, 'Pemrograman Visual', 'Praktikum', 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absen`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
  ADD PRIMARY KEY (`id_matkul`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
