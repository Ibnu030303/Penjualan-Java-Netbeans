-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2023 pada 12.44
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javaproject`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `Kode_Barang` varchar(10) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL,
  `Harga_Beli` int(11) NOT NULL,
  `Harga_Jual` int(11) NOT NULL,
  `Stok` int(11) NOT NULL,
  `Saham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`Kode_Barang`, `Nama_Barang`, `Harga_Beli`, `Harga_Jual`, `Stok`, `Saham`) VALUES
('BR001', 'MOUSE', 30000, 50000, 2, 60000),
('BR002', 'KEYBOARD', 50000, 70000, 3, 150000),
('BR003', 'FLASHDISK', 50000, 90000, 0, 0),
('BR004', 'HARDISK VGEN 500GB', 200000, 500000, 3, 600000),
('BR005', 'HARDISK SAMSUNG 1TB', 400000, 800000, 4, 1600000),
('BR006', 'SSD SAMSUNG 256', 300000, 600000, 4, 1200000),
('BR007', 'SSD SAMSUNG 128', 200000, 350000, 3, 600000),
('BR008', 'SSD NVME M2 VGEN 256', 300000, 500000, 4, 1200000),
('BR009', 'SSD NVME M2 SAMSUNG 256', 400000, 500000, 7, 2800000),
('BR010', 'SSD SATA VGEN 256', 300000, 400000, 4, 1200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `No_Identitas` bigint(20) NOT NULL,
  `Jenis_Identitas` varchar(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Alamat` varchar(225) NOT NULL,
  `Jenis_Kelamin` varchar(50) NOT NULL,
  `No_Hp` varchar(13) NOT NULL,
  `Tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`No_Identitas`, `Jenis_Identitas`, `Nama`, `Alamat`, `Jenis_Kelamin`, `No_Hp`, `Tanggal`) VALUES
(12345, 'KTP', 'Ibnu Nurdiyansa', 'Serpong Pamulang', 'Perempuan', '0895331887310', '2023-12-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `No_Pembelian` varchar(50) NOT NULL,
  `Kode_Barang` varchar(50) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL,
  `Jumlah_Beli` int(50) NOT NULL,
  `Tanggal_Beli` date NOT NULL,
  `Kode_Suplier` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`No_Pembelian`, `Kode_Barang`, `Nama_Barang`, `Jumlah_Beli`, `Tanggal_Beli`, `Kode_Suplier`) VALUES
('PB001', 'BR001', 'MOUSE', 1, '2023-12-09', 'SPR001'),
('PB002', 'BR006', 'SSD SAMSUNG 256', 2, '2023-12-01', 'SPR001'),
('PB003', 'BR004', 'HARDISK VGEN 500GB', 2, '2023-12-07', 'SPR009'),
('PB004', 'BR002', 'KEYBOARD', 2, '2023-12-04', 'SPR003'),
('PB005', 'BR009', 'SSD NVME M2 SAMSUNG 256', 2, '2023-12-07', 'SPR001'),
('PB006', 'BR010', 'SSD SATA VGEN 256', 2, '2023-12-19', 'SPR002'),
('PB007', 'BR010', 'SSD SATA VGEN 256', 2, '2023-12-19', 'SPR002'),
('PB008', 'BR001', 'MOUSE', 2, '2023-12-10', 'SPR007'),
('PB009', 'BR007', 'SSD SAMSUNG 128', 2, '2023-12-20', 'SPR001'),
('PB010', 'BR005', 'HARDISK SAMSUNG 1TB', 2, '2023-12-06', 'SPR008');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `order_id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `harga_tanah` float NOT NULL,
  `harga_bangunan` float NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `luas_tanah_asli` float NOT NULL,
  `luas_tanah_tersedia` float NOT NULL,
  `harga` float NOT NULL,
  `dp` float NOT NULL,
  `lama_cicilan` float NOT NULL,
  `ppn` float NOT NULL,
  `cicilan_bln` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`order_id`, `nama`, `area`, `harga_tanah`, `harga_bangunan`, `tipe`, `luas_tanah_asli`, `luas_tanah_tersedia`, `harga`, `dp`, `lama_cicilan`, `ppn`, `cicilan_bln`) VALUES
(1, 'ibnu', 'Bougenvile', 500000, 90000000, 'Tipe-36', 90, 54, 117000000, 50000, 12, 11700000, 10725000),
(2, 'penul', 'Bougenvile', 500000, 90000000, 'Tipe-45', 120, 75, 127500000, 1000000, 12, 12750000, 11687500),
(3, 'azstar', 'Melati', 600000, 120000000, 'Tipe-45', 120, 75, 165000000, 1000000, 12, 16500000, 15125000),
(4, 'saya', 'Flamboyan', 700000, 150000000, 'Tipe-54', 140, 86, 210200000, 5000000, 24, 21020000, 9634170),
(5, 'nama', 'Flamboyan', 700000, 150000000, 'Tipe-36', 90, 54, 187800000, 3000000, 23, 18780000, 8981740),
(6, 'adalah', 'Flamboyan', 700000, 150000000, 'Tipe-54', 140, 86, 210200000, 7000000, 24, 21020000, 9634170);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_barang`
--

CREATE TABLE `penjualan_barang` (
  `id` int(15) NOT NULL,
  `Kode_Barang` varchar(20) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL,
  `QTY` int(15) NOT NULL,
  `Tanggal` date NOT NULL,
  `Total` varchar(15) NOT NULL,
  `Profit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan_barang`
--

INSERT INTO `penjualan_barang` (`id`, `Kode_Barang`, `Nama_Barang`, `QTY`, `Tanggal`, `Total`, `Profit`) VALUES
(64, 'br001', 'MOUSE', 1, '2023-12-10', '50000', 20000),
(66, 'br001', 'MOUSE', 1, '2023-12-10', '50000', 40000),
(72, 'BR001', 'MOUSE', 1, '2023-12-02', '50000', 40000),
(84, 'BR001', 'MOUSE', 1, '2023-12-01', '50000', 100000),
(87, 'BR008', 'SSD NVME M2 VGEN 256', 1, '2023-12-08', '500000', 200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `suplier`
--

CREATE TABLE `suplier` (
  `Kode_Suplier` varchar(15) NOT NULL,
  `Nama_Suplier` varchar(50) NOT NULL,
  `Jenis_Barang` varchar(50) NOT NULL,
  `Alamat` varchar(225) NOT NULL,
  `No_Telpon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `suplier`
--

INSERT INTO `suplier` (`Kode_Suplier`, `Nama_Suplier`, `Jenis_Barang`, `Alamat`, `No_Telpon`) VALUES
('SPR001', 'SAMSUNG SSD', 'SSD', 'Jln Raya Pamulang indah', '0895331887310'),
('SPR002', 'VGEN SSD', 'SSD', 'Jln Raya Pamulang', '0895331887310'),
('SPR003', 'LENOVO INC', 'LAPTOP', 'Jln Raya Indonesia Indah', '08966213'),
('SPR004', 'ACER INC', 'LAPTOP', 'Jln Raya Pamulang indah Raya', '0897626713'),
('SPR005', 'ASUS INC', 'LAPTOP', 'Jln Raya Serpong Indah', '08977213'),
('SPR006', 'INTEL', 'PROCESSOR', 'Jln Raya Intel Amd Raya', '08977213'),
('SPR007', 'AMD', 'PROCESSOR', 'Jln Raya Amd 1 No1', '0899123'),
('SPR008', 'SAMSUNG HDD', 'HDD', 'Jln Raya Pamulang', '0895331887310'),
('SPR009', 'VGEN HDD', 'HDD', 'Jln Raya Pamulang Indah', '0895331887310'),
('SPR010', 'VGEN FASHDISK', 'FASHDISK', 'Jln Raya Utara Indonesia', '0892913');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`Id`, `Username`, `Password`) VALUES
(1, 'ibnu', '123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Kode_Barang`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`No_Identitas`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`No_Pembelian`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeks untuk tabel `penjualan_barang`
--
ALTER TABLE `penjualan_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`Kode_Suplier`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `No_Identitas` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3603200303030009;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `penjualan_barang`
--
ALTER TABLE `penjualan_barang`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
