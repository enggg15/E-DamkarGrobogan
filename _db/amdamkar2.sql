-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2024 at 07:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amdamkar2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_damkars`
--

CREATE TABLE `admin_damkars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `noHp` varchar(255) NOT NULL,
  `kedudukans_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_damkars`
--

INSERT INTO `admin_damkars` (`id`, `nama_lengkap`, `email`, `password`, `noHp`, `kedudukans_id`) VALUES
(1, 'SuperAdmin', 'superadmin@gmail.com', '$2y$10$FVEC1yMgZJ5LKu2s.ilHLOqfxAC7BhSWtAobXkTjk3baTuOJ/NWB6', '085756436576', 1),
(2, 'Samsudin', 'samsudin@gmail.com', '$2y$10$I.z2aZBxecU08gKRkfD.i.zGYlvnjzFLTWR.N6k91cYXHvUSgArV6', '081788888888', 2),
(3, 'DESA BOLOH', 'aang@gmail.com', '$2y$10$h.djli0yDeBA2W7qmseJsORNa1GLPqKMsqew6EYBs30NRAWACpVFS', '085900207715', 3);

-- --------------------------------------------------------

--
-- Table structure for table `artikel_agendas`
--

CREATE TABLE `artikel_agendas` (
  `id_agenda` bigint(20) UNSIGNED NOT NULL,
  `admin_damkar_id` bigint(20) UNSIGNED NOT NULL,
  `judul_agenda` varchar(255) NOT NULL,
  `tgl_agenda` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artikel_agendas`
--

INSERT INTO `artikel_agendas` (`id_agenda`, `admin_damkar_id`, `judul_agenda`, `tgl_agenda`) VALUES
(1, 1, 'Simulasi Pemadam PT.Pungkook', '2024-08-20'),
(2, 1, 'Simulasi Pemadam Kebakaran TK Pembina Simpang', '2024-08-15'),
(3, 1, 'Simulasi Pemadam Kebakaran PT.JAPVA Tbk', '2024-08-11'),
(4, 1, 'Simulasi Pemadam Kebakaran Alun-alun Purwodadi', '2024-08-18'),
(5, 1, 'Simulasi Pemadam Kebakaran PT.Mayora', '2024-07-10'),
(6, 1, 'Simulasi Pemadam Kebakaran PT.Djarum', '2024-08-14'),
(7, 1, 'SImulasi Penanganan Bencana Alam Kab.Grobogan', '2024-08-08'),
(8, 1, 'Simulasi Pemadam Kebakaran PT.Semen Grobogan', '2024-08-02'),
(9, 1, 'Simulasi Pemadam Kebakaran PT.Gudang Garam Tbk', '2024-08-05'),
(10, 1, 'Simulasi Pemadam PT.Sampoerna Tbk', '2024-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `artikel_beritas`
--

CREATE TABLE `artikel_beritas` (
  `id_berita` bigint(20) UNSIGNED NOT NULL,
  `admin_damkar_id` bigint(20) UNSIGNED NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `deskripsi_berita` text NOT NULL,
  `tgl_berita` date NOT NULL,
  `foto_artikel_berita` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artikel_beritas`
--

INSERT INTO `artikel_beritas` (`id_berita`, `admin_damkar_id`, `judul_berita`, `deskripsi_berita`, `tgl_berita`, `foto_artikel_berita`) VALUES
(1, 1, 'Sebuah rumah di Desa Bago, Kecamatan Kradenan, Grobogan, ludes terbakar saat pemiliknya sedang berladang.', 'Sebuah rumah di Desa Bago, Kecamatan Kradenan, Grobogan, ludes terbakar saat pemiliknya sedang berladang. Kebakaran diduga berasal dari konsleting listrik. Tidak ada korban jiwa dalam insiden ini, namun seluruh isi rumah, termasuk barang-barang berharga, habis dilalap api. Kerugian diperkirakan mencapai puluhan juta rupiah. Warga dan petugas pemadam kebakaran setempat segera berusaha memadamkan api, namun bangunan tak bisa diselamatkan.\r\n\r\nUntuk informasi lebih lengkap, Anda bisa mengunjungi [Kabar Terdepan](https://kabarterdepan.com/ditinggal-berladang-satu-rumah-di-grobogan-ludes-terbakar/).', '2024-08-20', '1724171500.jpg'),
(2, 1, 'Sebuah kandang kambing di Desa Batur, Kecamatan Gubug, Grobogan, terbakar pada Mei 2024.', 'Sebuah kandang kambing di Desa Batur, Kecamatan Gubug, Grobogan, terbakar pada Mei 2024. Kebakaran diduga disebabkan oleh konsleting listrik. Petugas dari Polsek Gubug bersama tim pemadam kebakaran segera mendatangi lokasi untuk memadamkan api dan melakukan penyelidikan. Meskipun api berhasil dipadamkan, sejumlah kambing dan kandang mengalami kerusakan parah. Polisi mengimbau masyarakat untuk lebih berhati-hati dan memastikan instalasi listrik aman untuk mencegah kejadian serupa.\r\n\r\nUntuk detail lebih lanjut, kunjungi [Humas Polri](https://www.humas.polri.go.id/2024/05/07/kandang-kambing-terbakar-polsek-gubug-polres-grobogan-datangi-tkp/).', '2024-08-20', '1724171574.jpg'),
(3, 1, 'Kebakaran melanda rumah warga di Desa Ngrandah, Kecamatan Toroh, Grobogan, yang menghanguskan bangunan dan ternak di dalamnya.', 'Kebakaran melanda rumah warga di Desa Ngrandah, Kecamatan Toroh, Grobogan, yang menghanguskan bangunan dan ternak di dalamnya. Insiden ini mengakibatkan kerugian mencapai Rp78 juta. Kebakaran diduga dipicu oleh konsleting listrik. Meskipun tidak ada korban jiwa, api dengan cepat merusak seluruh bagian rumah dan kandang. Petugas pemadam kebakaran dan warga sekitar segera melakukan upaya pemadaman untuk mencegah api menyebar ke bangunan lain.\r\n\r\nUntuk informasi lebih lengkap, kunjungi [Muria News](https://berita.murianews.com/saiful-anwar/418906/rumah-dan-ternak-kebakaran-warga-ngrandah-grobogan-rugi-78-juta).', '2024-08-20', '1724171663.jpeg'),
(9, 1, 'Dari Januari hingga Juli 2024, Kabupaten Grobogan mencatat 55 kejadian kebakaran yang menyebabkan kerugian hingga Rp6,36 miliar.', 'Dari Januari hingga Juli 2024, Kabupaten Grobogan mencatat 55 kejadian kebakaran yang menyebabkan kerugian hingga Rp6,36 miliar. Kecamatan Purwodadi mencatat jumlah kebakaran tertinggi dengan 14 kejadian, sedangkan kerugian terbesar terjadi di Kecamatan Toroh, mencapai Rp1,8 miliar. Penyebab utama kebakaran adalah konsleting listrik, bediang kandang sapi, dan kompor gas. Dinas Pemadam Kebakaran Grobogan terus mengingatkan warga untuk rutin memeriksa instalasi listrik dan berhati-hati dengan sumber api lainnya.\r\n\r\nUntuk lebih lanjut, kunjungi [Muria iNews](https://muria.inews.id/read/477021/januari-hingga-juli-2024-ada-55-kejadian-kebakaran-di-grobogan-kerugian-miliaran-rupiah).', '2024-08-20', '1724171410.jpg'),
(10, 1, 'Kebakaran Hebat di Desa Ngroto Akibatkan Kerugian Besar', '**Kebakaran Hebat di Desa Ngroto Akibatkan Kerugian Besar**\r\n\r\nDesa Ngroto, Kecamatan Gubug, Grobogan, digemparkan oleh kebakaran yang menghanguskan sebuah rumah pada Selasa dini hari. Kebakaran ini diduga akibat konsleting listrik yang terjadi di dapur rumah milik Mudhofir. Selain rumah, kebakaran juga memusnahkan sekitar 5 kuintal gabah, dua unit televisi, dan uang tunai sebesar Rp1 juta. Total kerugian diperkirakan mencapai Rp20 juta. Tim pemadam kebakaran, bersama warga setempat dan aparat kepolisian, segera merespons dan berhasil memadamkan api sebelum meluas. Penyelidikan lebih lanjut dilakukan oleh Polres Grobogan untuk memastikan penyebab pasti insiden ini.\r\n\r\nInsiden ini kembali menekankan pentingnya pemeriksaan instalasi listrik secara rutin untuk mencegah tragedi serupa di masa depan. Dinas Pemadam Kebakaran Grobogan mengimbau warga untuk lebih waspada terhadap potensi bahaya kebakaran, terutama di area-area yang rentan terhadap korsleting listrik.', '2024-08-20', '1724171151.png');

-- --------------------------------------------------------

--
-- Table structure for table `artikel_edukasis`
--

CREATE TABLE `artikel_edukasis` (
  `id_edukasi` bigint(20) UNSIGNED NOT NULL,
  `admin_damkar_id` bigint(20) UNSIGNED NOT NULL,
  `judul_edukasi` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_edukasi` date NOT NULL,
  `foto_artikel_edukasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artikel_edukasis`
--

INSERT INTO `artikel_edukasis` (`id_edukasi`, `admin_damkar_id`, `judul_edukasi`, `deskripsi`, `tgl_edukasi`, `foto_artikel_edukasi`) VALUES
(1, 1, 'Pentingnya Edukasi Kebakaran Mencegah dan Menanggulangi Kebakaran di Lingkungan Kita', 'Kebakaran merupakan salah satu bencana yang dapat terjadi kapan saja dan di mana saja, serta sering kali menimbulkan kerugian besar, baik dari segi materi maupun korban jiwa. Oleh karena itu, pemahaman mengenai pencegahan dan penanggulangan kebakaran menjadi sangat penting. Edukasi kebakaran bukan hanya tanggung jawab petugas pemadam kebakaran, tetapi juga seluruh masyarakat. Dengan pengetahuan yang tepat, kita dapat bersama-sama mencegah terjadinya kebakaran dan mengambil langkah cepat jika kebakaran terjadi.\r\n\r\nPenyebab Umum Kebakaran\r\n\r\nBanyak faktor yang dapat memicu terjadinya kebakaran, beberapa di antaranya adalah:\r\n\r\n1. Korsleting Listrik: Instalasi listrik yang tidak sesuai standar atau peralatan listrik yang rusak dapat menyebabkan percikan api.\r\n   \r\n2. Kebocoran Gas: Gas yang bocor dan terpapar percikan api dapat memicu ledakan dan kebakaran.\r\n   \r\n3. Kompor dan Peralatan Memasak: Penggunaan kompor yang tidak diawasi dengan baik atau peralatan memasak yang dibiarkan menyala terlalu lama dapat memicu kebakaran.\r\n   \r\n4. Rokok: Rokok yang tidak dipadamkan dengan benar dan diletakkan sembarangan juga menjadi penyebab umum kebakaran.\r\n   \r\n5. Bahan Kimia Berbahaya: Penyimpanan bahan kimia yang mudah terbakar di tempat yang tidak aman dapat memicu kebakaran.\r\n\r\nLangkah Pencegahan Kebakaran\r\n\r\nMencegah kebakaran merupakan langkah pertama yang harus dilakukan untuk mengurangi risiko terjadinya kebakaran. Berikut adalah beberapa langkah pencegahan yang dapat diterapkan di lingkungan rumah dan tempat kerja:\r\n\r\n1. Periksa Instalasi Listrik Secara Berkala: Pastikan instalasi listrik di rumah atau tempat kerja sesuai standar, dan periksa secara rutin untuk mendeteksi kerusakan.\r\n   \r\n2. Simpan Bahan Kimia dengan Aman: Bahan kimia yang mudah terbakar harus disimpan di tempat yang aman, jauh dari sumber panas dan api.\r\n   \r\n3. Awasi Penggunaan Kompor dan Peralatan Memasak: Jangan tinggalkan kompor atau peralatan memasak dalam keadaan menyala tanpa pengawasan.\r\n   \r\n4. Jauhkan Sumber Api dari Benda Mudah Terbakar: Hindari menempatkan lilin, rokok, atau sumber api lainnya di dekat bahan yang mudah terbakar seperti kain, kertas, dan bahan bakar.\r\n\r\n5. Pasang Alat Pemadam Kebakaran: Pasang alat pemadam kebakaran di tempat-tempat strategis dan pastikan semua penghuni atau pekerja mengetahui cara menggunakannya.\r\n\r\nLangkah Penanggulangan Kebakaran\r\n\r\nJika kebakaran terjadi, respons cepat dan tepat sangat penting untuk meminimalkan kerugian. Berikut adalah beberapa langkah penanggulangan kebakaran yang dapat dilakukan:\r\n\r\n1. Tetap Tenang dan Jangan Panik: Kepanikan dapat memperburuk situasi. Tetap tenang dan berpikir rasional adalah langkah pertama dalam menanggulangi kebakaran.\r\n   \r\n2. Evakuasi: Jika api tidak dapat segera dipadamkan, evakuasi diri dan orang-orang di sekitar Anda ke tempat yang aman. Gunakan jalur evakuasi yang telah ditentukan sebelumnya.\r\n   \r\n3. Gunakan Alat Pemadam Kebakaran: Jika api masih kecil dan dapat dikendalikan, gunakan alat pemadam kebakaran untuk memadamkannya. Pastikan Anda telah mengetahui cara penggunaannya.\r\n   \r\n4. Hubungi Pemadam Kebakaran: Segera hubungi layanan pemadam kebakaran setempat. Berikan informasi yang jelas mengenai lokasi dan jenis kebakaran.\r\n   \r\n5. Jangan Gunakan Lift: Jika kebakaran terjadi di dalam gedung, hindari menggunakan lift untuk evakuasi. Gunakan tangga darurat sebagai gantinya.\r\n\r\nPenutup\r\n\r\nEdukasi mengenai pencegahan dan penanggulangan kebakaran sangat penting untuk meminimalkan risiko dan dampak kebakaran. Dengan pengetahuan dan tindakan yang tepat, kita dapat melindungi diri, keluarga, dan lingkungan dari ancaman kebakaran. Selalu ingat, pencegahan adalah langkah terbaik untuk menghindari bencana kebakaran. Mari bersama-sama menjaga keselamatan dan keamanan lingkungan kita.', '2024-08-20', '1724145216.jpg'),
(2, 1, 'Pentingnya Simulasi Kebakaran: Meningkatkan Kesiapsiagaan dan Keselamatan', 'Kebakaran adalah salah satu bencana yang dapat terjadi tanpa peringatan dan berdampak serius pada keselamatan jiwa serta harta benda. Meskipun tindakan pencegahan kebakaran sangat penting, kesiapsiagaan dalam menghadapi kebakaran juga tidak kalah krusial. Salah satu cara efektif untuk meningkatkan kesiapsiagaan adalah melalui simulasi kebakaran. Artikel ini akan membahas pentingnya simulasi kebakaran dan bagaimana kegiatan ini dapat membantu melindungi kita dari bahaya kebakaran.\r\n\r\nApa itu Simulasi Kebakaran?\r\n\r\nSimulasi kebakaran adalah latihan yang dirancang untuk meniru situasi kebakaran yang sesungguhnya dalam lingkungan yang terkendali. Tujuannya adalah untuk melatih individu dan kelompok agar tahu bagaimana bereaksi dengan cepat dan tepat jika terjadi kebakaran. Simulasi ini sering dilakukan di berbagai tempat, seperti sekolah, kantor, pabrik, dan lingkungan perumahan.\r\n\r\nManfaat Simulasi Kebakaran\r\n\r\n1. Meningkatkan Kesadaran: Salah satu manfaat utama simulasi kebakaran adalah meningkatkan kesadaran individu terhadap risiko kebakaran. Melalui simulasi, peserta dapat belajar mengenali tanda-tanda kebakaran, seperti asap atau bau terbakar, dan memahami pentingnya bertindak cepat.\r\n\r\n2. Memperkuat Koordinasi Tim: Dalam situasi darurat, kerja sama tim sangat penting. Simulasi kebakaran memungkinkan setiap orang untuk memahami peran dan tanggung jawab mereka, sehingga dapat berkoordinasi dengan lebih baik ketika menghadapi kebakaran sesungguhnya.\r\n\r\n3. Mengidentifikasi Jalur Evakuasi: Simulasi kebakaran membantu peserta untuk mengenali dan menghafal jalur evakuasi yang aman di gedung atau area tempat mereka berada. Ini memastikan bahwa mereka dapat meninggalkan area yang berbahaya dengan cepat dan tanpa kebingungan.\r\n\r\n4. Mengurangi Kepanikan: Dengan berlatih melalui simulasi, individu dapat belajar untuk tetap tenang dan tidak panik ketika menghadapi kebakaran. Ini penting karena kepanikan dapat menyebabkan tindakan yang tidak rasional dan berbahaya.\r\n\r\n5. Mengajarkan Penggunaan Alat Pemadam Kebakaran: Simulasi sering kali mencakup latihan penggunaan alat pemadam kebakaran. Peserta diajarkan bagaimana menggunakan alat pemadam dengan benar, sehingga mereka dapat segera menanggulangi api kecil sebelum menjadi besar.\r\n\r\nLangkah-langkah Pelaksanaan Simulasi Kebakaran\r\n\r\n1. Persiapan: Tentukan tujuan simulasi dan skenario yang akan digunakan. Pastikan semua peserta diberi pengarahan sebelum simulasi dimulai, sehingga mereka memahami tujuan latihan dan apa yang diharapkan dari mereka.\r\n\r\n2. Pelaksanaan: Mulailah simulasi dengan memicu alarm kebakaran. Peserta harus segera mengikuti prosedur evakuasi yang telah ditetapkan, menggunakan jalur evakuasi yang ditentukan, dan berkumpul di titik kumpul yang aman.\r\n\r\n3. Evaluasi: Setelah simulasi selesai, lakukan evaluasi untuk menilai kinerja peserta dan efektivitas prosedur yang diterapkan. Identifikasi area yang perlu ditingkatkan dan berikan umpan balik kepada semua peserta.\r\n\r\n4. Tindak Lanjut: Berdasarkan hasil evaluasi, lakukan penyesuaian pada rencana evakuasi atau pelatihan tambahan jika diperlukan. Simulasi kebakaran sebaiknya dilakukan secara berkala untuk memastikan kesiapsiagaan yang berkelanjutan.\r\n\r\n\r\nSimulasi kebakaran adalah alat yang sangat efektif untuk mempersiapkan diri dalam menghadapi situasi darurat. Melalui latihan ini, kita tidak hanya belajar untuk bereaksi dengan cepat, tetapi juga untuk mengurangi risiko cedera dan kerugian saat kebakaran terjadi. Dengan mengadakan simulasi kebakaran secara rutin, kita dapat memastikan bahwa setiap individu tahu apa yang harus dilakukan dan bagaimana melindungi diri serta orang lain dalam situasi berbahaya. Ingatlah, kesiapsiagaan adalah kunci untuk keselamatan.', '2024-08-20', '1724145561.jpg'),
(3, 1, 'Pentingnya Alat Pemadam Api Ringan (APAR) di Setiap Rumah dan Tempat Kerja', 'Kebakaran bisa terjadi kapan saja dan di mana saja, baik di rumah, tempat kerja, maupun area publik. Salah satu cara efektif untuk mencegah kebakaran kecil berkembang menjadi kebakaran besar adalah dengan menggunakan Alat Pemadam Api Ringan (APAR). Artikel ini akan membahas pentingnya memiliki APAR di setiap rumah dan tempat kerja, serta panduan dasar tentang cara memilih dan menggunakan APAR dengan benar.\r\n\r\nApa Itu APAR?\r\n\r\nAlat Pemadam Api Ringan (APAR) adalah perangkat pemadam kebakaran portabel yang dirancang untuk memadamkan api pada tahap awal sebelum menjadi tidak terkendali. APAR biasanya berisi bahan pemadam seperti air, busa, serbuk kimia kering, karbon dioksida (CO2), atau gas bersih, yang disesuaikan dengan jenis kebakaran yang mungkin terjadi.\r\n\r\nJenis-Jenis APAR\r\n\r\n1. APAR Air (Water Extinguisher): Digunakan untuk memadamkan kebakaran yang disebabkan oleh bahan-bahan padat seperti kayu, kertas, atau tekstil (Kelas A). Tidak cocok untuk kebakaran yang disebabkan oleh listrik atau bahan cair yang mudah terbakar.\r\n\r\n2. APAR Busa (Foam Extinguisher): Cocok untuk kebakaran bahan padat (Kelas A) dan cairan mudah terbakar seperti minyak dan bensin (Kelas B). Busa ini bekerja dengan menutup permukaan bahan bakar untuk mencegah kontak dengan oksigen.\r\n\r\n3. APAR Serbuk Kimia Kering (Dry Chemical Powder Extinguisher): Sangat serbaguna, dapat digunakan untuk kebakaran Kelas A, B, dan C (kebakaran yang melibatkan gas atau peralatan listrik). Bekerja dengan menghentikan reaksi kimia yang menyebabkan kebakaran.\r\n\r\n4. APAR Karbon Dioksida (CO2 Extinguisher): Ideal untuk kebakaran yang melibatkan peralatan listrik (Kelas C) dan kebakaran cairan (Kelas B). CO2 bekerja dengan mengurangi kadar oksigen di sekitar api, sehingga memadamkannya.\r\n\r\n5. APAR Gas Bersih (Clean Agent Extinguisher): Digunakan untuk memadamkan kebakaran yang sensitif seperti di ruang server atau laboratorium. Tidak meninggalkan residu setelah digunakan.\r\n\r\nMengapa APAR Penting?\r\n\r\n1. Respon Cepat: Kebakaran kecil bisa dengan cepat menjadi besar dan tidak terkendali. APAR memungkinkan respons cepat untuk memadamkan api sebelum menyebar.\r\n\r\n2. Perlindungan Jiwa dan Harta: Dengan memiliki APAR yang siap digunakan, Anda dapat melindungi diri, keluarga, kolega, dan properti dari bahaya kebakaran.\r\n\r\n3. Keamanan Tambahan: APAR memberikan lapisan perlindungan tambahan di rumah dan tempat kerja, terutama di area berisiko tinggi seperti dapur, garasi, dan ruang server.\r\n\r\n4. Kewajiban Hukum: Di banyak tempat, memiliki APAR di area publik dan tempat kerja merupakan kewajiban hukum untuk mematuhi standar keselamatan kebakaran.\r\n\r\nCara Memilih dan Menggunakan APAR\r\n\r\n1. Pilih APAR yang Sesuai: Pilih APAR berdasarkan jenis risiko kebakaran di area Anda. Misalnya, di dapur, APAR busa atau serbuk kimia kering adalah pilihan yang baik karena dapur sering kali melibatkan minyak atau peralatan listrik.\r\n\r\n2. Periksa Kualitas dan Sertifikasi: Pastikan APAR yang Anda beli memiliki sertifikasi dan memenuhi standar keselamatan yang berlaku. Pilihlah produk dari produsen yang terpercaya.\r\n\r\n3. Tempatkan di Lokasi yang Strategis: Letakkan APAR di tempat yang mudah diakses, seperti dekat pintu keluar atau di area yang berisiko tinggi. Pastikan semua penghuni atau karyawan mengetahui lokasinya.\r\n\r\n4. Pelatihan Penggunaan: Penting untuk memahami cara menggunakan APAR. Ingat langkah-langkah dasar: Tarik pin pengaman, arahkan selang ke dasar api, tekan tuas, dan sapukan dari sisi ke sisi.\r\n\r\n5. Perawatan Rutin: Periksa APAR secara berkala untuk memastikan bahwa alat tersebut berfungsi dengan baik. Gantilah atau isi ulang APAR sesuai kebutuhan.\r\n\r\n\r\nAlat Pemadam Api Ringan (APAR) adalah alat penting yang dapat menyelamatkan nyawa dan harta benda dalam situasi darurat kebakaran. Dengan memiliki dan mengetahui cara menggunakan APAR, Anda dapat dengan cepat merespons kebakaran dan mencegah kerugian yang lebih besar. Edukasi dan kesadaran tentang pentingnya APAR harus ditingkatkan, baik di rumah maupun tempat kerja, untuk memastikan keselamatan bersama.', '2024-08-20', '1724145876.jpg'),
(4, 1, 'Bahaya Asap Kebakaran', 'Mengapa Penting untuk Menghindarinya dan Cara Menghadapinya?\r\n\r\n\r\nKebakaran sering kali tidak hanya berbahaya karena api yang menyala, tetapi juga karena asap yang dihasilkannya. Asap kebakaran merupakan salah satu ancaman terbesar bagi keselamatan jiwa saat terjadi kebakaran, karena dapat menyebabkan keracunan, kesulitan bernapas, dan kebingungan. Dalam banyak kasus, korban kebakaran lebih sering mengalami cedera atau kematian akibat menghirup asap daripada terbakar api. Artikel ini akan membahas bahaya asap kebakaran, mengapa penting untuk menghindarinya, dan langkah-langkah yang dapat diambil untuk menghadapi situasi yang melibatkan asap kebakaran.\r\n\r\nApa yang Membuat Asap Kebakaran Berbahaya?\r\n\r\n1. Kandungan Beracun: Asap kebakaran mengandung berbagai zat beracun seperti karbon monoksida (CO), hidrogen sianida (HCN), dan partikel-partikel kecil lainnya. Menghirup asap ini dapat mengurangi oksigen di dalam tubuh, menyebabkan pusing, kebingungan, bahkan hilang kesadaran.\r\n\r\n2. Penghalang Penglihatan: Asap yang tebal dapat menghalangi penglihatan, membuat sulit untuk menemukan jalan keluar atau menavigasi lingkungan yang terkena kebakaran. Hal ini dapat menyebabkan keterlambatan dalam evakuasi.\r\n\r\n3. Efek pada Sistem Pernapasan: Menghirup asap dapat menyebabkan iritasi pada saluran pernapasan, batuk, sesak napas, dan pada kasus yang parah, gagal napas. Asap juga dapat memperburuk kondisi medis yang sudah ada seperti asma atau penyakit paru-paru lainnya.\r\n\r\n4. Kebingungan dan Disorientasi: Asap kebakaran dapat menyebabkan kebingungan dan disorientasi, terutama jika mengandung karbon monoksida yang dapat mengurangi oksigen di otak. Ini bisa mengakibatkan kesulitan berpikir jernih dan mengambil tindakan yang tepat.\r\n\r\nCara Menghindari dan Menghadapi Asap Kebakaran\r\n\r\n1. Tetap Rendah: Saat asap mulai memenuhi ruangan, segera merendahkan diri atau merangkak. Asap cenderung naik, sehingga udara yang lebih bersih berada lebih dekat dengan lantai. Tetap rendah untuk menghirup udara yang relatif lebih segar.\r\n\r\n2. Gunakan Kain Basah: Jika memungkinkan, tutupi mulut dan hidung dengan kain basah. Kain basah dapat menyaring partikel-partikel besar dari asap dan membantu mengurangi jumlah zat beracun yang terhirup.\r\n\r\n3. Cari Jalur Evakuasi Terdekat: Segera cari jalan keluar terdekat. Jika sudah familiar dengan tata letak bangunan, gunakan pengetahuan tersebut untuk mencapai pintu keluar yang aman secepat mungkin. Hindari lift dan gunakan tangga darurat.\r\n\r\n4. Tutup Pintu di Belakang Anda: Saat melarikan diri, tutup pintu di belakang Anda untuk memperlambat penyebaran asap dan api. Ini juga dapat membantu menjaga jalur evakuasi tetap jelas lebih lama.\r\n\r\n5. Gunakan Alarm Asap: Pastikan rumah atau tempat kerja Anda dilengkapi dengan alarm asap yang berfungsi dengan baik. Alarm asap dapat memberikan peringatan dini dan memberi Anda waktu lebih banyak untuk mengungsi.\r\n\r\n6. Pelatihan dan Simulasi: Partisipasi dalam pelatihan dan simulasi kebakaran dapat membantu Anda mengenali dan menghadapi bahaya asap kebakaran dengan lebih baik. Pelatihan ini memberikan pengalaman langsung dalam menanggapi situasi darurat.\r\n\r\nPertolongan Pertama untuk Menghirup Asap\r\n\r\nJika Anda atau seseorang menghirup asap, segera lakukan pertolongan pertama berikut:\r\n\r\n1. Keluar dari Area Berasap: Bawa korban keluar dari area berasap ke udara segar secepat mungkin.\r\n   \r\n2. Panggil Bantuan Medis: Segera hubungi layanan darurat dan mintalah bantuan medis. Keracunan asap membutuhkan penanganan medis yang cepat dan tepat.\r\n   \r\n3. Posisi Setengah Duduk: Posisikan korban setengah duduk (semi-fowler) untuk memudahkan pernapasan jika mereka mengalami kesulitan bernapas.\r\n   \r\n4. Cek Kesadaran dan Pernapasan: Periksa kesadaran dan pernapasan korban. Jika korban tidak bernapas, segera lakukan CPR jika Anda terlatih.\r\n\r\n5. Pantau Kondisi Korban: Pantau terus kondisi korban hingga bantuan medis tiba. Hindari memberikan makanan atau minuman sebelum korban dinyatakan stabil oleh tenaga medis.\r\n\r\nAsap kebakaran adalah ancaman serius yang sering kali diremehkan dalam situasi kebakaran. Memahami bahaya yang ditimbulkan oleh asap dan mengetahui langkah-langkah yang tepat untuk menghindarinya dapat menyelamatkan nyawa. Edukasi, kesiapsiagaan, dan respons cepat adalah kunci untuk menghadapi bahaya asap kebakaran. Dengan pengetahuan yang tepat, kita dapat melindungi diri dan orang-orang di sekitar kita dari ancaman yang sering kali tak terlihat ini.', '2024-08-20', '1724146297.jpg'),
(5, 1, 'Pentingnya Pintu Tahan Api', 'Kebakaran dapat menyebar dengan cepat, menghancurkan bangunan dan mengancam nyawa dalam hitungan menit. Oleh karena itu, penting untuk memiliki sistem perlindungan kebakaran yang andal di setiap bangunan, baik itu rumah, kantor, atau tempat umum. Salah satu komponen penting dalam sistem ini adalah pintu tahan api. Artikel ini akan membahas apa itu pintu tahan api, bagaimana cara kerjanya, dan mengapa penting untuk memilikinya di berbagai lingkungan.\r\n\r\nApa Itu Pintu Tahan Api?\r\n\r\nPintu tahan api adalah jenis pintu khusus yang dirancang untuk menahan api dan mencegah penyebarannya dalam waktu tertentu, biasanya antara 30 menit hingga 2 jam, tergantung pada spesifikasi pintunya. Pintu ini biasanya terbuat dari bahan-bahan yang tidak mudah terbakar, seperti baja, kayu khusus, atau kaca tahan api, dan dilengkapi dengan segel intumescent yang mengembang saat terkena panas untuk menutup celah antara pintu dan bingkai.\r\n\r\nFungsi Utama Pintu Tahan Api\r\n\r\n1. Mencegah Penyebaran Api: Pintu tahan api bertindak sebagai penghalang fisik yang mencegah api menyebar dari satu bagian bangunan ke bagian lainnya, memberikan lebih banyak waktu bagi penghuni untuk melarikan diri dan bagi petugas pemadam kebakaran untuk tiba di lokasi.\r\n\r\n2. Melindungi Jalur Evakuasi: Dalam situasi darurat, jalur evakuasi harus tetap aman dan bebas dari api dan asap. Pintu tahan api dipasang di sepanjang koridor dan tangga untuk memastikan jalur evakuasi tetap dapat digunakan.\r\n\r\n3. Mengurangi Kerusakan: Dengan memperlambat penyebaran api, pintu tahan api dapat membantu mengurangi kerusakan pada bangunan dan isinya, serta meminimalkan biaya perbaikan setelah kebakaran.\r\n\r\nJenis-Jenis Pintu Tahan Api\r\n\r\n1. Pintu Tahan Api Berlapis Kayu: Pintu ini terdiri dari inti kayu yang dilapisi dengan bahan tahan api. Biasanya digunakan di gedung perkantoran, rumah, dan apartemen.\r\n\r\n2. Pintu Tahan Api Baja: Terbuat dari baja atau logam lainnya, pintu ini sangat tahan terhadap api dan sering digunakan di pabrik, gudang, dan area industri.\r\n\r\n3. Pintu Tahan Api Kaca: Pintu ini memiliki panel kaca tahan api yang memungkinkan cahaya masuk sambil tetap memberikan perlindungan terhadap api. Biasanya digunakan di gedung-gedung komersial dan publik.\r\n\r\n4. Pintu Tahan Api Otomatis: Pintu ini dirancang untuk menutup secara otomatis saat kebakaran terdeteksi, biasanya dipasangkan dengan sistem alarm kebakaran.\r\n\r\nMengapa Pintu Tahan Api Penting?\r\n\r\n1. Perlindungan Jiwa: Pintu tahan api memberikan waktu tambahan yang sangat berharga bagi penghuni bangunan untuk mengevakuasi diri. Ini bisa menjadi perbedaan antara hidup dan mati dalam situasi kebakaran.\r\n\r\n2. Kepatuhan Terhadap Peraturan: Di banyak negara, penggunaan pintu tahan api di bangunan publik dan komersial adalah persyaratan hukum. Mematuhi regulasi ini tidak hanya melindungi penghuni, tetapi juga menghindari sanksi hukum.\r\n\r\n3. Perlindungan Properti: Pintu tahan api membantu melindungi aset berharga dengan mencegah api menyebar ke area yang belum terbakar, mengurangi kerusakan total yang mungkin terjadi.\r\n\r\n4. Ketahanan Terhadap Asap: Selain menahan api, pintu tahan api juga dirancang untuk menahan asap, yang sering kali lebih mematikan daripada api itu sendiri. Ini membantu menjaga udara di jalur evakuasi tetap aman untuk dihirup.\r\n\r\nPemasangan dan Perawatan Pintu Tahan Api\r\n\r\n1. Pemasangan yang Tepat: Pintu tahan api harus dipasang oleh profesional yang berlisensi untuk memastikan bahwa pintu dipasang sesuai dengan standar keselamatan yang berlaku. Pintu harus dipasang dengan bingkai khusus dan dilengkapi dengan perangkat keras tahan api.\r\n\r\n2. Pemeriksaan Rutin: Pintu tahan api memerlukan pemeriksaan dan perawatan rutin untuk memastikan tetap berfungsi dengan baik. Periksa segel intumescent, engsel, dan mekanisme penutup otomatis secara berkala.\r\n\r\n3. Penggantian Segera: Jika pintu tahan api mengalami kerusakan, seperti retak atau kesulitan menutup dengan benar, pintu harus segera diperbaiki atau diganti untuk memastikan tetap efektif dalam menghadapi kebakaran.\r\n\r\nPintu tahan api adalah salah satu elemen penting dalam sistem keselamatan kebakaran yang dapat memberikan perlindungan signifikan terhadap bahaya kebakaran. Dengan mencegah penyebaran api dan asap, pintu ini memberikan waktu berharga bagi penghuni untuk mengungsi dan bagi petugas pemadam kebakaran untuk mengendalikan situasi. Oleh karena itu, penting untuk memastikan bahwa pintu tahan api dipasang dan dirawat dengan baik di setiap bangunan, baik itu rumah, kantor, atau fasilitas publik.', '2024-08-20', '1724146540.jpg'),
(6, 1, 'Mengenal Sistem Deteksi Kebakaran', 'Garis Pertahanan Pertama Terhadap Ancaman Kebakaran\r\n\r\n\r\nSistem deteksi kebakaran adalah salah satu komponen paling penting dalam pencegahan dan penanganan kebakaran. Sistem ini bertindak sebagai garis pertahanan pertama dengan mendeteksi tanda-tanda kebakaran sejak dini dan memberikan peringatan kepada penghuni bangunan sehingga mereka dapat segera mengambil tindakan yang tepat. Artikel ini akan membahas berbagai jenis sistem deteksi kebakaran, bagaimana cara kerjanya, serta pentingnya memasang dan merawat sistem deteksi kebakaran di rumah dan tempat kerja.\r\n\r\nApa Itu Sistem Deteksi Kebakaran?\r\n\r\nSistem deteksi kebakaran adalah seperangkat alat dan teknologi yang digunakan untuk mendeteksi adanya kebakaran dalam sebuah bangunan. Sistem ini umumnya terdiri dari detektor asap, detektor panas, dan alat-alat lain yang terhubung ke sistem alarm kebakaran. Ketika salah satu detektor mendeteksi tanda-tanda kebakaran, seperti asap atau panas berlebih, sistem ini akan mengirimkan sinyal ke panel alarm, yang kemudian akan mengeluarkan peringatan berupa suara sirine atau pengumuman suara.\r\n\r\nJenis-Jenis Sistem Deteksi Kebakaran\r\n\r\n1. Detektor Asap (Smoke Detector): Alat ini mendeteksi partikel asap di udara, yang merupakan tanda awal dari kebakaran. Ada dua jenis utama detektor asap: ionisasi dan fotoelektrik. Detektor ionisasi lebih sensitif terhadap api yang berkobar dengan cepat, sementara detektor fotoelektrik lebih efektif dalam mendeteksi kebakaran yang lambat dan menghasilkan asap tebal.\r\n\r\n2. Detektor Panas (Heat Detector): Detektor ini merespons kenaikan suhu yang signifikan dalam waktu singkat. Detektor panas biasanya digunakan di area di mana detektor asap mungkin tidak efektif, seperti dapur atau garasi, karena adanya potensi asap non-kebakaran.\r\n\r\n3. Detektor Karbon Monoksida (CO Detector): Alat ini dirancang untuk mendeteksi gas karbon monoksida yang beracun, yang bisa dihasilkan oleh kebakaran atau pembakaran yang tidak sempurna. Karena CO adalah gas yang tidak berbau dan tidak terlihat, detektor ini sangat penting untuk keselamatan.\r\n\r\n4. Sistem Alarm Manual (Manual Call Point): Dalam beberapa situasi, orang yang melihat kebakaran lebih awal mungkin perlu memberi peringatan sebelum detektor otomatis merespons. Sistem alarm manual memungkinkan seseorang untuk secara manual mengaktifkan alarm kebakaran dengan menekan tombol atau memecahkan kaca.\r\n\r\n5. Sistem Deteksi Api Otomatis (Automatic Fire Detection System): Sistem ini menggabungkan berbagai jenis detektor yang bekerja bersama untuk memberikan perlindungan menyeluruh. Sistem otomatis dapat mengidentifikasi tanda-tanda kebakaran dan mengaktifkan sistem pemadam kebakaran secara otomatis, seperti sprinkler, tanpa memerlukan intervensi manusia.\r\n\r\nBagaimana Sistem Deteksi Kebakaran Bekerja?\r\n\r\nKetika detektor mendeteksi tanda-tanda kebakaran, seperti asap, panas, atau gas beracun, ia akan mengirimkan sinyal ke panel kontrol sistem alarm kebakaran. Panel ini kemudian akan mengaktifkan alarm suara dan visual di seluruh bangunan, memberi tahu penghuni untuk segera mengevakuasi. Pada sistem yang lebih canggih, alarm kebakaran juga dapat terhubung dengan sistem pemadam kebakaran otomatis, layanan darurat, dan sistem komunikasi gedung untuk memberikan respons yang lebih cepat dan terkoordinasi.\r\n\r\nPentingnya Sistem Deteksi Kebakaran\r\n\r\n1. Peringatan Dini: Sistem deteksi kebakaran memberikan peringatan dini yang memungkinkan penghuni bangunan untuk mengungsi sebelum kebakaran menyebar dan menjadi lebih berbahaya.\r\n\r\n2. Pencegahan Kerugian: Dengan mendeteksi kebakaran pada tahap awal, sistem ini dapat mencegah kerugian besar baik dalam hal nyawa maupun properti.\r\n\r\n3. Memenuhi Persyaratan Hukum: Banyak negara dan daerah mewajibkan pemasangan sistem deteksi kebakaran di bangunan komersial dan publik. Memenuhi persyaratan ini tidak hanya melindungi penghuni tetapi juga membantu pemilik bangunan menghindari sanksi hukum.\r\n\r\n4. Ketenangan Pikiran: Mengetahui bahwa bangunan dilengkapi dengan sistem deteksi kebakaran yang andal memberikan ketenangan pikiran bagi penghuni, karyawan, dan pengelola gedung.\r\n\r\nPerawatan dan Pengujian Sistem Deteksi Kebakaran\r\n\r\nSistem deteksi kebakaran harus diuji dan dirawat secara rutin untuk memastikan bahwa mereka berfungsi dengan baik. Berikut adalah beberapa langkah yang harus diambil:\r\n\r\n1. Pemeriksaan Rutin: Lakukan pemeriksaan visual terhadap semua detektor dan panel kontrol untuk memastikan tidak ada kerusakan atau masalah yang terlihat.\r\n\r\n2. Pengujian Fungsional: Uji setiap detektor secara berkala untuk memastikan bahwa mereka merespons dengan benar terhadap tanda-tanda kebakaran. Pengujian ini harus dilakukan oleh profesional terlatih.\r\n\r\n3. Perawatan Berkala: Lakukan perawatan sistem secara berkala, termasuk membersihkan detektor dari debu dan kotoran yang dapat mengurangi sensitivitasnya.\r\n\r\n4. Penggantian Baterai: Pastikan bahwa semua detektor yang menggunakan baterai memiliki daya yang cukup dan ganti baterai sesuai jadwal yang direkomendasikan.\r\n\r\n5. Pembaruan Sistem: Jika ada teknologi baru atau peningkatan dalam sistem deteksi kebakaran, pertimbangkan untuk memperbarui sistem Anda untuk memastikan perlindungan terbaik.\r\n\r\n\r\nSistem deteksi kebakaran adalah elemen kunci dalam keselamatan kebakaran yang dapat menyelamatkan nyawa dan properti. Dengan memahami cara kerja dan pentingnya sistem ini, serta memastikan bahwa mereka dipasang dan dirawat dengan baik, kita dapat meningkatkan kesiapsiagaan dalam menghadapi kebakaran. Ingatlah bahwa peringatan dini dapat membuat perbedaan besar dalam menyelamatkan nyawa dan mencegah kerugian akibat kebakaran.likasi di situs web, buletin keselamatan, atau sebagai materi edukasi dalam pelatihan keselamatan kebakaran.', '2024-08-20', '1724147401.jpg'),
(7, 1, 'Menyiapkan Rencana Evakuasi Kebakaran', 'Langkah-Langkah untuk Perlindungan Keluarga dan Tempat Kerja\r\n\r\nKebakaran dapat terjadi secara tiba-tiba dan menyebar dengan cepat, sehingga penting untuk memiliki rencana evakuasi yang jelas dan terencana untuk melindungi diri dan orang-orang di sekitar kita. Rencana evakuasi kebakaran yang baik memastikan bahwa setiap orang tahu apa yang harus dilakukan dan ke mana harus pergi dalam situasi darurat. Artikel ini akan membahas langkah-langkah penting dalam menyiapkan rencana evakuasi kebakaran, baik untuk rumah maupun tempat kerja.\r\n\r\nMengapa Rencana Evakuasi Kebakaran Itu Penting?\r\n\r\n1. Respon Cepat: Dalam situasi kebakaran, waktu sangat berharga. Rencana evakuasi membantu memastikan bahwa semua orang tahu langkah-langkah yang harus diambil dan tidak kebingungan atau panik saat kebakaran terjadi.\r\n\r\n2. Keamanan dan Perlindungan: Dengan memiliki rencana yang baik, Anda dapat meminimalkan risiko cedera dan memastikan bahwa semua anggota keluarga atau karyawan dapat keluar dari bangunan dengan aman.\r\n\r\n3. Kepatuhan Terhadap Peraturan: Di banyak lokasi, memiliki rencana evakuasi adalah persyaratan hukum untuk bangunan publik dan tempat kerja. Mematuhi persyaratan ini membantu melindungi penghuni dan menghindari sanksi hukum.\r\n\r\nLangkah-Langkah Menyiapkan Rencana Evakuasi Kebakaran\r\n\r\n1. Identifikasi Jalur Evakuasi:\r\n   - Rumah: Pemetaan jalur evakuasi di rumah melibatkan mengidentifikasi pintu keluar utama dan alternatif, serta memastikan bahwa semua jalur tidak terhalang. Tandai jalur yang paling cepat dan aman menuju keluar dari rumah.\r\n   - Tempat Kerja: Identifikasi jalur evakuasi utama dan alternatif di seluruh area kerja. Pastikan rute tersebut dapat diakses oleh semua karyawan, termasuk mereka yang mungkin memiliki kebutuhan khusus.\r\n\r\n2. Tentukan Titik Berkumpul:\r\n   - Rumah: Tentukan lokasi titik berkumpul di luar rumah di tempat yang mudah dikenali, seperti di depan rumah tetangga atau di tempat parkir terdekat. Pastikan semua anggota keluarga tahu lokasi ini dan berlatih berkumpul di sana setelah evakuasi.\r\n   - Tempat Kerja: Pilih titik berkumpul di luar gedung, seperti di area parkir atau lapangan terbuka, dan pastikan semua karyawan tahu lokasi tersebut. Tempat ini harus aman dari bahaya kebakaran dan tidak mengganggu jalur evakuasi darurat.\r\n\r\n3. Latihan Evakuasi Berkala:\r\n   - Rumah: Lakukan latihan evakuasi secara berkala dengan seluruh anggota keluarga untuk memastikan bahwa semua orang tahu rute evakuasi dan prosedur yang harus diikuti. Latihan ini juga membantu anak-anak memahami pentingnya evakuasi dengan tenang.\r\n   - Tempat Kerja: Selenggarakan latihan evakuasi kebakaran secara rutin di tempat kerja. Ini termasuk simulasi menggunakan alarm kebakaran dan latihan evakuasi dengan prosedur yang benar. Latihan ini membantu karyawan terbiasa dengan rute evakuasi dan prosedur darurat.\r\n\r\n4. Tandai Jalur Evakuasi dan Periksa Rambu:\r\n   - Rumah: Pastikan jalur evakuasi di rumah mudah diakses dan bebas dari hambatan. Gunakan tanda atau lampu darurat untuk menandai jalur tersebut jika diperlukan.\r\n   - Tempat Kerja: Pasang rambu evakuasi yang jelas dan terlihat di sepanjang jalur evakuasi. Pastikan rambu-rambu tersebut berfungsi dengan baik dan dapat dilihat di semua kondisi pencahayaan.\r\n\r\n5. Persiapkan Alat Pertolongan Pertama dan Kontak Darurat**:\r\n   - Rumah: Simpan kotak pertolongan pertama di tempat yang mudah diakses dan pastikan semua anggota keluarga tahu di mana letaknya. Buat daftar kontak darurat, termasuk nomor telepon pemadam kebakaran, rumah sakit, dan anggota keluarga.\r\n   - Tempat Kerja: Pastikan kotak pertolongan pertama tersedia di lokasi yang strategis dan mudah diakses. Buat daftar kontak darurat dan pastikan informasi ini mudah diakses oleh semua karyawan.\r\n\r\n6. Pendidikan dan Informasi:\r\n   - Rumah: Edukasikan anggota keluarga tentang pentingnya evakuasi kebakaran dan cara menggunakan alat pemadam kebakaran jika diperlukan. Diskusikan secara terbuka rencana evakuasi dan pastikan semua orang paham prosedur.\r\n   - Tempat Kerja: Berikan pelatihan keselamatan kebakaran kepada karyawan, termasuk penggunaan alat pemadam kebakaran, cara melaporkan kebakaran, dan prosedur evakuasi. Pastikan semua karyawan menerima pelatihan yang sama dan memahami peran mereka dalam evakuasi.\r\n\r\nMenyiapkan rencana evakuasi kebakaran adalah langkah penting dalam melindungi diri dan orang-orang di sekitar kita dari bahaya kebakaran. Dengan mengikuti langkah-langkah di atas, Anda dapat memastikan bahwa semua anggota keluarga atau karyawan tahu apa yang harus dilakukan dalam situasi darurat dan dapat melakukan evakuasi dengan aman dan efisien. Latihan dan persiapan yang matang dapat membuat perbedaan besar dalam menghadapi kebakaran dan memastikan keselamatan semua orang.', '2024-08-20', '1724147691.jpg'),
(8, 1, 'Keselamatan Kebakaran di Tempat Kerja', 'Strategi untuk Mencegah dan Mengatasi Kebakaran di Lingkungan Kerja\r\n\r\n\r\nKebakaran di tempat kerja dapat menimbulkan risiko serius bagi keselamatan karyawan dan kerugian finansial bagi perusahaan. Untuk melindungi karyawan dan aset, penting untuk menerapkan strategi keselamatan kebakaran yang efektif. Artikel ini akan membahas langkah-langkah penting dalam mencegah dan mengatasi kebakaran di tempat kerja, termasuk pencegahan, pelatihan, dan penanganan darurat.\r\n\r\n1. Implementasi Kebijakan Keselamatan Kebakaran\r\n\r\n1). Pengembangan Kebijakan: Buat kebijakan keselamatan kebakaran yang jelas dan komprehensif untuk tempat kerja. Kebijakan ini harus mencakup prosedur evakuasi, penggunaan alat pemadam kebakaran, dan tanggung jawab masing-masing karyawan dalam situasi darurat.\r\n\r\n2.) Penerapan Prosedur: Pastikan bahwa semua karyawan memahami dan mematuhi prosedur keselamatan kebakaran. Kebijakan harus disosialisasikan secara reguler dan ditinjau kembali sesuai kebutuhan.\r\n\r\n2. Pencegahan Kebakaran\r\n\r\n1.) Perawatan dan Pemeriksaan Rutin: Lakukan pemeriksaan dan pemeliharaan rutin pada peralatan listrik, pemanas, dan sistem ventilasi untuk mencegah potensi penyebab kebakaran. Pastikan bahwa semua peralatan berada dalam kondisi baik dan tidak menimbulkan risiko kebakaran.\r\n\r\n2.) Pengendalian Bahan Mudah Terbakar: Simpan bahan mudah terbakar, seperti bahan kimia, pelarut, dan kertas, di tempat yang aman dan sesuai dengan regulasi keselamatan. Gunakan wadah dan penyimpanan yang sesuai untuk mencegah risiko kebakaran.\r\n\r\n3.) Penandaan dan Penerangan: Pasang tanda peringatan dan rambu-rambu yang jelas untuk menunjukkan lokasi alat pemadam kebakaran dan jalur evakuasi. Pastikan pencahayaan darurat berfungsi dengan baik dan rambu-rambu tetap terlihat di segala kondisi pencahayaan.\r\n\r\n3. Pelatihan dan Kesadaran Karyawan\r\n\r\n1.) Pelatihan Rutin: Adakan pelatihan keselamatan kebakaran secara berkala untuk semua karyawan. Pelatihan ini harus mencakup penggunaan alat pemadam kebakaran, teknik evakuasi, dan penanganan kebakaran kecil. \r\n\r\n2.) Simulasi Kebakaran: Selenggarakan latihan evakuasi kebakaran secara teratur untuk memastikan bahwa karyawan tahu apa yang harus dilakukan dalam situasi darurat. Latihan ini membantu karyawan berlatih rute evakuasi dan prosedur darurat secara praktis.\r\n\r\n3.) Pendidikan Kesadaran: Berikan informasi dan materi edukasi tentang keselamatan kebakaran kepada karyawan. Materi ini bisa berupa poster, brosur, atau modul pelatihan online yang menjelaskan risiko kebakaran dan cara menghindarinya.\r\n\r\n4. Penanganan Kebakaran di Tempat Kerja\r\n\r\n1.) Respons Darurat: Pastikan ada tim tanggap darurat yang terlatih di tempat kerja. Tim ini harus dilatih untuk merespons kebakaran dengan cepat dan efektif, termasuk mengaktifkan alarm, melakukan evakuasi, dan menggunakan alat pemadam kebakaran.\r\n\r\n2.) Alat Pemadam Kebakaran: Sediakan alat pemadam kebakaran yang sesuai di lokasi yang mudah dijangkau. Pastikan semua alat pemadam kebakaran diperiksa dan dipelihara secara rutin.\r\n\r\n3.) Sistem Deteksi dan Alarm: Pasang sistem deteksi kebakaran yang dapat mendeteksi asap, panas, atau gas beracun. Pastikan sistem alarm berfungsi dengan baik dan terhubung dengan layanan darurat.\r\n\r\n\r\n5.Evaluasi dan Perbaikan\r\n\r\n1.) Penilaian Risiko: Lakukan penilaian risiko kebakaran secara berkala untuk mengidentifikasi potensi bahaya dan mengimplementasikan tindakan pencegahan yang diperlukan.\r\n\r\n2.) Ulasan Prosedur: Tinjau dan perbarui kebijakan keselamatan kebakaran secara berkala untuk memastikan bahwa kebijakan tetap relevan dan efektif.\r\n\r\n3.) Feedback Karyawan: Dapatkan umpan balik dari karyawan tentang prosedur keselamatan kebakaran dan gunakan informasi ini untuk meningkatkan rencana keselamatan.\r\n\r\n\r\nKeselamatan kebakaran di tempat kerja adalah tanggung jawab bersama yang melibatkan manajemen, karyawan, dan semua pihak terkait. Dengan menerapkan kebijakan keselamatan kebakaran yang efektif, melatih karyawan secara rutin, dan menyiapkan langkah-langkah penanganan darurat, perusahaan dapat mengurangi risiko kebakaran dan melindungi keselamatan serta kesejahteraan karyawan. Ingatlah bahwa persiapan dan pencegahan adalah kunci utama untuk menghadapi potensi bahaya kebakaran dan menjaga lingkungan kerja yang aman.', '2024-08-20', '1724154500.jpg'),
(9, 1, 'Mengenal Jenis-jenis Alat Pemadam Kebakaran dan Cara Penggunaannya', 'Alat pemadam kebakaran adalah komponen penting dalam sistem perlindungan kebakaran, dirancang untuk memadamkan atau mengendalikan api sebelum menjadi lebih besar. Memahami berbagai jenis alat pemadam kebakaran dan cara penggunaannya dapat membantu Anda merespons kebakaran dengan lebih efektif dan memastikan keselamatan. Artikel ini akan membahas jenis-jenis alat pemadam kebakaran, fungsi masing-masing, dan panduan penggunaannya.\r\n\r\n1. Jenis-Jenis Alat Pemadam Kebakaran\r\n\r\n1.) Pemadam Kebakaran Air (Water Fire Extinguisher):\r\n   - Fungsi: Efektif untuk memadamkan kebakaran kelas A, yang melibatkan bahan-bahan seperti kayu, kertas, dan tekstil.\r\n   - Penggunaan: Jangan digunakan pada kebakaran kelas B (cairan mudah terbakar) atau kelas C (peralatan listrik), karena dapat menyebabkan penyebaran api atau bahaya listrik.\r\n\r\n2.) Pemadam Kebakaran Foam (Foam Fire Extinguisher):\r\n   - Fungsi: Cocok untuk kebakaran kelas A dan B, termasuk cairan mudah terbakar seperti bensin dan minyak.\r\n   - Penggunaan: Foam membentuk lapisan di atas permukaan bahan yang terbakar, memutuskan kontak dengan udara dan mencegah kebakaran menyebar.\r\n\r\n3.) Pemadam Kebakaran Karbon Dioksida (CO2 Fire Extinguisher):\r\n   - Fungsi: Ideal untuk kebakaran kelas B dan C. Tidak meninggalkan residu, sehingga bagus untuk peralatan elektronik.\r\n   - Penggunaan: Menggunakan gas karbon dioksida untuk menghilangkan oksigen di area api, menghentikan pembakaran tanpa merusak peralatan.\r\n\r\n4.) Pemadam Kebakaran Bubuk Kering (Dry Powder Fire Extinguisher):\r\n   - Fungsi: Dapat digunakan untuk kebakaran kelas A, B, dan C, serta untuk kebakaran logam (kelas D).\r\n   - Penggunaan: Bubuk kering bekerja dengan memutuskan reaksi kimia yang menyebabkan api. Pastikan untuk memilih jenis bubuk yang sesuai dengan jenis kebakaran yang dihadapi.\r\n\r\n5.) Pemadam Kebakaran Kimia Basah (Wet Chemical Fire Extinguisher):\r\n   - Fungsi: Dirancang khusus untuk kebakaran kelas K, yang melibatkan minyak goreng dan bahan makanan lainnya.\r\n   - Penggunaan: Menggunakan larutan kimia basah untuk menetralkan dan memadamkan api. Biasanya digunakan di dapur dan area memasak.\r\n\r\n2. Cara Menggunakan Alat Pemadam Kebakaran\r\n\r\n1.) Pahami Jenis Api: Kenali jenis kebakaran yang terjadi dan pastikan Anda menggunakan alat pemadam yang sesuai. Penggunaan alat yang salah dapat memperburuk situasi.\r\n\r\n2.) Ikuti Metode PASS:\r\n   - Pull (Tarik): Tarik pin pengaman untuk melepaskan alat pemadam.\r\n   - Aim (Arahkan): Arahkan nozel atau selang ke dasar api, bukan ke bagian atasnya.\r\n   - Squeeze (Tekan): Tekan tuas atau handle untuk mengeluarkan bahan pemadam.\r\n   - Sweep (Sapukan): Sapukan aliran bahan pemadam secara merata dari sisi ke sisi untuk memastikan seluruh area yang terbakar terjangkau.\r\n\r\n3.) Jaga Jarak Aman: Berdiri pada jarak yang aman dari api, dan pastikan area sekitar tidak terlalu sempit. Jika api terlalu besar atau tidak dapat dikendalikan, segera evakuasi dan hubungi layanan darurat.\r\n\r\n4.) Periksa dan Rawat Alat:\r\n   - Pemeriksaan Berkala: Lakukan pemeriksaan rutin untuk memastikan alat pemadam kebakaran dalam kondisi baik dan siap digunakan. Periksa tekanan, kerusakan fisik, dan tanggal kedaluwarsa.\r\n   - Pemeliharaan: Ganti bahan pemadam yang telah digunakan dan lakukan perawatan sesuai dengan petunjuk produsen. \r\n\r\n5.) Latihan Penggunaan: Latihan penggunaan alat pemadam kebakaran dapat membantu Anda merasa lebih percaya diri dan siap saat menghadapi kebakaran nyata. Adakan latihan ini secara berkala di rumah atau tempat kerja.\r\n\r\n3. Pentingnya Pendidikan dan Kesadaran\r\n\r\n1.) Pelatihan Karyawan: Di tempat kerja, berikan pelatihan kepada karyawan tentang jenis-jenis alat pemadam kebakaran dan cara menggunakannya dengan benar. Latihan ini harus mencakup penggunaan alat dan prosedur evakuasi.\r\n\r\n2.) Edukasi Keluarga: Di rumah, pastikan semua anggota keluarga tahu lokasi alat pemadam kebakaran dan bagaimana cara menggunakannya. Diskusikan pentingnya alat ini dan bagaimana merespons kebakaran dengan cepat.\r\n\r\n\r\nMengetahui berbagai jenis alat pemadam kebakaran dan cara penggunaannya adalah langkah penting dalam menjaga keselamatan dari kebakaran. Dengan memahami fungsi masing-masing alat dan mengikuti prosedur penggunaan yang benar, Anda dapat membantu memadamkan api dengan efektif dan melindungi diri serta orang-orang di sekitar Anda. Pastikan untuk melakukan pemeriksaan rutin dan pelatihan untuk memastikan kesiapan alat pemadam kebakaran saat dibutuhkan.', '2024-08-20', '1724148380.jpg'),
(10, 1, 'Mengapa Pentingnya Memahami Kode Warna Alat Pemadam Kebakaran?', 'Memahami kode warna alat pemadam kebakaran adalah bagian penting dari keselamatan kebakaran, karena warna dapat memberikan informasi cepat tentang jenis dan kegunaan alat tersebut. Artikel ini akan membahas arti dari berbagai kode warna pada alat pemadam kebakaran, mengapa informasi ini penting, dan bagaimana Anda dapat menggunakan pengetahuan ini untuk meningkatkan keselamatan di rumah atau tempat kerja.\r\n\r\n1. Kode Warna Alat Pemadam Kebakaran dan Fungsinya\r\n\r\n1.) Merah – Air:\r\n   - Fungsi: Alat pemadam kebakaran berwarna merah umumnya berisi air dan digunakan untuk kebakaran kelas A, yang melibatkan bahan-bahan padat seperti kayu, kertas, dan tekstil.\r\n   - Penggunaan: Alat ini tidak boleh digunakan pada kebakaran kelas B (cairan mudah terbakar) atau kelas C (peralatan listrik) karena dapat menyebarkan api atau menyebabkan risiko tambahan.\r\n\r\n2.) Kuning \r\n  – Foam:\r\n   - Fungsi: Alat pemadam berwarna kuning berisi foam (busa) yang efektif untuk kebakaran kelas A dan B. Foam membentuk lapisan di atas permukaan bahan yang terbakar, mencegah kontak dengan oksigen.\r\n   - Penggunaan: Cocok untuk kebakaran bahan padat serta cairan mudah terbakar seperti bensin dan minyak.\r\n\r\n3.) Hitam – Karbon Dioksida (CO2):\r\n   - Fungsi: Alat pemadam berwarna hitam berisi gas karbon dioksida dan dirancang untuk kebakaran kelas B dan C. CO2 menghilangkan oksigen di sekitar api dan tidak meninggalkan residu.\r\n   - Penggunaan: Ideal untuk kebakaran yang melibatkan peralatan listrik dan cairan mudah terbakar.\r\n\r\n4.) Putih – Bubuk Kering:\r\n   - Fungsi: Alat pemadam berwarna putih biasanya berisi bubuk kering dan dapat digunakan untuk kebakaran kelas A, B, C, dan D. Bubuk ini memutuskan reaksi kimia yang menyokong api.\r\n   - Penggunaan: Fleksibel dan efektif untuk berbagai jenis kebakaran, termasuk kebakaran logam (kelas D).\r\n\r\n5.) Hijau\r\n  – Kimia Basah:\r\n   - Fungsi: Alat pemadam berwarna hijau berisi larutan kimia basah, yang dirancang khusus untuk kebakaran kelas K, seperti yang terjadi di dapur dengan minyak goreng.\r\n   - Penggunaan: Menggunakan bahan kimia yang memadamkan api dan menetralkan minyak goreng.\r\n\r\n2. Mengapa Memahami Kode Warna Itu Penting?\r\n\r\n1.) Respons Cepat dalam Situasi Darurat: Memahami kode warna membantu Anda dengan cepat memilih alat pemadam yang tepat untuk jenis kebakaran yang Anda hadapi, yang sangat penting dalam situasi darurat.\r\n\r\n2.) Mencegah Kesalahan Penggunaan: Dengan mengetahui warna dan fungsi alat pemadam, Anda dapat menghindari kesalahan penggunaan yang dapat memperburuk kebakaran atau menyebabkan bahaya tambahan, seperti kebakaran listrik yang tidak boleh dipadamkan dengan air.\r\n\r\n3.) Pendidikan dan Pelatihan: Informasi tentang kode warna alat pemadam kebakaran dapat digunakan dalam pelatihan keselamatan untuk karyawan, anggota keluarga, atau pengunjung, memastikan bahwa semua orang tahu cara merespons kebakaran dengan benar.\r\n\r\n3. Implementasi Pengetahuan di Tempat Kerja dan Rumah\r\n\r\n1.) Di Tempat Kerja:\r\n   - Penempatan Alat: Pastikan alat pemadam kebakaran ditempatkan di lokasi yang strategis dan terlihat jelas. Gunakan kode warna untuk memudahkan identifikasi.\r\n   - Pelatihan Karyawan: Selenggarakan pelatihan yang mencakup pemahaman kode warna dan cara menggunakan alat pemadam kebakaran. Latihan ini harus mencakup skenario nyata untuk meningkatkan kesiapsiagaan.\r\n\r\n2.) Di Rumah:\r\n   - Pemasangan Alat: Pasang alat pemadam kebakaran di area yang mudah diakses dan pastikan setiap anggota keluarga tahu jenis dan kegunaan alat tersebut.\r\n   - Edukasi Keluarga: Diskusikan kode warna alat pemadam kebakaran dengan anggota keluarga dan latih mereka tentang cara menggunakan alat tersebut dengan benar.\r\n\r\n4. Pemeliharaan dan Pemeriksaan Rutin\r\n1.) Pemeriksaan Berkala: Lakukan pemeriksaan rutin untuk memastikan semua alat pemadam kebakaran dalam kondisi baik dan sesuai dengan kode warna yang benar. Periksa tekanan, kerusakan, dan tanggal kedaluwarsa.\r\n\r\n2.) Penggantian dan Perbaikan: Segera ganti alat yang telah digunakan atau mengalami kerusakan. Pastikan semua alat yang baru dipasang memiliki kode warna yang benar dan sesuai dengan standar keselamatan.\r\n\r\n\r\nMemahami kode warna alat pemadam kebakaran adalah langkah penting dalam memastikan keselamatan dan efektivitas dalam situasi darurat. Dengan pengetahuan ini, Anda dapat lebih siap menghadapi kebakaran dan melindungi diri serta orang-orang di sekitar Anda. Pastikan untuk terus memperbarui pengetahuan dan melakukan pelatihan rutin agar Anda dan tim Anda selalu siap menghadapi kemungkinan kebakaran dengan cara yang aman dan efektif.', '2024-08-20', '1724156007.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_korbans`
--

CREATE TABLE `detail_korbans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `NIK` varchar(255) NOT NULL,
  `umur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `detail_korbans`
--

INSERT INTO `detail_korbans` (`id`, `nama_lengkap`, `NIK`, `umur`) VALUES
(1, 'arik', '3315203220142056', '51');

-- --------------------------------------------------------

--
-- Table structure for table `detail_laporan_penggunas`
--

CREATE TABLE `detail_laporan_penggunas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_listdata_id` bigint(20) UNSIGNED NOT NULL,
  `deskripsi_laporan` text NOT NULL,
  `nama_hewan` varchar(255) DEFAULT NULL,
  `waktu_pelaporan` varchar(255) NOT NULL,
  `tgl_pelaporan` date NOT NULL,
  `urgensi` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `bukti_foto_laporan_pengguna` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `detail_laporan_penggunas`
--

INSERT INTO `detail_laporan_penggunas` (`id`, `user_listdata_id`, `deskripsi_laporan`, `nama_hewan`, `waktu_pelaporan`, `tgl_pelaporan`, `urgensi`, `alamat`, `latitude`, `longitude`, `bukti_foto_laporan_pengguna`) VALUES
(1, 3, 'kebakaran rumah', 'tidak ada', '20:49', '2024-08-18', 'Tinggi', 'jl.bisma rt.05 rw.07 dsn.kaluwan ds.boloh', -7.096029, 110.911373, 'C:\\xampp\\tmp\\php2DC3.tmp');

-- --------------------------------------------------------

--
-- Table structure for table `detail_laporan_petugas`
--

CREATE TABLE `detail_laporan_petugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `damkar_id` bigint(20) UNSIGNED NOT NULL,
  `waktu_berangkat` varchar(10) NOT NULL,
  `waktu_sampai` varchar(10) NOT NULL,
  `waktu_selesai` varchar(10) NOT NULL,
  `waktu_penanganan` varchar(10) DEFAULT NULL,
  `tgl_laporan_petugas` varchar(20) NOT NULL,
  `deskripsi_petugas` text NOT NULL,
  `korban_jiwa` int(11) NOT NULL,
  `korban_luka_ringan` int(11) NOT NULL,
  `korban_luka_berat` int(11) NOT NULL,
  `kerugian` varchar(255) NOT NULL,
  `luas_lahan` varchar(255) NOT NULL,
  `tindakan` varchar(255) NOT NULL,
  `pihak_yang_datang` varchar(255) NOT NULL,
  `jenis_evakuasi` varchar(255) NOT NULL,
  `team_evakuasi` varchar(255) NOT NULL,
  `bukti_foto_laporan_petugas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_laporans`
--

CREATE TABLE `kategori_laporans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kategori_laporans`
--

INSERT INTO `kategori_laporans` (`id`, `nama_kategori`) VALUES
(1, 'Kebakaran'),
(2, 'Bencana Alam'),
(3, 'Penyelamatan'),
(4, 'Hewan Buas'),
(5, 'custom');

-- --------------------------------------------------------

--
-- Table structure for table `kedudukans`
--

CREATE TABLE `kedudukans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kedudukan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kedudukans`
--

INSERT INTO `kedudukans` (`id`, `nama_kedudukan`) VALUES
(1, 'superadmin'),
(2, 'admin'),
(3, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi_cuacas`
--

CREATE TABLE `kondisi_cuacas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kondisi_cuaca` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kondisi_cuacas`
--

INSERT INTO `kondisi_cuacas` (`id`, `nama_kondisi_cuaca`) VALUES
(1, 'Cerah'),
(2, 'Berkabut'),
(3, 'Mendung'),
(4, 'Hujan');

-- --------------------------------------------------------

--
-- Table structure for table `laporans`
--

CREATE TABLE `laporans` (
  `idLaporan` bigint(20) UNSIGNED NOT NULL,
  `status_riwayat_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_laporan_id` bigint(20) UNSIGNED NOT NULL,
  `detail_korban_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kondisi_cuaca_id` bigint(20) UNSIGNED DEFAULT NULL,
  `detail_laporan_pengguna_id` bigint(20) UNSIGNED NOT NULL,
  `detail_laporan_petugas_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `laporans`
--

INSERT INTO `laporans` (`idLaporan`, `status_riwayat_id`, `kategori_laporan_id`, `detail_korban_id`, `kondisi_cuaca_id`, `detail_laporan_pengguna_id`, `detail_laporan_petugas_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, 1, 1, '2024-08-18 06:49:27', '2024-08-18 06:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_04_10_035220_create_user_list_data_table', 1),
(4, '2023_04_10_040527_create_laporans_table', 1),
(5, '2023_04_10_041913_create_admin_damkars_table', 1),
(6, '2023_04_10_042238_create_artikel_edukasis_table', 1),
(7, '2023_04_10_042334_create_artikel_beritas_table', 1),
(8, '2023_04_11_120901_create_status_riwayats_table', 1),
(9, '2023_04_11_120915_create_kategori_laporans_table', 1),
(10, '2023_04_11_121033_create_kedudukans_table', 1),
(11, '2023_04_13_011517_create_pengaturan_table', 1),
(12, '2023_05_07_151943_create_artikel_agendas_table', 1),
(13, '2023_08_02_141242_create_detail_korbans_table', 1),
(14, '2023_08_04_131736_create_detail_laporan_penggunas_table', 1),
(15, '2023_08_04_131753_create_detail_laporan_petugas_table', 1),
(16, '2023_08_04_131814_create_kondisi_cuacas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_mobil` int(11) NOT NULL,
  `jumlah_personil` int(11) NOT NULL,
  `jumlah_kantor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `jumlah_mobil`, `jumlah_personil`, `jumlah_kantor`) VALUES
(1, 10, 105, 4);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status_riwayats`
--

CREATE TABLE `status_riwayats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status_riwayats`
--

INSERT INTO `status_riwayats` (`id`, `nama_status`) VALUES
(1, 'Menunggu'),
(2, 'Proses'),
(3, 'Ditangani'),
(4, 'Selesai'),
(5, 'Ditolak');

-- --------------------------------------------------------

--
-- Table structure for table `user_list_data`
--

CREATE TABLE `user_list_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `namaLengkap` varchar(50) NOT NULL,
  `noHp` varchar(13) NOT NULL,
  `kodeOtp` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `foto_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_list_data`
--

INSERT INTO `user_list_data` (`id`, `username`, `password`, `namaLengkap`, `noHp`, `kodeOtp`, `status`, `foto_user`) VALUES
(1, 'superadmin@gmail.com', '$2y$10$FVEC1yMgZJ5LKu2s.ilHLOqfxAC7BhSWtAobXkTjk3baTuOJ/NWB6', 'SuperAdmin', '085756436576', '9817238', 'Verified', ''),
(2, 'samsudin@gmail.com', '$2y$10$I.z2aZBxecU08gKRkfD.i.zGYlvnjzFLTWR.N6k91cYXHvUSgArV6', 'Samsudin', '081788888888', '172383', 'Verified', ''),
(3, 'aang@gmail.com', '$2y$10$SwXyGwxbNeto2gJ1Sjx57ueNXeT.PLHM/cn5zAW51oBv13z2FU3Em', 'DESA BOLOH', '085900207715', '65799', 'Verified', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_damkars`
--
ALTER TABLE `admin_damkars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel_agendas`
--
ALTER TABLE `artikel_agendas`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `artikel_beritas`
--
ALTER TABLE `artikel_beritas`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `artikel_edukasis`
--
ALTER TABLE `artikel_edukasis`
  ADD PRIMARY KEY (`id_edukasi`);

--
-- Indexes for table `detail_korbans`
--
ALTER TABLE `detail_korbans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_laporan_penggunas`
--
ALTER TABLE `detail_laporan_penggunas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_laporan_petugas`
--
ALTER TABLE `detail_laporan_petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_laporans`
--
ALTER TABLE `kategori_laporans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kedudukans`
--
ALTER TABLE `kedudukans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kondisi_cuacas`
--
ALTER TABLE `kondisi_cuacas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporans`
--
ALTER TABLE `laporans`
  ADD PRIMARY KEY (`idLaporan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `status_riwayats`
--
ALTER TABLE `status_riwayats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_list_data`
--
ALTER TABLE `user_list_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_list_data_username_unique` (`username`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_damkars`
--
ALTER TABLE `admin_damkars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `artikel_agendas`
--
ALTER TABLE `artikel_agendas`
  MODIFY `id_agenda` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `artikel_beritas`
--
ALTER TABLE `artikel_beritas`
  MODIFY `id_berita` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `artikel_edukasis`
--
ALTER TABLE `artikel_edukasis`
  MODIFY `id_edukasi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `detail_korbans`
--
ALTER TABLE `detail_korbans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_laporan_penggunas`
--
ALTER TABLE `detail_laporan_penggunas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_laporan_petugas`
--
ALTER TABLE `detail_laporan_petugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_laporans`
--
ALTER TABLE `kategori_laporans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kedudukans`
--
ALTER TABLE `kedudukans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kondisi_cuacas`
--
ALTER TABLE `kondisi_cuacas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `laporans`
--
ALTER TABLE `laporans`
  MODIFY `idLaporan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_riwayats`
--
ALTER TABLE `status_riwayats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_list_data`
--
ALTER TABLE `user_list_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
