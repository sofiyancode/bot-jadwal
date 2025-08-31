-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2025 pada 10.21
-- Versi server: 8.0.43
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjadwalan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int NOT NULL,
  `kelas` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hari` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jam` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mapel` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `guru` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `kelas`, `hari`, `jam`, `mapel`, `guru`) VALUES
(46, 'I', 'SENIN', '07.30 - 09.15', 'Matematika', 'Siti Hanah, S.Pd'),
(47, 'I', 'SENIN', '09.45 - 11.00', 'PAI', 'H. Hirman, S.Ag'),
(48, 'I', 'SELASA', '07.30 - 08.45', 'Quran Hadis', 'Siti Hanah, S.Pd'),
(49, 'I', 'SELASA', '08.45 - 10.00', 'B. Arab', 'Nawallazi, S.Pdi'),
(51, 'I', 'RABU', '07.30 - 09.15', 'Quran Hadis', 'Siti Hanah, S.Pd'),
(52, 'I', 'RABU', '09.45 - 11.00', 'SBdP', 'Emi Rahmayuni, S.Pd'),
(53, 'I', 'KAMIS', '07.30 - 08.45', 'Quran Hadis', 'Siti Hanah, S.Pd'),
(54, 'I', 'KAMIS', '08.45 - 10.00', 'B. Inggris', 'Novia Helmayani, S.Pd'),
(56, 'I', 'Senin', '07.30 - 09.15', 'PJOK', 'Ramdani Atmawiharja S.Pd'),
(57, 'I', 'SABTU', '07.30 - 09.15', 'Matematika', 'Khusnul Khatimah, S.Pd'),
(58, 'I', 'JUMAT', '09.30 - 11.00', 'Matematika', 'Siti Hanah, S.Pd'),
(59, 'II', 'SENIN', '07.30 - 09.15', 'Quran Hadis', 'Muhdir, S.Pd'),
(60, 'II', 'SENIN', '09.45 - 11.00', 'B. Inggris', 'Novia Helmayani, S.Pd'),
(61, 'II', 'SELASA', '07.30 - 09.15', 'Quran Hadis', 'Muhdir, S.Pd'),
(62, 'II', 'SELASA', '10.00 - 11.15', 'B. Arab', 'Nawallazi, S.Pdi'),
(63, 'II', 'RABU', '07.30 - 08.45', 'PAI', 'H. Hirman, S.Ag'),
(64, 'II', 'RABU', '08.45 - 10.00', 'Quran Hadis', 'Muhdir, S.Pd'),
(65, 'II', 'RABU', '10.30 - 11.45', 'PKN', 'Nirkamalasari, S.Pd.I'),
(66, 'II', 'KAMIS', '07.30 - 09.15', 'Quran Hadis', 'Muhdir, S.Pd'),
(67, 'II', 'KAMIS', '09.45 - 11.00', 'Matematika', 'Khusnul Khatimah, S.Pd'),
(68, 'II', 'JUMAT', '08.30 - 09.30', 'IPS', 'Muhdir, S.Pd'),
(69, 'II', 'JUMAT', '09.30 - 11.00', 'Quran Hadis', 'Muhdir, S.Pd'),
(70, 'II', 'SABTU', '07.30 - 09.15', 'PJOK', 'Ramdani Atmawiharja S.Pd'),
(71, 'II', 'SABTU', '09.45 - 11.00', 'Fiqih', 'Siti Hanah, S.Pd'),
(72, 'III', 'SENIN', '07.30 - 09.15', 'Quran Hadis', 'Khusnul Khatimah, S.Pd'),
(73, 'III', 'SENIN', '09.45 - 11.00', 'Mulok', 'Sadiah, S.Pd'),
(74, 'III', 'SELASA', '09.45 - 11.00', 'SBdP', 'Emi Rahmayuni, S.Pd'),
(75, 'III', 'RABU', '07.30 - 09.15', 'Quran Hadis', 'Khusnul Khatimah, S.Pd'),
(76, 'III', 'RABU', '09.45 - 11.00', 'B. Arab', 'Nawallazi, S.Pdi'),
(77, 'III', 'RABU', '10.30 - 11.45', 'PJOK', 'Ramdani Atmawiharja S.Pd'),
(78, 'III', 'KAMIS', '07.30 - 08.45', 'PAI', 'H. Hirman, S.Ag'),
(79, 'III', 'KAMIS', '08.45 - 10.00', 'Quran Hadis', 'Khusnul Khatimah, S.Pd'),
(80, 'III', 'KAMIS', '10.30 - 11.45', 'IPA', 'Nirkamalasari, S.Pd.I'),
(81, 'III', 'JUMAT', '09.45 - 11.00', 'Quran Hadis', 'Khusnul Khatimah, S.Pd'),
(82, 'III', 'JUMAT', '09.30 - 10.30', 'SBdP', 'Emi Rahmayuni, S.Pd'),
(83, 'III', 'SABTU', '07.30 - 09.15', 'B. Inggris', 'Novia Helmayani, S.Pd'),
(84, 'III', 'SABTU', '09.45 - 11.00', 'Fiqih', 'Khusnul Khatimah, S.Pd'),
(85, 'IV', 'SENIN', '07.30 - 09.15', 'Quran Hadis', 'Hariadi, S.Pd'),
(86, 'IV', 'SENIN', '09.45 - 11.00', 'Matematika', 'Hariadi, S.Pd'),
(87, 'IV', 'SENIN', '11.00 - 12.20', 'IPA', 'Nirkamalasari, S.Pd.I'),
(88, 'IV', 'SELASA', '07.30 - 09.15', 'Bahasa Indonesia', 'Sri Wahyuni, S.Pd'),
(89, 'IV', 'SELASA', '09.45 - 11.00', 'IPS', 'Sri Wahyuni, S.Pd'),
(90, 'IV', 'SELASA', '11.00 - 12.20', 'PAI', 'H. Hirman, S.Ag'),
(91, 'IV', 'RABU', '11.00 - 12.20', 'Matematika', 'Hariadi, S.Pd'),
(92, 'IV', 'RABU', '09.45 - 11.00', 'Bahasa Arab', 'Hj. Maryam, S.Pd.I'),
(94, 'IV', 'KAMIS', '07.30 - 09.15', 'IPA', 'Nirkamalasari, S.Pd.I'),
(95, 'IV', 'KAMIS', '09.45 - 11.00', 'Bahasa Indonesia', 'Sri Wahyuni, S.Pd'),
(96, 'IV', 'KAMIS', '11.00 - 12.20', 'Quran Hadis', 'Hariadi, S.Pd'),
(97, 'IV', 'JUMAT', '08.30 - 09.30', 'Matematika', 'Hariadi, S.Pd'),
(98, 'IV', 'JUMAT', '10.00 - 11.30', 'Bahasa Indonesia', 'Sri Wahyuni, S.Pd'),
(99, 'IV', 'SABTU', '07.30 - 09.15', 'IPA', 'Nirkamalasari, S.Pd.I'),
(100, 'IV', 'SABTU', '09.45 - 11.00', 'IPS', 'Sri Wahyuni, S.Pd'),
(120, 'V', 'SENIN', '07.30 - 09.15', 'Bahasa Indonesia', 'Emi Rahmayuni, S.Pd'),
(121, 'V', 'SENIN', '12.20 - 13.30', 'Matematika', 'Hariadi, S.Pd'),
(122, 'V', 'SENIN', '11.00 - 12.20', 'IPA', 'Mawardi, S.Pd'),
(123, 'V', 'SELASA', '07.30 - 09.15', 'Quran Hadis', 'Hariadi, S.Pd'),
(124, 'V', 'SELASA', '11.00 - 12.20', 'IPS', 'Sri Wahyuni, S.Pd'),
(125, 'V', 'SELASA', '12.20 - 13.30', 'PAI', 'H. Hirman, S.Ag'),
(126, 'V', 'RABU', '07.30 - 09.15', 'IPA', 'Mawardi, S.Pd'),
(127, 'V', 'RABU', '11.00 - 12.20', 'Bahasa Arab', 'Hj. Maryam, S.Pd.I'),
(128, 'V', 'RABU', '12.20 - 13.30', 'SBK', 'Rini Astuti, S.Pd'),
(129, 'V', 'KAMIS', '07.30 - 09.15', 'Matematika', 'Hariadi, S.Pd'),
(130, 'V', 'KAMIS', '09.45 - 11.00', 'Quran Hadis', 'Hariadi, S.Pd'),
(131, 'V', 'KAMIS', '11.00 - 12.20', 'Bahasa Indonesia', 'Emi Rahmayuni, S.Pd'),
(132, 'V', 'JUMAT', '10.00 - 11.30', 'IPA', 'Mawardi, S.Pd'),
(133, 'V', 'SABTU', '09.30 - 10.30', 'Matematika', 'Hariadi, S.Pd'),
(134, 'V', 'SABTU', '07.30 - 09.15', 'IPS', 'Sri Wahyuni, S.Pd'),
(135, 'V', 'SABTU', '09.45 - 11.00', 'Bahasa Indonesia', 'Emi Rahmayuni, S.Pd'),
(160, 'VI', 'SENIN', '11.00 - 12.20', 'Quran Hadis', 'Khusnul Khatimah, S.Pd'),
(161, 'VI', 'SENIN', '09.45 - 11.00', 'Bahasa Indonesia', 'Emi Rahmayuni, S.Pd'),
(163, 'VI', 'SELASA', '07.30 - 09.15', 'IPA', 'Mawardi, S.Pd'),
(164, 'VI', 'SELASA', '09.45 - 11.00', 'Matematika', 'Hariadi, S.Pd'),
(165, 'VI', 'SELASA', '11.00 - 12.20', 'Bahasa Arab', 'Hj. Maryam, S.Pd.I'),
(166, 'VI', 'RABU', '07.30 - 09.15', 'Bahasa Indonesia', 'Emi Rahmayuni, S.Pd'),
(167, 'VI', 'RABU', '09.45 - 11.00', 'SBK', 'Rini Astuti, S.Pd'),
(168, 'VI', 'RABU', '11.00 - 12.20', 'Quran Hadis', 'Siti Hanah, S.Pd'),
(169, 'VI', 'KAMIS', '11.00 - 12.20', 'Matematika', 'Hariadi, S.Pd'),
(170, 'VI', 'KAMIS', '09.45 - 11.00', 'IPA', 'Mawardi, S.Pd'),
(172, 'VI', 'JUMAT', '08.30 - 09.30', 'Bahasa Indonesia', 'Emi Rahmayuni, S.Pd'),
(173, 'VI', 'JUMAT', '10.00 - 11.30', 'Matematika', 'Hariadi, S.Pd'),
(174, 'VI', 'SABTU', '07.30 - 09.15', 'Quran Hadis', 'Siti Hanah, S.Pd'),
(175, 'VI', 'SABTU', '09.45 - 11.00', 'IPA', 'Mawardi, S.Pd'),
(176, 'IV', 'RABU', '07.30 - 09.15', 'PJOK', 'Ramdani Atmawiharja S.Pd'),
(177, 'V', 'JUMAT', '08.30 - 09.30', 'PJOK', 'Ramdani Atmawiharja S.Pd'),
(178, 'VI', 'Jumat', '09.30 - 10.30', 'PJOK', 'Ramdani Atmawiharja S.Pd');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
