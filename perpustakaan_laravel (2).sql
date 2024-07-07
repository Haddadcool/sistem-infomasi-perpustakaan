-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 12:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `Kode_Buku` char(50) NOT NULL,
  `No_UDC` char(50) NOT NULL,
  `Judul` varchar(50) NOT NULL DEFAULT '',
  `Penerbit` text NOT NULL,
  `Pengarang` text NOT NULL,
  `Tahun_Terbit` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`Kode_Buku`, `No_UDC`, `Judul`, `Penerbit`, `Pengarang`, `Tahun_Terbit`) VALUES
('12355', '4635', 'Pengenalan C++', 'PT NanoTech', 'hadad', 2023),
('13479', '478476', 'Pemrograman Python', 'PT NanoTech', 'Nano', 2010),
('13480', '4636', 'Java', 'SMKN 1 Sumbawa', 'andika', 2010);

-- --------------------------------------------------------

--
-- Table structure for table `kembali_non_siswa`
--

CREATE TABLE `kembali_non_siswa` (
  `no_kembali` int(10) NOT NULL,
  `no_pinjam` int(10) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `kode_petugas` char(10) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kembali_siswa`
--

CREATE TABLE `kembali_siswa` (
  `no_kembali` int(10) NOT NULL,
  `no_pinjam` int(10) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `kode_petugas` char(10) NOT NULL,
  `denda` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `non_siswa`
--

CREATE TABLE `non_siswa` (
  `no_anggota` int(10) NOT NULL,
  `nip` int(15) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `ttl` varchar(50) NOT NULL DEFAULT '',
  `alamat` varchar(50) NOT NULL,
  `kode_pos` int(20) NOT NULL,
  `no_telp` char(20) NOT NULL,
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `non_siswa`
--

INSERT INTO `non_siswa` (`no_anggota`, `nip`, `nama_anggota`, `jabatan`, `ttl`, `alamat`, `kode_pos`, `no_telp`, `tgl_daftar`) VALUES
(221001031, 1234, 'Nurlela', 'Guru', 'lenanggur,03-12-2004', 'sering', 8314, '082340000528', '2024-06-06'),
(221001033, 2345, 'Andika', 'Ceo BRI', 'Labuhan, 12-04-2003', 'Labuhan', 8340, '083452984432', '2023-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `nomor_anggota` char(50) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `kode_buku` char(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `jumlah` char(50) NOT NULL DEFAULT '',
  `denda` int(11) DEFAULT NULL,
  `diterima` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`nomor_anggota`, `tgl_peminjaman`, `nama_anggota`, `tgl_pengembalian`, `kode_buku`, `judul`, `pengarang`, `penerbit`, `jumlah`, `denda`, `diterima`) VALUES
('121', '2023-04-12', 'Haddad', '2023-05-12', '[\"13480\"]', '[\"java\"]', '[\"andika\"]', '[\"SMKN 1 Sumbawa\"]', '[\"1\"]', 2000, '2023-05-13'),
('112', '2024-04-02', 'Nurlaela', '2024-04-07', '[\"13480\",\"13481\"]', '[\"kalkulus\",\"aljabar\"]', '[\"reza\",\"elta\"]', '[\"uts\",\"uts\"]', '[\"1\",\"2\"]', NULL, '2024-04-08'),
('99', '2001-02-11', 'Andika', '2001-02-15', '[\"54431\"]', '[\"buku pariwisata\"]', '[\"dr supratman\"]', '[\"pt indah bersama\"]', '[\"1\"]', 3000, '2001-02-20'),
('122', '2024-06-29', 'Erin', '2024-06-30', '[\"13481\",\"54432\"]', '[\"PHP\",\"freamwork\"]', '[\"andika\",\"iksan\"]', '[\"uts\",\"uts\"]', '[\"1\",\"2\"]', 5000, '2024-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_details`
--

CREATE TABLE `peminjaman_details` (
  `nomor_anggota` char(50) NOT NULL DEFAULT '',
  `kode_buku` char(50) NOT NULL DEFAULT '',
  `judul` varchar(50) NOT NULL DEFAULT '',
  `pengarang` varchar(50) NOT NULL DEFAULT '',
  `penerbit` varchar(50) NOT NULL DEFAULT '',
  `jumlah` char(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman_details`
--

INSERT INTO `peminjaman_details` (`nomor_anggota`, `kode_buku`, `judul`, `pengarang`, `penerbit`, `jumlah`) VALUES
('', '13480', 'kalkulus', 'reza', 'uts', '1'),
('', '13481', 'aljabar', 'elta', 'uts', '2'),
('', '54431', 'buku pariwisata', 'dr supratman', 'pt indah bersama', '1'),
('', '13481', 'PHP', 'andika', 'uts', '1'),
('', '54432', 'freamwork', 'iksan', 'uts', '2');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `kode_petugas` char(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`kode_petugas`, `nama`, `jabatan`, `email`, `password`) VALUES
('1001', 'haddad', 'Petugas', 'haddad@progate.com', '$2y$10$ttotwgTbs3wAhCuv5YdPdeRUm1XrhN4XbUiu.oyFBP15dXtymiuG2'),
('1002', 'nano', 'manager', 'nano@proget.com', '$2y$10$Zi8nfXwWRyt0P5vfHYlsZOJBl0bGc/g0OCuOD9bXY4IiZ.dEpCaGK');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam_non_siswa`
--

CREATE TABLE `pinjam_non_siswa` (
  `no_pinjam` int(10) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `no_anggota` int(10) NOT NULL,
  `kode_petugas` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pinjam_siswa`
--

CREATE TABLE `pinjam_siswa` (
  `no_pinjam` int(10) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `no_siswa` int(10) NOT NULL,
  `kode_petugas` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `no_siswa` char(50) NOT NULL DEFAULT '0',
  `nis` int(11) NOT NULL DEFAULT 0,
  `nama_siswa` text NOT NULL,
  `jurusan` text NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`no_siswa`, `nis`, `nama_siswa`, `jurusan`, `ttl`, `alamat`, `no_telp`, `tgl_daftar`) VALUES
('100', 340, 'Nano', 'mesin', 'lenangguar,01-12-2004', 'Alas', '083452984432', '2022-02-12'),
('176', 121, 'erlin', 'KC', 'Jakarta,12-07-2030', 'Labuhan', '083452984432', '2023-04-05'),
('999', 123, 'haddad', 'multimedia', 'Sumbawa,12-02-2023', 'lempeh', '085338084228', '2024-08-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`Kode_Buku`);

--
-- Indexes for table `kembali_non_siswa`
--
ALTER TABLE `kembali_non_siswa`
  ADD PRIMARY KEY (`no_kembali`),
  ADD KEY `FK_kembali_non_siswa_pinjam_detail_non_siswa` (`no_pinjam`);

--
-- Indexes for table `kembali_siswa`
--
ALTER TABLE `kembali_siswa`
  ADD PRIMARY KEY (`no_kembali`),
  ADD KEY `FK_kembali_siswa_pinjam_siswa` (`no_pinjam`);

--
-- Indexes for table `non_siswa`
--
ALTER TABLE `non_siswa`
  ADD PRIMARY KEY (`no_anggota`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`kode_petugas`),
  ADD KEY `kode_petugas` (`kode_petugas`);

--
-- Indexes for table `pinjam_non_siswa`
--
ALTER TABLE `pinjam_non_siswa`
  ADD PRIMARY KEY (`no_pinjam`),
  ADD KEY `no_pinjam` (`no_pinjam`),
  ADD KEY `FK_pinjam_non_siswa_non_siswa` (`no_anggota`);

--
-- Indexes for table `pinjam_siswa`
--
ALTER TABLE `pinjam_siswa`
  ADD PRIMARY KEY (`no_pinjam`),
  ADD KEY `FK_pinjam_siswa_siswa` (`no_siswa`),
  ADD KEY `no_pinjam` (`no_pinjam`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`no_siswa`),
  ADD KEY `no_siswa` (`no_siswa`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kembali_non_siswa`
--
ALTER TABLE `kembali_non_siswa`
  ADD CONSTRAINT `FK_kembali_non_siswa_pinjam_detail_non_siswa` FOREIGN KEY (`no_pinjam`) REFERENCES `pinjam_detail_non_siswa` (`no_pinjam`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kembali_siswa`
--
ALTER TABLE `kembali_siswa`
  ADD CONSTRAINT `FK_kembali_siswa_pinjam_siswa` FOREIGN KEY (`no_pinjam`) REFERENCES `pinjam_siswa` (`no_pinjam`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `pinjam_non_siswa`
--
ALTER TABLE `pinjam_non_siswa`
  ADD CONSTRAINT `FK_pinjam_non_siswa_non_siswa` FOREIGN KEY (`no_anggota`) REFERENCES `non_siswa` (`no_anggota`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
