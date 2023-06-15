-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2023 at 06:56 PM
-- Server version: 10.9.2-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasnarasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuis_models`
--

CREATE TABLE `kuis_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_a` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuis_models`
--

INSERT INTO `kuis_models` (`id`, `soal`, `option_a`, `option_b`, `option_c`, `option_d`, `jawaban`, `created_at`, `updated_at`) VALUES
(1, 'SATU DITAMBAH SATU SAMA DENGAN', '1', '2', '3', '4', '2', '2023-06-11 21:28:00', '2023-06-11 21:28:00'),
(2, 'difana nanda pridhasila zzein', 'benar', 'salah', '80%', '67%', '80%', '2023-06-13 02:35:24', '2023-06-13 02:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `materis`
--

CREATE TABLE `materis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materis`
--

INSERT INTO `materis` (`id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Bab 1 : Sejarah Kesultanan Banjar', 'materi/JBPGk3GW2TuQLAjeTBwQbg3GuQX19U8CPJxNThF6.png', '<p>Masuknya Islam ke Nusantara atau Indonesia yang dibawa oleh para pedagang Gujarat, ulama sufi dan mubaligh pada sekitar abad XVII menurut Nurcholis Madjid sudah mengalami apa yang disebut asimilasi nilai kultural. Di mana proses Islamisasi tersebut lebih menekankan upaya adaptasi ajaran Islam dengan budaya setempat. Salah satu di antara adanya adaptasi itu, lenturnya pemahaman Islam dan pengaruh ajaran agama terdahulu atas Islam, sehingga “Islam lembek” sebagai ungkapan adanya celah-celah campuraduknya ajaran Islam yang orisinil dengan agama nenek moyang (Nurcholis Madjid, 1995; 32-33). Salah satu contoh Sunan Kalijaga mencoba membawa misi Islam dalam cerita wayang ketika melakukan dakwah terhadap masyarakat pulau Jawa. Wayang sama sekali tidak pernah dikenal di dalam kultur Islam, namun kreativitas pemeluknya bisa berkembang sesuai dengan kebutuhan pragmatis serta tidak bertentangan dengan nilai-nilai ajaran Islam. Islam masuk ke Kalimantan Selatan pada masa jauh lebih belakang dibanding, misalnya, Sumatera Utara atau Avej. Diperkirakan telah ada sejumlah muslim di wilayah ini sejak awal abad ke-15, tetapi Islamisasi mencapai momentumnya baru setelah pasukan kesultanan Demak di Jawa datang ke Banjarmasin untuk membantu Pangeran Samudra dalam perjuangannya dengan kalangan elit istana kerajaan Daha. Setelah kemenangannya, Pangeran Samudra memenuhi janjinya untuk beralih memeluk agama Islam pada sekitar tahun 936 H/1526 M dan diangkat sebagai sultan yang pertama di Kasultanan Banjar. Dia diberi gelar Sultan Suriansyah atau Surian Allah oleh seorang dai Arab. (Azyumardi Azra, 1995; 251).</p><p>Menurut mitologi suku Maanyan (suku tertua di Kalimantan Selatan), kerajaan pertama di Borneo Selatan adalah Kerajaan Nan Sarunai yang diperkirakan wilayah kekuasaannya terbentang luas mulai dari daerah Tabalong hingga ke daerah Pasir. Keberadaan mitologi Maanyan yang menceritakan tentang masa-masa keemasan Kerajaan Nan Sarunai sebuah kerajaan purba yang dulunya mempersatukan etnis Maanyan di daerah ini dan telah melakukan hubungan dengan pulau Madagaskar. Kerajaan ini mendapat serangan dari Majapahit. sehingga sebagian rakyatnya menyingkir ke pedalaman (wilayah suku Lawangan). Salah satu peninggalan arkeologis yang berasal dari zaman ini adalah Candi Agung yang terletak di kota Amuntai. Pada tahun 1996, telah dilakukan pengujian C-14 terhadap sampel arang Candi Agung yang menghasilkan angka tahun dengan kisaran 242-226 SM (Kusmartono dan Widianto, 1998:19-20). Menilik dari angka tahun dimaksud maka Kerajaan Nan Sarunai/ Kerajaan Tabalong/Kerajaan Tanjungpuri usianya lebih tua 600 tahun dibandingkan dengan Kerajaan Kutai Martapura di Kalimantan Timur. Menurut Hikayat Sang Bima, wangsa yang menurunkan raja-raja Banjar adalah Sang Dewa bersaudara dengan wangsa yang menurunkan raja-raja Bima (Sang Bima), raja-raja Bali (Sang Kuala), raja-raja Dompu(Darmawangsa), raja-raja Gowa (Sang Rajuna) yang merupakan lima bersaudara putera-putera dari Maharaja Pandu Dewata. (Henri, dkk., 2004: 121).&nbsp;</p><p>Sesuai Tutur Candi (Hikayat Banjar versi II), di Kalimantan telah berdiri suatu pemerintahan dari dinasti kerajaan (keraton) yang terus menerus berlanjut hingga daerah ini digabungkan ke dalam Hindia Belanda pada 11 Juni 1860, yaitu :</p><ol><li>Keraton awal disebut Kerajaan Kuripan&nbsp;</li><li>Keraton I disebut Kerajaan Negara Dipa</li><li>Keraton II disebut Kerajaan Negara Daha&nbsp;</li><li>Keraton III disebut Kesultanan Banjar</li><li>Keraton IV disebut Kerajaan Martapura/Kayu Tangi&nbsp;</li><li>Keraton V disebut Pagustian. Maharaja Sukarama</li></ol><p>Raja Negara Daha telah berwasiat agar penggantinya adalah cucunya Raden Samudera, anak dari putrinya Puteri Galuh Intan Sari. Ayah dari Raden Samudera adalah Raden Manteri Jaya, putra dari Raden Begawan, saudara Maharaja Sukarama. Wasiat tersebut menyebabkan Raden Samudera terancam keselamatannya karena para putra Maharaja Sukarama juga berambisi sebagai raja yaitu Pangeran Bagalung, Pangeran Mangkubumi dan Pangeran Tumenggung. Dibantu oleh Arya Taranggana, Pangeran Samudra melarikan diri dengan sampan ke hilir sungai Barito. Sepeninggal Sukarama, Pangeran Mangkubumi menjadi Raja Negara Daha, selanjutnya digantikan Pangeran Tumenggung yang juga putra Sukarama. Pangeran Samudra yang menyamar menjadi nelayan di daerah Balandean dan Kuin, ditampung oleh Patih Masih di rumahnya. Oleh Patih Masih bersama Patih Muhur, Patih Balitung diangkat menjadi raja yang berkedudukan di Bandarmasih. Pangeran Tumenggung melakukan penyerangan ke Bandarmasih. Pangeran Samudra dibantu Kerajaan Demak dengan kekuatan 40.000 prajurit dengan armada sebanyak 1.000 perahu yang masing-masing memuat 400 prajurit mampu menahan serangan tersebut (Slamet Muljana, 2005: 70). Akhirnya Pangeran Tumenggung bersedia menyerahkan kekuasaan Kerajaan Negara Daha kepada Pangeran Samudra. Kerajaan Negara Daha kemudian dilebur menjadi Kesultanan Banjar yang beristana di Bandarmasih. Sedangkan Pangeran Tumenggung diberi wilayah di Batang Alai. Pangeran Samudra menjadi raja pertama Kerajaan Banjar dengan gelar Sultan Suriansyah. Ia pun menjadi raja pertama yang masuk Islam dibimbing oleh Khatib Dayan.</p>', '2023-06-10 21:32:48', '2023-06-13 15:53:54'),
(2, 'Bab 2 :   Perkembangan Budaya dan Kehidupan sosial di Kesultanan Banjar', 'materi/fleY7TOAqfmWU0X1Ga8i4yxZ0wq5NqsfX91QSmc2.png', '<p><strong>Kehidupan Sosial dan Ekonomi</strong></p><p>Dalam masyarakat Banjar terdapat susunan dan peranan sosial yang berbentuk segi tiga piramid. Lapisan teratas adalah golongan penguasa yang merupakan golongan minoritas. Golongan ini terdiri dari kaum bangsawan, keluarga raja. Lapisan tengah diisi oleh para pemuka agama yang mengurusi masalah hukum keagamaan dalam kerajaan. Sementara golongan mayoritas diisi oleh para petani, nelayan, pedagang dan lain sebagainya.</p><p>Perkembangan perekonomian di Kalimantan Selatan mengalami kemajuan yang pesat pada abad-16 sampai abad-17. Banjarmasin menjadi kota dagang yang sangat berarti untuk mencapai suatu kemakmuran kerajaan. Kalimantan Selatan juga memiliki perairan yang strategis sebagai lalu lintas perdagangan. Dalam perdagangan, lada merupakan komoditas ekspor terbesar dalam Kerajaan Banjar.&nbsp;</p><p>Dalam hal industri, Kerajaan Banjar juga menghasilkan besi dan logam. Industri logam dan besi ini terdapat di daerah Negara. Kemampuan dan keahlian mereka mencor logam seperti perunggu, yang dapat menghasilkan bermacam barang-barang untuk di ekspor. Sejak abad ke-17 daerah Negara terkenal dengan pembuatan kapal dan peralatan senjata lainnya, seperti golok, kapak, cangkul dan lain-lain. Selain itu, keahlian membuat kendi sebagai bentuk kerajinan yang telah berkembang turun-temurun sebagai sambilan disamping bertani. Kemudian dikenal juga usaha-usaha pertukangan, seperti tukang gergaji papan dan balok, tukang sirap, dan lain sebagainya.</p><p><strong>Kehidupan Budaya</strong></p><p>Orang-orang Banjar terdiri dari tiga golongan, yaitu kelompok Banjar Muara (Suku Ngaju), Kelompok Banjar Batang Banyu (Suku Maanyan), dan Kelompok Banjar Hulu (Suku Bukit). Dalam setiap kurun Sejarah, Kebudayaan Banjar mengalami pergeseran dan perubahan-perubahan hingga coraknya berbeda dari zaman ke zaman. Ini merupakan manifestasi dari cara berpikir sekelompok manusia di daerah ini dalam suatu kurun waktu tertentu.</p><p>Dalam rentetan peristiwa sejarah, kita dapatkan bahwa masyarakat Banjar dimulai dari percampuran budaya melayu dengan budaya bukit dan maanyan sebagai inti, kemudian membentuk kerajaan Tanjung Pura dengan agama Buddha. Yang kedua, percampuran kebudayaan pertama dengan kebudayaan Jawa, yang mana budaya Maanyan, Bukit, dan Melayu menjadi inti, yang kemudian membentuk Kerajaan Negara Dipa dengan agama Buddha. Yang ketiga, adalah perpaduan dengan kebudayaan Jawa yang membentuk kerajaan Negara Daha dengan agama Hindu. Yang terakhir, lanjutan dari Kerajaan Daha dalam membentuk kerajaan Banjar Islam dan perpaduan suku Ngaju, Maanyan dan Bukit. Dari perpaduan yang terakhir inilah akhirnya melahirkan kebudayaan yang ada dalam Kerajaan Banjar.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', '2023-06-10 21:33:10', '2023-06-13 15:59:52'),
(3, 'Bab 3 : PENINGALAN KESULTANAN BANJAR', 'materi/KG6lpGmLKkxpvoeWwXhArW3hvRE5EM5V6ozWadRw.png', '<p><strong>Makam Sultan Suriansyah</strong></p><p>Peninggalan Kerajaan Banjar yang pertama adalah Makam Sultan Suriansyah. Sultan Suriansyah adalah raja pertama sekaligus pendiri Kerajaan Banjar.&nbsp;Jaya Samudera adalah Raja Banjar pertama yang diketahui memeluk agama Islam.Ia dikenal dengan gelar Sultan Suriansyah atau Sultan Suryanulloh. Gelar tersebut merupakan pemberian dari bangsa Arab yang pertama datang ke Banjarmasin. Sultan Suriansyah sendiri diketahui memerintah kerajaan Banjar dari tahun 1500-1540. Sebuah kompleks pemakaman dibuat untuk mengenang beliau. Pemakaman Sultan Suriansyah yang ada saat ini adalah bentuk yang sudah dipugar. Kompleks pemakaman terletak di daerah Kuin Utara.</p><p><strong>Candi Agung Amuntai</strong></p><p>Peninggalan- peninggalan mempunyai sejarah awal dari kehidupan era dahulu yang jadi peradaban kuno, di kalimantan selatan yang condong berkebudayaan sungai yang masih menempel hingga saat ini, aset dari kebudayaan pada dini perang banjar hingga terjadinya kerajaan banjar. salah satu aset memiliki di kalimantan selatan antara lain Candi Agung. candi agung Amuntai ialah aset Kerajaan Negaradipa yang dibentuk oleh Empu Jatmika abad ke XIV Masehi. Dari kerajaan ini akhirnya melahirkan Kerajaan Daha di Negeri serta Kerajaan Banjarmasin. Bagi cerita, Kerajaan Hindu Negaradipa berdiri tahun 1438 di persimpangan 3 aliran Sungai, Tabalong, Balangan, serta Negeri. Cikal bakal Kerajaan Banjar itu diperintah oleh Pangeran Surianata serta Gadis Junjung Buih dengan kepala pemerintahan Patih Lambung Mangkurat. Negaradipa setelah itu tumbuh jadi Kota Amuntai.</p><p>Candi Agung diperkirakan sudah berumur 740 tahun. Bahan material Candi Agung ini didominasi oleh batu serta kayu. Kondisinya masih sangat kuat. Di candi ini pula ditemui sebagian barang aset sejarah yang umurnya kira- kira dekat 200 tahun SM. Batu yang digunakan buat mendirikan candi ini juga masih ada disitu. Batunya sekilas mirip sekali dengan batu bata merah. Tetapi apabila dijamah ada perbedaannya, lebih berat serta lebih kokoh dari bata merah biasa. Web Candi Agung, yang ialah bagian dari lambang wilayah HSU, dengan memakai metode supranatural. candi agung saat ini dikonstruksi menyamai wujud candi agung terdahulu tanpa merubah letak, cuma saja bangunan candi agung saat ini terbuat semacam rumah banjar serta di peruntukan tempat wisata.</p><p><strong>Mesjid Sultan Suriansyah</strong></p><p>Mesjid Sultan Suriansyah merupakan suatu masjid memiliki yang ialah masjid tertua di Kalimantan Selatan. Nama dari Masjid ini diambil dari nama raja yang memerintah saat itu yaitu Sultan Suriansyah, raja pertama Kesultanan Banjar. Masjid ini dibentuk di masa pemerintahan Sultan Suriansyah( 1526- 1550), raja Banjar awal yang memeluk agama Islam. Masjid ini terletak di Kelurahan Kuin Utara, Banjarmasin Utara, Banjarmasin, kawasan yang diketahui selaku Banjar Lama ialah web ibukota Kesultanan Banjar yang awal kali. Wujud arsitektur dengan konstruksi panggung serta beratap tumpang, ialah masjid bergaya tradisional Banjar. Masjid bergaya tradisional Banjar pada bagian mihrabnya mempunyai atap sendiri terpisah dengan bangunan induk. Masjid ini didirikan di tepi sungai Kuin.</p><p><strong>Masjid Sabilal Muhtadin</strong></p><p>Masjid ini adalah salah satu masjid tertua di Kalimantan Selatan dan merupakan pusat kegiatan keagamaan dan pendidikan Islam pada masa Kesultanan Banjar. Masjid ini terletak di Kota Martapura dan memiliki arsitektur yang mencerminkan perpaduan budaya Melayu dan Jawa.</p><p><strong>Batu Tulis Riam Kanan</strong></p><p>Batu tulis ini adalah prasasti berbahasa Melayu yang ditemukan di Riam Kanan, Kalimantan Selatan. Prasasti ini berisi tentang sejarah Kesultanan Banjar dan telah menjadi bukti keberadaan kekuasaan kerajaan pada masa lalu.</p><p><strong>Senjata Tradisional</strong></p><p>Kesultanan Banjar juga memiliki senjata tradisional yang unik, seperti keris, pedang, dan tombak. Senjata-senjata tersebut sering digunakan dalam upacara adat, pertempuran, dan sebagai simbol kekuasaan kesultanan.</p>', '2023-06-11 01:56:58', '2023-06-13 16:08:11'),
(4, 'bab 4', 'materi/61niswMV2sfBIlMQMUuuZFCLwxLlRu7gXrRljCxp.png', 'Salah satu media pembelajaran yang dapat digunakan   untuk   mempermudah   siswa dalam memahami materi informatika dasar yaitu  dengan menggunakan media mobile learning. Dalam konteks pembelajaran informatika dasar, mobile learning menyediakan materi pembelajaran dalam bentuk teks, gambar, serta dilengkapi dengan contoh soal dan kuis. Hal ini membantu siswa dalam meningkatkan pemahaman mereka terhadap materi tersebut. Dengan menyajikan konten pembelajaran yang beragam, mobile learning dapat mendorong siswa untuk lebih aktif dan terlibat dalam proses belajar.', '2023-06-11 02:05:51', '2023-06-11 04:45:39'),
(5, 'bab 5', 'materi/g7i4wKlX18paTnJYiVaz1SKKBwXhYyojFF27OnwU.png', 'Salah satu media pembelajaran yang dapat digunakan   untuk   mempermudah   siswa dalam memahami materi informatika dasar yaitu  dengan menggunakan media mobile learning. Dalam konteks pembelajaran informatika dasar, mobile learning menyediakan materi pembelajaran dalam bentuk teks, gambar, serta dilengkapi dengan contoh soal dan kuis. Hal ini membantu siswa dalam meningkatkan pemahaman mereka terhadap materi tersebut. Dengan menyajikan konten pembelajaran yang beragam, mobile learning dapat mendorong siswa untuk lebih aktif dan terlibat dalam proses belajar.', '2023-06-11 02:06:07', '2023-06-11 04:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_11_031058_create_materis_table', 1),
(6, '2023_06_12_062437_create_kuis_models_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
(1, 'nandaazein', 'nandaazein@gmail.com', NULL, '$2y$10$pw0CIP9xhEA9NVc6DpfzyO0cfszN2uUT2BMZVAcqInfRUiajgL09W', NULL, NULL, NULL, 'admin'),
(2, 'naura umaiza', 'naura@gmail.com', NULL, '$2y$10$BFZTB7jMtjfN2ZVHktOine8RkzuIGrQhAIC7Wf7RU2Ja98OA/g6Zm', NULL, '2023-06-10 20:54:06', '2023-06-10 20:54:06', 'user'),
(3, 'naura umaiza', 'naura1@gmail.com', NULL, '$2y$10$IutXcV/eTWDWVbN3TklIPu75Yw..TYU9u3VYUX7P5r0Co8rzip8vq', NULL, '2023-06-10 20:54:40', '2023-06-10 20:54:40', 'user'),
(4, 'dhita', 'dhita@gmail.com', NULL, '$2y$10$vUSjjx/bpC5gB/RAZhp6f.Yk6GK4FT5tPp0FD/spR1AN7mqM1Oth6', NULL, '2023-06-11 03:15:42', '2023-06-11 03:15:42', 'user'),
(5, 'ema', 'ema@gmail.com', NULL, '$2y$10$01D0z.f549lSeIl1eShnRuLbMHCfRcY2tVdlNqGu1YSqIRSNx9hJa', NULL, '2023-06-12 20:28:24', '2023-06-12 20:28:24', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kuis_models`
--
ALTER TABLE `kuis_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materis`
--
ALTER TABLE `materis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kuis_models`
--
ALTER TABLE `kuis_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `materis`
--
ALTER TABLE `materis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
