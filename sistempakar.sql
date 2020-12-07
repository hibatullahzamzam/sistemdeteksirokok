-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 01:02 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistempakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(5) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `gejala` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `kode`, `gejala`) VALUES
(1, 'G001', 'Perubahan suara serta sulit atau rasa sakit saat menelan serta mengunyah'),
(2, 'G002', 'Pembengkakan pada wajah dan leher'),
(3, 'G003', 'Bercak kemerahan atau putih dalam mulut dan lidah terasa sakit atau mulut nyeri'),
(4, 'G004', 'Pendarahan pada rongga mulut dan gigi tinggal dengan sendirinya'),
(5, 'G005', 'Batuk kronis serta telinga terasa sakit dan berdengung'),
(6, 'G006', 'Timbul benjolan yang muncul di sekitar mata, rahang, leher atau tenggorokan'),
(7, 'G007', 'Pembengkakan kelenjar getah bening'),
(8, 'G008', 'Galat-gatal atau rasa sakit pada payudara atau ketiak serta perubahan ukuran atau bentuk puting'),
(9, 'G009', 'Kemunculan benjolan atau pembengkakan yang kemerahan pada ketiak atau payudara atau kulit payudara yang menebal sertan keluarnya cairan dari putting dan biasanya disertai darah'),
(10, 'G010', 'Frekuensi buang air kecil semakin sering tapi ilmiah urine yang dikeluarkan hanya sedikit serta warna urin keruh atau kuning kemerahan'),
(11, 'G011', 'Kantung kemih teraa tegang, perih, keras dan nyeri pada perut bagian bawah serta nyeri atau perih Ketika buang air kecil'),
(12, 'G012', 'Sakit kepala yang tiba-tiba '),
(13, 'G013', 'Tiba-tiba kehilangan kesadaran, keseimbangan, koordinasi, kontrol tubuh, dan bicara tidak jelas'),
(14, 'G014', 'Kelemahan dan kelumpuhan pada beberapa bagian tubuh misalnya wajah, lengan tangan terutama ppada salah satu sisi tubuh'),
(15, 'G015', 'Dada sesak nyeri dan berat'),
(16, 'G016', 'Penyakit infeksi saluran pernafasan missal flu dan pilek'),
(17, 'G017', 'Keluar lender dari rongga hidung terus menerus yang berwarna kemerahan'),
(18, 'G018', 'Pembengkakan pada pergelangan kaki dan tungkai kiri serta kanan'),
(19, 'G019', 'Terlalu cepat ejakulasi'),
(20, 'G020', 'Kesulitan memulai dan mempertahankan ereksi'),
(21, 'G021', 'Rasa begah di perut'),
(22, 'G022', 'Susah buang air besar'),
(23, 'G023', 'Nafsu makanan tiba-tiba berkurang'),
(24, 'G024', 'Naiknya asam lambung'),
(25, 'G025', 'Rasa besar pada dada'),
(26, 'G026', 'Kebiruan pada bibir atau kuku jari'),
(27, 'G027', 'Penurunan berat badan yang tidak disengaja'),
(28, 'G028', 'Bengkak pada pergelangan kaki, tangan atau tungkai'),
(29, 'G029', 'Nyeri saat mengunyah'),
(30, 'G030', 'Gusi terasa lunak jika disentuh'),
(31, 'G031', 'Keluarnya nanah pada bagian yang membatasi gigi dan gusi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id` int(11) NOT NULL,
  `penyakit` varchar(100) NOT NULL,
  `info` longtext NOT NULL,
  `gejala` longtext NOT NULL,
  `solusi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id`, `penyakit`, `info`, `gejala`, `solusi`) VALUES
(1, 'Kanker Mulut', 'Kanker mulut disebabkan oleh tumbuhnya jaringan abnormal di dalam mulut. Gejala kanker mulut yang umumnya dirasakan adalah sariawan yang tidak kunjung sembuh, muncul bercak putih atau merah, serta rasa sakit di dalam mulut.', '>	Perubahan suara serta sulit atau rasa sakit saat menelan serta mengunyah \r\n>	Pembengkakan pada wajah dan leher\r\n>	Bercak kemerahan atau putih dalam mulut, dan lidah terasa sakit atau mulut nyeri \r\n>	Pendarahan pada rongga mulut dan gigi tanggal dengan sendirinya\r\n', '>	Tidak merokok.\r\n>	Menghindari konsumsi minuman\r\n>	Memperbanyak konsumsi sayur dan buah-buahan.\r\n>	Menjaga kebersihan mulut dengan rutin menyikat gigi.\r\n>	Memeriksa kesehatan gigi secara teratur, setidaknya setahun sekali.'),
(2, 'Kanker Tenggorokan', 'penyakit kanker yang berkembang dari jaringan tenggorokan. Gejala utamanya adalah terjadi perubahan suara, sulit menelan, dan sakit tenggorokan.', '>	Perubahan suara serta sulit atau rasa sakit saat menelan serta mengunyah \r\n>	Pembengkakan pada wajah dan leher \r\n>	Batuk kronis serta telinga terasa sakit dan berdengung \r\n>	Timbul benjolan yang muncul di sekitar mata, rahang, leher, atau tenggorokan \r\n>	Pembengkakan kelenjar getah bening\r\n', '>	Berhenti merokok.\r\n>	Berhenti atau mengurangi konsumsi minuman alkohol.\r\n>	Lakukan vaksinasi HPV.\r\n>	Berhubungan seks dengan aman untuk mencegah infeksi HPV.\r\n>	Perbanyak konsumsi sayur dan buah.\r\n'),
(3, 'Kanker Paru-paru', 'Kanker paru-paru adalah suatu kondisi di mana sel-sel kanker tumbuh secara tidak terkendali di dalam paru paru. Penyebab kanker paru sering dikaitkan dengan merokok, namun sebenarnya keduanya tak selalu berkaitan.', '>	Perubahan suara serta sulit atau rasa sakit saat menelan serta mengunyah \r\n>	Pembengkakan pada wajah dan leher \r\n>	Batuk kronis serta telinga terasa sakit dan berdengung \r\n>	Timbul benjolan yang muncul di sekitar mata, rahang, leher, atau tenggorokan \r\n>	Pembengkakan kelenjar getah bening\r\n', 'Penanganan utama terhadap kanker paru-paru stadium awal adalah melalui operasi. Jika kanker telah mencapai stadium lanjut, maka penanganan dapat dilakukan dengan radioterapi dan kemoterapi.'),
(4, 'Kanker Payudara', 'Kanker payudara terjadi karena sel-sel di payudara tumbuh tidak normal dan tidak terkendali. Sel-sel ini membelah dengan cepat dan berkumpul membentuk benjolan, lalu bisa menyebar ke kelenjar getah bening atau ke organ lain.', '>	Gatal-gatal atau rasa sakit pada payudara atau ketiak serta perubahan ukuran atau bentuk puting \r\n>	Kemunculan benjolan atau pembengkakan yang kemerahan pada ketiak, atau payudara, atau kulit payudara yang menebal serta keluarnya cairan dari puting (biasanya disertai darah)\r\n', '>	Menjaga berat badan tetap ideal\r\n>	Utamakan makanan\r\n>	Membatasi minuman beralkohol\r\n>	Hindari terkena paparan\r\n'),
(5, 'Kanker Kandung Kemih', 'kanker yang bermula di kandung kemih akibat pertumbuhan sel yang tidak normal. Kanker kandung kemih sering kali ditandai dengan adanya darah dalam urine.', '>	Frekuensi buang air kecil semakin sering, tapi jumlah urine yang dikeluarkan hanya sedikit, serta warna urin keruh atau kuning kemerahan \r\n>	Kandung kemih terasa tegang, penuh, keras dan nyeri pada perut bagian bawah, serta nyeri atau perih kertika buang air kecil\r\n', '>	Menghentikan kebiasaan merokok jika Anda merokok, dan menjauhi paparan asap rokok\r\n>	Menghindari paparan kimia, yaitu dengan menggunakan alat pelindung diri dan mengikuti prosedur keselamatan di lingkungan kerja\r\n>	Mengonsumsi buah-buahan dan sayuran yang kaya antioksidan, untuk mengurangi risiko kanker\r\n>	Rutin berolahraga\r\n'),
(6, 'Stroke', ' kondisi yang terjadi ketika pasokan darah ke otak terganggu atau berkurang akibat penyumbatan (stroke iskemik) atau pecahnya pembuluh darah (stroke hemoragik). Tanpa darah, otak tidak akan mendapatkan asupan oksigen dan nutrisi, sehingga sel-sel pada sebagian area otak akan mati.', '>	Sakit kepala yang tiba-tiba \r\n>	Tiba-tiba kehilangan kesadaran, keseimbangan, koordinasi, kontrol tubuh, dan bicara tidak jelas \r\n>	Kelemahan dan kelumpuhan pada beberapa bagian tubuh (wajah, lengan, tangan, terutama pada salah satu sisi tubuh)\r\n', '>	Menerapkan pola makan yang sehat.\r\n>	Berolahraga secara rutin.\r\n>	Hindari merokok dan mengonsumsi minuman keras.\r\n'),
(7, 'Bronkitis', 'infeksi umum yang menyebabkan peradangan dan iritasi pada saluran udara utama paru-paru atau bronkus. Hal ini menyebabkan terjadinya peradangan atau inflamasi pada saluran tersebut', '>	Dada sesak, nyeri, dan berat \r\n>	Infeksi saluran pernapasan (flu atau pilek) \r\n>	Keluar lendir dari rongga hidung terus menerus yang berwarna kemerahan \r\n>	Pembengkakan pada pergelangan kaki, kaki, dan tungkai kiri serta kanan\r\n', '>	Banyak istirahat \r\n>	Minum banyak air putih \r\n>	Menghindari paparan (asap, zat kimia) \r\n>	Menggunakan inhalasi bronkodilator\r\n'),
(8, 'Impoten', ' kondisi ketika penis tidak mampu untuk ereksi atau ketika ereksi hanya terjadi sebentar.', '>	Terlalu cepat ejakulasi \r\n>	Kesulitan memulai dan mempertahankan ereksi\r\n', '>	Penggunaan obat tertentu\r\n>	Pemasangan vakum penis\r\n>	Psikoterapi\r\n>	Implant penis\r\n'),
(9, 'GERD (penyakit asam lambung)', ' kondisi di mana dada atau tenggorokan kamu terasa perih seperti terbakar, yakni ketika addanya ganggian pada otot di ujung kerongkongan.', '>	Rasa begah di perut \r\n>	Susah buang air besar \r\n>	Nafsu makanan tiba-tiba berkurang \r\n>	Naiknya asam lambung\r\n', '>	Tidak mengonsumsi minuman beralkohol\r\n>	Hindari makan berlebih\r\n>	Makan paling tidak dua atau tiga jam sebelum tidur\r\n>	Turunkan berat badan jika kamu mengalami obesitas\r\n>	Meninggikan kepala saat tidur\r\n>	Tidak mengenakan pakaian yang terlalu ketat\r\n>	Berhenti merokok atau hindari asap rokok\r\n'),
(10, 'PPOK (Penyakit Paru Obsturktif Kronis)', 'penyakit yang terjadi karena penurunan fungsi paru yang kronis. Penyakit ini ditandai dengan gejala sesak napas yang terus menerus. Umumnya penyakit ini muncul pada usia 50 tahun ke atas.', '>	Rasa besar pada dada \r\n>	Kebiruan pada bibir atau kuku jari \r\n>	Penurunan berat badan yang tidak disengaja \r\n>	Bengkak pada pergelangan kaki, tangan atau tungkai\r\n', '>	Tidak merokok \r\n>	Menghindari paparan polusi udara\r\n>	Berolahraga\r\n>	Konsumsi makanan mengandung antioksida\r\n'),
(11, 'Radang Gusi', 'peradangan pada gusi yang ditandai oleh memerahnya gusi di sekitar akar gigi. Gingivitis terjadi ketika sisa makanan di gigi dan gusi mengeras menjadi plak.', '>	Nyeri saat mengunyah \r\n>	Gusi terasa lunak jika disentuh \r\n>	Keluarnya nanah pada bagian yang membatasi gigi dan gusi\r\n', '>	Pembersihan karang gigi (scaling) dan perawatan saluran akar gigi (root planing) dengan menggunakan laser atau gelombang suara.\r\n>	Penambalan atau penggantian gigi yang berlubang atau rusak, bila kondisi tersebut terkait dengan gingivitis.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rule`
--

CREATE TABLE `tb_rule` (
  `id` int(5) NOT NULL,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL,
  `G011` tinyint(1) DEFAULT NULL,
  `G012` tinyint(1) DEFAULT NULL,
  `G013` tinyint(1) DEFAULT NULL,
  `G014` tinyint(1) DEFAULT NULL,
  `G015` tinyint(1) DEFAULT NULL,
  `G016` tinyint(1) DEFAULT NULL,
  `G017` tinyint(1) DEFAULT NULL,
  `G018` tinyint(1) DEFAULT NULL,
  `G019` tinyint(1) DEFAULT NULL,
  `G020` tinyint(1) DEFAULT NULL,
  `G021` tinyint(1) DEFAULT NULL,
  `G022` tinyint(1) DEFAULT NULL,
  `G023` tinyint(1) DEFAULT NULL,
  `G024` tinyint(1) DEFAULT NULL,
  `G025` tinyint(1) DEFAULT NULL,
  `G026` tinyint(1) DEFAULT NULL,
  `G027` tinyint(1) DEFAULT NULL,
  `G028` tinyint(1) DEFAULT NULL,
  `G029` tinyint(1) DEFAULT NULL,
  `G030` tinyint(1) DEFAULT NULL,
  `G031` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rule`
--

INSERT INTO `tb_rule` (`id`, `G001`, `G002`, `G003`, `G004`, `G005`, `G006`, `G007`, `G008`, `G009`, `G010`, `G011`, `G012`, `G013`, `G014`, `G015`, `G016`, `G017`, `G018`, `G019`, `G020`, `G021`, `G022`, `G023`, `G024`, `G025`, `G026`, `G027`, `G028`, `G029`, `G030`, `G031`) VALUES
(1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0),
(11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_rule`
--
ALTER TABLE `tb_rule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_rule`
--
ALTER TABLE `tb_rule`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
