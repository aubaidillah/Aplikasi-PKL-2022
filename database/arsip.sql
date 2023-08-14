-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Feb 2023 pada 08.03
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
-- Database: `arsip`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(50) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `admin_foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`, `admin_foto`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 0x3432363032373232315f756261792e706e67);

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip`
--

CREATE TABLE `arsip` (
  `arsip_id` int(11) NOT NULL,
  `arsip_waktu_upload` date NOT NULL,
  `arsip_petugas` int(11) NOT NULL,
  `arsip_kode` varchar(20) NOT NULL,
  `arsip_nama` varchar(50) NOT NULL,
  `arsip_jenis` varchar(20) NOT NULL,
  `arsip_kategori` int(11) NOT NULL,
  `arsip_keterangan` text NOT NULL,
  `arsip_file` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `arsip`
--

INSERT INTO `arsip` (`arsip_id`, `arsip_waktu_upload`, `arsip_petugas`, `arsip_kode`, `arsip_nama`, `arsip_jenis`, `arsip_kategori`, `arsip_keterangan`, `arsip_file`) VALUES
(35, '2023-01-12', 32, 'ND01', 'Adam Jasir Fawaid ', 'pdf', 17, 'Jawa Tengah - A.05', 0x3631333136323935385f4164616d204a6173697220466177616964202d4a6177612054656e676168202d20412e30352e706466),
(36, '2023-01-12', 32, 'ND02', 'Dhinar Ageng ', 'pdf', 17, 'Jember - ID.02', 0x3331393532363438365f4468696e6172204167656e67202d204a656d626572202d2049442e30322e706466),
(37, '2023-01-12', 32, 'ND03', 'Dhiyaul Haq Hasan ', 'pdf', 17, 'Banyuwangi - NQ.01', 0x313737353535313133375f4468697961756c2048617120486173616e202d2042616e797577616e6769202d204e512e30312e706466),
(38, '2023-01-12', 32, 'ND04', 'Fath Khul Khamim', 'pdf', 17, 'JATENG - ID.03', 0x3638353334323036315f46617468204b68756c204b68616d696d202d204a4154454e47202d2049442e30332e706466),
(39, '2023-01-12', 32, 'ND05', 'M. Hadi Sujatmiko ', 'pdf', 17, 'Banyuwangi - G.02', 0x313936363337313337355f4d2e20486164692053756a61746d696b6f202d2042616e797577616e6769202d20472e30322e706466),
(41, '2023-01-12', 32, 'ND06', 'M. Rafi Maulana ', 'pdf', 17, 'Situbondo - D.11', 0x313236303835363832395f4d2e2052616669204d61756c616e61202d2053697475626f6e646f202d20442e31312e706466),
(42, '2023-01-12', 32, 'ND07', 'M.Hasyim ', 'pdf', 17, 'Bali - A.23', 0x313135393935303036365f4d2e48617379696d202d42616c69202d20412e32332e706466),
(43, '2023-01-12', 32, 'ND08', 'Moh Fardin Shibri ', 'pdf', 17, 'Kangean -D.05', 0x37393335363235355f4d6f682046617264696e20536869627269202d4b616e6765616e202d442e30352e706466),
(44, '2023-01-12', 32, 'ND09', 'Muhammad Fajri', 'pdf', 17, 'Situbondo - D.11', 0x3639393433303733395f4d7568616d6d61642046616a7269202d2053697475626f6e646f202d20442e31312e706466),
(45, '2023-01-12', 32, 'ND10', 'Nuqman Galuh Asâ€™ad ', 'pdf', 17, 'NTB - ID.08', 0x3430363936393639395f4e75716d616e2047616c7568204173e280996164202d204e5442202d2049442e30382e706466),
(46, '2023-01-12', 32, 'ND11', 'Putra Mahendra ', 'pdf', 17, ' bondowoso- C.17', 0x313539373439363837385f5075747261204d6168656e647261202d20626f6e646f776f736f2d20432e31372e706466),
(47, '2023-01-12', 32, 'JQK12', 'Sulthan Zaky Athallah ', 'pdf', 17, ' D.04 -Banyuwangi', 0x3331373133323837315f53756c7468616e205a616b7920417468616c6c6168202d20442e3034202d42616e797577616e67692e706466),
(48, '2023-01-12', 32, 'JQK13', 'Vicry Afriansyah ', 'pdf', 17, 'Kangean - G.09', 0x313130373933333633345f56696372792041667269616e73796168202d4b616e6765616e202d20472e30392e706466),
(49, '2023-01-12', 32, 'NM01', 'Abdul Syamsul Muarif ', 'pdf', 18, ' Naskah Pilihan - Banyuwangi - D.04', 0x313935323536373333375f416264756c205379616d73756c204d7561726966202d20204e61736b61682050696c6968616e202d2042616e797577616e6769202d20442e30342e706466),
(50, '2023-01-12', 32, 'NM02', 'Syamsul Muarif', 'pdf', 18, 'Naskah Wajib - Banyuwangi - D.04', 0x313036303935323639325f416264756c205379616d73756c204d7561726966202d20204e61736b61682057616a6962202d2042616e797577616e6769202d20442e30342e706466),
(51, '2023-01-12', 32, 'NM03', 'Dafan Alifah Alif ', 'pdf', 18, 'Naskah Pilihan - Jember - D.01', 0x3138363835333639315f446166616e20416c6966616820416c6966202d204e61736b61682050696c6968616e202d204a656d626572202d20442e30312e706466),
(52, '2023-01-12', 32, 'NM04', 'Dafan Alifah A.', 'pdf', 18, 'Naskah Wajib - Jember - D.01', 0x313430313839383931365f446166616e20416c6966616820416c6966202d4e61736b61682057616a6962202d204a656d626572202d20442e30312e706466),
(53, '2023-01-12', 32, 'NM05', 'Khairul Anam Al-Manduri ', 'pdf', 18, 'Naskah Pilihan - Sapudi - E.13', 0x3637313531323839305f4b68616972756c20416e616d20416c2d4d616e64757269202d204e61736b61682050696c6968616e202d20536170756469202d20452e31332e706466),
(55, '2023-01-12', 32, 'NM06', 'Khairul Anam ', 'pdf', 18, 'Naskah Wajib - Sapudi - E.13', 0x313030373339363734365f4b68616972756c20416e616d20416c2d4d616e64757269202d204e61736b61682057616a6962202d20536170756469202d20452e31332e706466),
(56, '2023-01-12', 32, 'NM07', 'Muh Adrian Maulana ', 'pdf', 18, 'Naskah Pilihan - NTB - ID.04', 0x3434383432373537395f4d75682041647269616e204d61756c616e61202d204e61736b61682050696c6968616e202d204e5442202d2049442e30342e706466),
(57, '2023-01-12', 32, 'NM08', 'Muh. Adrian M.', 'pdf', 18, 'Naskah Wajib - NTB -ID.04', 0x37323535363533365f4d75682e2041647269616e204d61756c616e61202d204e61736b61682057616a6962202d204e5442202d49442e30342e706466),
(59, '2023-01-12', 32, 'HM01', 'Abd. Syamsul Muarif ', 'pdf', 16, 'Banyuwangi - D.04', 0x3434303331383931395f416264756c205379616d73756c204d7561726966202d2042616e797577616e6769202d20442e30342e706466),
(61, '2023-01-12', 32, 'HM02', 'Fathkhul Khamim ', 'pdf', 16, ' Jawa Tengah - ID.03', 0x3232363532303434305f46617468204b68756c204b68616d696d202d204a6177612054656e676168202d2049442e30332e706466),
(62, '2023-01-12', 32, 'HM03', 'Hafidz Husaini ', 'pdf', 16, 'Bondowoso - C.09', 0x3330303836383437325f48616669647a2048757361696e69202d426f6e646f776f736f202d20432e30392e706466),
(63, '2023-01-12', 32, 'HM04', 'Putra Mahendra K', 'pdf', 16, ' Bondowoso - C.17', 0x3836363534373632345f5075747261204d6168656e647261204b202d20426f6e646f776f736f202d20432e31372e706466),
(64, '2023-01-12', 33, 'DOC01', 'LPJ  MTQ ', 'xlsm', 3, 'LPJ  MTQ IMTIHAN  2020', 0x313131313531343733325f4c504a20204d545120494d544948414e2020323032302e786c736d),
(65, '2023-01-12', 33, 'DOC02', 'Barokah JQK', 'xls', 3, 'Barokah JQK bln 07,2020', 0x323037383835313730395f4261726f6b6168204a514b20626c6e2030372c323032302e786c73),
(66, '2023-01-12', 33, 'DOC03', 'NAMA NAMA JUARA MTQ', 'docx', 3, 'NAMA NAMA JUARA MTQ 2022', 0x3933323735303937375f4e414d41204e414d41204a55415241204d545120323032322e646f6378),
(67, '2023-01-12', 33, 'DOC04', 'Cover Laporan', 'doc', 3, 'Cover Laporan', 0x3934303631313637305f436f766572204c61706f72616e2e646f63),
(68, '2023-01-12', 33, 'DOC05', 'LPJ Lailatul Qiroah ', 'xlsm', 3, 'LPJ Lailatul Qiroah 2020', 0x393531373836345f4c504a204c61696c6174756c205169726f616820323032302e786c736d),
(69, '2023-01-12', 33, 'DOC06', 'Profil Lembaga JQK PA', 'docx', 3, 'Profil LEMBAGA jqk', 0x313937363539393930375f50726f66696c204c454d42414741206a716b2e646f6378),
(70, '2023-01-12', 33, 'DOC07', 'Permohonan Dana Lain2  MTQ', 'rtf', 3, 'Permohonan Dana Lain2  MTQ', 0x313437363534393332315f5065726d6f686f6e616e2044616e61204c61696e3220204d54512e727466),
(71, '2023-01-12', 33, 'ARS01', 'set kufi', 'png', 7, 'set kufi', 0x313335393736343538335f736574206b7566692e706e67),
(72, '2023-01-12', 33, 'DOC08', ' SK Panitia Haflah 2019', 'rtf', 3, 'SK Panitia Haflah 2019', 0x323032373731343030305f534b2050616e69746961204861666c616820323031392e727466),
(73, '2023-01-12', 33, 'ARS02', 'Diwani Jali', 'pdf', 7, 'Diwani Jali', 0x313936393331393934315f446977616e69204a616c692e706466),
(74, '2023-01-12', 33, 'DOC09', 'LPJ MTQ Maulid 2020', 'xls', 3, 'LPJ MTQ Maulid 2020', 0x3730383637393236335f4c504a204d5451204d61756c696420323032302e786c73),
(75, '2023-01-12', 33, 'ARS03', 'Tsuluts', 'pdf', 7, 'Tsuluts', 0x3833353539383733335f5473756c7574732e706466),
(76, '2023-01-12', 33, 'ARS04', 'Mall Naskah Menengah', 'png', 7, 'img20220227_10280394', 0x3136313234323039335f696d6732303232303232375f31303238303339342e706e67),
(77, '2023-02-01', 32, 'JQK22', 'tes', 'png', 7, 'tes', 0x3934373835323234385f706e67672e706e67);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(50) NOT NULL,
  `kategori_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`, `kategori_keterangan`) VALUES
(1, 'Tidak berkategori', 'Semua yang tidak memiliki kategori'),
(3, 'Arsip Dokumen Lembaga JQK', 'arsip berkas - berkas dokumen lembaga JQK'),
(7, 'Arsip karya-karya Khottotin', 'kumpulan karya karya kaligrafi'),
(15, 'Video Tutorial', 'menjelaskan tentang video tutorial penulisan khat arab dengan baik dan benar.'),
(16, 'Arsip MKQ Hiasan Mushaf', 'arsip karya hiasan mushaf lomba MKQ maulid 2022'),
(17, 'Arsip MKQ Naskah Dasar', 'hasil karya lomba mkq naskah dasar maulid 2022'),
(18, 'Arsip MKQ Naskah Menengah', 'arsip mkq naskah menengah lomba maulid 2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL,
  `nama_pesan` varchar(50) NOT NULL,
  `email_pesan` varchar(100) NOT NULL,
  `isi_pesan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `nama_pesan`, `email_pesan`, `isi_pesan`) VALUES
(2, 'Afil', 'muktafi963@gmail.com', 'saya tidak memahami fitur ini'),
(3, 'Ubai', 'aubaidillah756@gmail.com', 'Bagosss'),
(4, 'Afil', 'muktafi963@gmail.com', 'tapai bree\r\n'),
(5, 'Ubaid', 'aubaidillah756@gmail.com', 'testing ini sayang...');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `petugas_id` int(11) NOT NULL,
  `petugas_nama` varchar(50) NOT NULL,
  `petugas_username` varchar(50) NOT NULL,
  `petugas_password` varchar(50) NOT NULL,
  `petugas_foto` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`petugas_id`, `petugas_nama`, `petugas_username`, `petugas_password`, `petugas_foto`) VALUES
(32, 'Ubaidllah Ahmad', 'ubaid', '6c474b7fe72b60d28857f5ee1d300045', 0x313533343337313836395f706e67672e706e67),
(33, 'Ahmad Imaduddin ZA', 'imam', 'eaccb8ea6090a40a98aa28c071810371', 0x3132373638333534315f6b697373706e672e6a7067),
(34, 'M. Ashabul Kahfi', 'kahfi', '64d2753197ba92f6fe30371c52d1b824', NULL),
(35, 'Gunawan', 'gun', 'gun', NULL),
(36, 'M. Sahrul Irpani', 'sahrul', 'sahrul', NULL),
(37, 'Moch. Hafid Abdur Rosyid', 'hafid', 'hafid', NULL),
(38, 'Fatchur Miftawan Cahya', 'fatur', 'fatur', NULL),
(39, 'Syeif Agil Khoir', 'agil', 'agil', NULL),
(40, 'Naufal Faidlur Rohman', 'nofal', 'nofal', NULL),
(41, 'Yunus Abbas', 'yunus', 'yunus', NULL),
(42, 'Moh. Ivan Khumaini', 'ivan', 'ivan', NULL),
(43, 'Noer. Kholiq', 'kholiq', 'kholiq', NULL),
(44, 'M. Ainur Rofiq', 'rofiq', 'rofiq', NULL),
(45, 'Kholilur Rohman Sholeh', 'kholil', 'kholil', NULL),
(46, 'Lalu Aan Hidayat', 'aan', 'aan', NULL),
(47, 'Budi Hariyanto', 'budi', 'budi', NULL),
(48, 'Faizal', 'faizal', 'faizal', NULL),
(49, 'Hafis', 'hafis', 'hafis', NULL),
(50, 'Ilham Hidayat', 'ilham', 'ilham', NULL),
(51, 'Lukman Ali Yasin', 'lukman', 'lukman', NULL),
(52, 'Zainul Arifin', 'zainul', 'zainul', NULL),
(53, 'Khoirul Anam', 'anam', 'anam', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `riwayat_id` int(11) NOT NULL,
  `riwayat_waktu` datetime NOT NULL,
  `riwayat_user` int(11) NOT NULL,
  `riwayat_arsip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `riwayat`
--

INSERT INTO `riwayat` (`riwayat_id`, `riwayat_waktu`, `riwayat_user`, `riwayat_arsip`) VALUES
(10, '2019-10-12 17:10:26', 9, 2),
(11, '2022-06-05 15:44:42', 8, 20),
(12, '2022-06-05 15:44:47', 8, 19),
(13, '2023-01-11 16:18:53', 1, 33),
(14, '2023-01-31 20:37:32', 2, 57),
(15, '2023-01-31 20:38:00', 2, 55),
(16, '2023-01-31 20:38:10', 2, 63),
(17, '2023-01-31 21:35:30', 3, 73),
(18, '2023-01-31 21:35:42', 3, 72);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(50) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_foto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_foto`) VALUES
(1, 'Ubaidillah Ahmad', 'ubaid', '6c474b7fe72b60d28857f5ee1d300045', NULL),
(2, 'Gunawan Tok', 'gun', '5161ebb0cce4b7987ba8b6935d60a180', NULL),
(3, 'Febri Ahmad Saifullah', 'febri', '4689c75fd0935ff5818d62fd2083ed98', NULL),
(4, 'M. Daud Faizun', 'daud', 'e5d31ab7180cd8d9e0376a9f2d67c64d', NULL),
(5, 'Yunus Abbas', 'yunus', 'a2c9a5d635f96695f809ce5272736ec5', NULL),
(6, 'April Budianto', 'budi', '00dfc53ee86af02e742515cdcf075ed3', NULL),
(7, 'Ispandi, S.pd', 'ispandi', '0db697da663a827c9e8fa60a880ce64a', NULL),
(8, 'Ahmad Ayyubi Ghoffar', 'ayubi', '5db264824effb1c2023b2fd8156914d1', NULL),
(9, 'M. Alfandi Dzulkarnain', 'alfandi', '39b728d093ede83bca5cceac0e4f06be', NULL),
(10, 'Adiyanto', 'adi', 'c46335eb267e2e1cde5b017acb4cd799', NULL),
(11, 'M. Tegar Firmansyah', 'tegar', '1d31802d64bae29d88923d795fc73734', NULL),
(12, 'Bahril Umam', 'bahril', 'fce3405958e0861b3458b37cfd3d3695', NULL),
(13, 'Ahmad', 'ahmad', '61243c7b9a4022cb3f8dc3106767ed12', NULL),
(14, 'M. Faqih', 'faqih', '45fb45aa7a0c763fa7c8349947f5a7cb', NULL),
(15, 'M. Faizal Amin', 'amin', '30ae43ad1aa0a416699051b73a3dfcf6', NULL),
(16, 'Lalu Aan Hidayat', 'aan', '4607ed4bd8140e9664875f907f48ae14', NULL),
(17, 'Afton Ilman Huda', 'aftonn', '3c9744c764cff1423e1768f60dcec5bb', NULL),
(18, 'Zarfan Zainul Islami', 'zarfan', 'ec2cf9ca2f5d8bcd394e4a0d86045e9d', NULL),
(19, 'Rico Ananda Putra', 'rico', 'be89e250d8388c5e7ded2f1630e5daa4', NULL),
(20, 'M. Alfan Zainul Islami', 'zainul', '2072b90bc63f596b8908791f47617a7c', NULL),
(22, 'ubai', 'ubai', '35550ca04b5de607b3de52b75c989234', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `arsip`
--
ALTER TABLE `arsip`
  ADD PRIMARY KEY (`arsip_id`),
  ADD UNIQUE KEY `arsip_nama` (`arsip_nama`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`),
  ADD UNIQUE KEY `kategori_nama` (`kategori_nama`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`petugas_id`),
  ADD UNIQUE KEY `petugas_nama` (`petugas_nama`);

--
-- Indeks untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`riwayat_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `nama ini sudah ada di data` (`user_nama`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `arsip`
--
ALTER TABLE `arsip`
  MODIFY `arsip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `petugas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `riwayat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
