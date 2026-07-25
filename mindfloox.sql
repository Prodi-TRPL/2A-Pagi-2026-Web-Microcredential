-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20260630.c605fd63bc
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2026 at 07:44 PM
-- Server version: 8.4.3
-- PHP Version: 8.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mindfloox`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_microcredential`
--

CREATE TABLE `admin_microcredential` (
  `id` int NOT NULL,
  `id_jenis_microcredential` int DEFAULT NULL,
  `id_dibuat_oleh` int DEFAULT NULL COMMENT 'super_admin yang membuat akun ini',
  `id_pengguna` int DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instruktur`
--

CREATE TABLE `instruktur` (
  `id` int NOT NULL,
  `id_dibuat_oleh` int DEFAULT NULL COMMENT 'super_admin yang mendaftarkan instruktur',
  `id_pengguna` int DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_kuis`
--

CREATE TABLE `jawaban_kuis` (
  `id` int NOT NULL,
  `id_sesi_kuis` int DEFAULT NULL,
  `id_pertanyaan` int DEFAULT NULL,
  `id_pilihan_jawaban` int DEFAULT NULL COMMENT 'diisi jika tipe = pilihan_ganda; NULL jika esai',
  `teks_jawaban` varchar(255) DEFAULT NULL COMMENT 'diisi jika tipe = esai; NULL jika pilihan_ganda',
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_tugas`
--

CREATE TABLE `jawaban_tugas` (
  `id` int NOT NULL,
  `id_pendaftaran` int DEFAULT NULL,
  `id_tugas` int DEFAULT NULL,
  `url_file` varchar(255) DEFAULT NULL COMMENT 'file jawaban yang diunggah peserta',
  `status` varchar(255) DEFAULT NULL COMMENT 'enum: draft, final',
  `disubmit_pada` timestamp NULL DEFAULT NULL COMMENT 'diisi saat status berubah menjadi final',
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_microcredential`
--

CREATE TABLE `jenis_microcredential` (
  `id` int NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuis`
--

CREATE TABLE `kuis` (
  `id` int NOT NULL,
  `id_kursus` int DEFAULT NULL,
  `id_kursus_instruktur` int DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `id_minggu` int DEFAULT NULL,
  `nomor_urut` int DEFAULT NULL,
  `batas_waktu_menit` int DEFAULT NULL COMMENT 'durasi maksimal pengerjaan dalam menit; NULL = tidak dibatasi',
  `tanggal_mulai` timestamp NULL DEFAULT NULL,
  `batas_waktu` timestamp NULL DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kunci_jawaban_esai`
--

CREATE TABLE `kunci_jawaban_esai` (
  `id` int NOT NULL,
  `id_pertanyaan` int DEFAULT NULL COMMENT 'hanya untuk tipe esai',
  `teks_kunci` varchar(255) DEFAULT NULL COMMENT 'satu pertanyaan bisa punya lebih dari satu kunci jawaban yang valid',
  `case_sensitive` tinyint DEFAULT NULL COMMENT 'false = "jakarta" dianggap sama dengan "Jakarta"',
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kursus`
--

CREATE TABLE `kursus` (
  `id` int NOT NULL,
  `id_program_microcredential` int DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `foto_kursus` varchar(255) DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kursus_instruktur`
--

CREATE TABLE `kursus_instruktur` (
  `id` int NOT NULL,
  `id_kursus` int DEFAULT NULL,
  `id_instruktur` int DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materi_dilihat`
--

CREATE TABLE `materi_dilihat` (
  `id` int NOT NULL,
  `id_pendaftaran` int DEFAULT NULL,
  `id_materi_pembelajaran` int DEFAULT NULL,
  `dilihat_pada` timestamp NULL DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materi_pembelajaran`
--

CREATE TABLE `materi_pembelajaran` (
  `id` int NOT NULL,
  `id_kursus` int DEFAULT NULL,
  `id_kursus_instruktur` int DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `nomor_urut` int DEFAULT NULL,
  `id_minggu` int DEFAULT NULL,
  `tipe` varchar(255) DEFAULT NULL COMMENT 'enum: dokumen, video, tautan',
  `url_file` varchar(255) DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2026_06_15_062812_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `minggu`
--

CREATE TABLE `minggu` (
  `id` int NOT NULL,
  `id_kursus` int DEFAULT NULL,
  `nomor_minggu` int DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT 'enum: aktif, nonaktif',
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kuis`
--

CREATE TABLE `nilai_kuis` (
  `id` int NOT NULL,
  `id_sesi_kuis` int DEFAULT NULL,
  `nilai_mentah` decimal(10,0) DEFAULT NULL COMMENT 'dihitung otomatis: (jumlah soal benar / total soal) x 100',
  `dihitung_pada` timestamp NULL DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kursus`
--

CREATE TABLE `nilai_kursus` (
  `id` int NOT NULL,
  `id_pendaftaran` int DEFAULT NULL,
  `id_kursus` int DEFAULT NULL,
  `nilai_akhir` decimal(10,0) DEFAULT NULL COMMENT 'agregat: sum(nilai_kuis x bobot) + sum(nilai_tugas x bobot)',
  `dihitung_pada` timestamp NULL DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_tugas`
--

CREATE TABLE `nilai_tugas` (
  `id` int NOT NULL,
  `id_pendaftaran` int DEFAULT NULL,
  `id_tugas` int DEFAULT NULL,
  `nilai_mentah` decimal(10,0) DEFAULT NULL COMMENT 'dinilai manual oleh instruktur',
  `dinilai_oleh` int DEFAULT NULL,
  `dinilai_pada` timestamp NULL DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int NOT NULL,
  `id_peserta` int DEFAULT NULL,
  `id_program_microcredential` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT 'enum: menunggu, diterima, ditolak',
  `catatan_admin` text,
  `tanggal_daftar` timestamp NULL DEFAULT NULL,
  `tanggal_verifikasi` timestamp NULL DEFAULT NULL,
  `diverifikasi_oleh` int DEFAULT NULL COMMENT 'admin yang menerima/menolak pendaftaran (SKPL-F011)',
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `kata_sandi` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL COMMENT 'enum: super_admin, admin_microcredential, instruktur, peserta',
  `aktif` varchar(255) DEFAULT NULL COMMENT 'enum: aktif, nonaktif',
  `foto_profil` varchar(255) DEFAULT NULL,
  `nomor_telepon` varchar(255) DEFAULT NULL,
  `alamat` text,
  `tanggal_lahir` date DEFAULT NULL,
  `x` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `email`, `kata_sandi`, `role`, `aktif`, `foto_profil`, `nomor_telepon`, `alamat`, `tanggal_lahir`, `x`, `facebook`, `linkedin`, `instagram`, `dibuat_pada`, `diperbarui_pada`) VALUES
(1, 'Super Admin', 'superadmin', 'superadmin@mindfloox.com', '$2y$12$6X1nW9JuO6/wvVCnFQGxcuASRK2gyTkHzEdqHYT67eacOIVxqpijK', 'super_admin', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-07-12 19:39:19', '2026-07-12 19:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `periode_pembelajaran`
--

CREATE TABLE `periode_pembelajaran` (
  `id` int NOT NULL,
  `tahun` varchar(255) DEFAULT NULL COMMENT 'contoh: 2024/2025',
  `jenis` varchar(255) DEFAULT NULL COMMENT 'enum: ganjil, genap',
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan_kuis`
--

CREATE TABLE `pertanyaan_kuis` (
  `id` int NOT NULL,
  `id_kuis` int DEFAULT NULL,
  `teks_pertanyaan` text,
  `tipe_pertanyaan` varchar(255) DEFAULT NULL COMMENT 'enum: pilihan_ganda, esai',
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id` int NOT NULL,
  `id_pengguna` int DEFAULT NULL,
  `akses_aktif` tinyint DEFAULT NULL,
  `diaktifkan_oleh` int DEFAULT NULL COMMENT 'admin yang mengaktifkan akses login (SKPL-F011)',
  `diaktifkan_pada` timestamp NULL DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pilihan_jawaban`
--

CREATE TABLE `pilihan_jawaban` (
  `id` int NOT NULL,
  `id_pertanyaan` int DEFAULT NULL COMMENT 'hanya untuk tipe pilihan_ganda',
  `teks_pilihan` text,
  `adalah_benar` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_microcredential`
--

CREATE TABLE `program_microcredential` (
  `id` int NOT NULL,
  `id_jenis_microcredential` int DEFAULT NULL,
  `id_periode_pembelajaran` int DEFAULT NULL,
  `id_admin_microcredential` int DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL COMMENT 'contoh: Program Akuntansi Terapan 2024',
  `deskripsi` text,
  `foto_program` varchar(255) DEFAULT NULL,
  `status_pendaftaran` varchar(255) DEFAULT NULL COMMENT 'enum: tutup, buka',
  `tanggal_mulai_pendaftaran` date DEFAULT NULL,
  `tanggal_akhir_pendaftaran` date DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sertifikat_kursus`
--

CREATE TABLE `sertifikat_kursus` (
  `id` int NOT NULL,
  `id_pendaftaran` int DEFAULT NULL COMMENT 'hanya diterbitkan jika status_lulus = true (SKPL-F021)',
  `nomor_sertifikat` varchar(255) DEFAULT NULL,
  `tanggal_terbit` date DEFAULT NULL,
  `url_file` varchar(255) DEFAULT NULL COMMENT 'path file sertifikat PDF (SKPL-F022)',
  `dibuat_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sesi_kuis`
--

CREATE TABLE `sesi_kuis` (
  `id` int NOT NULL,
  `id_pendaftaran` int DEFAULT NULL,
  `id_kuis` int DEFAULT NULL,
  `status` varchar(255) DEFAULT 'selesai' COMMENT 'status pengerjaan kuis',
  `dimulai_pada` timestamp NULL DEFAULT NULL,
  `diselesaikan_pada` timestamp NULL DEFAULT NULL COMMENT 'diisi saat peserta submit atau waktu habis'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('PTabEjVqpv8dVNeUmQXk9pcfFXcpNPz6zEzKY5kY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJqSmZ5ellSSXNMQWRXMXB2WER4bFRvQ29TRkRDaVdIYTFBeUViRWVzIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9sb2dpbiIsInJvdXRlIjoibG9naW4ifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1783885098);

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

CREATE TABLE `super_admin` (
  `id` int NOT NULL,
  `id_pengguna` int DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`id`, `id_pengguna`, `dibuat_pada`, `diperbarui_pada`) VALUES
(1, 1, '2026-07-12 19:40:49', '2026-07-12 19:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id` int NOT NULL,
  `id_kursus` int DEFAULT NULL,
  `id_kursus_instruktur` int DEFAULT NULL,
  `id_minggu` bigint DEFAULT NULL,
  `nomor_urut` int DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `tanggal_mulai` timestamp NULL DEFAULT NULL,
  `batas_waktu` timestamp NULL DEFAULT NULL COMMENT 'deadline pengumpulan; NULL = tidak dibatasi',
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ulasan_kursus`
--

CREATE TABLE `ulasan_kursus` (
  `id` int NOT NULL,
  `id_pendaftaran` int DEFAULT NULL,
  `id_kursus` int DEFAULT NULL,
  `rating_kursus` int DEFAULT NULL COMMENT 'opsional, 1-5',
  `dibuat_pada` timestamp NULL DEFAULT NULL,
  `diperbarui_pada` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_microcredential`
--
ALTER TABLE `admin_microcredential`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jenis_microcredential` (`id_jenis_microcredential`),
  ADD KEY `id_dibuat_oleh` (`id_dibuat_oleh`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `instruktur`
--
ALTER TABLE `instruktur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dibuat_oleh` (`id_dibuat_oleh`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `jawaban_kuis`
--
ALTER TABLE `jawaban_kuis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jawaban_kuis_index_4` (`id_sesi_kuis`,`id_pertanyaan`),
  ADD KEY `id_pertanyaan` (`id_pertanyaan`),
  ADD KEY `id_pilihan_jawaban` (`id_pilihan_jawaban`);

--
-- Indexes for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jawaban_tugas_index_2` (`id_pendaftaran`,`id_tugas`),
  ADD KEY `id_tugas` (`id_tugas`);

--
-- Indexes for table `jenis_microcredential`
--
ALTER TABLE `jenis_microcredential`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuis`
--
ALTER TABLE `kuis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kursus` (`id_kursus`),
  ADD KEY `id_kursus_instruktur` (`id_kursus_instruktur`),
  ADD KEY `id_minggu` (`id_minggu`);

--
-- Indexes for table `kunci_jawaban_esai`
--
ALTER TABLE `kunci_jawaban_esai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pertanyaan` (`id_pertanyaan`);

--
-- Indexes for table `kursus`
--
ALTER TABLE `kursus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_program_microcredential` (`id_program_microcredential`);

--
-- Indexes for table `kursus_instruktur`
--
ALTER TABLE `kursus_instruktur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kursus_instruktur_index_0` (`id_kursus`,`id_instruktur`),
  ADD KEY `id_instruktur` (`id_instruktur`);

--
-- Indexes for table `materi_dilihat`
--
ALTER TABLE `materi_dilihat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `materi_dilihat_index_1` (`id_pendaftaran`,`id_materi_pembelajaran`),
  ADD KEY `id_materi_pembelajaran` (`id_materi_pembelajaran`);

--
-- Indexes for table `materi_pembelajaran`
--
ALTER TABLE `materi_pembelajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kursus` (`id_kursus`),
  ADD KEY `id_kursus_instruktur` (`id_kursus_instruktur`),
  ADD KEY `id_minggu` (`id_minggu`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minggu`
--
ALTER TABLE `minggu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kursus` (`id_kursus`);

--
-- Indexes for table `nilai_kuis`
--
ALTER TABLE `nilai_kuis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sesi_kuis` (`id_sesi_kuis`);

--
-- Indexes for table `nilai_kursus`
--
ALTER TABLE `nilai_kursus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pendaftaran` (`id_pendaftaran`),
  ADD KEY `id_kursus` (`id_kursus`);

--
-- Indexes for table `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pendaftaran` (`id_pendaftaran`),
  ADD KEY `id_tugas` (`id_tugas`),
  ADD KEY `dinilai_oleh` (`dinilai_oleh`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_peserta` (`id_peserta`),
  ADD KEY `id_program_microcredential` (`id_program_microcredential`),
  ADD KEY `diverifikasi_oleh` (`diverifikasi_oleh`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `periode_pembelajaran`
--
ALTER TABLE `periode_pembelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertanyaan_kuis`
--
ALTER TABLE `pertanyaan_kuis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kuis` (`id_kuis`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `diaktifkan_oleh` (`diaktifkan_oleh`);

--
-- Indexes for table `pilihan_jawaban`
--
ALTER TABLE `pilihan_jawaban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pertanyaan` (`id_pertanyaan`);

--
-- Indexes for table `program_microcredential`
--
ALTER TABLE `program_microcredential`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jenis_microcredential` (`id_jenis_microcredential`),
  ADD KEY `id_periode_pembelajaran` (`id_periode_pembelajaran`),
  ADD KEY `id_admin_microcredential` (`id_admin_microcredential`);

--
-- Indexes for table `sertifikat_kursus`
--
ALTER TABLE `sertifikat_kursus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_sertifikat` (`nomor_sertifikat`),
  ADD KEY `id_pendaftaran` (`id_pendaftaran`);

--
-- Indexes for table `sesi_kuis`
--
ALTER TABLE `sesi_kuis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sesi_kuis_index_3` (`id_pendaftaran`,`id_kuis`),
  ADD KEY `id_kuis` (`id_kuis`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kursus` (`id_kursus`),
  ADD KEY `id_kursus_instruktur` (`id_kursus_instruktur`);

--
-- Indexes for table `ulasan_kursus`
--
ALTER TABLE `ulasan_kursus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ulasan_kursus_index_5` (`id_pendaftaran`,`id_kursus`),
  ADD KEY `id_kursus` (`id_kursus`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_microcredential`
--
ALTER TABLE `admin_microcredential`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instruktur`
--
ALTER TABLE `instruktur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawaban_kuis`
--
ALTER TABLE `jawaban_kuis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_microcredential`
--
ALTER TABLE `jenis_microcredential`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kuis`
--
ALTER TABLE `kuis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kunci_jawaban_esai`
--
ALTER TABLE `kunci_jawaban_esai`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kursus`
--
ALTER TABLE `kursus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kursus_instruktur`
--
ALTER TABLE `kursus_instruktur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materi_dilihat`
--
ALTER TABLE `materi_dilihat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materi_pembelajaran`
--
ALTER TABLE `materi_pembelajaran`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `minggu`
--
ALTER TABLE `minggu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_kuis`
--
ALTER TABLE `nilai_kuis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_kursus`
--
ALTER TABLE `nilai_kursus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `periode_pembelajaran`
--
ALTER TABLE `periode_pembelajaran`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pertanyaan_kuis`
--
ALTER TABLE `pertanyaan_kuis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pilihan_jawaban`
--
ALTER TABLE `pilihan_jawaban`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `program_microcredential`
--
ALTER TABLE `program_microcredential`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sertifikat_kursus`
--
ALTER TABLE `sertifikat_kursus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sesi_kuis`
--
ALTER TABLE `sesi_kuis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ulasan_kursus`
--
ALTER TABLE `ulasan_kursus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_microcredential`
--
ALTER TABLE `admin_microcredential`
  ADD CONSTRAINT `admin_microcredential_ibfk_1` FOREIGN KEY (`id_jenis_microcredential`) REFERENCES `jenis_microcredential` (`id`),
  ADD CONSTRAINT `admin_microcredential_ibfk_2` FOREIGN KEY (`id_dibuat_oleh`) REFERENCES `super_admin` (`id`),
  ADD CONSTRAINT `admin_microcredential_ibfk_3` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id`);

--
-- Constraints for table `instruktur`
--
ALTER TABLE `instruktur`
  ADD CONSTRAINT `instruktur_ibfk_1` FOREIGN KEY (`id_dibuat_oleh`) REFERENCES `super_admin` (`id`),
  ADD CONSTRAINT `instruktur_ibfk_2` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id`);

--
-- Constraints for table `jawaban_kuis`
--
ALTER TABLE `jawaban_kuis`
  ADD CONSTRAINT `jawaban_kuis_ibfk_1` FOREIGN KEY (`id_sesi_kuis`) REFERENCES `sesi_kuis` (`id`),
  ADD CONSTRAINT `jawaban_kuis_ibfk_2` FOREIGN KEY (`id_pertanyaan`) REFERENCES `pertanyaan_kuis` (`id`),
  ADD CONSTRAINT `jawaban_kuis_ibfk_3` FOREIGN KEY (`id_pilihan_jawaban`) REFERENCES `pilihan_jawaban` (`id`);

--
-- Constraints for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  ADD CONSTRAINT `jawaban_tugas_ibfk_1` FOREIGN KEY (`id_pendaftaran`) REFERENCES `pendaftaran` (`id`),
  ADD CONSTRAINT `jawaban_tugas_ibfk_2` FOREIGN KEY (`id_tugas`) REFERENCES `tugas` (`id`);

--
-- Constraints for table `kuis`
--
ALTER TABLE `kuis`
  ADD CONSTRAINT `kuis_ibfk_1` FOREIGN KEY (`id_kursus`) REFERENCES `kursus` (`id`),
  ADD CONSTRAINT `kuis_ibfk_2` FOREIGN KEY (`id_kursus_instruktur`) REFERENCES `kursus_instruktur` (`id`),
  ADD CONSTRAINT `kuis_ibfk_3` FOREIGN KEY (`id_minggu`) REFERENCES `minggu` (`id`);

--
-- Constraints for table `kunci_jawaban_esai`
--
ALTER TABLE `kunci_jawaban_esai`
  ADD CONSTRAINT `kunci_jawaban_esai_ibfk_1` FOREIGN KEY (`id_pertanyaan`) REFERENCES `pertanyaan_kuis` (`id`);

--
-- Constraints for table `kursus`
--
ALTER TABLE `kursus`
  ADD CONSTRAINT `kursus_ibfk_1` FOREIGN KEY (`id_program_microcredential`) REFERENCES `program_microcredential` (`id`);

--
-- Constraints for table `kursus_instruktur`
--
ALTER TABLE `kursus_instruktur`
  ADD CONSTRAINT `kursus_instruktur_ibfk_1` FOREIGN KEY (`id_kursus`) REFERENCES `kursus` (`id`),
  ADD CONSTRAINT `kursus_instruktur_ibfk_2` FOREIGN KEY (`id_instruktur`) REFERENCES `instruktur` (`id`);

--
-- Constraints for table `materi_dilihat`
--
ALTER TABLE `materi_dilihat`
  ADD CONSTRAINT `materi_dilihat_ibfk_1` FOREIGN KEY (`id_pendaftaran`) REFERENCES `pendaftaran` (`id`),
  ADD CONSTRAINT `materi_dilihat_ibfk_2` FOREIGN KEY (`id_materi_pembelajaran`) REFERENCES `materi_pembelajaran` (`id`);

--
-- Constraints for table `materi_pembelajaran`
--
ALTER TABLE `materi_pembelajaran`
  ADD CONSTRAINT `materi_pembelajaran_ibfk_1` FOREIGN KEY (`id_kursus`) REFERENCES `kursus` (`id`),
  ADD CONSTRAINT `materi_pembelajaran_ibfk_2` FOREIGN KEY (`id_kursus_instruktur`) REFERENCES `kursus_instruktur` (`id`),
  ADD CONSTRAINT `materi_pembelajaran_ibfk_3` FOREIGN KEY (`id_minggu`) REFERENCES `minggu` (`id`);

--
-- Constraints for table `minggu`
--
ALTER TABLE `minggu`
  ADD CONSTRAINT `minggu_ibfk_1` FOREIGN KEY (`id_kursus`) REFERENCES `kursus` (`id`);

--
-- Constraints for table `nilai_kuis`
--
ALTER TABLE `nilai_kuis`
  ADD CONSTRAINT `nilai_kuis_ibfk_1` FOREIGN KEY (`id_sesi_kuis`) REFERENCES `sesi_kuis` (`id`);

--
-- Constraints for table `nilai_kursus`
--
ALTER TABLE `nilai_kursus`
  ADD CONSTRAINT `nilai_kursus_ibfk_1` FOREIGN KEY (`id_pendaftaran`) REFERENCES `pendaftaran` (`id`),
  ADD CONSTRAINT `nilai_kursus_ibfk_2` FOREIGN KEY (`id_kursus`) REFERENCES `kursus` (`id`);

--
-- Constraints for table `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  ADD CONSTRAINT `nilai_tugas_ibfk_1` FOREIGN KEY (`id_pendaftaran`) REFERENCES `pendaftaran` (`id`),
  ADD CONSTRAINT `nilai_tugas_ibfk_2` FOREIGN KEY (`id_tugas`) REFERENCES `tugas` (`id`),
  ADD CONSTRAINT `nilai_tugas_ibfk_3` FOREIGN KEY (`dinilai_oleh`) REFERENCES `instruktur` (`id`);

--
-- Constraints for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `pendaftaran_ibfk_1` FOREIGN KEY (`id_peserta`) REFERENCES `peserta` (`id`),
  ADD CONSTRAINT `pendaftaran_ibfk_2` FOREIGN KEY (`id_program_microcredential`) REFERENCES `program_microcredential` (`id`),
  ADD CONSTRAINT `pendaftaran_ibfk_3` FOREIGN KEY (`diverifikasi_oleh`) REFERENCES `admin_microcredential` (`id`);

--
-- Constraints for table `pertanyaan_kuis`
--
ALTER TABLE `pertanyaan_kuis`
  ADD CONSTRAINT `pertanyaan_kuis_ibfk_1` FOREIGN KEY (`id_kuis`) REFERENCES `kuis` (`id`);

--
-- Constraints for table `peserta`
--
ALTER TABLE `peserta`
  ADD CONSTRAINT `peserta_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id`),
  ADD CONSTRAINT `peserta_ibfk_2` FOREIGN KEY (`diaktifkan_oleh`) REFERENCES `admin_microcredential` (`id`);

--
-- Constraints for table `pilihan_jawaban`
--
ALTER TABLE `pilihan_jawaban`
  ADD CONSTRAINT `pilihan_jawaban_ibfk_1` FOREIGN KEY (`id_pertanyaan`) REFERENCES `pertanyaan_kuis` (`id`);

--
-- Constraints for table `program_microcredential`
--
ALTER TABLE `program_microcredential`
  ADD CONSTRAINT `program_microcredential_ibfk_1` FOREIGN KEY (`id_jenis_microcredential`) REFERENCES `jenis_microcredential` (`id`),
  ADD CONSTRAINT `program_microcredential_ibfk_2` FOREIGN KEY (`id_periode_pembelajaran`) REFERENCES `periode_pembelajaran` (`id`),
  ADD CONSTRAINT `program_microcredential_ibfk_3` FOREIGN KEY (`id_admin_microcredential`) REFERENCES `admin_microcredential` (`id`);

--
-- Constraints for table `sertifikat_kursus`
--
ALTER TABLE `sertifikat_kursus`
  ADD CONSTRAINT `sertifikat_kursus_ibfk_1` FOREIGN KEY (`id_pendaftaran`) REFERENCES `pendaftaran` (`id`);

--
-- Constraints for table `sesi_kuis`
--
ALTER TABLE `sesi_kuis`
  ADD CONSTRAINT `sesi_kuis_ibfk_1` FOREIGN KEY (`id_pendaftaran`) REFERENCES `pendaftaran` (`id`),
  ADD CONSTRAINT `sesi_kuis_ibfk_2` FOREIGN KEY (`id_kuis`) REFERENCES `kuis` (`id`);

--
-- Constraints for table `super_admin`
--
ALTER TABLE `super_admin`
  ADD CONSTRAINT `super_admin_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id`);

--
-- Constraints for table `tugas`
--
ALTER TABLE `tugas`
  ADD CONSTRAINT `tugas_ibfk_1` FOREIGN KEY (`id_kursus`) REFERENCES `kursus` (`id`),
  ADD CONSTRAINT `tugas_ibfk_2` FOREIGN KEY (`id_kursus_instruktur`) REFERENCES `kursus_instruktur` (`id`);

--
-- Constraints for table `ulasan_kursus`
--
ALTER TABLE `ulasan_kursus`
  ADD CONSTRAINT `ulasan_kursus_ibfk_1` FOREIGN KEY (`id_pendaftaran`) REFERENCES `pendaftaran` (`id`),
  ADD CONSTRAINT `ulasan_kursus_ibfk_2` FOREIGN KEY (`id_kursus`) REFERENCES `kursus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
