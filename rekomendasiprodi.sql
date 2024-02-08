-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2024 at 08:29 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rekomendasiprodi`
--

-- --------------------------------------------------------

--
-- Table structure for table `atribut`
--

CREATE TABLE `atribut` (
  `kode` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `atribut`
--

INSERT INTO `atribut` (`kode`, `nama`, `created_at`, `updated_at`) VALUES
('A1', 'Nilai Matematika', '2023-05-23 10:41:32', '2023-05-23 10:41:32'),
('A2', 'Nilai Bahasa Indonesia', '2023-05-23 10:41:32', '2023-05-23 10:41:32'),
('A3', 'Nilai Bahasa Inggris', '2023-05-23 10:42:04', '2023-05-23 10:42:04'),
('A4', 'Nilai Ilmu Pengetahuan Alam', '2023-05-23 10:42:04', '2023-05-23 10:42:04'),
('A5', 'Nilai Seni Budaya', '2023-05-23 10:42:04', '2023-05-23 10:42:04'),
('A6', 'Nilai Psikotes', '2023-06-25 14:04:18', '2023-06-25 14:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `confusion`
--

CREATE TABLE `confusion` (
  `prodi` varchar(100) NOT NULL,
  `akurasi` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `confusion`
--

INSERT INTO `confusion` (`prodi`, `akurasi`) VALUES
('S1 Arsitektur', '85%'),
('S1 Informatika', '83%'),
('S1 Perencanaan Wilayah dan Kota', '86%'),
('S1 Teknik Sipil', '86%');

-- --------------------------------------------------------

--
-- Table structure for table `confusionuji`
--

CREATE TABLE `confusionuji` (
  `prodi` varchar(50) NOT NULL,
  `akurasi` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `confusionuji`
--

INSERT INTO `confusionuji` (`prodi`, `akurasi`) VALUES
('S1 Arsitektur', '90%'),
('S1 Informatika', '83%'),
('S1 Perencanaan Wilayah dan Kota', '88%'),
('S1 Teknik Sipil', '85%');

-- --------------------------------------------------------

--
-- Table structure for table `datatrain`
--

CREATE TABLE `datatrain` (
  `nrm` varchar(100) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `mtk` int NOT NULL,
  `bindo` int NOT NULL,
  `bing` int NOT NULL,
  `ipa` int NOT NULL,
  `senbud` int NOT NULL,
  `psikotes` int NOT NULL,
  `prodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `datatrain`
--

INSERT INTO `datatrain` (`nrm`, `nama`, `mtk`, `bindo`, `bing`, `ipa`, `senbud`, `psikotes`, `prodi`) VALUES
('020401-11955201-820597', 'Arsyintha Dewi', 70, 72, 88, 60, 50, 110, 'S1 Informatika'),
('020401-11955201-478727', 'Muhammad Miftachul Falah', 77, 82, 64, 90, 57, 95, 'S1 Informatika'),
('020301-11922201-953780', 'Muhammad Algi Fari', 83, 78, 62, 57, 57, 90, 'S1 Perencanaan Wilayah dan Kota'),
('020301-11922201-794187', 'Ifal Ardhy', 70, 70, 80, 60, 70, 95, 'S1 Teknik Sipil'),
('020501-11923201-597546', 'Qimawa Anggit Rakha Ananda', 87, 90, 86, 90, 73, 95, 'S1 Arsitektur'),
('020401-11955201-476660', 'Tri indah lestari ', 60, 70, 90, 70, 87, 105, 'S1 Informatika'),
('020301-11922201-471314', 'MUHAMMAD AULIA HILMAN', 50, 76, 88, 77, 88, 90, 'S1 Teknik Sipil'),
('020301-11922201-107146', 'Muhammad Efendy', 57, 66, 86, 73, 86, 100, 'S1 Teknik Sipil'),
('030101-11935201-526577', 'Muhammad andika noor romadhoni', 57, 80, 76, 67, 76, 99, 'S1 Perencanaan Wilayah dan Kota'),
('030101-21935201-665975', 'Noferiansyah', 70, 90, 78, 57, 78, 100, 'S1 Perencanaan Wilayah dan Kota'),
('020401-21955201-140056', 'MUHAMMAD IQBAL ZAMZAMI', 73, 76, 80, 77, 64, 110, 'S1 Informatika'),
('020301-21922201-289184', 'Aria aji prayudi', 87, 66, 82, 87, 66, 95, 'S1 Teknik Sipil'),
('020501-21923201-160297', 'Rahmad Yusac Amindo', 73, 60, 84, 83, 68, 95, 'S1 Arsitektur'),
('020301-21922201-023555', 'ahmad hafi', 50, 94, 56, 60, 90, 90, 'S1 Teknik Sipil'),
('020501-21923201-508132', 'MUHAMMAD KHAIDIR AMIN', 73, 72, 58, 67, 94, 90, 'S1 Arsitektur'),
('030101-21935201-745995', 'Muhammad Ferryawan Serayu', 60, 70, 60, 73, 60, 95, 'S1 Perencanaan Wilayah dan Kota'),
('020401-21955201-310389', 'Ahmad Rifani', 63, 78, 78, 77, 66, 95, 'S1 Informatika'),
('020401-21955201-242651', 'PRAYOGO PRASTIAWAN', 80, 76, 76, 80, 68, 96, 'S1 Informatika'),
('030101-21935201-848591', 'Nanda putra nugraha', 88, 82, 50, 60, 68, 100, 'S1 Perencanaan Wilayah dan Kota'),
('020501-21923201-561610', 'Muhammad Hafizh Rifai', 87, 80, 66, 67, 68, 95, 'S1 Arsitektur'),
('020401-21955201-728611', 'Ahmad Aqli', 83, 80, 76, 63, 68, 115, 'S1 Informatika'),
('020301-21922201-564234', 'ANISA NUR RAHMAH', 80, 76, 78, 67, 92, 92, 'S1 Teknik Sipil'),
('020401-21955201-944436', 'SYAYIDDAH', 70, 72, 80, 73, 68, 100, 'S1 Informatika'),
('020401-21955201-476091', 'Jamaliansyah', 73, 72, 66, 70, 78, 100, 'S1 Informatika'),
('010201-21955201-409399', 'Anisha Pratiwi', 77, 60, 68, 80, 58, 110, 'S1 Informatika'),
('020301-21922201-614263', 'Muhammad tasmin al akbar', 80, 62, 80, 87, 56, 100, 'S1 Teknik Sipil'),
('020301-21922201-252165', 'Risky Yudi Pratama', 80, 64, 90, 57, 54, 100, 'S1 Teknik Sipil'),
('020401-21955201-658259', 'Melyana', 57, 66, 92, 53, 90, 90, 'S1 Informatika'),
('020301-21922201-323668', 'Tariza Azijah Safitri', 80, 68, 88, 57, 60, 90, 'S1 Teknik Sipil'),
('020301-21922201-946813', 'Mikhael Bernando Tanjung ', 73, 90, 74, 60, 66, 100, 'S1 Teknik Sipil'),
('020401-21955201-448929', 'Ahmad waris', 77, 94, 60, 67, 78, 98, 'S1 Informatika'),
('020501-21923201-522900', 'Shofia Muna', 67, 60, 54, 63, 80, 100, 'S1 Arsitektur'),
('020301-21922201-820686', 'ARIS PERIANOR', 63, 66, 70, 77, 90, 120, 'S1 Teknik Sipil'),
('020301-21922201-082421', 'AAS INDRIYANI', 53, 68, 66, 73, 90, 90, 'S1 Teknik Sipil'),
('020401-21955201-008029', 'Irvan Noviansyah ', 67, 68, 68, 87, 60, 115, 'S1 Informatika'),
('020301-21922201-999450', 'sri rizqi', 70, 68, 58, 83, 73, 115, 'S1 Teknik Sipil'),
('020301-21922201-098830', 'Ahmad Husin Naparin', 57, 68, 52, 80, 87, 110, 'S1 Teknik Sipil'),
('020301-21922201-974651', 'Mita Sri Rahayu', 80, 64, 70, 60, 50, 105, 'S1 Teknik Sipil'),
('030101-21935201-633641', 'emily nityasa', 70, 58, 68, 73, 57, 120, 'S1 Perencanaan Wilayah dan Kota'),
('020501-21923201-568478', 'MOCHAMMAD NADHIR BAYU ISNAN MAULIDY', 77, 70, 90, 87, 53, 115, 'S1 Arsitektur'),
('020401-21955201-093850', 'Muhammad Rifqi Wardana', 77, 80, 76, 50, 67, 120, 'S1 Informatika'),
('020501-21923201-398106', 'Sarifudin Wahid Mawardi', 63, 54, 78, 57, 70, 100, 'S1 Arsitektur'),
('020301-21922201-921617', 'Muhammad donny', 60, 80, 58, 53, 90, 100, 'S1 Teknik Sipil'),
('020501-21923201-819205', 'Puput Priantri', 53, 70, 62, 67, 77, 110, 'S1 Arsitektur'),
('020301-21922201-211393', 'Gustie sambalewa saky ', 50, 66, 60, 70, 95, 95, 'S1 Teknik Sipil'),
('020401-21955201-056380', 'Gilang irchas arifudin', 57, 64, 68, 90, 72, 110, 'S1 Informatika'),
('020501-21923201-475352', 'Setia Wulan Sari', 70, 72, 70, 77, 82, 98, 'S1 Arsitektur'),
('020301-21922201-660125', 'Putri Ersa Nadela ', 80, 80, 72, 87, 78, 115, 'S1 Teknik Sipil'),
('030101-21935201-422374', 'Ayu kumala dewi', 67, 84, 78, 83, 70, 105, 'S1 Perencanaan Wilayah dan Kota'),
('030101-21935201-782000', 'ABDUL AZIS AMRULLAH', 77, 66, 60, 93, 90, 90, 'S1 Perencanaan Wilayah dan Kota'),
('020501-21923201-991225', 'YOGI', 57, 50, 68, 63, 70, 105, 'S1 Arsitektur'),
('020401-21955201-882770', 'Gt. Nita Fauziah', 53, 54, 70, 53, 76, 98, 'S1 Informatika'),
('030101-21935201-917606', 'Maulidya Putri Arisanti', 63, 60, 74, 50, 66, 110, 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-453631', 'Fathurrahman', 67, 62, 80, 60, 80, 95, 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-331323', 'SENDY MARISKA', 70, 80, 80, 67, 90, 90, 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-414329', 'wiwi saptarina', 77, 82, 88, 57, 68, 100, 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-391014', 'Muhammad rezki hidayat', 80, 88, 86, 77, 62, 115, 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-847846', 'Ahmad hakiki', 77, 90, 78, 70, 64, 90, 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-328999', 'Muhammad Barkatullah amin', 67, 64, 68, 57, 62, 100, 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-359346', 'Muhammad adil fadillah', 57, 58, 90, 67, 52, 95, 'S1 Perencanaan Wilayah dan Kota'),
('020301-21922201-855792', 'Fahmi Rahmadhani', 53, 70, 64, 63, 66, 95, 'S1 Teknik Sipil'),
('020301-21922201-371193', 'Tukafid Dwi Jati Bais', 50, 80, 66, 83, 52, 90, 'S1 Teknik Sipil'),
('020301-31922201-145285', 'achmad iqbal febriansyah', 53, 92, 80, 73, 82, 98, 'S1 Teknik Sipil'),
('020301-12022201-965845', 'Syah Mizana Yusdin', 57, 64, 88, 53, 80, 90, 'S1 Teknik Sipil'),
('020501-12023201-904734', 'Rismayanti', 60, 54, 56, 50, 72, 115, 'S1 Arsitektur'),
('020401-12055201-311454', 'Lenny sulistia', 67, 78, 76, 60, 78, 120, 'S1 Informatika'),
('020401-12055201-899786', 'Muhammad Rizky Nugraha', 63, 76, 72, 70, 74, 115, 'S1 Informatika'),
('020401-12055201-973781', 'tarmuji sudrajat', 53, 70, 80, 93, 80, 100, 'S1 Informatika'),
('020301-12022201-326809', 'MUNA MUSTAQIMAH', 57, 60, 74, 57, 64, 100, 'S1 Informatika'),
('020501-12023201-267877', 'M.ALDI SEPTIANOR', 77, 68, 80, 57, 66, 90, 'S1 Arsitektur'),
('020401-12055201-661533', 'M RIFAT ADITAMA', 67, 86, 90, 53, 60, 105, 'S1 Informatika'),
('020501-12023201-116499', 'viska septy amelia', 87, 76, 56, 60, 90, 90, 'S1 Arsitektur'),
('020501-12023201-571793', 'M.Hasan', 73, 78, 50, 73, 57, 100, 'S1 Arsitektur'),
('020501-12023201-394055', 'Maharyadi Putra', 53, 80, 70, 83, 60, 97, 'S1 Arsitektur'),
('020401-12055201-893422', 'AHMAD RAHMIDINNUR', 80, 80, 60, 77, 90, 100, 'S1 Informatika'),
('020301-12022201-513195', 'Teguh Mahyudi', 63, 54, 76, 73, 70, 110, 'S1 Informatika'),
('020301-12022201-726614', 'Muhammad Abby alfariza', 70, 74, 80, 63, 77, 110, 'S1 Perencanaan Wilayah dan Kota'),
('020501-12023201-679052', 'Meri pebriani', 63, 78, 66, 67, 73, 90, 'S1 Arsitektur'),
('020401-12055201-216739', 'siti aisyah', 83, 64, 80, 70, 67, 110, 'S1 Informatika'),
('020301-12022201-360093', 'Anjari Nurhidayati', 63, 58, 92, 80, 57, 98, 'S1 Teknik Sipil'),
('020501-12023201-620391', 'sulaiman', 67, 80, 80, 77, 77, 110, 'S1 Arsitektur'),
('020301-12022201-668118', 'alda fadfillah destania namira', 70, 82, 76, 73, 87, 100, 'S1 Arsitektur'),
('020301-12022201-670029', 'Muhammad Sarwani', 60, 86, 70, 63, 83, 95, 'S1 Perencanaan Wilayah dan Kota');

-- --------------------------------------------------------

--
-- Table structure for table `datatraining`
--

CREATE TABLE `datatraining` (
  `nrm` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtk` int NOT NULL,
  `bindo` int NOT NULL,
  `bing` int NOT NULL,
  `ipa` int NOT NULL,
  `senbud` int NOT NULL,
  `psikotes` int NOT NULL,
  `prodi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `datatraining`
--

INSERT INTO `datatraining` (`nrm`, `nama`, `mtk`, `bindo`, `bing`, `ipa`, `senbud`, `psikotes`, `prodi`, `created_at`, `updated_at`) VALUES
('010201-21955201-409399', 'Anisha Pratiwi', 77, 60, 68, 80, 58, 110, 'S1 Informatika', '2023-05-18 10:03:00', '2023-05-18 10:03:00'),
('020301-11922201-107146', 'Muhammad Efendy', 57, 66, 86, 73, 86, 100, 'S1 Teknik Sipil', '2023-05-18 09:53:33', '2023-05-18 09:53:33'),
('020301-11922201-471314', 'Muhammad Aulia Hilman', 50, 76, 88, 77, 88, 90, 'S1 Teknik Sipil', '2023-05-18 09:52:58', '2023-05-18 09:52:58'),
('020301-11922201-794187', 'Ifal Ardhy', 70, 70, 80, 60, 70, 95, 'S1 Teknik Sipil', '2023-05-18 09:50:26', '2023-05-18 09:50:26'),
('020301-11922201-953780', 'Muhammad Algi Fari', 83, 78, 62, 57, 57, 90, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 09:49:55', '2023-05-18 09:49:55'),
('020301-12022201-192799', 'Ridha Ananda', 80, 88, 80, 73, 60, 100, 'S1 Arsitektur', '2023-05-18 10:34:56', '2023-12-30 18:19:02'),
('020301-12022201-326809', 'Muna Mustaqimah', 57, 60, 74, 57, 64, 100, 'S1 Informatika', '2023-05-18 10:27:07', '2023-05-18 10:27:07'),
('020301-12022201-360093', 'Anjari Nurhidayati', 63, 58, 92, 80, 57, 98, 'S1 Teknik Sipil', '2023-05-18 10:32:58', '2023-05-18 10:32:58'),
('020301-12022201-361908', 'Muhammad Ricky Mahendra', 67, 70, 78, 70, 80, 100, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:38:18', '2023-05-24 14:29:30'),
('020301-12022201-513195', 'Teguh Mahyudi', 63, 54, 76, 73, 70, 110, 'S1 Informatika', '2023-05-18 10:30:45', '2023-05-24 14:31:05'),
('020301-12022201-668118', 'Alda Fadfillah Destania Namira', 70, 82, 76, 73, 87, 100, 'S1 Arsitektur', '2023-05-18 10:33:52', '2023-05-18 10:33:52'),
('020301-12022201-670029', 'Muhammad Sarwani', 60, 86, 70, 63, 83, 95, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:34:26', '2023-05-18 10:34:26'),
('020301-12022201-701845', 'Muhammad Miftahul Ihsan', 60, 86, 90, 77, 78, 95, 'S1 Arsitektur', '2023-05-18 10:40:44', '2023-05-24 14:30:01'),
('020301-12022201-726614', 'Muhammad Abby Alfariza', 70, 74, 80, 63, 77, 110, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:31:28', '2023-05-24 14:29:17'),
('020301-12022201-748992', 'Muhammad Alwi Irvani', 87, 70, 68, 67, 77, 115, 'S1 Informatika', '2023-05-18 10:37:44', '2023-05-24 14:30:51'),
('020301-12022201-965845', 'Syah Mizana Yusdin', 57, 64, 88, 53, 80, 90, 'S1 Teknik Sipil', '2023-05-18 10:23:54', '2023-05-18 10:23:54'),
('020301-12022201-994043', 'Shafira Mutia', 53, 74, 80, 80, 76, 120, 'S1 Teknik Sipil', '2023-05-18 10:42:46', '2023-05-18 10:42:46'),
('020301-12122201-278781', 'Putri Nurlinawati', 70, 70, 80, 70, 64, 110, 'S1 Teknik Sipil', '2023-05-18 11:02:22', '2023-05-18 11:02:22'),
('020301-12122201-482218', 'Nur Asfiani Suardi', 53, 60, 72, 63, 80, 90, 'S1 Teknik Sipil', '2023-05-18 11:00:53', '2023-05-18 11:00:53'),
('020301-21922201-023555', 'Ahmad Hafi', 50, 94, 56, 60, 90, 90, 'S1 Teknik Sipil', '2023-05-18 09:57:00', '2023-05-18 09:57:00'),
('020301-21922201-082421', 'Aas Indriyani', 53, 68, 66, 73, 90, 90, 'S1 Teknik Sipil', '2023-05-18 10:08:01', '2023-05-18 10:08:01'),
('020301-21922201-098830', 'Ahmad Husin Naparin', 57, 68, 52, 80, 87, 110, 'S1 Teknik Sipil', '2023-05-18 10:09:39', '2023-05-18 10:09:39'),
('020301-21922201-211393', 'Gustie Sambalewa Saky', 50, 66, 60, 70, 95, 95, 'S1 Teknik Sipil', '2023-05-18 10:14:18', '2023-05-18 10:14:18'),
('020301-21922201-252165', 'Risky Yudi Pratama', 80, 64, 90, 57, 54, 100, 'S1 Teknik Sipil', '2023-05-18 10:04:02', '2023-05-18 10:04:02'),
('020301-21922201-289184', 'Aria Aji Prayudi', 87, 66, 82, 87, 66, 95, 'S1 Teknik Sipil', '2023-05-18 09:55:34', '2023-05-18 09:55:34'),
('020301-21922201-323668', 'Tariza Azijah Safitri', 80, 68, 88, 57, 80, 60, 'S1 Teknik Sipil', '2023-05-18 10:05:20', '2023-05-18 10:05:20'),
('020301-21922201-371193', 'Tukafid Dwi Jati Bais', 50, 80, 66, 83, 52, 90, 'S1 Teknik Sipil', '2023-05-18 10:22:56', '2023-05-18 10:22:56'),
('020301-21922201-564234', 'Anisa Nur Rahmah', 80, 76, 78, 67, 92, 92, 'S1 Teknik Sipil', '2023-05-18 10:01:32', '2023-05-18 10:01:32'),
('020301-21922201-614263', 'Muhammad Tasmin Al Akbar', 80, 62, 80, 87, 56, 100, 'S1 Teknik Sipil', '2023-05-18 10:03:34', '2023-05-18 10:03:34'),
('020301-21922201-660125', 'Putri Ersa Nadela', 80, 80, 72, 87, 78, 115, 'S1 Teknik Sipil', '2023-05-18 10:15:34', '2023-05-18 10:15:34'),
('020301-21922201-820686', 'Aris Perianor', 63, 66, 70, 77, 90, 120, 'S1 Teknik Sipil', '2023-05-18 10:07:34', '2023-05-18 10:07:34'),
('020301-21922201-855792', 'Fahmi Ramadhani', 53, 70, 64, 63, 66, 95, 'S1 Teknik Sipil', '2023-05-18 10:22:25', '2023-05-18 10:22:25'),
('020301-21922201-921617', 'Muhammad Donny', 60, 80, 58, 53, 90, 100, 'S1 Teknik Sipil', '2023-05-18 10:13:22', '2023-05-18 10:13:22'),
('020301-21922201-946813', 'Mikhael Bernando Tanjung', 73, 90, 74, 60, 66, 100, 'S1 Teknik Sipil', '2023-05-18 10:05:48', '2023-05-18 10:05:48'),
('020301-21922201-974651', 'Mita Sri Rahayu', 80, 64, 70, 60, 50, 105, 'S1 Teknik Sipil', '2023-05-18 10:10:07', '2023-05-18 10:10:07'),
('020301-21922201-999450', 'Sri Rizqi', 70, 68, 58, 83, 73, 115, 'S1 Teknik Sipil', '2023-05-18 10:09:03', '2023-05-18 10:09:03'),
('020301-22022201-063045', 'Aisyah Nur Syahriyah Nasution', 63, 88, 60, 70, 80, 95, 'S1 Teknik Sipil', '2023-05-18 10:49:07', '2023-05-18 10:49:07'),
('020301-22022201-286465', 'Nidia Riska Ananda', 70, 80, 88, 87, 72, 100, 'S1 Teknik Sipil', '2023-05-18 10:46:30', '2023-05-18 10:46:30'),
('020301-22022201-322900', 'Muhammad Rizqi Fathullah', 77, 90, 62, 67, 68, 120, 'S1 Teknik Sipil', '2023-05-18 10:53:56', '2023-05-18 10:53:56'),
('020301-22022201-340354', 'Maesa Fitri Sugiarti', 87, 88, 64, 63, 66, 100, 'S1 Teknik Sipil', '2023-05-18 10:53:19', '2023-05-18 10:53:19'),
('020301-22022201-346396', 'Noor Aulia Maghfirah', 70, 56, 70, 63, 66, 95, 'S1 Teknik Sipil', '2023-05-18 10:56:01', '2023-05-18 10:56:01'),
('020301-22022201-378495', 'Muhammad Fajrin', 63, 70, 78, 60, 72, 100, 'S1 Teknik Sipil', '2023-05-18 10:51:06', '2023-05-18 10:51:06'),
('020301-22022201-397767', 'Riyanto', 63, 58, 90, 70, 66, 100, 'S1 Teknik Sipil', '2023-05-18 10:43:13', '2023-05-18 10:43:13'),
('020301-22022201-598691', 'Humairah', 53, 60, 64, 50, 68, 115, 'S1 Informatika', '2023-05-18 10:57:26', '2023-05-18 10:57:26'),
('020301-22022201-787120', 'Muhammad Barkatullah Amin', 73, 66, 50, 63, 62, 100, 'S1 Teknik Sipil', '2023-05-18 10:50:33', '2023-05-18 10:50:33'),
('020301-22022201-879549', 'Dina', 57, 64, 80, 50, 94, 100, 'S1 Teknik Sipil', '2023-05-18 10:46:02', '2023-05-18 10:46:02'),
('020301-31922201-145285', 'Achmad Iqbal Febriansyah', 53, 92, 80, 73, 82, 98, 'S1 Teknik Sipil', '2023-05-18 10:23:23', '2023-05-18 10:23:23'),
('020401-11955201-476660', 'Tri Indah Lestari', 60, 70, 90, 70, 87, 105, 'S1 Informatika', '2023-05-18 09:51:47', '2023-05-18 09:51:47'),
('020401-11955201-478727', 'Muhammad Miftachul Falah', 77, 82, 64, 90, 57, 95, 'S1 Informatika', '2023-05-18 09:49:28', '2023-05-18 09:49:28'),
('020401-11955201-820597', 'Arsyintha Dewi', 70, 72, 88, 60, 50, 110, 'S1 Informatika', '2023-05-18 09:48:59', '2023-05-18 09:48:59'),
('020401-12055201-117443', 'Muhammad Fadhil Maula', 77, 84, 88, 57, 73, 100, 'S1 Informatika', '2023-05-18 10:36:02', '2023-05-18 10:36:02'),
('020401-12055201-216739', 'Siti Aisyah', 83, 64, 80, 70, 67, 110, 'S1 Informatika', '2023-05-18 10:32:28', '2023-05-18 10:32:28'),
('020401-12055201-311454', 'Lenny Sulistia', 67, 78, 76, 60, 78, 120, 'S1 Informatika', '2023-05-18 10:25:18', '2023-05-18 10:25:18'),
('020401-12055201-341264', 'Muhammad Rijal', 67, 66, 56, 80, 72, 105, 'S1 Informatika', '2023-05-18 10:39:18', '2023-05-18 10:39:18'),
('020401-12055201-657497', 'Nurhikmah', 70, 56, 54, 67, 82, 110, 'S1 Informatika', '2023-05-18 10:39:49', '2023-05-18 10:39:49'),
('020401-12055201-661533', 'M. Rifat Aditama', 67, 86, 90, 53, 60, 105, 'S1 Informatika', '2023-05-18 10:28:06', '2023-05-18 10:28:06'),
('020401-12055201-675356', 'Rizki Maulana', 50, 80, 60, 53, 70, 110, 'S1 Informatika', '2023-05-18 10:41:14', '2023-05-18 10:41:14'),
('020401-12055201-759846', 'Aulya Miftahul Fadhilah', 57, 64, 78, 60, 70, 90, 'S1 Informatika', '2023-05-18 10:42:12', '2023-05-18 10:42:12'),
('020401-12055201-893422', 'Ahmad Rahmidinnur', 80, 80, 60, 77, 90, 100, 'S1 Informatika', '2023-05-18 10:30:16', '2023-05-18 10:30:16'),
('020401-12055201-899786', 'Muhammad Rizky Nugraha', 63, 76, 72, 70, 74, 100, 'S1 Informatika', '2023-05-18 10:26:11', '2023-05-18 10:26:11'),
('020401-12055201-973781', 'Tarmuji Sudrajat', 53, 70, 80, 93, 80, 100, 'S1 Informatika', '2023-05-18 10:26:35', '2023-05-18 10:26:35'),
('020401-12155201-196282', 'Salsa Nadilla', 67, 74, 66, 67, 80, 95, 'S1 Informatika', '2023-05-18 11:03:25', '2023-05-18 11:03:25'),
('020401-12155201-892124', 'Muhammad Tahrir', 50, 66, 78, 83, 70, 100, 'S1 Informatika', '2023-05-18 11:01:23', '2023-05-18 11:01:23'),
('020401-21955201-008029', 'Irvan Noviansyah', 67, 68, 68, 87, 60, 115, 'S1 Informatika', '2023-05-18 10:08:37', '2023-05-18 10:08:37'),
('020401-21955201-056380', 'Gilang Irchas Ariffudin', 57, 64, 68, 72, 80, 110, 'S1 Informatika', '2023-05-18 10:14:45', '2023-05-18 10:14:45'),
('020401-21955201-093850', 'Muhammad Rifqi Wardana', 77, 80, 76, 50, 67, 120, 'S1 Informatika', '2023-05-18 10:11:40', '2023-05-18 10:11:40'),
('020401-21955201-140056', 'Muhammad Iqbal Zamzami', 73, 76, 80, 77, 64, 110, 'S1 Informatika', '2023-05-18 09:55:04', '2023-05-18 09:55:04'),
('020401-21955201-242651', 'Prayogo Prastiawan', 80, 76, 76, 80, 68, 96, 'S1 Informatika', '2023-05-18 09:59:03', '2023-05-18 09:59:03'),
('020401-21955201-310389', 'Ahmad Rifani', 63, 78, 78, 77, 66, 95, 'S1 Informatika', '2023-05-18 09:58:30', '2023-05-18 09:58:30'),
('020401-21955201-448929', 'Ahmad Waris', 77, 94, 60, 67, 78, 98, 'S1 Informatika', '2023-05-18 10:06:37', '2023-05-18 10:06:37'),
('020401-21955201-476091', 'Jamaliansyah', 73, 72, 66, 70, 78, 100, 'S1 Informatika', '2023-05-18 10:02:31', '2023-05-18 10:02:31'),
('020401-21955201-658259', 'Melyana', 57, 66, 92, 53, 90, 90, 'S1 Informatika', '2023-05-18 10:04:28', '2023-05-18 10:04:28'),
('020401-21955201-728611', 'Ahmad Aqli', 83, 80, 76, 63, 68, 115, 'S1 Informatika', '2023-05-18 10:00:44', '2023-05-18 10:00:44'),
('020401-21955201-882770', 'Gt. Nita Fauziah', 53, 54, 70, 53, 76, 98, 'S1 Informatika', '2023-05-18 10:17:36', '2023-05-18 10:17:36'),
('020401-21955201-944436', 'Syayiddah', 70, 72, 80, 73, 68, 100, 'S1 Informatika', '2023-05-18 10:02:02', '2023-05-18 10:02:02'),
('020401-22055201-139014', 'Ummi Qalsum', 63, 58, 72, 63, 66, 90, 'S1 Informatika', '2023-05-18 10:45:07', '2023-05-18 10:45:07'),
('020401-22055201-144051', 'Muhammad Nizar Taufiqurahman', 77, 90, 84, 83, 70, 95, 'S1 Informatika', '2023-05-18 10:47:02', '2023-05-18 10:47:02'),
('020401-22055201-512262', 'Dwi Kurnia Sandy', 70, 64, 88, 87, 80, 100, 'S1 Informatika', '2023-05-18 10:43:40', '2023-05-18 10:43:40'),
('020401-22055201-627247', 'Hidayaturrahman', 67, 78, 68, 60, 68, 100, 'S1 Informatika', '2023-05-18 10:56:29', '2023-05-18 10:56:29'),
('020401-22055201-705859', 'Irhas Noor', 67, 60, 82, 70, 80, 110, 'S1 Informatika', '2023-05-18 10:59:48', '2023-05-18 10:59:48'),
('020401-22055201-957685', 'Muhammad Ridho Hijriawan', 63, 60, 90, 60, 94, 100, 'S1 Informatika', '2023-05-18 10:55:02', '2023-05-18 10:55:02'),
('020401-22055201-988372', 'Arida Vera Puspitasari', 67, 68, 68, 60, 80, 115, 'S1 Informatika', '2023-05-18 10:49:40', '2023-05-18 10:49:40'),
('020501-11923201-597546', 'Qimawa Anggit Rakha Ananda', 87, 90, 86, 90, 73, 95, 'S1 Arsitektur', '2023-05-18 09:51:07', '2023-05-18 09:51:07'),
('020501-12023201-116499', 'Viska Septy Amelia', 87, 76, 56, 60, 90, 90, 'S1 Arsitektur', '2023-05-18 10:28:35', '2023-05-18 10:28:35'),
('020501-12023201-243669', 'Muhammad Nor Erfansyah', 73, 90, 86, 50, 67, 100, 'S1 Arsitektur', '2023-05-18 10:35:31', '2023-05-18 10:35:31'),
('020501-12023201-267865', 'Rifqi Ramadhani', 53, 66, 66, 63, 90, 90, 'S1 Arsitektur', '2023-05-18 10:41:43', '2023-05-18 10:41:43'),
('020501-12023201-267877', 'M. Aldi Septianor', 77, 68, 80, 57, 66, 90, 'S1 Arsitektur', '2023-05-18 10:27:36', '2023-05-18 10:27:36'),
('020501-12023201-394055', 'Maharyadi Putra', 53, 80, 70, 83, 60, 97, 'S1 Arsitektur', '2023-05-18 10:29:42', '2023-05-18 10:29:42'),
('020501-12023201-571793', 'M. Hasan', 73, 78, 50, 73, 57, 100, 'S1 Arsitektur', '2023-05-18 10:29:07', '2023-05-18 10:29:07'),
('020501-12023201-620391', 'Sulaiman', 67, 80, 80, 77, 77, 110, 'S1 Arsitektur', '2023-05-18 10:33:25', '2023-05-18 10:33:25'),
('020501-12023201-679052', 'Meri Pebriani', 63, 78, 66, 67, 73, 90, 'S1 Arsitektur', '2023-05-18 10:31:54', '2023-05-18 10:31:54'),
('020501-12023201-904734', 'Rismayanti', 60, 54, 56, 50, 72, 115, 'S1 Arsitektur', '2023-05-18 10:24:33', '2023-05-18 10:24:33'),
('020501-12123201-770239', 'Rukayah', 77, 72, 64, 60, 72, 90, 'S1 Arsitektur', '2023-05-18 11:02:58', '2023-05-18 11:02:58'),
('020501-21923201-160297', 'Rahmad Yusac Amindo', 73, 60, 84, 83, 68, 95, 'S1 Arsitektur', '2023-05-18 09:56:17', '2023-05-18 09:56:17'),
('020501-21923201-398106', 'Sarifudin Wahid Mawardi', 63, 54, 78, 57, 70, 100, 'S1 Arsitektur', '2023-05-18 10:12:11', '2023-05-18 10:12:11'),
('020501-21923201-475352', 'Setia Wulan Sari', 70, 72, 70, 77, 82, 98, 'S1 Arsitektur', '2023-05-18 10:15:09', '2023-05-18 10:15:09'),
('020501-21923201-508132', 'Muhammad Khaidir Amin', 73, 72, 58, 67, 94, 90, 'S1 Arsitektur', '2023-05-18 09:57:32', '2023-05-18 09:57:32'),
('020501-21923201-522900', 'Shofia Muna', 67, 60, 54, 63, 80, 100, 'S1 Arsitektur', '2023-05-18 10:07:09', '2023-05-18 10:07:09'),
('020501-21923201-561610', 'Muhammad Hafizh Rifai', 87, 80, 66, 67, 68, 95, 'S1 Arsitektur', '2023-05-18 09:59:57', '2023-05-18 09:59:57'),
('020501-21923201-568478', 'Mochammad Nadhir Bayu Isnan Maulidy', 77, 70, 90, 87, 53, 115, 'S1 Arsitektur', '2023-05-18 10:11:04', '2023-05-18 10:11:04'),
('020501-21923201-819205', 'Puput Priantri', 53, 70, 62, 67, 77, 110, 'S1 Arsitektur', '2023-05-18 10:13:52', '2023-05-18 10:13:52'),
('020501-21923201-991225', 'Yogi', 57, 50, 68, 63, 70, 105, 'S1 Arsitektur', '2023-05-18 10:17:06', '2023-05-18 10:17:06'),
('020501-22023201-042522', 'Siti Fatimah Zahra', 53, 60, 90, 53, 60, 100, 'S1 Arsitektur', '2023-05-18 10:45:35', '2023-05-18 10:45:35'),
('020501-22023201-089451', 'Al Amin', 67, 70, 74, 57, 76, 100, 'S1 Arsitektur', '2023-05-18 10:44:37', '2023-05-18 10:44:37'),
('020501-22023201-109502', 'Muhammad Heldi', 70, 78, 68, 77, 62, 115, 'S1 Arsitektur', '2023-05-18 10:52:25', '2023-05-18 10:52:25'),
('020501-22023201-124913', 'Tata Pratiwi Marpuang', 57, 80, 52, 67, 70, 97, 'S1 Arsitektur', '2023-05-18 10:59:22', '2023-05-18 10:59:22'),
('020501-22023201-685427', 'Syarifah Sasabila Renum Assodiq', 77, 68, 78, 70, 90, 92, 'S1 Arsitektur', '2023-05-18 10:44:11', '2023-05-18 10:44:11'),
('020501-22023201-692865', 'Azizah Nuraini', 60, 80, 66, 73, 64, 105, 'S1 Arsitektur', '2023-05-18 10:52:51', '2023-05-18 10:52:51'),
('020501-22023201-742199', 'Alya Adani', 60, 70, 78, 67, 60, 110, 'S1 Arsitektur', '2023-05-18 10:55:37', '2023-05-18 10:55:37'),
('020501-22023201-887811', 'Intan Dwi Rahmah Yusup', 63, 74, 72, 87, 76, 96, 'S1 Arsitektur', '2023-05-18 10:48:00', '2023-05-18 10:48:00'),
('030101-11935201-526577', 'Muhammad Andika Noor Romadhoni', 57, 80, 76, 67, 76, 99, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 09:54:06', '2023-05-18 09:54:06'),
('030101-12035201-107555', 'Dhea Qolbina', 63, 76, 58, 77, 60, 115, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:38:44', '2023-05-18 10:38:44'),
('030101-12035201-328999', 'Muhammad Barkatullah Amin', 67, 64, 68, 57, 72, 100, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:21:16', '2023-05-18 10:21:16'),
('030101-12035201-331323', 'Sendy Mariska', 70, 80, 80, 67, 90, 90, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:18:59', '2023-05-18 10:18:59'),
('030101-12035201-359346', 'Muhammad Adil Fadillah', 57, 58, 90, 67, 52, 95, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:21:54', '2023-05-18 10:21:54'),
('030101-12035201-391014', 'Muhammad Rezki Hidayat', 80, 88, 86, 77, 62, 115, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:20:05', '2023-05-18 10:20:05'),
('030101-12035201-414329', 'Wiwi Saptarina', 77, 90, 78, 70, 68, 100, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:19:27', '2023-05-18 10:19:27'),
('030101-12035201-453631', 'Fathurrahman', 67, 62, 80, 60, 80, 95, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:18:33', '2023-05-18 10:18:33'),
('030101-12035201-847846', 'Ahmad Hakiki', 77, 90, 78, 70, 64, 90, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:20:33', '2023-05-18 10:20:33'),
('030101-12135201-522831', 'Tazkia Fakhriaty', 60, 78, 74, 80, 66, 110, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 11:01:48', '2023-05-18 11:01:48'),
('030101-12135201-739303', 'Muhammad Fiqriyan', 63, 54, 80, 67, 54, 100, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 11:00:24', '2023-05-18 11:00:24'),
('030101-21935201-422374', 'Ayu Kumala Dewi', 67, 84, 78, 83, 70, 105, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:16:04', '2023-05-18 10:16:04'),
('030101-21935201-633641', 'Emily Nityasa', 70, 58, 68, 73, 57, 120, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:10:33', '2023-05-18 10:10:33'),
('030101-21935201-665975', 'Noferiansyah', 70, 90, 78, 57, 78, 100, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 09:54:34', '2023-05-18 09:54:34'),
('030101-21935201-745995', 'Muhammad Ferryawan Serayu', 60, 70, 60, 73, 60, 95, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 09:58:03', '2023-05-18 09:58:03'),
('030101-21935201-782000', 'Abdul Azis Amrullah', 77, 66, 60, 93, 90, 90, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:16:33', '2023-05-18 10:16:33'),
('030101-21935201-848591', 'Nanda Putra Nugraha', 88, 82, 50, 60, 68, 100, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 09:59:31', '2023-05-18 09:59:31'),
('030101-21935201-917606', 'Maulidya Putri Arisanti', 63, 60, 74, 50, 66, 110, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:18:05', '2023-05-18 10:18:05'),
('030101-22035201-013881', 'Muhammad Akbar', 80, 74, 76, 70, 60, 115, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:51:51', '2023-05-18 10:51:51'),
('030101-22035201-030276', 'Dina Sunarmi', 67, 92, 80, 63, 90, 105, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:54:27', '2023-05-18 10:54:27'),
('030101-22035201-102936', 'Ahmad Mahadi', 50, 72, 52, 64, 80, 110, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:58:25', '2023-05-18 10:58:25'),
('030101-22035201-523111', 'Muhammad Farid', 60, 78, 66, 60, 58, 95, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:58:57', '2023-05-18 10:58:57'),
('030101-22035201-668792', 'Fadiah Safitri Herdianti', 87, 64, 76, 80, 78, 90, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:47:32', '2023-05-18 10:47:32'),
('030101-22035201-696955', 'Rachmadera Drestalita Islamy', 77, 64, 58, 67, 76, 110, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:50:07', '2023-05-18 10:50:07'),
('030101-22035201-723609', 'Muhammad Alwi', 77, 84, 74, 83, 82, 100, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:48:33', '2023-05-18 10:48:33'),
('030101-22035201-805202', 'Delka Pratama Saputra', 57, 50, 62, 57, 68, 110, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:56:58', '2023-05-18 10:56:58'),
('030101-22035201-853651', 'Ahya Nabila', 53, 68, 62, 53, 68, 100, 'S1 Perencanaan Wilayah dan Kota', '2023-05-18 10:57:53', '2023-05-18 10:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `datauji`
--

CREATE TABLE `datauji` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtk` int NOT NULL,
  `bindo` int NOT NULL,
  `bing` int NOT NULL,
  `ipa` int NOT NULL,
  `senbud` int DEFAULT '0',
  `psikotes` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `datauji`
--

INSERT INTO `datauji` (`id`, `nama`, `mtk`, `bindo`, `bing`, `ipa`, `senbud`, `psikotes`, `created_at`, `updated_at`) VALUES
(943509490, 'Ridha Ananda', 80, 88, 80, 73, 60, 100, '2024-01-15 23:02:58', '2024-01-15 23:02:58'),
(943509491, 'Muhammad Nor Erfansyah', 73, 90, 86, 50, 67, 100, '2024-01-15 23:03:36', '2024-01-15 23:03:36'),
(943509492, 'Muhammad Fadhil Maula', 77, 84, 88, 57, 73, 100, '2024-01-15 23:04:10', '2024-01-15 23:04:10'),
(943509493, 'Muhammad Alwi Irvani', 87, 70, 68, 67, 77, 115, '2024-01-15 23:04:46', '2024-01-15 23:04:46'),
(943509494, 'Muhammad Ricky Mahendra', 67, 70, 78, 70, 80, 100, '2024-01-16 01:22:50', '2024-01-16 01:22:50'),
(943509495, 'Dhea Qolbina', 63, 76, 58, 77, 60, 115, '2024-01-16 01:23:25', '2024-01-16 01:23:25'),
(943509496, 'Muhammad Rijal', 67, 66, 56, 80, 72, 105, '2024-01-16 01:24:02', '2024-01-16 01:24:02'),
(943509497, 'Nurhikmah', 70, 56, 54, 67, 82, 110, '2024-01-16 01:24:48', '2024-01-16 01:24:48'),
(943509498, 'Muhammad Miftahul Ihsan', 60, 86, 90, 77, 78, 95, '2024-01-16 01:25:21', '2024-01-16 01:25:21'),
(943509499, 'Rizki Maulana', 50, 80, 60, 53, 70, 110, '2024-01-16 01:25:58', '2024-01-16 01:25:58'),
(943509500, 'Rifqi Ramadhani', 53, 66, 66, 63, 90, 90, '2024-01-16 01:26:32', '2024-01-16 01:26:32'),
(943509501, 'Aulya Miftahul Fadhilah', 57, 64, 78, 60, 70, 90, '2024-01-16 01:27:49', '2024-01-16 01:27:49'),
(943509502, 'Shafira Mutia', 53, 74, 80, 80, 76, 120, '2024-01-16 01:28:23', '2024-01-16 01:28:23'),
(943509503, 'Riyanto', 63, 58, 90, 70, 66, 100, '2024-01-16 01:29:08', '2024-01-16 01:29:08'),
(943509504, 'Dwi Kurnia Sandy', 70, 64, 88, 87, 80, 100, '2024-01-16 01:29:44', '2024-01-16 01:29:44'),
(943509505, 'Syarifah Sasabila Renum Assodiq', 77, 68, 78, 70, 90, 92, '2024-01-16 01:30:22', '2024-01-16 01:30:22'),
(943509506, 'Al Amin', 67, 70, 74, 57, 76, 100, '2024-01-16 01:31:00', '2024-01-16 01:31:00'),
(943509507, 'Ummi Qalsum', 63, 58, 72, 63, 66, 90, '2024-01-16 01:31:31', '2024-01-16 01:31:31'),
(943509508, 'Siti Fatimah Zahra', 53, 60, 90, 53, 60, 100, '2024-01-16 01:32:07', '2024-01-16 01:32:07'),
(943509509, 'Dina', 57, 64, 80, 50, 94, 100, '2024-01-16 01:32:39', '2024-01-16 01:32:39'),
(943509510, 'Nidia Riska Ananda', 70, 80, 88, 87, 72, 100, '2024-01-16 01:33:19', '2024-01-16 01:33:19'),
(943509511, 'Muhammad Nizar Taufiqurahman', 77, 90, 84, 83, 70, 95, '2024-01-16 01:33:59', '2024-01-16 01:33:59'),
(943509512, 'Intan Dwi Rahmah Yusup', 63, 74, 72, 87, 76, 96, '2024-01-16 01:34:51', '2024-01-16 01:34:51'),
(943509513, 'Muhammad Alwi', 77, 84, 74, 83, 82, 100, '2024-01-16 01:35:37', '2024-01-16 01:35:37'),
(943509514, 'Aisyah Nur Syahriyah Nasution', 63, 88, 60, 70, 80, 95, '2024-01-16 01:37:11', '2024-01-16 01:37:11'),
(943509515, 'Arida Vera Puspitasari', 67, 68, 68, 60, 80, 115, '2024-01-16 01:37:54', '2024-01-16 01:37:54'),
(943509516, 'Rachmadera Drestalita Islamy', 77, 64, 58, 67, 76, 110, '2024-01-16 01:38:38', '2024-01-16 01:38:38'),
(943509517, 'Muhammad Barkatullah Amin', 73, 66, 50, 63, 72, 100, '2024-01-16 01:39:18', '2024-01-16 01:39:18'),
(943509518, 'Muhammad Fajrin', 63, 70, 78, 60, 72, 100, '2024-01-16 01:39:55', '2024-01-16 01:39:55'),
(943509519, 'Muhammad Akbar', 80, 74, 76, 70, 60, 115, '2024-01-16 01:40:32', '2024-01-16 01:40:32'),
(943509520, 'Muhammad Heldi', 70, 78, 68, 77, 62, 115, '2024-01-16 01:41:02', '2024-01-16 01:41:02'),
(943509521, 'Azizah Nuraini', 60, 80, 66, 73, 64, 105, '2024-01-16 01:41:40', '2024-01-16 01:41:40'),
(943509522, 'Maesa Fitri Sugiarti', 87, 88, 64, 63, 66, 100, '2024-01-16 01:42:19', '2024-01-16 01:42:19'),
(943509523, 'Muhammad Rizqi Fathullah', 77, 90, 62, 67, 68, 120, '2024-01-16 01:42:55', '2024-01-16 01:42:55'),
(943509524, 'Dina Sunarmi', 67, 92, 80, 63, 90, 105, '2024-01-16 01:43:27', '2024-01-16 01:43:27'),
(943509525, 'Muhammad Ridho Hijriawan', 63, 60, 90, 60, 94, 100, '2024-01-16 01:44:14', '2024-01-16 01:44:14'),
(943509526, 'Alya Adani', 60, 70, 78, 67, 60, 110, '2024-01-16 01:44:43', '2024-01-16 01:44:43'),
(943509527, 'Noor Aulia Maghfirah', 70, 56, 70, 63, 66, 95, '2024-01-16 01:45:16', '2024-01-16 01:45:16'),
(943509528, 'Hidayaturrahman', 67, 78, 68, 60, 68, 100, '2024-01-16 01:46:25', '2024-01-16 01:46:25'),
(943509529, 'Delka Pratama Saputra', 57, 50, 62, 57, 68, 110, '2024-01-16 01:46:59', '2024-01-16 01:46:59'),
(943509530, 'Humairah', 53, 60, 64, 50, 68, 115, '2024-01-16 01:47:32', '2024-01-16 01:47:32'),
(943509531, 'Ahya Nabila', 53, 68, 62, 53, 68, 100, '2024-01-16 01:48:09', '2024-01-16 01:48:09'),
(943509532, 'Ahmad Mahadi', 50, 72, 52, 70, 64, 110, '2024-01-16 01:48:48', '2024-01-16 01:48:48'),
(943509533, 'Muhammad Farid', 60, 78, 66, 60, 58, 95, '2024-01-16 01:49:20', '2024-01-16 01:49:20'),
(943509534, 'Tata Pratiwi Marpuang', 57, 80, 52, 67, 70, 97, '2024-01-16 01:49:54', '2024-01-16 01:49:54'),
(943509535, 'Irhas Noor', 67, 60, 82, 70, 80, 110, '2024-01-16 01:50:27', '2024-01-16 01:50:27'),
(943509536, 'Muhammad Fiqriyan', 63, 54, 80, 67, 54, 100, '2024-01-16 01:51:05', '2024-01-16 01:51:05'),
(943509537, 'Nur Asfiani Suardi', 53, 60, 72, 63, 80, 90, '2024-01-16 01:51:46', '2024-01-16 01:51:46'),
(943509538, 'Muhammad Tahrir', 50, 66, 78, 83, 70, 100, '2024-01-16 01:52:22', '2024-01-16 01:52:22'),
(943509539, 'Tazkia Fakhriaty', 60, 78, 74, 80, 66, 110, '2024-01-16 01:52:53', '2024-01-16 01:52:53'),
(943509540, 'Putri Nurlinawati', 70, 70, 80, 70, 64, 110, '2024-01-16 01:53:21', '2024-01-16 01:53:21'),
(943509541, 'Rukayah', 77, 72, 64, 60, 72, 90, '2024-01-16 01:53:50', '2024-01-16 01:53:50'),
(943509542, 'Salsa Nadilla', 67, 74, 66, 67, 80, 95, '2024-01-16 01:54:16', '2024-01-16 01:54:16'),
(943509543, 'Fadiah Safitri Herdianti', 87, 64, 76, 80, 78, 90, '2024-01-16 01:56:12', '2024-01-16 01:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int NOT NULL,
  `hasil_prodi` varchar(100) NOT NULL,
  `id_datauji` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `hasil_prodi`, `id_datauji`, `id_user`) VALUES
(259, 'S1 Informatika', 943509477, 2),
(276, 'S1 Informatika', 943509478, 2),
(279, 'S1 Perencanaan Wilayah dan Kota', 943509479, 2),
(283, 'S1 Perencanaan Wilayah dan Kota', 943509482, NULL),
(284, 'S1 Informatika', 943509481, 2),
(285, 'S1 Informatika', 943509480, 2),
(286, 'S1 Informatika', 943509483, NULL),
(288, 'S1 Teknik Sipil', 943509484, 2),
(290, 'S1 Arsitektur', 943509485, 2),
(293, 'S1 Perencanaan Wilayah dan Kota', 943509488, NULL),
(294, 'S1 Perencanaan Wilayah dan Kota', 943509486, 2),
(295, 'S1 Informatika', 943509487, 2),
(296, 'S1 Arsitektur', 943509489, NULL),
(299, 'S1 Perencanaan Wilayah dan Kota', 943509492, NULL),
(300, 'S1 Informatika', 943509493, NULL),
(301, 'S1 Teknik Sipil', 943509494, NULL),
(302, 'S1 Informatika', 943509495, NULL),
(303, 'S1 Informatika', 943509496, NULL),
(304, 'S1 Informatika', 943509497, NULL),
(305, 'S1 Teknik Sipil', 943509498, NULL),
(306, 'S1 Perencanaan Wilayah dan Kota', 943509499, NULL),
(307, 'S1 Teknik Sipil', 943509500, NULL),
(308, 'S1 Perencanaan Wilayah dan Kota', 943509501, NULL),
(309, 'S1 Informatika', 943509502, NULL),
(310, 'S1 Teknik Sipil', 943509503, NULL),
(311, 'S1 Teknik Sipil', 943509504, NULL),
(312, 'S1 Perencanaan Wilayah dan Kota', 943509505, NULL),
(313, 'S1 Perencanaan Wilayah dan Kota', 943509506, NULL),
(314, 'S1 Perencanaan Wilayah dan Kota', 943509507, NULL),
(315, 'S1 Teknik Sipil', 943509508, NULL),
(316, 'S1 Teknik Sipil', 943509509, NULL),
(317, 'S1 Arsitektur', 943509510, NULL),
(318, 'S1 Arsitektur', 943509511, NULL),
(319, 'S1 Teknik Sipil', 943509512, NULL),
(320, 'S1 Arsitektur', 943509513, NULL),
(321, 'S1 Perencanaan Wilayah dan Kota', 943509514, NULL),
(322, 'S1 Informatika', 943509515, NULL),
(323, 'S1 Informatika', 943509516, NULL),
(324, 'S1 Perencanaan Wilayah dan Kota', 943509517, NULL),
(325, 'S1 Perencanaan Wilayah dan Kota', 943509518, NULL),
(326, 'S1 Informatika', 943509519, NULL),
(327, 'S1 Informatika', 943509520, NULL),
(328, 'S1 Perencanaan Wilayah dan Kota', 943509521, NULL),
(329, 'S1 Perencanaan Wilayah dan Kota', 943509522, NULL),
(330, 'S1 Perencanaan Wilayah dan Kota', 943509523, NULL),
(331, 'S1 Perencanaan Wilayah dan Kota', 943509524, NULL),
(332, 'S1 Teknik Sipil', 943509525, NULL),
(333, 'S1 Informatika', 943509526, NULL),
(334, 'S1 Informatika', 943509527, NULL),
(335, 'S1 Perencanaan Wilayah dan Kota', 943509528, NULL),
(336, 'S1 Informatika', 943509529, NULL),
(337, 'S1 Informatika', 943509530, NULL),
(338, 'S1 Perencanaan Wilayah dan Kota', 943509531, NULL),
(339, 'S1 Informatika', 943509532, NULL),
(340, 'S1 Perencanaan Wilayah dan Kota', 943509533, NULL),
(341, 'S1 Perencanaan Wilayah dan Kota', 943509534, NULL),
(342, 'S1 Informatika', 943509535, NULL),
(343, 'S1 Informatika', 943509536, NULL),
(344, 'S1 Teknik Sipil', 943509537, NULL),
(345, 'S1 Teknik Sipil', 943509538, NULL),
(346, 'S1 Informatika', 943509539, NULL),
(347, 'S1 Informatika', 943509540, NULL),
(348, 'S1 Perencanaan Wilayah dan Kota', 943509541, NULL),
(349, 'S1 Perencanaan Wilayah dan Kota', 943509542, NULL),
(350, 'S1 Arsitektur', 943509543, NULL),
(354, 'S1 Informatika', 943509491, 2),
(359, 'S1 Informatika', 943509490, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hasiltraining`
--

CREATE TABLE `hasiltraining` (
  `nrm` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `prodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hasiltraining`
--

INSERT INTO `hasiltraining` (`nrm`, `nama`, `prodi`) VALUES
('020401-11955201-820597', 'Arsyintha Dewi', 'S1 Informatika'),
('020401-11955201-478727', 'Muhammad Miftachul Falah', 'S1 Arsitektur'),
('020301-11922201-953780', 'Muhammad Algi Fari', 'S1 Perencanaan Wilayah dan Kota'),
('020301-11922201-794187', 'Ifal Ardhy', 'S1 Teknik Sipil'),
('020501-11923201-597546', 'Qimawa Anggit Rakha Ananda', 'S1 Perencanaan Wilayah dan Kota'),
('020401-11955201-476660', 'Tri indah lestari ', 'S1 Informatika'),
('020301-11922201-471314', 'MUHAMMAD AULIA HILMAN', 'S1 Informatika'),
('020301-11922201-107146', 'Muhammad Efendy', 'S1 Teknik Sipil'),
('030101-11935201-526577', 'Muhammad andika noor romadhoni', 'S1 Perencanaan Wilayah dan Kota'),
('030101-21935201-665975', 'Noferiansyah', 'S1 Perencanaan Wilayah dan Kota'),
('020401-21955201-140056', 'MUHAMMAD IQBAL ZAMZAMI', 'S1 Informatika'),
('020301-21922201-289184', 'Aria aji prayudi', 'S1 Informatika'),
('020501-21923201-160297', 'Rahmad Yusac Amindo', 'S1 Teknik Sipil'),
('020301-21922201-023555', 'ahmad hafi', 'S1 Teknik Sipil'),
('020501-21923201-508132', 'MUHAMMAD KHAIDIR AMIN', 'S1 Arsitektur'),
('030101-21935201-745995', 'Muhammad Ferryawan Serayu', 'S1 Teknik Sipil'),
('020401-21955201-310389', 'Ahmad Rifani', 'S1 Arsitektur'),
('020401-21955201-242651', 'PRAYOGO PRASTIAWAN', 'S1 Perencanaan Wilayah dan Kota'),
('030101-21935201-848591', 'Nanda putra nugraha', 'S1 Perencanaan Wilayah dan Kota'),
('020501-21923201-561610', 'Muhammad Hafizh Rifai', 'S1 Arsitektur'),
('020401-21955201-728611', 'Ahmad Aqli', 'S1 Informatika'),
('020301-21922201-564234', 'ANISA NUR RAHMAH', 'S1 Teknik Sipil'),
('020401-21955201-944436', 'SYAYIDDAH', 'S1 Teknik Sipil'),
('020401-21955201-476091', 'Jamaliansyah', 'S1 Informatika'),
('010201-21955201-409399', 'Anisha Pratiwi', 'S1 Informatika'),
('020301-21922201-614263', 'Muhammad tasmin al akbar', 'S1 Informatika'),
('020301-21922201-252165', 'Risky Yudi Pratama', 'S1 Teknik Sipil'),
('020401-21955201-658259', 'Melyana', 'S1 Informatika'),
('020301-21922201-323668', 'Tariza Azijah Safitri', 'S1 Teknik Sipil'),
('020301-21922201-946813', 'Mikhael Bernando Tanjung ', 'S1 Teknik Sipil'),
('020401-21955201-448929', 'Ahmad waris', 'S1 Informatika'),
('020501-21923201-522900', 'Shofia Muna', 'S1 Arsitektur'),
('020301-21922201-820686', 'ARIS PERIANOR', 'S1 Teknik Sipil'),
('020301-21922201-082421', 'AAS INDRIYANI', 'S1 Arsitektur'),
('020401-21955201-008029', 'Irvan Noviansyah ', 'S1 Informatika'),
('020301-21922201-999450', 'sri rizqi', 'S1 Teknik Sipil'),
('020301-21922201-098830', 'Ahmad Husin Naparin', 'S1 Teknik Sipil'),
('020301-21922201-974651', 'Mita Sri Rahayu', 'S1 Teknik Sipil'),
('030101-21935201-633641', 'emily nityasa', 'S1 Informatika'),
('020501-21923201-568478', 'MOCHAMMAD NADHIR BAYU ISNAN MAULIDY', 'S1 Arsitektur'),
('020401-21955201-093850', 'Muhammad Rifqi Wardana', 'S1 Perencanaan Wilayah dan Kota'),
('020501-21923201-398106', 'Sarifudin Wahid Mawardi', 'S1 Arsitektur'),
('020301-21922201-921617', 'Muhammad donny', 'S1 Teknik Sipil'),
('020501-21923201-819205', 'Puput Priantri', 'S1 Arsitektur'),
('020301-21922201-211393', 'Gustie sambalewa saky ', 'S1 Arsitektur'),
('020401-21955201-056380', 'Gilang irchas arifudin', 'S1 Informatika'),
('020501-21923201-475352', 'Setia Wulan Sari', 'S1 Informatika'),
('020301-21922201-660125', 'Putri Ersa Nadela ', 'S1 Teknik Sipil'),
('030101-21935201-422374', 'Ayu kumala dewi', 'S1 Arsitektur'),
('030101-21935201-782000', 'ABDUL AZIS AMRULLAH', 'S1 Arsitektur'),
('020501-21923201-991225', 'YOGI', 'S1 Arsitektur'),
('020401-21955201-882770', 'Gt. Nita Fauziah', 'S1 Informatika'),
('030101-21935201-917606', 'Maulidya Putri Arisanti', 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-453631', 'Fathurrahman', 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-331323', 'SENDY MARISKA', 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-414329', 'wiwi saptarina', 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-391014', 'Muhammad rezki hidayat', 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-847846', 'Ahmad hakiki', 'S1 Teknik Sipil'),
('030101-12035201-328999', 'Muhammad Barkatullah amin', 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-359346', 'Muhammad adil fadillah', 'S1 Perencanaan Wilayah dan Kota'),
('020301-21922201-855792', 'Fahmi Rahmadhani', 'S1 Teknik Sipil'),
('020301-21922201-371193', 'Tukafid Dwi Jati Bais', 'S1 Perencanaan Wilayah dan Kota'),
('020301-31922201-145285', 'achmad iqbal febriansyah', 'S1 Teknik Sipil'),
('020301-12022201-965845', 'Syah Mizana Yusdin', 'S1 Teknik Sipil'),
('020501-12023201-904734', 'Rismayanti', 'S1 Arsitektur'),
('020401-12055201-311454', 'Lenny sulistia', 'S1 Arsitektur'),
('020401-12055201-899786', 'Muhammad Rizky Nugraha', 'S1 Perencanaan Wilayah dan Kota'),
('020401-12055201-973781', 'tarmuji sudrajat', 'S1 Teknik Sipil'),
('020301-12022201-326809', 'MUNA MUSTAQIMAH', 'S1 Informatika'),
('020501-12023201-267877', 'M.ALDI SEPTIANOR', 'S1 Arsitektur'),
('020401-12055201-661533', 'M RIFAT ADITAMA', 'S1 Informatika'),
('020501-12023201-116499', 'viska septy amelia', 'S1 Arsitektur'),
('020501-12023201-571793', 'M.Hasan', 'S1 Arsitektur'),
('020501-12023201-394055', 'Maharyadi Putra', 'S1 Arsitektur'),
('020401-12055201-893422', 'AHMAD RAHMIDINNUR', 'S1 Informatika'),
('020301-12022201-513195', 'Teguh Mahyudi', 'S1 Informatika'),
('020301-12022201-726614', 'Muhammad Abby alfariza', 'S1 Perencanaan Wilayah dan Kota'),
('020501-12023201-679052', 'Meri pebriani', 'S1 Informatika'),
('020401-12055201-216739', 'siti aisyah', 'S1 Informatika'),
('020301-12022201-360093', 'Anjari Nurhidayati', 'S1 Teknik Sipil'),
('020501-12023201-620391', 'sulaiman', 'S1 Arsitektur'),
('020301-12022201-668118', 'alda fadfillah destania namira', 'S1 Perencanaan Wilayah dan Kota'),
('020301-12022201-670029', 'Muhammad Sarwani', 'S1 Perencanaan Wilayah dan Kota');

-- --------------------------------------------------------

--
-- Table structure for table `hasiluji`
--

CREATE TABLE `hasiluji` (
  `nrm` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hasiluji`
--

INSERT INTO `hasiluji` (`nrm`, `nama`, `prodi`) VALUES
('020301-12022201-192799', 'Ridha Ananda', 'S1 Arsitektur'),
('020501-12023201-243669', 'MUHAMMAD NOR ERFANSYAH', 'S1 Arsitektur'),
('020401-12055201-117443', 'Muhammad Fadhil maula', 'S1 Informatika'),
('020301-12022201-748992', 'Muhammad alwi irvani', 'S1 Perencanaan Wilayah dan Kota'),
('020301-12022201-361908', 'Muhammad Ricky Mahendra', 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-107555', 'DHEA QOLBINA', 'S1 Perencanaan Wilayah dan Kota'),
('020401-12055201-341264', 'Muhammad Rijal', 'S1 Informatika'),
('020401-12055201-657497', 'Nurhikmah', 'S1 Informatika'),
('020301-12022201-701845', 'Muhammad Miftahul Ihsan', 'S1 Arsitektur'),
('020401-12055201-675356', 'Rizki Maulana', 'S1 Arsitektur'),
('020501-12023201-267865', 'Rifqi Ramadhani', 'S1 Arsitektur'),
('020401-12055201-759846', 'AULYA MIFTAHUL FADHILAH', 'S1 Informatika'),
('020301-12022201-994043', 'Shafira Mutia', 'S1 Informatika'),
('020301-22022201-397767', 'Riyanto', 'S1 Teknik Sipil'),
('020401-22055201-512262', 'Dwi kurnia sandy', 'S1 Informatika'),
('020501-22023201-685427', 'Syarifah sasabila renum assodiq', 'S1 Teknik Sipil'),
('020501-22023201-089451', 'Al amin', 'S1 Arsitektur'),
('020401-22055201-139014', 'Ummi Qalsum', 'S1 Informatika'),
('020501-22023201-042522', 'Siti Fatimah Zahra', 'S1 Arsitektur'),
('020301-22022201-879549', 'Dina ', 'S1 Teknik Sipil'),
('020301-22022201-286465', 'Nidia Riska Ananda', 'S1 Teknik Sipil'),
('020401-22055201-144051', 'Muhammad Nizar Taufiqurahman', 'S1 Perencanaan Wilayah dan Kota'),
('030101-22035201-668792', 'Fadiah safitri herdianti', 'S1 Informatika'),
('020501-22023201-887811', 'Intan Dwi Rahmah Yusup', 'S1 Arsitektur'),
('030101-22035201-723609', 'Muhammad Alwi', 'S1 Perencanaan Wilayah dan Kota'),
('020301-22022201-063045', 'AISYAH NUR SYAHRIYAH NASUTION', 'S1 Teknik Sipil'),
('020401-22055201-988372', 'Arida Vera Puspitasari', 'S1 Arsitektur'),
('030101-22035201-696955', 'Rachmadera Drestalita Islamy', 'S1 Perencanaan Wilayah dan Kota'),
('020301-22022201-787120', 'MUHAMMAD BARKATULLAH AMIN', 'S1 Teknik Sipil'),
('020301-22022201-378495', 'Muhamad Fajrin', 'S1 Teknik Sipil'),
('030101-22035201-013881', 'Muhammad Akbar', 'S1 Informatika'),
('020501-22023201-109502', 'Muhammad Heldi', 'S1 Arsitektur'),
('020501-22023201-692865', 'Azizah Nuraini', 'S1 Arsitektur'),
('020301-22022201-340354', 'Maesa Fitri Sugiarti', 'S1 Teknik Sipil'),
('020301-22022201-322900', 'Muhammad Rizqi Fathullah', 'S1 Informatika'),
('030101-22035201-030276', 'Dina sunarmi', 'S1 Perencanaan Wilayah dan Kota'),
('020401-22055201-957685', 'MUHAMMAD RIDHO HIJRIAWAN', 'S1 Informatika'),
('020501-22023201-742199', 'Alya Adani', 'S1 Arsitektur'),
('020301-22022201-346396', 'Noor Aulia Maghfirah', 'S1 Teknik Sipil'),
('020401-22055201-627247', 'Hidayaturrahman', 'S1 Informatika'),
('030101-22035201-805202', 'Delka Pratama Saputra', 'S1 Arsitektur'),
('020301-22022201-598691', 'Humairah', 'S1 Teknik Sipil'),
('030101-22035201-853651', 'Ahya Nabila', 'S1 Teknik Sipil'),
('030101-22035201-102936', 'Ahmad mahadi ', 'S1 Perencanaan Wilayah dan Kota'),
('030101-22035201-523111', 'Muhammad Farid', 'S1 Perencanaan Wilayah dan Kota'),
('020501-22023201-124913', 'Tata Pratiwi Marpaung', 'S1 Arsitektur'),
('020401-22055201-705859', 'Irhas Noor', 'S1 Informatika'),
('030101-12135201-739303', 'Muhammad Fiqriyan', 'S1 Perencanaan Wilayah dan Kota'),
('020301-12122201-482218', 'NUR ASFIANI SUARDI', 'S1 Teknik Sipil'),
('020401-12155201-892124', 'Muhammad Tahrir', 'S1 Informatika'),
('030101-12135201-522831', 'Tazkia fakhriaty', 'S1 Perencanaan Wilayah dan Kota'),
('020301-12122201-278781', 'Putri Nurlinawati', 'S1 Informatika'),
('020501-12123201-770239', 'Rukayah', 'S1 Arsitektur'),
('020401-12155201-196282', 'Salsa nadilla', 'S1 Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `jarak`
--

CREATE TABLE `jarak` (
  `id_jarak` int NOT NULL,
  `nrm` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jrk` double DEFAULT NULL,
  `t1` varchar(50) DEFAULT NULL,
  `t2` varchar(50) DEFAULT NULL,
  `t3` varchar(50) DEFAULT NULL,
  `t4` varchar(50) DEFAULT NULL,
  `t5` varchar(50) DEFAULT NULL,
  `t6` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jarak`
--

INSERT INTO `jarak` (`id_jarak`, `nrm`, `nama`, `jrk`, `t1`, `t2`, `t3`, `t4`, `t5`, `t6`) VALUES
(1, '010201-21955201-409399', 'Anisha Pratiwi', 0.7378, '', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(2, '020301-11922201-107146', 'Muhammad Efendy', 0.9901, '', '', 'S1 Teknik Sipil', '', '', ''),
(3, '020301-11922201-471314', 'Muhammad Aulia Hilman', 1.0729, '', '', '', '', '', ''),
(4, '020301-11922201-794187', 'Ifal Ardhy', 0.6216, 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', 'S1 Teknik Sipil', ''),
(5, '020301-11922201-953780', 'Muhammad Algi Fari', 0.6393, 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(6, '020301-12022201-192799', 'Ridha Ananda', 0.0085, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', ''),
(7, '020301-12022201-326809', 'Muna Mustaqimah', 0.9706, '', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(8, '020301-12022201-360093', 'Anjari Nurhidayati', 0.8852, '', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(9, '020301-12022201-361908', 'Muhammad Ricky Mahendra', 0.7022, 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(10, '020301-12022201-513195', 'Teguh Mahyudi', 0.94, '', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(11, '020301-12022201-668118', 'Alda Fadfillah Destania Namira', 0.6719, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(12, '020301-12022201-670029', 'Muhammad Sarwani', 0.811, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(13, '020301-12022201-701845', 'Muhammad Miftahul Ihsan', 0.716, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(14, '020301-12022201-726614', 'Muhammad Abby Alfariza', 0.6247, 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', 'S1 Perencanaan Wilayah dan Kota', ''),
(15, '020301-12022201-748992', 'Muhammad Alwi Irvani', 0.7139, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(16, '020301-12022201-965845', 'Syah Mizana Yusdin', 1.0705, '', '', 'S1 Teknik Sipil', '', '', ''),
(17, '020301-12022201-994043', 'Shafira Mutia', 0.9317, '', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(18, '020301-12122201-278781', 'Putri Nurlinawati', 0.5263, 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', ''),
(19, '020301-12122201-482218', 'Nur Asfiani Suardi', 1.1073, '', '', '', '', '', ''),
(20, '020301-21922201-023555', 'Ahmad Hafi', 1.2403, '', '', '', '', '', ''),
(21, '020301-21922201-082421', 'Aas Indriyani', 1.1378, '', '', '', '', '', ''),
(22, '020301-21922201-098830', 'Ahmad Husin Naparin', 1.1957, '', '', '', '', '', ''),
(23, '020301-21922201-211393', 'Gustie Sambalewa Saky', 1.3109, '', '', '', '', '', ''),
(24, '020301-21922201-252165', 'Risky Yudi Pratama', 0.7135, 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(25, '020301-21922201-289184', 'Aria Aji Prayudi', 0.6485, 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(26, '020301-21922201-323668', 'Tariza Azijah Safitri', 1.0128, '', '', 'S1 Teknik Sipil', '', '', ''),
(27, '020301-21922201-371193', 'Tukafid Dwi Jati Bais', 0.9407, '', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(28, '020301-21922201-564234', 'Anisa Nur Rahmah', 0.784, '', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(29, '020301-21922201-614263', 'Muhammad Tasmin Al Akbar', 0.6831, 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(30, '020301-21922201-660125', 'Putri Ersa Nadela', 0.6321, 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', 'S1 Teknik Sipil', ''),
(31, '020301-21922201-820686', 'Aris Perianor', 1.0376, '', '', 'S1 Teknik Sipil', '', '', ''),
(32, '020301-21922201-855792', 'Fahmi Ramadhani', 0.9507, '', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(33, '020301-21922201-921617', 'Muhammad Donny', 1.1185, '', '', '', '', '', ''),
(34, '020301-21922201-946813', 'Mikhael Bernando Tanjung', 0.4088, 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', ''),
(35, '020301-21922201-974651', 'Mita Sri Rahayu', 0.7069, 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(36, '020301-21922201-999450', 'Sri Rizqi', 0.8662, '', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(37, '020301-22022201-063045', 'Aisyah Nur Syahriyah Nasution', 0.7995, '', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(38, '020301-22022201-286465', 'Nidia Riska Ananda', 0.5594, 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', ''),
(39, '020301-22022201-322900', 'Muhammad Rizqi Fathullah', 0.5911, 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', ''),
(40, '020301-22022201-340354', 'Maesa Fitri Sugiarti', 0.5044, 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', ''),
(41, '020301-22022201-346396', 'Noor Aulia Maghfirah', 0.853, '', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(42, '020301-22022201-378495', 'Muhammad Fajrin', 0.7347, 'S1 Teknik Sipil', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(43, '020301-22022201-397767', 'Riyanto', 0.865, '', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(44, '020301-22022201-598691', 'Humairah', 1.1977, '', '', '', '', '', ''),
(45, '020301-22022201-787120', 'Muhammad Barkatullah Amin', 0.9239, '', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(46, '020301-22022201-879549', 'Dina', 1.2359, '', '', '', '', '', ''),
(47, '020301-31922201-145285', 'Achmad Iqbal Febriansyah', 0.8661, '', 'S1 Teknik Sipil', 'S1 Teknik Sipil', '', '', ''),
(48, '020401-11955201-476660', 'Tri Indah Lestari', 0.9357, '', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(49, '020401-11955201-478727', 'Muhammad Miftachul Falah', 0.5825, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', ''),
(50, '020401-11955201-820597', 'Arsyintha Dewi', 0.6349, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', '', 'S1 Informatika', ''),
(51, '020401-12055201-117443', 'Muhammad Fadhil Maula', 0.5224, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', ''),
(52, '020401-12055201-216739', 'Siti Aisyah', 0.5982, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', ''),
(53, '020401-12055201-311454', 'Lenny Sulistia', 0.7324, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(54, '020401-12055201-341264', 'Muhammad Rijal', 0.897, '', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(55, '020401-12055201-657497', 'Nurhikmah', 1.1185, '', '', '', '', '', ''),
(56, '020401-12055201-661533', 'M. Rifat Aditama', 0.6291, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', '', 'S1 Informatika', ''),
(57, '020401-12055201-675356', 'Rizki Maulana', 1.0827, '', '', '', '', '', ''),
(58, '020401-12055201-759846', 'Aulya Miftahul Fadhilah', 0.9149, '', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(59, '020401-12055201-893422', 'Ahmad Rahmidinnur', 0.8448, '', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(60, '020401-12055201-899786', 'Muhammad Rizky Nugraha', 0.6431, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(61, '020401-12055201-973781', 'Tarmuji Sudrajat', 1.0447, '', '', 'S1 Informatika', '', '', ''),
(62, '020401-12155201-196282', 'Salsa Nadilla', 0.7427, '', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(63, '020401-12155201-892124', 'Muhammad Tahrir', 0.9908, '', '', 'S1 Informatika', '', '', ''),
(64, '020401-21955201-008029', 'Irvan Noviansyah', 0.7561, '', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(65, '020401-21955201-056380', 'Gilang Irchas Ariffudin', 0.9877, '', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(66, '020401-21955201-093850', 'Muhammad Rifqi Wardana', 0.6863, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(67, '020401-21955201-140056', 'Muhammad Iqbal Zamzami', 0.388, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', ''),
(68, '020401-21955201-242651', 'Prayogo Prastiawan', 0.3835, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', ''),
(69, '020401-21955201-310389', 'Ahmad Rifani', 0.5381, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', ''),
(70, '020401-21955201-448929', 'Ahmad Waris', 0.6539, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(71, '020401-21955201-476091', 'Jamaliansyah', 0.6623, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(72, '020401-21955201-658259', 'Melyana', 1.1818, '', '', '', '', '', ''),
(73, '020401-21955201-728611', 'Ahmad Aqli', 0.4473, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', ''),
(74, '020401-21955201-882770', 'Gt. Nita Fauziah', 1.2257, '', '', '', '', '', ''),
(75, '020401-21955201-944436', 'Syayiddah', 0.4808, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', ''),
(76, '020401-22055201-139014', 'Ummi Qalsum', 0.8995, '', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(77, '020401-22055201-144051', 'Muhammad Nizar Taufiqurahman', 0.3576, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', ''),
(78, '020401-22055201-512262', 'Dwi Kurnia Sandy', 0.8388, '', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(79, '020401-22055201-627247', 'Hidayaturrahman', 0.6088, 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', 'S1 Informatika', ''),
(80, '020401-22055201-705859', 'Irhas Noor', 0.8662, '', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(81, '020401-22055201-957685', 'Muhammad Ridho Hijriawan', 1.1516, '', '', '', '', '', ''),
(82, '020401-22055201-988372', 'Arida Vera Puspitasari', 0.8715, '', 'S1 Informatika', 'S1 Informatika', '', '', ''),
(83, '020501-11923201-597546', 'Qimawa Anggit Rakha Ananda', 0.5499, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', ''),
(84, '020501-12023201-116499', 'Viska Septy Amelia', 1.002, '', '', 'S1 Arsitektur', '', '', ''),
(85, '020501-12023201-243669', 'Muhammad Nor Erfansyah', 0.6055, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', ''),
(86, '020501-12023201-267865', 'Rifqi Ramadhani', 1.1822, '', '', '', '', '', ''),
(87, '020501-12023201-267877', 'M. Aldi Septianor', 0.632, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', '', 'S1 Arsitektur', ''),
(88, '020501-12023201-394055', 'Maharyadi Putra', 0.8059, '', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(89, '020501-12023201-571793', 'M. Hasan', 0.7722, '', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(90, '020501-12023201-620391', 'Sulaiman', 0.5722, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', ''),
(91, '020501-12023201-679052', 'Meri Pebriani', 0.7018, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(92, '020501-12023201-904734', 'Rismayanti', 1.277, '', '', '', '', '', ''),
(93, '020501-12123201-770239', 'Rukayah', 0.6919, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(94, '020501-21923201-160297', 'Rahmad Yusac Amindo', 0.733, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(95, '020501-21923201-398106', 'Sarifudin Wahid Mawardi', 0.9952, '', '', 'S1 Arsitektur', '', '', ''),
(96, '020501-21923201-475352', 'Setia Wulan Sari', 0.7091, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(97, '020501-21923201-508132', 'Muhammad Khaidir Amin', 1.0293, '', '', 'S1 Arsitektur', '', '', ''),
(98, '020501-21923201-522900', 'Shofia Muna', 1.0723, '', '', 'S1 Arsitektur', '', '', ''),
(99, '020501-21923201-561610', 'Muhammad Hafizh Rifai', 0.4851, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', ''),
(100, '020501-21923201-568478', 'Mochammad Nadhir Bayu Isnan Maulidy', 0.6527, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(101, '020501-21923201-819205', 'Puput Priantri', 1.0208, '', '', 'S1 Arsitektur', '', '', ''),
(102, '020501-21923201-991225', 'Yogi', 1.1435, '', '', '', '', '', ''),
(103, '020501-22023201-042522', 'Siti Fatimah Zahra', 1.0847, '', '', '', '', '', ''),
(104, '020501-22023201-089451', 'Al Amin', 0.7588, '', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(105, '020501-22023201-109502', 'Muhammad Heldi', 0.5231, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', ''),
(106, '020501-22023201-124913', 'Tata Pratiwi Marpuang', 0.9562, '', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(107, '020501-22023201-685427', 'Syarifah Sasabila Renum Assodiq', 0.8264, '', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(108, '020501-22023201-692865', 'Azizah Nuraini', 0.6637, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(109, '020501-22023201-742199', 'Alya Adani', 0.7059, 'S1 Arsitektur', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(110, '020501-22023201-887811', 'Intan Dwi Rahmah Yusup', 0.7591, '', 'S1 Arsitektur', 'S1 Arsitektur', '', '', ''),
(111, '030101-11935201-526577', 'Muhammad Andika Noor Romadhoni', 0.7487, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(112, '030101-12035201-107555', 'Dhea Qolbina', 0.7906, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(113, '030101-12035201-328999', 'Muhammad Barkatullah Amin', 0.839, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(114, '030101-12035201-331323', 'Sendy Mariska', 0.77, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(115, '030101-12035201-359346', 'Muhammad Adil Fadillah', 0.9764, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(116, '030101-12035201-391014', 'Muhammad Rezki Hidayat', 0.3111, 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', ''),
(117, '030101-12035201-414329', 'Wiwi Saptarina', 0.2151, 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', ''),
(118, '030101-12035201-453631', 'Fathurrahman', 0.8767, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(119, '030101-12035201-847846', 'Ahmad Hakiki', 0.2239, 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', ''),
(120, '030101-12135201-522831', 'Tazkia Fakhriaty', 0.6512, 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(121, '030101-12135201-739303', 'Muhammad Fiqriyan', 0.9145, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(122, '030101-21935201-422374', 'Ayu Kumala Dewi', 0.4854, 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', ''),
(123, '030101-21935201-633641', 'Emily Nityasa', 0.8547, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(124, '030101-21935201-665975', 'Noferiansyah', 0.6085, 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', ''),
(125, '030101-21935201-745995', 'Muhammad Ferryawan Serayu', 0.827, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(126, '030101-21935201-782000', 'Abdul Azis Amrullah', 1.084, '', '', '', '', '', ''),
(127, '030101-21935201-848591', 'Nanda Putra Nugraha', 0.8348, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(128, '030101-21935201-917606', 'Maulidya Putri Arisanti', 0.9778, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(129, '030101-22035201-013881', 'Muhammad Akbar', 0.4191, 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', ''),
(130, '030101-22035201-030276', 'Dina Sunarmi', 0.7942, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(131, '030101-22035201-102936', 'Ahmad Mahadi', 1.2108, '', '', '', '', '', ''),
(132, '030101-22035201-523111', 'Muhammad Farid', 0.7378, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(133, '030101-22035201-668792', 'Fadiah Safitri Herdianti', 0.7418, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(134, '030101-22035201-696955', 'Rachmadera Drestalita Islamy', 0.8658, '', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', '', '', ''),
(135, '030101-22035201-723609', 'Muhammad Alwi', 0.5737, 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', 'S1 Perencanaan Wilayah dan Kota', ''),
(136, '030101-22035201-805202', 'Delka Pratama Saputra', 1.2232, '', '', '', '', '', ''),
(137, '030101-22035201-853651', 'Ahya Nabila', 1.0663, '', '', 'S1 Perencanaan Wilayah dan Kota', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_05_051928_create_datamhsw_table', 1),
(6, '2023_05_03_141616_create_datatraining_table', 1),
(7, '2023_05_03_185850_create_normalisasi_table', 1),
(8, '2023_05_04_031515_create_bobot_table', 1),
(9, '2023_05_10_012651_create_datauji_table', 1),
(10, '2023_05_10_162210_create_kriteria_table', 1),
(11, '2023_07_09_141420_create_settings', 2);

-- --------------------------------------------------------

--
-- Table structure for table `normalisasi`
--

CREATE TABLE `normalisasi` (
  `id` bigint UNSIGNED NOT NULL,
  `nrm` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mtk` double(8,2) NOT NULL,
  `bindo` double(8,2) NOT NULL,
  `bing` double(8,2) NOT NULL,
  `ipa` double(8,2) NOT NULL,
  `senbud` double(8,2) NOT NULL,
  `psikotes` double(8,2) NOT NULL,
  `prodi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `normalisasi`
--

INSERT INTO `normalisasi` (`id`, `nrm`, `nama`, `mtk`, `bindo`, `bing`, `ipa`, `senbud`, `psikotes`, `prodi`, `created_at`, `updated_at`) VALUES
(1, '010201-21955201-409399', 'Anisha Pratiwi', 0.71, 0.23, 0.43, 0.70, 0.18, 0.83, 'S1 Informatika', NULL, NULL),
(2, '020301-11922201-107146', 'Muhammad Efendy', 0.18, 0.36, 0.86, 0.53, 0.80, 0.67, 'S1 Teknik Sipil', NULL, NULL),
(3, '020301-11922201-471314', 'Muhammad Aulia Hilman', 0.00, 0.59, 0.90, 0.63, 0.84, 0.50, 'S1 Teknik Sipil', NULL, NULL),
(4, '020301-11922201-794187', 'Ifal Ardhy', 0.53, 0.45, 0.71, 0.23, 0.44, 0.58, 'S1 Teknik Sipil', NULL, NULL),
(5, '020301-11922201-953780', 'Muhammad Algi Fari', 0.87, 0.64, 0.29, 0.16, 0.16, 0.50, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(6, '020301-12022201-192799', 'Ridha Ananda', 0.79, 0.86, 0.71, 0.53, 0.22, 0.67, 'S1 Arsitektur', NULL, NULL),
(7, '020301-12022201-326809', 'Muna Mustaqimah', 0.18, 0.23, 0.57, 0.16, 0.31, 0.67, 'S1 Informatika', NULL, NULL),
(8, '020301-12022201-360093', 'Anjari Nurhidayati', 0.34, 0.18, 1.00, 0.70, 0.16, 0.63, 'S1 Teknik Sipil', NULL, NULL),
(9, '020301-12022201-361908', 'Muhammad Ricky Mahendra', 0.45, 0.45, 0.67, 0.47, 0.67, 0.67, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(10, '020301-12022201-513195', 'Teguh Mahyudi', 0.34, 0.09, 0.62, 0.53, 0.44, 0.83, 'S1 Informatika', NULL, NULL),
(11, '020301-12022201-668118', 'Alda Fadfillah Destania Namira', 0.53, 0.73, 0.62, 0.53, 0.82, 0.67, 'S1 Arsitektur', NULL, NULL),
(12, '020301-12022201-670029', 'Muhammad Sarwani', 0.26, 0.82, 0.48, 0.30, 0.73, 0.58, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(13, '020301-12022201-701845', 'Muhammad Miftahul Ihsan', 0.26, 0.82, 0.95, 0.63, 0.62, 0.58, 'S1 Arsitektur', NULL, NULL),
(14, '020301-12022201-726614', 'Muhammad Abby Alfariza', 0.53, 0.55, 0.71, 0.30, 0.60, 0.83, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(15, '020301-12022201-748992', 'Muhammad Alwi Irvani', 0.97, 0.45, 0.43, 0.40, 0.60, 0.92, 'S1 Informatika', NULL, NULL),
(16, '020301-12022201-965845', 'Syah Mizana Yusdin', 0.18, 0.32, 0.90, 0.07, 0.67, 0.50, 'S1 Teknik Sipil', NULL, NULL),
(17, '020301-12022201-994043', 'Shafira Mutia', 0.08, 0.55, 0.71, 0.70, 0.58, 1.00, 'S1 Teknik Sipil', NULL, NULL),
(18, '020301-12122201-278781', 'Putri Nurlinawati', 0.53, 0.45, 0.71, 0.47, 0.31, 0.83, 'S1 Teknik Sipil', NULL, NULL),
(19, '020301-12122201-482218', 'Nur Asfiani Suardi', 0.08, 0.23, 0.52, 0.30, 0.67, 0.50, 'S1 Teknik Sipil', NULL, NULL),
(20, '020301-21922201-023555', 'Ahmad Hafi', 0.00, 1.00, 0.14, 0.23, 0.89, 0.50, 'S1 Teknik Sipil', NULL, NULL),
(21, '020301-21922201-082421', 'Aas Indriyani', 0.08, 0.41, 0.38, 0.53, 0.89, 0.50, 'S1 Teknik Sipil', NULL, NULL),
(22, '020301-21922201-098830', 'Ahmad Husin Naparin', 0.18, 0.41, 0.05, 0.70, 0.82, 0.83, 'S1 Teknik Sipil', NULL, NULL),
(23, '020301-21922201-211393', 'Gustie Sambalewa Saky', 0.00, 0.36, 0.24, 0.47, 1.00, 0.58, 'S1 Teknik Sipil', NULL, NULL),
(24, '020301-21922201-252165', 'Risky Yudi Pratama', 0.79, 0.32, 0.95, 0.16, 0.09, 0.67, 'S1 Teknik Sipil', NULL, NULL),
(25, '020301-21922201-289184', 'Aria Aji Prayudi', 0.97, 0.36, 0.76, 0.86, 0.36, 0.58, 'S1 Teknik Sipil', NULL, NULL),
(26, '020301-21922201-323668', 'Tariza Azijah Safitri', 0.79, 0.41, 0.90, 0.16, 0.67, 0.00, 'S1 Teknik Sipil', NULL, NULL),
(27, '020301-21922201-371193', 'Tukafid Dwi Jati Bais', 0.00, 0.68, 0.38, 0.77, 0.04, 0.50, 'S1 Teknik Sipil', NULL, NULL),
(28, '020301-21922201-564234', 'Anisa Nur Rahmah', 0.79, 0.59, 0.67, 0.40, 0.93, 0.53, 'S1 Teknik Sipil', NULL, NULL),
(29, '020301-21922201-614263', 'Muhammad Tasmin Al Akbar', 0.79, 0.27, 0.71, 0.86, 0.13, 0.67, 'S1 Teknik Sipil', NULL, NULL),
(30, '020301-21922201-660125', 'Putri Ersa Nadela', 0.79, 0.68, 0.52, 0.86, 0.62, 0.92, 'S1 Teknik Sipil', NULL, NULL),
(31, '020301-21922201-820686', 'Aris Perianor', 0.34, 0.36, 0.48, 0.63, 0.89, 1.00, 'S1 Teknik Sipil', NULL, NULL),
(32, '020301-21922201-855792', 'Fahmi Ramadhani', 0.08, 0.45, 0.33, 0.30, 0.36, 0.58, 'S1 Teknik Sipil', NULL, NULL),
(33, '020301-21922201-921617', 'Muhammad Donny', 0.26, 0.68, 0.19, 0.07, 0.89, 0.67, 'S1 Teknik Sipil', NULL, NULL),
(34, '020301-21922201-946813', 'Mikhael Bernando Tanjung', 0.61, 0.91, 0.57, 0.23, 0.36, 0.67, 'S1 Teknik Sipil', NULL, NULL),
(35, '020301-21922201-974651', 'Mita Sri Rahayu', 0.79, 0.32, 0.48, 0.23, 0.00, 0.75, 'S1 Teknik Sipil', NULL, NULL),
(36, '020301-21922201-999450', 'Sri Rizqi', 0.53, 0.41, 0.19, 0.77, 0.51, 0.92, 'S1 Teknik Sipil', NULL, NULL),
(37, '020301-22022201-063045', 'Aisyah Nur Syahriyah Nasution', 0.34, 0.86, 0.24, 0.47, 0.67, 0.58, 'S1 Teknik Sipil', NULL, NULL),
(38, '020301-22022201-286465', 'Nidia Riska Ananda', 0.53, 0.68, 0.90, 0.86, 0.49, 0.67, 'S1 Teknik Sipil', NULL, NULL),
(39, '020301-22022201-322900', 'Muhammad Rizqi Fathullah', 0.71, 0.91, 0.29, 0.40, 0.40, 1.00, 'S1 Teknik Sipil', NULL, NULL),
(40, '020301-22022201-340354', 'Maesa Fitri Sugiarti', 0.97, 0.86, 0.33, 0.30, 0.36, 0.67, 'S1 Teknik Sipil', NULL, NULL),
(41, '020301-22022201-346396', 'Noor Aulia Maghfirah', 0.53, 0.14, 0.48, 0.30, 0.36, 0.58, 'S1 Teknik Sipil', NULL, NULL),
(42, '020301-22022201-378495', 'Muhammad Fajrin', 0.34, 0.45, 0.67, 0.23, 0.49, 0.67, 'S1 Teknik Sipil', NULL, NULL),
(43, '020301-22022201-397767', 'Riyanto', 0.34, 0.18, 0.95, 0.47, 0.36, 0.67, 'S1 Teknik Sipil', NULL, NULL),
(44, '020301-22022201-598691', 'Humairah', 0.08, 0.23, 0.33, 0.00, 0.40, 0.92, 'S1 Informatika', NULL, NULL),
(45, '020301-22022201-787120', 'Muhammad Barkatullah Amin', 0.61, 0.36, 0.00, 0.30, 0.27, 0.67, 'S1 Teknik Sipil', NULL, NULL),
(46, '020301-22022201-879549', 'Dina', 0.18, 0.32, 0.71, 0.00, 0.98, 0.67, 'S1 Teknik Sipil', NULL, NULL),
(47, '020301-31922201-145285', 'Achmad Iqbal Febriansyah', 0.08, 0.95, 0.71, 0.53, 0.71, 0.63, 'S1 Teknik Sipil', NULL, NULL),
(48, '020401-11955201-476660', 'Tri Indah Lestari', 0.26, 0.45, 0.95, 0.47, 0.82, 0.75, 'S1 Informatika', NULL, NULL),
(49, '020401-11955201-478727', 'Muhammad Miftachul Falah', 0.71, 0.73, 0.33, 0.93, 0.16, 0.58, 'S1 Informatika', NULL, NULL),
(50, '020401-11955201-820597', 'Arsyintha Dewi', 0.53, 0.50, 0.90, 0.23, 0.00, 0.83, 'S1 Informatika', NULL, NULL),
(51, '020401-12055201-117443', 'Muhammad Fadhil Maula', 0.71, 0.77, 0.90, 0.16, 0.51, 0.67, 'S1 Informatika', NULL, NULL),
(52, '020401-12055201-216739', 'Siti Aisyah', 0.87, 0.32, 0.71, 0.47, 0.38, 0.83, 'S1 Informatika', NULL, NULL),
(53, '020401-12055201-311454', 'Lenny Sulistia', 0.45, 0.64, 0.62, 0.23, 0.62, 1.00, 'S1 Informatika', NULL, NULL),
(54, '020401-12055201-341264', 'Muhammad Rijal', 0.45, 0.36, 0.14, 0.70, 0.49, 0.75, 'S1 Informatika', NULL, NULL),
(55, '020401-12055201-657497', 'Nurhikmah', 0.53, 0.14, 0.10, 0.40, 0.71, 0.83, 'S1 Informatika', NULL, NULL),
(56, '020401-12055201-661533', 'M. Rifat Aditama', 0.45, 0.82, 0.95, 0.07, 0.22, 0.75, 'S1 Informatika', NULL, NULL),
(57, '020401-12055201-675356', 'Rizki Maulana', 0.00, 0.68, 0.24, 0.07, 0.44, 0.83, 'S1 Informatika', NULL, NULL),
(58, '020401-12055201-759846', 'Aulya Miftahul Fadhilah', 0.18, 0.32, 0.67, 0.23, 0.44, 0.50, 'S1 Informatika', NULL, NULL),
(59, '020401-12055201-893422', 'Ahmad Rahmidinnur', 0.79, 0.68, 0.24, 0.63, 0.89, 0.67, 'S1 Informatika', NULL, NULL),
(60, '020401-12055201-899786', 'Muhammad Rizky Nugraha', 0.34, 0.59, 0.52, 0.47, 0.53, 0.67, 'S1 Informatika', NULL, NULL),
(61, '020401-12055201-973781', 'Tarmuji Sudrajat', 0.08, 0.45, 0.71, 1.00, 0.67, 0.67, 'S1 Informatika', NULL, NULL),
(62, '020401-12155201-196282', 'Salsa Nadilla', 0.45, 0.55, 0.38, 0.40, 0.67, 0.58, 'S1 Informatika', NULL, NULL),
(63, '020401-12155201-892124', 'Muhammad Tahrir', 0.00, 0.36, 0.67, 0.77, 0.44, 0.67, 'S1 Informatika', NULL, NULL),
(64, '020401-21955201-008029', 'Irvan Noviansyah', 0.45, 0.41, 0.43, 0.86, 0.22, 0.92, 'S1 Informatika', NULL, NULL),
(65, '020401-21955201-056380', 'Gilang Irchas Ariffudin', 0.18, 0.32, 0.43, 0.51, 0.67, 0.83, 'S1 Informatika', NULL, NULL),
(66, '020401-21955201-093850', 'Muhammad Rifqi Wardana', 0.71, 0.68, 0.62, 0.00, 0.38, 1.00, 'S1 Informatika', NULL, NULL),
(67, '020401-21955201-140056', 'Muhammad Iqbal Zamzami', 0.61, 0.59, 0.71, 0.63, 0.31, 0.83, 'S1 Informatika', NULL, NULL),
(68, '020401-21955201-242651', 'Prayogo Prastiawan', 0.79, 0.59, 0.62, 0.70, 0.40, 0.60, 'S1 Informatika', NULL, NULL),
(69, '020401-21955201-310389', 'Ahmad Rifani', 0.34, 0.64, 0.67, 0.63, 0.36, 0.58, 'S1 Informatika', NULL, NULL),
(70, '020401-21955201-448929', 'Ahmad Waris', 0.71, 1.00, 0.24, 0.40, 0.62, 0.63, 'S1 Informatika', NULL, NULL),
(71, '020401-21955201-476091', 'Jamaliansyah', 0.61, 0.50, 0.38, 0.47, 0.62, 0.67, 'S1 Informatika', NULL, NULL),
(72, '020401-21955201-658259', 'Melyana', 0.18, 0.36, 1.00, 0.07, 0.89, 0.50, 'S1 Informatika', NULL, NULL),
(73, '020401-21955201-728611', 'Ahmad Aqli', 0.87, 0.68, 0.62, 0.30, 0.40, 0.92, 'S1 Informatika', NULL, NULL),
(74, '020401-21955201-882770', 'Gt. Nita Fauziah', 0.08, 0.09, 0.48, 0.07, 0.58, 0.63, 'S1 Informatika', NULL, NULL),
(75, '020401-21955201-944436', 'Syayiddah', 0.53, 0.50, 0.71, 0.53, 0.40, 0.67, 'S1 Informatika', NULL, NULL),
(76, '020401-22055201-139014', 'Ummi Qalsum', 0.34, 0.18, 0.52, 0.30, 0.36, 0.50, 'S1 Informatika', NULL, NULL),
(77, '020401-22055201-144051', 'Muhammad Nizar Taufiqurahman', 0.71, 0.91, 0.81, 0.77, 0.44, 0.58, 'S1 Informatika', NULL, NULL),
(78, '020401-22055201-512262', 'Dwi Kurnia Sandy', 0.53, 0.32, 0.90, 0.86, 0.67, 0.67, 'S1 Informatika', NULL, NULL),
(79, '020401-22055201-627247', 'Hidayaturrahman', 0.45, 0.64, 0.43, 0.23, 0.40, 0.67, 'S1 Informatika', NULL, NULL),
(80, '020401-22055201-705859', 'Irhas Noor', 0.45, 0.23, 0.76, 0.47, 0.67, 0.83, 'S1 Informatika', NULL, NULL),
(81, '020401-22055201-957685', 'Muhammad Ridho Hijriawan', 0.34, 0.23, 0.95, 0.23, 0.98, 0.67, 'S1 Informatika', NULL, NULL),
(82, '020401-22055201-988372', 'Arida Vera Puspitasari', 0.45, 0.41, 0.43, 0.23, 0.67, 0.92, 'S1 Informatika', NULL, NULL),
(83, '020501-11923201-597546', 'Qimawa Anggit Rakha Ananda', 0.97, 0.91, 0.86, 0.93, 0.51, 0.58, 'S1 Arsitektur', NULL, NULL),
(84, '020501-12023201-116499', 'Viska Septy Amelia', 0.97, 0.59, 0.14, 0.23, 0.89, 0.50, 'S1 Arsitektur', NULL, NULL),
(85, '020501-12023201-243669', 'Muhammad Nor Erfansyah', 0.61, 0.91, 0.86, 0.00, 0.38, 0.67, 'S1 Arsitektur', NULL, NULL),
(86, '020501-12023201-267865', 'Rifqi Ramadhani', 0.08, 0.36, 0.38, 0.30, 0.89, 0.50, 'S1 Arsitektur', NULL, NULL),
(87, '020501-12023201-267877', 'M. Aldi Septianor', 0.71, 0.41, 0.71, 0.16, 0.36, 0.50, 'S1 Arsitektur', NULL, NULL),
(88, '020501-12023201-394055', 'Maharyadi Putra', 0.08, 0.68, 0.48, 0.77, 0.22, 0.62, 'S1 Arsitektur', NULL, NULL),
(89, '020501-12023201-571793', 'M. Hasan', 0.61, 0.64, 0.00, 0.53, 0.16, 0.67, 'S1 Arsitektur', NULL, NULL),
(90, '020501-12023201-620391', 'Sulaiman', 0.45, 0.68, 0.71, 0.63, 0.60, 0.83, 'S1 Arsitektur', NULL, NULL),
(91, '020501-12023201-679052', 'Meri Pebriani', 0.34, 0.64, 0.38, 0.40, 0.51, 0.50, 'S1 Arsitektur', NULL, NULL),
(92, '020501-12023201-904734', 'Rismayanti', 0.26, 0.09, 0.14, 0.00, 0.49, 0.92, 'S1 Arsitektur', NULL, NULL),
(93, '020501-12123201-770239', 'Rukayah', 0.71, 0.50, 0.33, 0.23, 0.49, 0.50, 'S1 Arsitektur', NULL, NULL),
(94, '020501-21923201-160297', 'Rahmad Yusac Amindo', 0.61, 0.23, 0.81, 0.77, 0.40, 0.58, 'S1 Arsitektur', NULL, NULL),
(95, '020501-21923201-398106', 'Sarifudin Wahid Mawardi', 0.34, 0.09, 0.67, 0.16, 0.44, 0.67, 'S1 Arsitektur', NULL, NULL),
(96, '020501-21923201-475352', 'Setia Wulan Sari', 0.53, 0.50, 0.48, 0.63, 0.71, 0.63, 'S1 Arsitektur', NULL, NULL),
(97, '020501-21923201-508132', 'Muhammad Khaidir Amin', 0.61, 0.50, 0.19, 0.40, 0.98, 0.50, 'S1 Arsitektur', NULL, NULL),
(98, '020501-21923201-522900', 'Shofia Muna', 0.45, 0.23, 0.10, 0.30, 0.67, 0.67, 'S1 Arsitektur', NULL, NULL),
(99, '020501-21923201-561610', 'Muhammad Hafizh Rifai', 0.97, 0.68, 0.38, 0.40, 0.40, 0.58, 'S1 Arsitektur', NULL, NULL),
(100, '020501-21923201-568478', 'Mochammad Nadhir Bayu Isnan Maulidy', 0.71, 0.45, 0.95, 0.86, 0.07, 0.92, 'S1 Arsitektur', NULL, NULL),
(101, '020501-21923201-819205', 'Puput Priantri', 0.08, 0.45, 0.29, 0.40, 0.60, 0.83, 'S1 Arsitektur', NULL, NULL),
(102, '020501-21923201-991225', 'Yogi', 0.18, 0.00, 0.43, 0.30, 0.44, 0.75, 'S1 Arsitektur', NULL, NULL),
(103, '020501-22023201-042522', 'Siti Fatimah Zahra', 0.08, 0.23, 0.95, 0.07, 0.22, 0.67, 'S1 Arsitektur', NULL, NULL),
(104, '020501-22023201-089451', 'Al Amin', 0.45, 0.45, 0.57, 0.16, 0.58, 0.67, 'S1 Arsitektur', NULL, NULL),
(105, '020501-22023201-109502', 'Muhammad Heldi', 0.53, 0.64, 0.43, 0.63, 0.27, 0.92, 'S1 Arsitektur', NULL, NULL),
(106, '020501-22023201-124913', 'Tata Pratiwi Marpuang', 0.18, 0.68, 0.05, 0.40, 0.44, 0.62, 'S1 Arsitektur', NULL, NULL),
(107, '020501-22023201-685427', 'Syarifah Sasabila Renum Assodiq', 0.71, 0.41, 0.67, 0.47, 0.89, 0.53, 'S1 Arsitektur', NULL, NULL),
(108, '020501-22023201-692865', 'Azizah Nuraini', 0.26, 0.68, 0.38, 0.53, 0.31, 0.75, 'S1 Arsitektur', NULL, NULL),
(109, '020501-22023201-742199', 'Alya Adani', 0.26, 0.45, 0.67, 0.40, 0.22, 0.83, 'S1 Arsitektur', NULL, NULL),
(110, '020501-22023201-887811', 'Intan Dwi Rahmah Yusup', 0.34, 0.55, 0.52, 0.86, 0.58, 0.60, 'S1 Arsitektur', NULL, NULL),
(111, '030101-11935201-526577', 'Muhammad Andika Noor Romadhoni', 0.18, 0.68, 0.62, 0.40, 0.58, 0.65, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(112, '030101-12035201-107555', 'Dhea Qolbina', 0.34, 0.59, 0.19, 0.63, 0.22, 0.92, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(113, '030101-12035201-328999', 'Muhammad Barkatullah Amin', 0.45, 0.32, 0.43, 0.16, 0.49, 0.67, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(114, '030101-12035201-331323', 'Sendy Mariska', 0.53, 0.68, 0.71, 0.40, 0.89, 0.50, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(115, '030101-12035201-359346', 'Muhammad Adil Fadillah', 0.18, 0.18, 0.95, 0.40, 0.04, 0.58, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(116, '030101-12035201-391014', 'Muhammad Rezki Hidayat', 0.79, 0.86, 0.86, 0.63, 0.27, 0.92, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(117, '030101-12035201-414329', 'Wiwi Saptarina', 0.71, 0.91, 0.67, 0.47, 0.40, 0.67, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(118, '030101-12035201-453631', 'Fathurrahman', 0.45, 0.27, 0.71, 0.23, 0.67, 0.58, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(119, '030101-12035201-847846', 'Ahmad Hakiki', 0.71, 0.91, 0.67, 0.47, 0.31, 0.50, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(120, '030101-12135201-522831', 'Tazkia Fakhriaty', 0.26, 0.64, 0.57, 0.70, 0.36, 0.83, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(121, '030101-12135201-739303', 'Muhammad Fiqriyan', 0.34, 0.09, 0.71, 0.40, 0.09, 0.67, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(122, '030101-21935201-422374', 'Ayu Kumala Dewi', 0.45, 0.77, 0.67, 0.77, 0.44, 0.75, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(123, '030101-21935201-633641', 'Emily Nityasa', 0.53, 0.18, 0.43, 0.53, 0.16, 1.00, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(124, '030101-21935201-665975', 'Noferiansyah', 0.53, 0.91, 0.67, 0.16, 0.62, 0.67, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(125, '030101-21935201-745995', 'Muhammad Ferryawan Serayu', 0.26, 0.45, 0.24, 0.53, 0.22, 0.58, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(126, '030101-21935201-782000', 'Abdul Azis Amrullah', 0.71, 0.36, 0.24, 1.00, 0.89, 0.50, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(127, '030101-21935201-848591', 'Nanda Putra Nugraha', 1.00, 0.73, 0.00, 0.23, 0.40, 0.67, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(128, '030101-21935201-917606', 'Maulidya Putri Arisanti', 0.34, 0.23, 0.57, 0.00, 0.36, 0.83, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(129, '030101-22035201-013881', 'Muhammad Akbar', 0.79, 0.55, 0.62, 0.47, 0.22, 0.92, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(130, '030101-22035201-030276', 'Dina Sunarmi', 0.45, 0.95, 0.71, 0.30, 0.89, 0.75, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(131, '030101-22035201-102936', 'Ahmad Mahadi', 0.00, 0.50, 0.05, 0.33, 0.67, 0.83, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(132, '030101-22035201-523111', 'Muhammad Farid', 0.26, 0.64, 0.38, 0.23, 0.18, 0.58, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(133, '030101-22035201-668792', 'Fadiah Safitri Herdianti', 0.97, 0.32, 0.62, 0.70, 0.62, 0.50, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(134, '030101-22035201-696955', 'Rachmadera Drestalita Islamy', 0.71, 0.32, 0.19, 0.40, 0.58, 0.83, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(135, '030101-22035201-723609', 'Muhammad Alwi', 0.71, 0.77, 0.57, 0.77, 0.71, 0.67, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(136, '030101-22035201-805202', 'Delka Pratama Saputra', 0.18, 0.00, 0.29, 0.16, 0.40, 0.83, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL),
(137, '030101-22035201-853651', 'Ahya Nabila', 0.08, 0.41, 0.29, 0.07, 0.40, 0.67, 'S1 Perencanaan Wilayah dan Kota', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `normalisasidata`
--

CREATE TABLE `normalisasidata` (
  `nrm` varchar(100) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `mtk` varchar(50) NOT NULL,
  `bindo` varchar(50) NOT NULL,
  `bing` varchar(50) NOT NULL,
  `ipa` varchar(50) NOT NULL,
  `senbud` varchar(50) NOT NULL,
  `psikotes` varchar(50) NOT NULL,
  `prodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `normalisasidata`
--

INSERT INTO `normalisasidata` (`nrm`, `nama`, `mtk`, `bindo`, `bing`, `ipa`, `senbud`, `psikotes`, `prodi`) VALUES
('020401-11955201-820597', 'Arsyintha Dewi', '0.526316', '0.5', '0.904761905', '0.23256', '0', '0.23255814', 'S1 Informatika'),
('020401-11955201-478727', 'Muhammad Miftachul Falah', '0.710526', '0.727272727', '0.333333333', '0.93023', '0.155555556', '0.930232558', 'S1 Informatika'),
('020301-11922201-953780', 'Muhammad Algi Fari', '0.868421', '0.636363636', '0.285714286', '0.16279', '0.155555556', '0.162790698', 'S1 Perencanaan Wilayah dan Kota'),
('020301-11922201-794187', 'Ifal Ardhy', '0.526316', '0.454545455', '0.714285714', '0.23256', '0.444444444', '0.232555814', 'S1 Teknik Sipil'),
('020501-11923201-597546', 'Qimawa Anggit Rakha Ananda', '0.973684', '0.909090909', '0.857152857', '0.93023', '0.511111111', '0.930232558', 'S1 Arsitektur'),
('020401-11955201-476660', 'Tri indah lestari ', '0.263158', '0.454545455', '0.952380952', '0.46512', '0.822222222', '0.465116279', 'S1 Informatika'),
('020301-11922201-471314', 'MUHAMMAD AULIA HILMAN', '0', '0.590909091', '0.904761905', '0.62791', '0.844444444', '0.627906977', 'S1 Teknik Sipil'),
('020301-11922201-107146', 'Muhammad Efendy', '0.184211', '0.363636364', '0.857142875', '0.53488', '0.8', '0.534883721', 'S1 Teknik Sipil'),
('030101-11935201-526577', 'Muhammad andika noor romadhoni', '0.184211', '0.681818182', '0.619047619', '0.39535', '0.577777778', '0.395348837', 'S1 Perencanaan Wilayah dan Kota'),
('030101-21935201-665975', 'Noferiansyah', '0.526316', '0.909090909', '0.666666667', '0.16279', '0.622222222', '0.162790698', 'S1 Perencanaan Wilayah dan Kota'),
('020401-21955201-140056', 'MUHAMMAD IQBAL ZAMZAMI', '0.605263', '0.590909091', '0.714285714', '0.62791', '0.311111111', '0.627906977', 'S1 Informatika'),
('020301-21922201-289184', 'Aria aji prayudi', '0.973684', '0.363636364', '0.761904762', '0.86047', '0.355555556', '0.860465116', 'S1 Teknik Sipil'),
('020501-21923201-160297', 'Rahmad Yusac Amindo', '0.605263', '0.227272727', '0.80952381', '0.76744', '0.4', '0.76744186', 'S1 Arsitektur'),
('020301-21922201-023555', 'ahmad hafi', '0', '1', '0.142857143', '0.23256', '0.888888889', '0.23255814', 'S1 Teknik Sipil'),
('020501-21923201-508132', 'MUHAMMAD KHAIDIR AMIN', '0.605263', '0.5', '0.19047619', '0.39535', '0.977777778', '0.395348837', 'S1 Arsitektur'),
('030101-21935201-745995', 'Muhammad Ferryawan Serayu', '0.263158', '0.454545455', '0.238095238', '0.53488', '0.222222222', '0.534883721', 'S1 Perencanaan Wilayah dan Kota'),
('020401-21955201-310389', 'Ahmad Rifani', '0.342105', '0.636363636', '0.666666667', '0.62791', '0.355555556', '0.627906977', 'S1 Informatika'),
('020401-21955201-242651', 'PRAYOGO PRASTIAWAN', '0.789474', '0.590909091', '0.619047619', '0.69767', '0.4', '0.697674419', 'S1 Informatika'),
('030101-21935201-848591', 'Nanda putra nugraha', '1', '0.727272727', '0', '0.23256', '0.4', '0.23255814', 'S1 Perencanaan Wilayah dan Kota'),
('020501-21923201-561610', 'Muhammad Hafizh Rifai', '0.9736684', '0.681818182', '0.380952381', '0.39535', '0.4', '0.395348837', 'S1 Arsitektur'),
('020401-21955201-728611', 'Ahmad Aqli', '0.868421', '0.681818182', '0.619047619', '0.30233', '0.4', '0.302325581', 'S1 Informatika'),
('020301-21922201-564234', 'ANISA NUR RAHMAH', '0.789474', '0.590909091', '0.666666667', '0.39535', '0.933333333', '0.395348837', 'S1 Teknik Sipil'),
('020401-21955201-944436', 'SYAYIDDAH', '0.5263158', '0.5', '0.714285714', '0.524884', '0.4', '0.534883721', 'S1 Informatika'),
('020401-21955201-476091', 'Jamaliansyah', '0.6052632', '0.5', '0.380952381', '0.465116', '0.622222222', '0.465116279', 'S1 Informatika'),
('010201-21955201-409399', 'Anisha Pratiwi', '0.7105263', '0.227272727', '0.428571429', '0.697674', '0.177777778', '0.697674419', 'S1 Informatika'),
('020301-21922201-614263', 'Muhammad tasmin al akbar', '0.7894737', '0.272727273', '0.714285714', '0.860465', '0.133333333', '0.162790698', 'S1 Teknik Sipil'),
('020301-21922201-252165', 'Risky Yudi Pratama', '0.7894737', '0.318181818', '0.952380952', '0.162791', '0.888888889', '0.069767442', 'S1 Teknik Sipil'),
('020401-21955201-658259', 'Melyana', '0.1842105', '0.363636364', '1', '0.069767', '0.888888889', '0.162790698', 'S1 Informatika'),
('020301-21922201-323668', 'Tariza Azijah Safitri', '0.7894737', '0.409090909', '0.904761905', '0.162791', '0.222222222', '0.23255814', 'S1 Teknik Sipil'),
('020301-21922201-946813', 'Mikhael Bernando Tanjung ', '0.6052632', '0.909090909', '0.571428571', '0.232558', '0.355555556', '0.395348837', 'S1 Teknik Sipil'),
('020401-21955201-448929', 'Ahmad waris', '0.7105263', '1', '0.238095238', '0.395349', '0.622222222', '0.302325581', 'S1 Informatika'),
('020501-21923201-522900', 'Shofia Muna', '0.4473684', '0.227272727', '0.095238095', '0.302326', '0.666666667', '0.627906977', 'S1 Arsitektur'),
('020301-21922201-820686', 'ARIS PERIANOR', '0.3421053', '0.363636364', '0.476190476', '0.627907', '0.888888889', '0.534883721', 'S1 Teknik Sipil'),
('020301-21922201-082421', 'AAS INDRIYANI', '0.0789474', '0.409090909', '0.380952381', '0.534884', '0.888888889', '0.860465116', 'S1 Teknik Sipil'),
('020401-21955201-008029', 'Irvan Noviansyah ', '0.4473684', '0.409090909', '0.428571429', '0.860465', '0.222222222', '0.76744186', 'S1 Informatika'),
('020301-21922201-999450', 'sri rizqi', '0.5263158', '0.409090909', '0.19047619', '0.767442', '0.511111111', '0.697644186', 'S1 Teknik Sipil'),
('020301-21922201-098830', 'Ahmad Husin Naparin', '0.1842105', '0.409090909', '0.047619048', '0.697674', '0.822222222', '0.697674419', 'S1 Teknik Sipil'),
('020301-21922201-974651', 'Mita Sri Rahayu', '0.7894737', '0.318181818', '0.47619048', '0.232558', '0', '0.23255814', 'S1 Teknik Sipil'),
('030101-21935201-633641', 'emily nityasa', '0.5263158', '0.181818182', '0.428571429', '0.534884', '0.155555556', '0.534883721', 'S1 Perencanaan Wilayah dan Kota'),
('020501-21923201-568478', 'MOCHAMMAD NADHIR BAYU ISNAN MAULIDY', '0.7105263', '0.454545455', '0.952380952', '0.860465', '0.066666667', '0.860465116', 'S1 Arsitektur'),
('020401-21955201-093850', 'Muhammad Rifqi Wardana', '0.7105263', '0.681818182', '0.619047619', '0', '0.377777778', '0', 'S1 Informatika'),
('020501-21923201-398106', 'Sarifudin Wahid Mawardi', '0.3421053', '0.090909091', '0.666666667', '0.162791', '0.44444444', '0.162790698', 'S1 Arsitektur'),
('020301-21922201-921617', 'Muhammad donny', '0.2631579', '0.681818182', '0.19047619', '0.069767', '0.888888889', '0.069767442', 'S1 Teknik Sipil'),
('020501-21923201-819205', 'Puput Priantri', '0.0789474', '0.454545455', '0.285714286', '0.395349', '0.6', '0.395348837', 'S1 Arsitektur'),
('020301-21922201-211393', 'Gustie sambalewa saky ', '0', '0.363636364', '0.238095238', '0.465116', '1', '0.465116279', 'S1 Teknik Sipil'),
('020401-21955201-056380', 'Gilang irchas arifudin', '0.1842105', '0.318181818', '0.428571429', '0.930233', '0.488888889', '0.930232558', 'S1 Informatika'),
('020501-21923201-475352', 'Setia Wulan Sari', '0.5263158', '0.5', '0.476190476', '0.627907', '0.711111111', '0.627906977', 'S1 Arsitektur'),
('020301-21922201-660125', 'Putri Ersa Nadela ', '0.7894737', '0.681818182', '0.523809524', '0.860465', '0.622222222', '0.860465116', 'S1 Teknik Sipil'),
('030101-21935201-422374', 'Ayu kumala dewi', '0.4473684', '0.772727273', '0.666666667', '0.767442', '0.444444444', '0.76744186', 'S1 Perencanaan Wilayah dan Kota'),
('030101-21935201-782000', 'ABDUL AZIS AMRULLAH', '0.7105263', '0.363636364', '0.238095238', '1', '0.888888889', '1', 'S1 Perencanaan Wilayah dan Kota'),
('020501-21923201-991225', 'YOGI', '0.1842105', '0', '0.428571429', '0.302326', '0.444444444', '0.302325581', 'S1 Arsitektur'),
('020401-21955201-882770', 'Gt. Nita Fauziah', '0.0789474', '0.090909091', '0.476190476', '0.069767', '0.577777778', '0.069767442', 'S1 Informatika'),
('030101-21935201-917606', 'Maulidya Putri Arisanti', '0.3421053', '0.227272727', '0.571428571', '0', '0.355555556', '0', 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-453631', 'Fathurrahman', '0.4473684', '0.272727273', '0.714285714', '0.232558', '0.666666667', '0.23255814', 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-331323', 'SENDY MARISKA', '0.5263158', '0.681818182', '0.714285714', '0.395349', '0.888888889', '0.395348837', 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-414329', 'wiwi saptarina', '0.7105263', '0.727272727', '0.904761905', '0.162791', '0.4', '0.162790698', 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-391014', 'Muhammad rezki hidayat', '0.7894737', '0.863636364', '0.857142857', '0.627907', '0.266666667', '0.627906977', 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-847846', 'Ahmad hakiki', '0.7105263', '0.909090909', '0.666666667', '0.465116', '0.311111111', '0.465116279', 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-328999', 'Muhammad Barkatullah amin', '0.4473684', '0.318181818', '0.428571429', '0.162791', '0.026666667', '0.162790698', 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-359346', 'Muhammad adil fadillah', '0.1842105', '0.181818182', '0.952380952', '0.395349', '0.044444444', '0.395348837', 'S1 Perencanaan Wilayah dan Kota'),
('020301-21922201-855792', 'Fahmi Rahmadhani', '0.0789474', '0.454545455', '0.333333333', '0.302326', '0.355555556', '0.302325581', 'S1 Teknik Sipil'),
('020301-21922201-371193', 'Tukafid Dwi Jati Bais', '0', '0.681818182', '0.380952381', '0.767442', '0.044444444', '0.76744186', 'S1 Teknik Sipil'),
('020301-31922201-145285', 'achmad iqbal febriansyah', '0.0789474', '0.954545455', '0.714285614', '0.534884', '0.711111111', '0.534883721', 'S1 Teknik Sipil'),
('020301-12022201-965845', 'Syah Mizana Yusdin', '0.1842105', '0.318181818', '0.904761905', '0.069767', '0.666666667', '0.069767442', 'S1 Teknik Sipil'),
('020501-12023201-904734', 'Rismayanti', '0.2631579', '0.090909091', '0.142857143', '0', '0.488888889', '0', 'S1 Arsitektur'),
('020401-12055201-311454', 'Lenny sulistia', '0.4473684', '0.636363636', '0.619047619', '0.232558', '0.622222222', '0.23255814', 'S1 Informatika'),
('020401-12055201-899786', 'Muhammad Rizky Nugraha', '0.3421053', '0.590909091', '0.523809524', '0.465116', '0.533333333', '0.465116279', 'S1 Informatika'),
('020401-12055201-973781', 'tarmuji sudrajat', '0.0789474', '0.454545455', '0.714285714', '1', '0.666666667', '1', 'S1 Informatika'),
('020301-12022201-326809', 'MUNA MUSTAQIMAH', '0.1842105', '0.227272727', '0.571428571', '0.162791', '0.311111111', '0.162790698', 'S1 Informatika'),
('020501-12023201-267877', 'M.ALDI SEPTIANOR', '0.7105263', '0.409090909', '0.714285714', '0.162791', '0.355555556', '0.162790698', 'S1 Arsitektur'),
('020401-12055201-661533', 'M RIFAT ADITAMA', '0.4473684', '0.818181818', '0.952380952', '0.069767', '0.222222222', '0.069767442', 'S1 Informatika'),
('020501-12023201-116499', 'viska septy amelia', '0.9736842', '0.590909091', '0.142857143', '0.232558', '0.888888889', '0.23255814', 'S1 Arsitektur'),
('020501-12023201-571793', 'M.Hasan', '0.6052632', '0.636363636', '0', '0.534884', '0.155555556', '0.534883721', 'S1 Arsitektur'),
('020501-12023201-394055', 'Maharyadi Putra', '0.0789474', '0.681818182', '0.476190476', '0.767442', '0.222222222', '0.76744186', 'S1 Arsitektur'),
('020401-12055201-893422', 'AHMAD RAHMIDINNUR', '0.7894737', '0.681818182', '0.238095238', '0.627907', '0.888888889', '0.627906977', 'S1 Informatika'),
('020301-12022201-513195', 'Teguh Mahyudi', '0.3421053', '0.090909091', '0.619047619', '0.534884', '0.444444444', '0.534883721', 'S1 Informatika'),
('020301-12022201-726614', 'Muhammad Abby alfariza', '0.5263158', '0.545454545', '0.714285714', '0.302336', '0.6', '0.302325581', 'S1 Perencanaan Wilayah dan Kota'),
('020501-12023201-679052', 'Meri pebriani', '0.3421053', '0.636363636', '0.380952381', '0.395349', '0.511111111', '0.395348837', 'S1 Arsitektur'),
('020401-12055201-216739', 'siti aisyah', '0.8684211', '0.318181818', '0.714285714', '0.465116', '0.377777778', '0.465116279', 'S1 Informatika'),
('020301-12022201-360093', 'Anjari Nurhidayati', '0.3421053', '0.181818182', '1', '0.697674', '0.155555556', '0.697674419', 'S1 Teknik Sipil'),
('020501-12023201-620391', 'sulaiman', '0.4473684', '0.681818182', '0.714285714', '0.627907', '0.6', '0.627906977', 'S1 Arsitektur'),
('020301-12022201-668118', 'alda fadfillah destania namira', '0.5263158', '0.727272727', '0.619047619', '0.534884', '0.822222222', '0.534883721', 'S1 Arsitektur'),
('020301-12022201-670029', 'Muhammad Sarwani', '0.2631579', '0.818181818', '0.476190476', '0.302326', '0.733333333', '0.302325581', 'S1 Perencanaan Wilayah dan Kota');

-- --------------------------------------------------------

--
-- Table structure for table `normalisasiuji`
--

CREATE TABLE `normalisasiuji` (
  `nrm` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `mtk` int NOT NULL,
  `bindo` int NOT NULL,
  `bing` int NOT NULL,
  `ipa` int NOT NULL,
  `senbud` int NOT NULL,
  `psikotes` int NOT NULL,
  `prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `normalisasiuji`
--

INSERT INTO `normalisasiuji` (`nrm`, `nama`, `mtk`, `bindo`, `bing`, `ipa`, `senbud`, `psikotes`, `prodi`) VALUES
('020301-12022201-192799', 'Ridha Ananda', 1, 1, 1, 1, 0, 0, 'S1 Arsitektur'),
('020501-12023201-243669', 'MUHAMMAD NOR ERFANSYAH', 1, 1, 1, 0, 0, 0, 'S1 Arsitektur'),
('020401-12055201-117443', 'Muhammad Fadhil maula', 1, 1, 1, 0, 0, 0, 'S1 Informatika'),
('020301-12022201-748992', 'Muhammad alwi irvani', 1, 0, 0, 0, 1, 1, 'S1 Teknik Sipil'),
('020301-12022201-361908', 'Muhammad Ricky Mahendra', 0, 0, 1, 1, 1, 0, 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-107555', 'DHEA QOLBINA', 0, 1, 0, 1, 0, 1, 'S1 Perencanaan Wilayah dan Kota'),
('020401-12055201-341264', 'Muhammad Rijal', 0, 0, 0, 1, 0, 1, 'S1 Informatika'),
('020401-12055201-657497', 'Nurhikmah', 0, 0, 0, 0, 1, 1, 'S1 Informatika'),
('020301-12022201-701845', 'Muhammad Miftahul Ihsan', 0, 1, 1, 1, 1, 0, 'S1 Arsitektur'),
('020401-12055201-675356', 'Rizki Maulana', 0, 1, 0, 0, 0, 1, 'S1 Informatika'),
('020501-12023201-267865', 'Rifqi Ramadhani', 0, 0, 0, 0, 1, 0, 'S1 Arsitektur'),
('020401-12055201-759846', 'AULYA MIFTAHUL FADHILAH', 0, 0, 1, 0, 0, 0, 'S1 Informatika'),
('020301-12022201-994043', 'Shafira Mutia', 0, 1, 1, 1, 1, 1, 'S1 Teknik Sipil'),
('020301-22022201-397767', 'Riyanto', 0, 0, 1, 1, 0, 0, 'S1 Teknik Sipil'),
('020401-22055201-512262', 'Dwi kurnia sandy', 1, 0, 1, 1, 1, 0, 'S1 Informatika'),
('020501-22023201-685427', 'Syarifah sasabila renum assodiq', 1, 0, 1, 1, 1, 0, 'S1 Arsitektur'),
('020501-22023201-089451', 'Al amin', 0, 0, 1, 0, 1, 0, 'S1 Arsitektur'),
('020401-22055201-139014', 'Ummi Qalsum', 0, 0, 1, 0, 0, 0, 'S1 Informatika'),
('020501-22023201-042522', 'Siti Fatimah Zahra', 0, 0, 1, 0, 0, 0, 'S1 Arsitektur'),
('020301-22022201-879549', 'Dina ', 0, 0, 1, 0, 1, 0, 'S1 Teknik Sipil'),
('020301-22022201-286465', 'Nidia Riska Ananda', 1, 1, 1, 1, 0, 0, 'S1 Teknik Sipil'),
('020401-22055201-144051', 'Muhammad Nizar Taufiqurahman', 1, 1, 1, 1, 0, 0, 'S1 Informatika'),
('030101-22035201-668792', 'Fadiah safitri herdianti', 1, 0, 1, 1, 1, 0, 'S1 Perencanaan Wilayah dan Kota'),
('020501-22023201-887811', 'Intan Dwi Rahmah Yusup', 0, 1, 1, 1, 1, 0, 'S1 Arsitektur'),
('030101-22035201-723609', 'Muhammad Alwi', 1, 1, 1, 1, 1, 0, 'S1 Perencanaan Wilayah dan Kota'),
('020301-22022201-063045', 'AISYAH NUR SYAHRIYAH NASUTION', 0, 1, 0, 1, 1, 0, 'S1 Teknik Sipil'),
('020401-22055201-988372', 'Arida Vera Puspitasari', 0, 0, 0, 0, 1, 1, 'S1 Informatika'),
('030101-22035201-696955', 'Rachmadera Drestalita Islamy', 1, 0, 0, 0, 1, 1, 'S1 Perencanaan Wilayah dan Kota'),
('020301-22022201-787120', 'MUHAMMAD BARKATULLAH AMIN', 1, 0, 0, 0, 0, 0, 'S1 Teknik Sipil'),
('020301-22022201-378495', 'Muhamad Fajrin', 0, 0, 1, 0, 0, 0, 'S1 Teknik Sipil'),
('030101-22035201-013881', 'Muhammad Akbar', 1, 1, 1, 1, 0, 1, 'S1 Perencanaan Wilayah dan Kota'),
('020501-22023201-109502', 'Muhammad Heldi', 1, 1, 0, 1, 0, 1, 'S1 Arsitektur'),
('020501-22023201-692865', 'Azizah Nuraini', 0, 1, 0, 1, 0, 1, 'S1 Arsitektur'),
('020301-22022201-340354', 'Maesa Fitri Sugiarti', 1, 1, 0, 0, 0, 0, 'S1 Teknik Sipil'),
('020301-22022201-322900', 'Muhammad Rizqi Fathullah', 1, 1, 0, 0, 0, 1, 'S1 Teknik Sipil'),
('030101-22035201-030276', 'Dina sunarmi', 0, 1, 1, 0, 1, 1, 'S1 Perencanaan Wilayah dan Kota'),
('020401-22055201-957685', 'MUHAMMAD RIDHO HIJRIAWAN', 0, 0, 1, 0, 1, 0, 'S1 Informatika'),
('020501-22023201-742199', 'Alya Adani', 0, 0, 1, 0, 0, 1, 'S1 Arsitektur'),
('020301-22022201-346396', 'Noor Aulia Maghfirah', 1, 0, 1, 0, 0, 0, 'S1 Teknik Sipil'),
('020401-22055201-627247', 'Hidayaturrahman', 0, 1, 0, 0, 0, 0, 'S1 Informatika'),
('030101-22035201-805202', 'Delka Pratama Saputra', 0, 0, 0, 0, 0, 1, 'S1 Perencanaan Wilayah dan Kota'),
('020301-22022201-598691', 'Humairah', 0, 0, 0, 0, 0, 1, 'S1 Informatika'),
('030101-22035201-853651', 'Ahya Nabila', 0, 0, 0, 0, 0, 0, 'S1 Perencanaan Wilayah dan Kota'),
('030101-22035201-102936', 'Ahmad mahadi ', 0, 1, 0, 1, 0, 1, 'S1 Perencanaan Wilayah dan Kota'),
('030101-22035201-523111', 'Muhammad Farid', 0, 1, 0, 0, 1, 0, 'S1 Perencanaan Wilayah dan Kota'),
('020501-22023201-124913', 'Tata Pratiwi Marpaung', 0, 1, 0, 0, 0, 0, 'S1 Arsitektur'),
('020401-22055201-705859', 'Irhas Noor', 0, 0, 1, 1, 1, 1, 'S1 Informatika'),
('030101-12135201-739303', 'Muhammad Fiqriyan', 0, 0, 1, 0, 0, 0, 'S1 Perencanaan Wilayah dan Kota'),
('020301-12122201-482218', 'NUR ASFIANI SUARDI', 0, 0, 1, 0, 1, 0, 'S1 Teknik Sipil'),
('020401-12155201-892124', 'Muhammad Tahrir', 0, 0, 1, 1, 0, 0, 'S1 Informatika'),
('030101-12135201-522831', 'Tazkia fakhriaty', 0, 1, 1, 1, 0, 1, 'S1 Perencanaan Wilayah dan Kota'),
('020301-12122201-278781', 'Putri Nurlinawati', 1, 0, 1, 1, 0, 1, 'S1 Teknik Sipil'),
('020501-12123201-770239', 'Rukayah', 1, 1, 0, 0, 0, 0, 'S1 Arsitektur'),
('020401-12155201-196282', 'Salsa nadilla', 0, 1, 0, 0, 1, 0, 'S1 Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Ini adalah keterangan <b>Jadwal Pelajaran</b>', '2023-07-09 14:22:02', '2023-07-09 14:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `uji`
--

CREATE TABLE `uji` (
  `nrm` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `mtk` int NOT NULL,
  `bindo` int NOT NULL,
  `bing` int NOT NULL,
  `ipa` int NOT NULL,
  `senbud` int NOT NULL,
  `psikotes` int NOT NULL,
  `prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `uji`
--

INSERT INTO `uji` (`nrm`, `nama`, `mtk`, `bindo`, `bing`, `ipa`, `senbud`, `psikotes`, `prodi`) VALUES
('020301-12022201-192799', 'Ridha Ananda', 80, 88, 80, 73, 60, 100, 'S1 Arsitektur'),
('020501-12023201-243669', 'MUHAMMAD NOR ERFANSYAH', 73, 90, 86, 50, 67, 100, 'S1 Arsitektur'),
('020401-12055201-117443', 'Muhammad Fadhil maula', 77, 84, 88, 57, 73, 100, 'S1 Informatika'),
('020301-12022201-748992', 'Muhammad alwi irvani', 87, 70, 68, 67, 77, 115, 'S1 Teknik Sipil'),
('020301-12022201-361908', 'Muhammad Ricky Mahendra', 67, 70, 78, 70, 80, 100, 'S1 Perencanaan Wilayah dan Kota'),
('030101-12035201-107555', 'DHEA QOLBINA', 63, 76, 58, 77, 60, 115, 'S1 Perencanaan Wilayah dan Kota'),
('020401-12055201-341264', 'Muhammad Rijal', 67, 66, 56, 80, 72, 105, 'S1 Informatika'),
('020401-12055201-657497', 'Nurhikmah', 70, 56, 54, 67, 82, 110, 'S1 Informatika'),
('020301-12022201-701845', 'Muhammad Miftahul Ihsan', 60, 86, 90, 77, 78, 95, 'S1 Arsitektur'),
('020401-12055201-675356', 'Rizki Maulana', 50, 80, 60, 53, 70, 110, 'S1 Informatika'),
('020501-12023201-267865', 'Rifqi Ramadhani', 53, 66, 66, 63, 90, 90, 'S1 Arsitektur'),
('020401-12055201-759846', 'AULYA MIFTAHUL FADHILAH', 57, 64, 78, 60, 70, 90, 'S1 Informatika'),
('020301-12022201-994043', 'Shafira Mutia', 53, 74, 80, 80, 76, 120, 'S1 Teknik Sipil'),
('020301-22022201-397767', 'Riyanto', 63, 58, 90, 70, 66, 100, 'S1 Teknik Sipil'),
('020401-22055201-512262', 'Dwi kurnia sandy', 70, 64, 88, 87, 80, 100, 'S1 Informatika'),
('020501-22023201-685427', 'Syarifah sasabila renum assodiq', 77, 68, 78, 70, 90, 92, 'S1 Arsitektur'),
('020501-22023201-089451', 'Al amin', 67, 70, 74, 57, 76, 100, 'S1 Arsitektur'),
('020401-22055201-139014', 'Ummi Qalsum', 63, 58, 72, 63, 66, 90, 'S1 Informatika'),
('020501-22023201-042522', 'Siti Fatimah Zahra', 53, 60, 90, 53, 60, 100, 'S1 Arsitektur'),
('020301-22022201-879549', 'Dina ', 57, 64, 80, 50, 94, 100, 'S1 Teknik Sipil'),
('020301-22022201-286465', 'Nidia Riska Ananda', 70, 80, 88, 87, 72, 100, 'S1 Teknik Sipil'),
('020401-22055201-144051', 'Muhammad Nizar Taufiqurahman', 77, 90, 84, 83, 70, 95, 'S1 Informatika'),
('030101-22035201-668792', 'Fadiah safitri herdianti', 87, 64, 76, 80, 78, 90, 'S1 Perencanaan Wilayah dan Kota'),
('020501-22023201-887811', 'Intan Dwi Rahmah Yusup', 63, 74, 72, 87, 76, 96, 'S1 Arsitektur'),
('030101-22035201-723609', 'Muhammad Alwi', 77, 84, 74, 83, 82, 100, 'S1 Perencanaan Wilayah dan Kota'),
('020301-22022201-063045', 'AISYAH NUR SYAHRIYAH NASUTION', 63, 88, 60, 70, 80, 95, 'S1 Teknik Sipil'),
('020401-22055201-988372', 'Arida Vera Puspitasari', 67, 68, 68, 60, 80, 115, 'S1 Informatika'),
('030101-22035201-696955', 'Rachmadera Drestalita Islamy', 77, 64, 58, 67, 76, 110, 'S1 Perencanaan Wilayah dan Kota'),
('020301-22022201-787120', 'MUHAMMAD BARKATULLAH AMIN', 73, 66, 50, 63, 72, 100, 'S1 Teknik Sipil'),
('020301-22022201-378495', 'Muhamad Fajrin', 63, 70, 78, 60, 72, 100, 'S1 Teknik Sipil'),
('030101-22035201-013881', 'Muhammad Akbar', 80, 74, 76, 70, 60, 115, 'S1 Perencanaan Wilayah dan Kota'),
('020501-22023201-109502', 'Muhammad Heldi', 70, 78, 68, 77, 62, 115, 'S1 Arsitektur'),
('020501-22023201-692865', 'Azizah Nuraini', 60, 80, 66, 73, 64, 105, 'S1 Arsitektur'),
('020301-22022201-340354', 'Maesa Fitri Sugiarti', 87, 88, 64, 63, 66, 100, 'S1 Teknik Sipil'),
('020301-22022201-322900', 'Muhammad Rizqi Fathullah', 77, 90, 62, 67, 68, 120, 'S1 Teknik Sipil'),
('030101-22035201-030276', 'Dina sunarmi', 67, 92, 80, 63, 90, 105, 'S1 Perencanaan Wilayah dan Kota'),
('020401-22055201-957685', 'MUHAMMAD RIDHO HIJRIAWAN', 63, 60, 90, 60, 94, 100, 'S1 Informatika'),
('020501-22023201-742199', 'Alya Adani', 60, 70, 78, 67, 60, 110, 'S1 Arsitektur'),
('020301-22022201-346396', 'Noor Aulia Maghfirah', 70, 56, 70, 63, 66, 95, 'S1 Teknik Sipil'),
('020401-22055201-627247', 'Hidayaturrahman', 67, 78, 68, 60, 68, 100, 'S1 Informatika'),
('030101-22035201-805202', 'Delka Pratama Saputra', 57, 50, 62, 57, 68, 110, 'S1 Perencanaan Wilayah dan Kota'),
('020301-22022201-598691', 'Humairah', 53, 60, 64, 50, 68, 115, 'S1 Informatika'),
('030101-22035201-853651', 'Ahya Nabila', 53, 68, 62, 53, 68, 100, 'S1 Perencanaan Wilayah dan Kota'),
('030101-22035201-102936', 'Ahmad mahadi ', 50, 72, 52, 70, 64, 110, 'S1 Perencanaan Wilayah dan Kota'),
('030101-22035201-523111', 'Muhammad Farid', 60, 78, 66, 60, 58, 95, 'S1 Perencanaan Wilayah dan Kota'),
('020501-22023201-124913', 'Tata Pratiwi Marpaung', 57, 80, 52, 67, 70, 97, 'S1 Arsitektur'),
('020401-22055201-705859', 'Irhas Noor', 67, 60, 82, 70, 80, 110, 'S1 Informatika'),
('030101-12135201-739303', 'Muhammad Fiqriyan', 63, 54, 80, 67, 54, 100, 'S1 Perencanaan Wilayah dan Kota'),
('020301-12122201-482218', 'NUR ASFIANI SUARDI', 53, 60, 72, 63, 80, 90, 'S1 Teknik Sipil'),
('020401-12155201-892124', 'Muhammad Tahrir', 50, 66, 78, 83, 70, 100, 'S1 Informatika'),
('030101-12135201-522831', 'Tazkia fakhriaty', 60, 78, 74, 80, 66, 110, 'S1 Perencanaan Wilayah dan Kota'),
('020301-12122201-278781', 'Putri Nurlinawati', 70, 70, 80, 70, 64, 110, 'S1 Teknik Sipil'),
('020501-12123201-770239', 'Rukayah', 77, 72, 64, 60, 72, 90, 'S1 Arsitektur'),
('020401-12155201-196282', 'Salsa nadilla', 67, 74, 66, 67, 80, 95, 'S1 Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$Lh0IyGM1xZ9rFVTukwOLPupECgTcPjVLV422.6sAhGFqgZoitxEve', 'admin', NULL, NULL, NULL),
(27, 'syahnas', 'syahnas@gmail.com', NULL, '$2y$10$yy2hB1h18tJxq80ftNp83eH0M3uqd65R2buraZkOIzXwDTlLcxjh.', 'Maba', 'gk1k7CVqZuoI4CAaQkVD5VnbUjKrCqThr8hoxbkd2NI9PUZFRuntGzML0c7w', '2023-07-04 15:48:04', '2023-07-04 15:48:04'),
(28, 'Siti Fatimah', 'sitifatimah@gmail.com', NULL, '$2y$10$yy2hB1h18tJxq80ftNp83eH0M3uqd65R2buraZkOIzXwDTlLcxjh.', 'Maba', 'YQx373Dim6llDFQj54Yt1Wd83kqfcNePZ33RB8FKoFc4M5aK5mXctEIOz78x', '2023-07-04 19:26:32', '2023-07-04 19:26:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atribut`
--
ALTER TABLE `atribut`
  ADD PRIMARY KEY (`kode`) USING BTREE;

--
-- Indexes for table `confusion`
--
ALTER TABLE `confusion`
  ADD PRIMARY KEY (`prodi`);

--
-- Indexes for table `datatraining`
--
ALTER TABLE `datatraining`
  ADD PRIMARY KEY (`nrm`) USING BTREE;

--
-- Indexes for table `datauji`
--
ALTER TABLE `datauji`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`) USING BTREE,
  ADD KEY `id_datauji` (`id_datauji`) USING BTREE,
  ADD KEY `id_user` (`id_user`) USING BTREE;

--
-- Indexes for table `jarak`
--
ALTER TABLE `jarak`
  ADD PRIMARY KEY (`id_jarak`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `normalisasi`
--
ALTER TABLE `normalisasi`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `nrm` (`nrm`) USING BTREE;

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datauji`
--
ALTER TABLE `datauji`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=943509544;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `jarak`
--
ALTER TABLE `jarak`
  MODIFY `id_jarak` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `normalisasi`
--
ALTER TABLE `normalisasi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `normalisasi`
--
ALTER TABLE `normalisasi`
  ADD CONSTRAINT `normalisasi_ibfk_1` FOREIGN KEY (`nrm`) REFERENCES `datatraining` (`nrm`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
