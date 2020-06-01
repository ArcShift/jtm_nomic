-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 01, 2020 at 09:29 AM
-- Server version: 10.3.23-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jatimnom_market`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `tema`, `tema_seo`, `isi_agenda`, `tempat`, `pengirim`, `gambar`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `jam`, `dibaca`, `username`) VALUES
(64, 'Elton John Greatest Hits Tour', 'elton-john-greatest-hits-tour', '<p>November ini,&nbsp; Indonesia akan disuguhkan salah satu konser megah dari legenda musik dunia yaitu Elton John. Penampilan Elton John yang pertama kalinya di Indonesia akan berlangsung pada 17 November 2012, di&nbsp; Sentul International Convention Center, Bogor yang lokasinya tidak begitu jauh dari Jakarta.<br />\r\n<br />\r\nKonser Elton John ini merupakan bagian dari tur dunianya yang bertajuk &ldquo;Greatest Hits Tour&rdquo; dan akan dimulai pada awal November dari Latvia sampai ke Australia. Elton John akan membawa band lamanya yang terdiri dari Davey Johnstone, Nigel Olsson, Robert Birch, Kim Bullard dan John Mahon, dan empat backing vocal yaitu Rose&nbsp; Batu (Sly dan The Family Stone), Lisa Bank, Tata Vega, dan Jean Witherspoon.</p>\r\n', 'Sentul International Convention Center', 'Robby Prihandaya', '', '2012-11-17', '2012-11-17', '2012-08-20', '02:00:00 - 13:30:00', 89, 'admin'),
(62, 'Maroon Live in Jakarta 2012', 'maroon-live-in-jakarta-2012', 'Maroon 5 akan kembali menghibur penggemar Jakarta mereka dengan sebuah konser pada 5 Oktober 2012 di Istora Senayan, Jakarta. Ini akan menjadi penampilan kedua mereka di tanah air setelah tampil pada konser sold out 27 April 2011 lalu. Grup musik beraliran pop rock yang berasal dari Los Angeles, California Amerika Serikat. Rencananya menggelar konsernya pada 5 Oktober 2012, di Istora Senayan, Jakarta. Java Musikindo selaku promotor telah mengumumkan pembagian kelas serta harga tiket konser. Band yang digawangi oleh Adam Levine (vokal/gitar), Jesse Carmichael (keyboard/gitar),Mickey Madden (bass), James Valentine (gitar), Matt Flynn (drum) ini menggelar konser di Jakarta sebagai bagian dari promo album barunya, Overexposed, yang dirilis Juni lalu.\r\n', 'Istora Senayan Jakarta', 'Muhammad Arsenio', '', '2012-10-05', '2012-10-05', '2012-08-19', '20:00:00 - Selesai', 25, 'admin'),
(63, 'Festival Musik Bambu Nusa', 'festival-musik-bambu-nusantara-2012', 'Bambu Nusantara ke-6 tahun ini akan digelar di Jakarta Convention Center (JCC), di Jalan Jenderal Gatot Subroto, Jakarta, pada 1 - 2 September 2012. Acara tersebut akan menghadirkan beraneka kreasi berbahan bambu dan tampilnya beragam seni dari bambu. Selain suguhan musik etnik berpadu dengan musik modern, dalam Acara ini juga akan turut diisi dengan pameran, seminar, merchandise, kuliner, dan fashion yang dipadu padankan dengan karya berbahan bambu.<br />\r\n', 'Jakarta Convention Center (JCC), Jakarta', 'Dewiit Safitri', '', '2012-09-01', '2012-09-02', '2012-08-20', '09:00:00 - 21:00:00', 42, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT 1,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(30, 'Konser Kantata Barock 2018 berlangsung Dramatis', 'konser-kantata-barock-2018-berlangsung-dramatis', '<p>Para macan tua yang digawangi Iwan Fals, Setiawan Djody dan Sawung Jabo di Stadion Gelora Bung Karno, Jakarta, Jumat (30/12) malam. Kantata kembali membawakan lagu-lagu legendarisnya setelah 21 tahun vakum dari dunia musik.</p>\r\n\r\n<div style=\"background-color:#ffffff; border:medium none; color:#000000; overflow:hidden; text-align:left; text-decoration:none\">&nbsp;</div>\r\n', 'konser.png', 'Y', 36, '2012-08-20', '09:12:06', 'Senin', 'admin'),
(31, 'Asunt in anim uis aute irure dolor in reprehenderit', 'asunt-in-anim-uis-aute-irure-dolor-in-reprehenderit', '<p>Asunt in anim uis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum. Allamco laboris nisi ut aliquip ex ea commodo consequat. Aser velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum.</p>\r\n', 'maxresdefault.jpg', 'Y', 10, '2012-08-20', '09:40:01', 'Senin', 'admin'),
(28, 'Murah Meriah belanja puas di Pasar Asemka', 'murah-meriah-belanja-puas-di-pasar-asemka', '<p>Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.</p>\r\n', 'Murah-Meriah.jpg', 'Y', 61, '2012-08-18', '23:14:05', 'Sabtu', 'admin'),
(29, 'Karpet Raksasa dari Bunga mendapatkan rekor muri', 'karpet-raksasa-dari-bunga-mendapatkan-rekor-muri', '<p>Belgia sedang memperingati peristiwa tahunan &quot;La Fete De La Fleur&quot; atau pesta bunga di bulan Agustus. Ahli bunga merancang karpet raksasa dari bunga di depan Grand Place di Brussel. Karpet ini dibuat menggunakan 700 ribu bunga.</p>\r\n', 'karpet.jpg', 'Y', 118, '2012-08-19', '03:02:27', 'Minggu', 'admin'),
(51, 'Jalan-jalan bersama pemenang quiz online swarakalibata', 'jalanjalan-bersama-pemenang-quiz-online-swarakalibata', '<p>Israel pekan-pekan belakangan ini meningkatkan ancaman-ancamannya untuk menghancurkan fasilitas-fasilitas nuklir Iran guna mencegah Teheran mampu memproduksi senjata-senjata atom. Iran yang terkena sanksi-sanksi Barat membantah tuduhan itu dan menegaskan bahwa program nuklirnya hanya untuk tujuan damai. Militernya memperingatkan akan menghancurkan Israel jika diserang.</p>\r\n', 'quiz.jpg', 'Y', 0, '2018-04-21', '22:55:11', 'Sabtu', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `id_kategori_banner` int(11) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `icon` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `posisi` enum('top','footer','login') COLLATE latin1_general_ci NOT NULL DEFAULT 'top',
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `id_kategori_banner`, `judul`, `keterangan`, `url`, `gambar`, `icon`, `posisi`, `tgl_posting`) VALUES
(19, 0, 'Layanan Hadiah', 'Mendukung layanan hadiah', 'https://phpmu.com', '', 'icon-gift', 'top', '2017-05-21'),
(20, 0, 'Dukungan 1 x 24 jam', 'Dukungan khusus untuk anda', 'https://phpmu.com', '', 'icon-bubbles', 'top', '2017-05-21'),
(21, 0, 'Pembayaran aman', 'Pembayaran aman 100%', 'https://phpmu.com', '', 'icon-credit-card', 'top', '2017-05-21'),
(22, 0, '90 uang Kembali', 'Jika barang Bermasalah', 'https://phpmu.com', '', 'icon-sync', 'top', '2017-05-21'),
(23, 0, 'Pengiriman gratis', 'Untuk pesanan min Rp 999.000', 'https://phpmu.com', '', 'icon-rocket', 'top', '2017-05-21'),
(24, 1, 'Call us 24/7', 'Hubungi (031) 3554855\r\n<h3>0812 6777 13xx</h3> Jl. Pahlawan No.102-108, Alun-alun Contong, Kec. Bubutan, Kota SBY, Jawa Timur 60174\r\ncontact@jatimnomics.com', '', '', '', 'footer', '2020-02-07'),
(25, 2, 'Tentang Jatimnomics', '', 'https://phpmu.com', '', '', 'footer', '2020-02-07'),
(26, 2, 'Aturan Penggunaan', '', 'https://phpmu.com', '', '', 'footer', '2020-02-07'),
(27, 2, 'Kebijakan Privasi', '', 'https://phpmu.com', '', '', 'footer', '2020-02-07'),
(28, 2, 'Affiliate Program', '', 'https://phpmu.com', '', '', 'footer', '2020-02-07'),
(34, 4, 'Cara Berjualan', '', 'https://phpmu.com', '', '', 'footer', '2020-02-07'),
(30, 3, 'Cara Belanja', '', 'https://phpmu.com', '', '', 'footer', '2020-02-07'),
(31, 3, 'Pembayaran', '', 'https://phpmu.com', '', '', 'footer', '2020-02-07'),
(32, 3, 'Jaminan Aman', '', 'https://phpmu.com', '', '', 'footer', '2020-02-07'),
(33, 3, 'Jasa Pengadaan', '', 'https://phpmu.com', '', '', 'footer', '2020-02-07'),
(35, 4, 'Keuntungan Jualan', '', 'https://phpmu.com', '', '', 'footer', '2020-02-07'),
(36, 4, 'Indeks Merek', '', 'https://phpmu.com', '', '', 'footer', '2020-02-07'),
(37, 4, 'Direktori Pelapak', '', 'https://phpmu.com', '', '', 'footer', '2020-02-07');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(601, 40, 'admin', 'Es Teler, Sejarahmu Dulu dan Kini bagaimana cerita', '', '', 'es-teler-sejarahmu-dulu-dan-kini-bagaimana-cerita', 'N', 'N', 'N', '<p>Es Teler adalah minuman es berisi potongan buah alpukat, kelapa muda, nangka matang, dan santan kelapa encer dengan pemanis berupa sirup. Es yang dipakai bisa berupa es serut atau es batu.<br />\r\n<br />\r\nVariasi lain es teler berisi cincau, kolang-kaling, dan pacar china, potongan buah apel, pepaya, sawo, melon, roti, dan agar-agar, hingga es teler menjadi sulit dibedakan dengan es campur.<br />\r\n<br />\r\nEs Teler adalah jenis Kuliner yang murni &quot;Fresh from Nature&quot;, Tanpa diolah, hanya dipotong dan dibersihkan, lalu di beri kuah rasa sesuai selera dan di minum/makan dingin. Sehingga kandungan Gizi yang terdapat dalam buah yang dipakai otomatis masih baik. Es Teler --&gt; recomended deh sebagai makanan penutup dibanding makanan penutup olahan.<br />\r\n<br />\r\n<strong>Sejarah Es Teler</strong><br />\r\n<br />\r\nEs teler diciptakan Tukiman Darmowijono, pedagang es campur dengan gerobak di Jalan Semarang Jakarta Pusat pada tahun 1980-an. Es campur kreasi Tukiman begitu enak sehingga anak-anak muda yang meminumnya mengaku keenakan seperti &quot;teler&quot; akibat mengkonsumsi narkoba. Es kelapa muda bercampur alpukat yang dijual Tukiman di Jalan Semarang kemudian dikenal sebagai &quot;es teler.&quot;<br />\r\n<br />\r\nKepopuleran es yang bikin teler makin mencuat berkat promosi dari mulut ke mulut dan liputan media massa. Pembeli yang datang bermobil menimbulkan antrian parkir mobil yang dirasakan penduduk Jalan Semarang dan sekitarnya sebagai pengganggu ketenangan. Es teler Tukiman harus pindah ke Jalan Pegangsaan Barat dan kemudian ke dalam kompleks bioskop Megaria. Kedai es teler Tukiman di kompleks bioskop Megaria sekarang bernama kedai ayam bakar dan es teler Sari Mulia Asli.<br />\r\n<br />\r\nWaralaba nasional Es Teler 77 Juara Indonesia didirikan Sukyatno Nugroho, setelah sang mertua bernama Ny Murniati Widjaja menjuarai lomba es teler nasional di tahun 1982. Gerai Es Teler 77 yang pertama terdapat di pertokoan Duta Merlin, Harmoni, Jakarta Pusat. Di gerai Es Teler 77 juga tersedia berbagai makanan pendamping seperti mi bakso dan nasi goreng. Di luar negeri, gerai Es Teler 77 terdapat di Australia, Malaysia, dan Singapura.</p>\r\n', '', 'Minggu', '2019-03-22', '07:56:41', 'es-teler.jpg', 31, '', 'Y'),
(598, 40, 'admin', 'Laksa Betawi yang Menggugah Selera', '', '', 'laksa-betawi-yang-menggugah-selera', 'N', 'N', 'N', 'Makanan khas betawi yang satu ini memang sudah agak jarang bisa ditemui. Namun bukan berarti punah. Di beberapa lokasi tertentu, anda masih bisa menemukan Laksa betawi. Bagi anda yang belum mengetahui apa itu Laksa Betawi, Laksa betawi adalah Penganan berjenis mie yang diberi bumbu. Laksa Betawi memiliki kuah berwarna kekuningan. Campuran udang rebon yang ada dalam kuah laksa, membuat rasanya menjadi segar dan di padu aroma khas udang.<br />\r\n<br />\r\nSelain itu, Makanan ini menggunakan Ketupat. Isi dari ketupat laksa betawi adalah irisan ketupat, telur, kemangi, tauge. kucai, bihun, perkedel, dan bawang goreng, serta kuahnya yang kental dengan taburan udang kering. Namun ada yang bilang bahwa Bihun dan perkedel hanya variasi tambahan dari laksa, bukan bawaan asli nya.<br />\r\n<br />\r\nCara lain untuk menikmati Laksa adalah menggunakan Semur betawi. Paduan rasa manis pada semur, tentu nya akan menambah rasa gurih di lidah. Namun hal ini bukan suatu keharusan. Tergantung selera masing-masing.<br />\r\n<br />\r\nCara mengolah Laksa Betawi<br />\r\n<br />\r\nMengolah laksa betawi susah-susah gampang. Bumbunya sederhana, terdiri dari kunyit, lengkuas, sereh, daun salam, daun jeruk, jahe, jintan, lada, temu kunci, serta dua kilogram udang rebon. Semua bumbu dihaluskan dengan lumpang lalu ditumis dan dicampur dengan santan cair.<br />\r\n<br />\r\nBumbu baru ditambahkan dengan santan kental. Proses ini dilakukan sampai tiga kali. Sejak dahulu hingga sekarang. Dengan proses yang agak rumit, tidak aneh kalau makanan ini jadi agak langka. Orang maunya langsung jadi tanpa memikirkan cara pembuatannya.<br />\r\n<br />\r\n', '', 'Kamis', '2019-02-25', '02:13:20', '', 14, 'kuliner', 'Y'),
(599, 40, 'admin', 'Semur, Aslinya dari Belanda', '', '', 'semur-aslinya-dari-belanda', 'N', 'N', 'N', 'Jangan merasa tidak terima jika dikatakan bahwa semur adalah hidangan Belanda. Sebab, di balik semur memang ada riwayat nusantara, bukti bagaimana silang budaya terjadi antara Indonesia dan Eropa, demikian menurut ahli kajian budaya Dr phil Lily Tjahjandari.<br />\r\n<br />\r\nPercaya tidak, Indonesia ternyata sudah meramu berbagai makanan dengan berbagai jenis rempah sejak abad pertama. Hal ini terjadi karena posisi Indonesia terletak di tengah jalur perdagangan dunia.<br />\r\n<br />\r\nKekayaan rempah Indonesia ini lalu mengundang berbagai bangsa untuk datang dan mengeksplorasi citarasa rempah. Diawali dengan kedatangan pedagang India pada abad 1-7, dan diikuti oleh pedagang China dan Arab. Perdagangan rempah kemudian membuka jalan ekspansi masif bangsa Eropa pada abad 16-19. Mereka menjelajah wilayah Indonesia untuk menemukan rempah-rempah, dan memulai terjadinya interaksi budaya kuliner antara Eropa dan Indonesia.<br />\r\n<br />\r\n&quot;Sebelumnya, penguat rasa makanan Eropa hanya terbatas pada tomat, ceri, bawang bombai, madu, atau wine,&quot; ungkap Lily, yang juga Manajer Penelitian dan Pengabdian Masyarakat Fakultas Ilmu Pengetahuan Budaya Universitas Indonesia. Orang Eropa lalu mendapatkan inspirasi untuk menggunakan berbagai rempah Asia untuk mengolah makanan Eropa.<br />\r\n<br />\r\nNah, ketika keahlian meramu bumbu khas Indonesia seperti lada, kayu manis, jahe, kemiri, cengkeh itu berpadu dengan teknik memasak bangsa Eropa, hadirlah hidangan unik seperti semur. Semur sendiri asalnya dari bahasa Belanda, smoor, yang artinya masakan daging yang direbus dengan tomat dan bawang secara perlahan.<br />\r\n<br />\r\n&quot;Ketika itu, orang Eropa yang bisa memasak dengan rempah-rempah dianggap sebagai kalangan aristokrat. Hidangan semur ini diterima dengan baik oleh lidah kaum priyayi Belanda, dan menjadi menu rijsttafel,&quot; kata Lily, saat talkshow bertema &quot;Semur, Turun-Temurun Menghangatkan Hati Keluarga Indonesia&quot; di Restoran Warung Daun, Kebayoran Baru, Jakarta Selatan, beberapa waktu lalu.<br />\r\n<br />\r\nRijstaffel merupakan konsep penyajian makanan lengkap ala restoran di Eropa, yang diawali dengan hidangan pembuka, hidangan utama, dan hidangan penutup. Namun hidangan yang disajikan bukan hidangan Eropa, melainkan menu Indonesia dimana nasi sebagai makanan utama dinikmati dengan lauk-pauk.<br />\r\n<br />\r\nSebenarnya, semur itu sendiri bukan makanan asli Belanda. Semur, menurut pakar kuliner Chef Ragil Imam Wibowo, merupakan persepsi bangsa Indonesia dari hidangan tradisional Belanda yang bernama hachee. Hachee merupakan hidangan daging rebus yang dipotong-potong, kadang-kadang juga menggunakan ikan, burung, dan sayuran. Bumbu dasarnya adalah bawang dan rasa asam (biasanya didapat dari cuka atau wine). Cengkeh dan daun salam lalu ditambahkan ke dalam kuah kaldunya yang kental.<br />\r\n<br />\r\nHachee kelak menjadi trigger untuk hidangan semur. Dalam versi Indonesia, semur ini menggunakan bumbu bawang merah, bawang putih, dengan tambahan berbagai rempah lain untuk menguatkan rasa, seperti ketumbar, pala, lada, cengkeh, dan kayu manis. Semur lalu menjadi istimewa karena menggunakan kecap sebagai penguat rasa manis yang legit, dan memberi warna coklat yang menggugah selera.<br />\r\n<br />\r\n&quot;Kecap itu idenya ketika orang Indonesia berimajinasi bagaimana membuat warna coklatnya. Pada hachee, warna coklat didapat dari brownstock, yaitu kaldu dari tulang sapi yang dibakar. Orang Indonesia lalu mencari, apa yang kira-kira bisa memberi warna dan rasa yang diinginkan,&quot; ujar Chef Ragil dalam acara yang sama.<br />\r\n<br />\r\nSemur kemudian melekat menjadi tradisi bangsa Indonesia., dan menjadi menu favorit setiap keluarga Indonesia. Menu ini hadir dengan inovasi bumbu dan topping yang beraneka ragam. Jika awalnya semur identik dengan daging sapi, Anda bisa menemukan semur daging kambing, ayam, telur, tahu, tempe, terong, dan bahkan ikan. Dan semuanya lezat!<br />\r\n<br />\r\n<br />\r\n', '', 'Minggu', '2019-02-11', '02:17:45', '', 19, 'kuliner', 'Y'),
(608, 19, 'admin', 'Bos Amazon Temukan Mesin Apollo 11', '', 'http://www.youtube.com/embed/mxMiN9iYlkQ', 'bos-amazon-temukan-mesin-apollo-11', 'N', 'N', 'N', '<p>Jeff Bezos, pendiri retailer online terbesar Amazon, mengumumkan bahwa ia dan timnya telah menemukan 5 mesin Apollo 11 yang jatuh pada tahun 1969 di Samudera Atlantik.<br />\r\n<br />\r\nKini, Jeff Bezos merencanakan untuk mengangkat satu atau dua dari mesin tersebut ke permukaan untuk kemudian dipamerkan di Museum Penerbangan di kampung halamannya, Seattle. Sebelumnya, Jeff Bezos akan meminta izin terlebih dahulu kepada Nasa selaku pemilik dari Apollo 11.<br />\r\n<br />\r\nSeluruh biaya yang diperlukan dalam ekspedisi dan pengangkatan mesin Apollo 11 akan ditanggung oleh Jeff Bezos sendiri. Sementara itu, Nasa menyatakan akan menunggu kabar lebih lanjut tentang penemuan oleh tim Jeff Bezos tersebut.<br />\r\n<br />\r\nMesin berkekuatan 32 juta tenaga kuda (hp) yang mampu membakar 6.000 pon kerosin dan oksigen cair per detik tersebut telah membawa Apollo 11 mendarat dengan sukses di bulan pada tahun 1969. Namun dalam perjalanan kembali ke bumi, mesin tersebut terbakar hingga terjatuh di Samudera Atlantik dan belum ditemukan hingga akhirnya Jeff Bezos mengumumkan berita ini.</p>\r\n', '', 'Minggu', '2018-04-22', '07:45:00', 'bos_amazone.jpg', 675, 'internasional', 'Y'),
(611, 21, 'admin', 'Duel Swiss di Semifinal Cincinnati Masters', 'Tenis Cincinnati Masters 2012', '', 'duel-swiss-di-semifinal-cincinnati-masters', 'N', 'N', 'N', 'Cincinnati - Dua petenis asal Swiss berhasil mengempaskan lawan-lawannya dan akan bertemu di semifinal Cincinnati Masters. Stanislas Wawrinka sukses membungkam petenis Kanada, Milos Raonic, sementara Roger Federer berhasil menumbangkan Mardy Fish.<br />\r\n&nbsp;<br />\r\nWawrinka mengalahkan Raonic dengan pertarungan sengit. Bahkan sebelumnya, petenis 27 tahun tersebut sempat tertinggal di set pertama. Pada set awal tersebut, Wawrinka takluk 2-6.<br />\r\n&nbsp;<br />\r\nNamun pada set kedua, Wawrinka mampu mengendalikan permainan, dia mampu mengembalikan dengan baik pukulan keras dari Raonic. Hingga akhirnya sukses merebut set kedua ini dengan skor 7-6.<br />\r\n&nbsp;<br />\r\nSetelah berhasil menyamakan keadaan, Wawrinka terus mendominasi dan mengakhiri perlawanan Raonic dengan skor akhir di set ketiga 6-4. &ldquo;Saya bermain hebat setelah menjalani dua bulan yang menyulitkan,&rdquo; ujar Wawrinka, seperti disitat Yahoo Sports, Sabtu (18/8/2012).<br />\r\n&nbsp;<br />\r\nNantinya di babak semifinal, Wawrinka bakal menghadapi rekan senegaranya, Federer yang menghentikan langkah Fish dengan skor 6-3 7-6. Dengan gugurnya Fish atas Federer, maka tak ada satu pun petenis Amerika yang berpeluang menjadi juara di kandang sendiri.<br />\r\n', 'Stanislas Wawrinka.\r\n', 'Minggu', '2012-08-19', '05:22:25', '', 16, 'olahraga', 'Y'),
(612, 19, 'admin', 'Google Pakai Motorola untuk Gugat Apple', '', '', 'google-pakai-motorola-untuk-gugat-apple', 'N', 'N', 'N', 'Jakarta - Perang gugatan antara para produsen smartphone belum menunjukkan tanda berakhir. Yang terbaru, Motorola menuding Apple melanggar tujuh patennya.<br />\r\n<br />\r\nVendor ponsel yang diakuisisi Google pun meminta pihak berwewenang untuk memblokir impor iPhone, iPad dan komputer Mac. Perangkat-perangkat tersebut diminta dilarang beredar di Amerika Serikat.<br />\r\n<br />\r\nKomplain Motorola didaftarkan ke lembaga International Trade Comission (ITC). Paten yang dipermasalahkan terkait location reminders, notifikasi email, pemutar video dan sebagainya.<br />\r\n<br />\r\n&quot;Kami ingin menyelesaikan persoalan paten tersebut, namun ketidakmauan Apple untuk melisensinya membuat kami tidak punya pilihan selain mempertahankan inovasi kami,&quot; demikian pernyataan Motorola yang TerasJakarta kutip dari DigitalTrends, Minggu (19/8/2012).<br />\r\n<br />\r\nHal ini dinilai sebagai perang antara Google dan Apple, dengan Google menggunakan paten Motorola untuk menyerang Apple. Terlebih lagi, Apple banyak memperkarakan vendor Android seperti Samsung dan juga Motorola sendiri.\r\n', '', 'Senin', '2012-08-20', '04:49:48', '', 15, 'teknologi', 'Y'),
(614, 22, 'admin', 'Zuckerberg akan Berhenti Pimpin Facebook?', 'Buntut Anjloknya di Bursa Saham', '', 'zuckerberg-akan-berhenti-pimpin-facebook', 'N', 'N', 'Y', '<p>Jakarta - Harga saham Facebook terus terjun bebas. Rekor harga terendah terjadi baru-baru ini senilai USD 19,06 dari harga awalnya USD 38. Buruknya performa saham Facebook ini memunculkan spekulasi bahwa Mark Zuckerberg tidak seharusnya terus memimpin Facebook sebagai CEO.<br />\r\n<br />\r\nSeorang analis industri menilai bahwa Zuckerberg yang dikenal dengan dandanan kasualnya bisa fokus pada urusan teknologi di Facebook. Sedangkan bisnis Facebook dipegang oleh orang yang benar-benar kompeten.<br />\r\n<br />\r\n&quot;Saya pikir ada rasa kurang percaya terhadap kemampuannya untuk menjalankan korporasi,&quot; kata Andre Stoltman, pengacara sekuritas di New York yang TerasJakarta kutip dari ComputerWorld, Minggu (19/8/2012).<br />\r\n<br />\r\n&quot;Zuckerberg, dipandang dari sisi manapun memang adalah orang yang jenius. Akan tetapi Anda seharusnya memiliki chief executive yang dewasa dan lebih berpengalaman dalam menjalankan perusahaan tersebut,&quot; imbuhnya.<br />\r\n<br />\r\nNamun demikian, Zuckerberg tetap punya dukungan untuk terus memimpin Facebook. Patrik Moorhead, analis di Moor Insights &amp; Strategy, menyatakan masih terlalu awal untuk membicarakan kemungkinan pergantian CEO Facebook.<br />\r\n<br />\r\n&quot;Dia telah menyediakan visi yang diperlukan Facebook untuk menjadi sebesar sekarang dan mereka tetap akan membutuhkan dia sebagai pemandu. Zuckerberg harus tetap ada di posisi top sekarang,&quot; kata Patrik.<br />\r\n<br />\r\nKarten Weide selaku analis di IDC menyatakan pula bahwa Zuckerberg tidak akan memberi kesempatan pada orang lain untuk memimpin perusahaan yang didirikannya itu.<br />\r\n<br />\r\n&quot;Mark Zuckerberg tidak akan lengser dalam waktu dekat. Dia adalah pria dalam sebuah misi, yaitu ingin memaksa dunia, jika perlu, agar lebih terbuka. Dan sebagai pria dalam sebuah misi, dia tidak mengutamakan soal bisnis,&quot; demikian pendapat Karten.</p>\r\n', 'Mark Zuckerberg', 'Minggu', '2018-04-22', '07:52:08', 'facebook-mark-zuckerberg.jpg', 39, 'teknologi', 'Y'),
(610, 21, 'admin', 'Max Biaggi Bantah ke Ducati Musim Depan ', '', '', 'max-biaggi-bantah-ke-ducati-musim-depan-', 'N', 'N', 'Y', 'Roma- Mantan pembalap MotoGP Max Biaggi tengah menikmati kariernya di World Super Bike (WSBK). Terlebih, pencapaiannya di musim ini cukup membuatnya bahagia.<br />\r\n<br />\r\nBiaggi masih memimpin di puncak klasemen WSBK musim ini dengan 272 poin. Hasil ini membuatnya semakin bersemangat untuk menorehkan lagi prestasi juara seperti yang ditorehkannya pada 2010.<br />\r\n<br />\r\nSituasi seperti itu, semakin membuat The Roman Emperor, julukan Biaggi, nyaman membela timnya Aprilia. Makanya, saat disinggung masalah isu kepindahannya ke Ducati musim depan, Biaggi buru-buru membantah. Dia menegaskan ingin mengakhiri kariernya bersama Aprilia.<br />\r\n<br />\r\nSetelah empat tahun melanglang buana di ajang MotoGP dengan prestasi terbaik menjadi runner-up pada musim pertamanya bersama Yamaha, Biaggi memutuskan hengkang pada 2005. Dua tahun berikutnya, pembalap kelahiran Juni 1971 ini terjun ke arena WSBK.<br />\r\n<br />\r\nSebelum berlabuh di Aprilia, Biaggi lebih dulu bergabung dengan Suzuki di tahun pertamanya, dan setahun berikutnya ke Ducati sebelum akhirnya melompat ke Aprilia pada 2009.\r\n', 'Max Biaggi.\r\n', 'Minggu', '2012-08-19', '05:13:20', '', 18, 'olahraga', 'Y'),
(615, 21, 'admin', 'Foto Panas Beredar Lagi, Nikita Mirzani Syok', '', '', 'foto-panas-beredar-lagi-nikita-mirzani-syok', 'N', 'N', 'Y', '<p>Jakarta - Nama Nikita Mirzani memang sedang naik daun belakangan ini. Dengan keberaniannya dalam menampilkan lekuk tubuhnya di beberapa film yang diperaninya, dirinya pun sempat didaulat dengan predikat sebagai salah satu artis hot tanah air.<br />\r\n<br />\r\nNamun, keberaniannya tersebut ternyata harus seiring dengan pil pahit yang ditelannya. Beberapa waktu lalu, foto topless dirinya sempat beredar luas di dunia maya. Dan kini, kembali foto-foto yang memperlihatkan kenekatannya di depan kamera dipertontonkan.<br />\r\n<br />\r\nDalam foto-foto ini, Nikita hanya menutupi payudaranya dengan jari ataupun rambutnya, tanpa mengenakan sehelai baju pun. Saat dikonfirmasi, Nikita mengaku syok.<br />\r\n<br />\r\n&quot;Gue syok. Gak tahu mau ngomong apa lagi. Itu foto emang udah lama banget,&quot; tuturnya, Rabu (15/8).<br />\r\n<br />\r\nArtis yang sempat mengisi program Kakek Kakek Narsis di Trans TV ini belum mau memberikan konfirmasi lebih. Dirinya masih mencari ketenangan atas musibah yang menimpanya untuk ke sekian kali.<br />\r\n<br />\r\n&quot;Gak bisa mikir. Mau ngomong apa. Kasih nafas dulu, kasih gue ketenangan. Ya Tuhan, ada aja musibah menimpa hidup gue. Pokoknya maaf gak bisa ngomong banyak,&quot; tukasnya.</p>\r\n', 'Nikita Mirzani ', 'Minggu', '2018-04-22', '07:59:50', 'nikita-mirzani.jpg', 17, 'selebritis,hiburan', 'Y'),
(613, 19, 'admin', 'Lenovo Yakin Kalahkan Microsoft Surface', '', '', 'lenovo-yakin-kalahkan-microsoft-surface', 'N', 'N', 'N', 'Jakarta - Microsoft akan menjual tablet produksi sendiri yang bernama Surface. Beberapa mitra produsen PC kabarnya tak senang dengan kehadiran Surface yang dianggap sebagai pesaing. Namun Lenovo percaya diri tablet buatannya akan mampu mengalahkan Surface.<br />\r\n<br />\r\n&quot;Microsoft memang kuat di software, namun saya tidak percaya mereka bisa menyediakan hardware terbaik di dunia. Sedangkan Lenovo bisa,&quot; klaim CEO Lenovo, Yang Yuanqing.<br />\r\n<br />\r\n&quot;Meskipun kami tidak suka Microsoft membuat hardware, namun meskipun mereka memulai bisnis hardware ini, kami pikir itu hanya berarti satu kompetitor bertambah lagi,&quot; imbuhnya, yang TerasJakarta kutip dari ComputerWorld, Minggu (19/8/2012).<br />\r\n<br />\r\nSebelumnya, kehadiran Microsoft Surface mendapat perlawanan dari Acer. Vendor komputer asal Taiwan itu menyatakan bahwa kedatangan Surface akan berdampak negatif bagi ekosistem industri PC.<br />\r\n<br />\r\nDi masa lalu, Microsoft memang selalu bermitra dengan vendor PC untuk membuat komputer berbasis sistem operasi Windows. Namun untuk Windows 8, mereka memutuskan membuat tablet PC sendiri.<br />\r\n<br />\r\nBahkan, ada kabar yang beredar bahwa Surface akan dijual hanya USD 199. Jika benar, bisa jadi Surface sukses besar mengingat harganya yang sangat terjangkau. Kabarnya, Surface akan dipasarkan sekitar bulan Oktober mendatang, bersamaan dengan perkenalan resmi OS Windows 8.\r\n', '', 'Senin', '2012-08-20', '04:53:44', '', 17, 'teknologi', 'Y'),
(617, 23, 'admin', '\"Expendables 2\" Impian Jean Claude Van Damme', '', 'http://www.youtube.com/embed/7rkdTcQLwZ4', 'expendables-2-impian-jean-claude-van-damme', 'N', 'N', 'N', 'Peran dalam Expendables 2 telah lama diinginkan oleh Jean-Claude Van Damme. Pasalnya aktor laga yang satu ini punya impian untuk bermain bersama Arnold Schwarzenegger, Sylvester Stallone dan Bruce Willis.<br />\r\n<br />\r\nVan Damme yang memerankan si jahat Jean Vilain dalam Expendables 2 mengungkap kepada PostMedia bahwa kesempatan yang didapat untuk bermain bersama kedua aktor idamannya itu sangatlah berharga.<br />\r\n<br />\r\n&quot;Aku selalu berharap untuk bisa membuat film bersama salah satu dari mereka. Kini aku bermain film bersama keduanya,&quot; ungkapnya. Ahli bela diri asal Belgia ini juga mengaku kagum dengan dedikasi Stallone dalam membuat film laga spektakuler ini (Expendables).<br />\r\n<br />\r\n&quot;Aku melihat pria dengan usia lebih dari 60 dan ia masih bisa menikmati apa yang ia lakukan. Aku bahagia kembali, ia (Stallone) membuatku cinta kepada film lagi,&quot; komentarnya.<br />\r\n<br />\r\nSeperti filmnya yang pertama, The Expendables 2 sudah pasti menyajikan baku hantam, adegan tembak-menembak yang intens, serta ledakan di mana-mana. Itulah alasan mengapa The Expendables 2 dibuat, supaya adrenalin penonton terpacu.\r\n', 'Jean-Claude Van Damme.\r\n', 'Senin', '2012-08-20', '05:47:30', '', 23, 'film,hiburan', 'Y'),
(616, 21, 'admin', 'Nyanyikan Anti Putin, Personel Pussy Riot Dibui', '', '', 'nyanyikan-anti-putin-personel-pussy-riot-dibui', 'N', 'N', 'N', '<p>Rusia - Pengadilan Rusia memvonis penjara dua tahun personel band Pussy Riot karena menyanyikan lagu anti Presiden Vladimir Putin.<br />\r\n<br />\r\nPengadilan menetapkan tiga anggota band itu bersalah melakukan &#39;hooliganisme&#39; dengan motivasi agama.<br />\r\n&nbsp;<br />\r\nHakim Marina Syrova mengatakan para anggota band &quot;secara berhati-hati merencanakan&quot; nyanyian mereka tanggal 21 Februari lalu di dalam katedral di Moskow. &quot;Tolokonnikova, Alyokhina dan Samutsevich melakukan &quot;hooliganisme&quot; -- dengan kata lain pelanggaran berat ketertiban umum,&quot; kata Syrova.<br />\r\n<br />\r\n&quot;Pengadilan menyatakan mereka bersalah. Pengadilan meraih putusan berdasarkan kesaksian terdakwa sendiri dan bukti lain,&quot; tambahnya.<br />\r\n<br />\r\nJaksa menuntut hukuman tiga tahun penjara atas tiga anggota band itu.<br />\r\n<br />\r\nPara pendukung band itu melakukan protes di sejumlah tempat di Moskow.&nbsp; Keamanan ketat pun diterapkan dan sejumlah jalan ditutup.<br />\r\n<br />\r\nPussy Riot mengecam kasus tersebut yang mereka katakan diorganisir Putin.<br />\r\n<br />\r\n<strong>Buat Marah Gereja</strong><br />\r\n<br />\r\nSejumah selebriti termasuk bintang pop Amerika, Madonna, menyerukan agar mereka dibebaskan.<br />\r\n<br />\r\nKetiga anggota band itu mengatakan &quot;doa punk&quot; mereka adalah tindak politik untuk memprotes gereja ortodoks Rusia yang mendukung Presiden Putin.<br />\r\n<br />\r\nDalam penampilan seronok mereka di dekat altar mereka meminta Bunda Maria untuk &quot;menggeser Putin&quot;.<br />\r\n<br />\r\nNyanyian mereka membuat marah gereja Ortodoks dan ketua gereka Kirill menyebutkan penampilan itu sama saja dengan penghujatan agama. Namun sejumlah warga Rusia menganggap kasus itu sebagai upaya pemerintah membungkam kritikan.</p>\r\n', 'Pussy Riot', 'Minggu', '2018-04-22', '07:58:55', 'anti_putin.jpg', 17, 'hiburan', 'Y'),
(619, 31, 'admin', '4 Alasan Kenapa Memaafkan Penting Bagi Kesehatan', '', '', '4-alasan-kenapa-memaafkan-penting-bagi-kesehatan', 'N', 'N', 'N', 'Jakarta - Memaafkan bukan berarti melupakan, tapi memberi kesempatan kepada diri sendiri untuk menghapus rasa kesal dan dendam terhadap orang lain. Dengan demikian, rasa marah dan tekanan yang mengganggu emosi pun dapat diredakan. Akibatnya, pikiran jadi lebih tenang dan jauh dari stres. Sejatinya, tak hanya itu saja manfaat kesehatan dari memaafkan orang lain.<br />\r\n<br />\r\nSecara ilmiah, memaafkan kesalahan orang lain dapat bermanfaat baik bagi kesehatan fisik maupun mental. Secara sosial, memaafkan orang lain merupakan wujud kebesaran jiwa dan perilaku yang dianggap baik. Ada banyak manfaat kesehatan dari memaafkan orang lain seperti dilansir Mayo Clinic dan Telegraph, Minggu (19/8/2012) antara lain:<br />\r\n<br />\r\n<strong>1. Terhindar dari Penyakit Tekanan Darah Tinggi</strong><br />\r\nPara peneliti dari University of California, San Diego menemukan bahwa orang-orang yang bisa melepaskan kemarahannya dan memaafkan kesalahan orang lain cenderung lebih rendah risikonya mengalami lonjakan tekanan darah.<br />\r\n<br />\r\nPeneliti meminta lebih dari 200 relawan untuk memikirkan saat temannya menyinggung perasaan. Setengah dari kelompok diperintahkan untuk berpikir mengapa hal tersebut bisa membuatnya marah, sedangkan yang lainnya didorong untuk memaafkan kesalahan tersebut. Peneliti menemukan bahwa orang yang marah mengalami peningkatan tekanan darah lebih besar dibanding orang yang pemaaf.<br />\r\n<strong><br />\r\n2. Terhindar dari Risiko Penyalahgunaan Obat dan Alkohol</strong><br />\r\nSejumlah penelitian telah membuktikan bahwa rasa benci, dendam dan permusuhan dapat memicu tekanan darah tinggi. Stres muncul ketika perasaan kecewa atau tersakiti. Memaafkan adalah sebuah proses perdamaian dengan diri sendiri. Seseorang yang memberi maaf justru akan merasa lebih rileks untuk menerima kondisinya.<br />\r\n<br />\r\nDengan kondisi mental yang lebih rileks, seseorang juga akan terhindar dari risiko penyalahgunaan alkohol dan obat terlarang. Risiko tersebut umumnya dihadapi oleh para pendendam yang membutuhkan jalan pintas untuk lepas dari beban emosi negatifnya.<br />\r\n<br />\r\n<strong>3. Menurunkan Risiko Serangan Jantung</strong><br />\r\nPara ilmuwan membuktikan bahwa permintaan maaf yang ditujukan pada seseorang bisa meningkatkan kesehatan jantungnya. Orang yang mengalami perlakuan kasar akan mengalami peningkatan tekanan darah yang dapat memicu serangan jantung atau stroke. Namun ketika mendengarkan kata &#39;maaf&#39;, tekanan darah akan menurun kembali.<br />\r\n<br />\r\nTekanan darah yang diukur dalam penelitian adalah tekanan darah diastolik, yaitu tekanan dalam darah antara detak jantung atau tekanan dalam arteri-arteri ketika jantung istirahat setelah kontraksi. Jika terlalu tinggi atau terjadi untuk waktu yang lama, dapat meningkatkan kemungkinan stroke atau serangan jantung.<br />\r\n<br />\r\n<strong>4. Jauh dari Stres dan Depresi</strong><br />\r\nSebuah penelitian yang dimuat Personality and Social Psychology Bulletin menemukan bahwa memafkan secara positif dapat mengurangi gejala depresi. Tak hanya itu, memaafkan akan mengembalikan pikiran positif, dan memperbaiki hubungan. Selain itu, memaafkan juga berkaitan dengan perilaku positif lain seperti sifat dermawan, murah hati dan tidak mudah tertekan.<br />\r\n', '', 'Sabtu', '2012-11-17', '08:14:51', '', 23, 'kesehatan', 'Y'),
(625, 41, 'admin', 'Effendi Ghazali: Putaran Kedua Pilkada DKI Ketat', '', '', 'effendi-ghazali-putaran-kedua-pilkada-dki-ketat', 'N', 'Y', 'N', '<p>Jakata - Pengamat politik dari Universitas Indonesia, Effendi Ghazali, mengungkapkan pada putaran kedua pemilihan kepala daerah (Pilkada) pada September mendatang, akan terjadi persaingan ketat antara pasangan Joko Widodo-Basuki T Purnaka dengan pasangan Fauzi Bowo-Nachrowi Ramli.<br />\r\n<br />\r\n&ldquo;Kami telah mengadakan survey internal, dan hasilnya, akan terjadi persaingan ketat antara Pak Jokowi dan Pak Fauzi Bowo. Tidak seperti hasil sebelumnya yang memang jauh jarak perolehannya,&rdquo; ujarnya ditemui di acara open house yang diadakan Gubernur Fauzi Bowo, di rumah dinasnya Jalan Taman Suropati No. 7, Jakarta Pusat, Minggu (19/08/2012).<br />\r\n<br />\r\nMeski demikian, Effendi urung menyebutkan nilai dari survey yang dilakukan oleh pihaknya, mengingat masih ada margin eror yang besar dari 450 responden yang dilakukan survey. &ldquo;Siapa yang lebih unggul, belum bisa saya kasih tahu sekarang, karena survey kami agak besar margin errornya,&rdquo; jelasnya.<br />\r\n<br />\r\nMenyinggung maraknya penggunaan isu SARA yang terjadi selama bulan ramadhan kemarin, Effendi angkat bicara. Menurutnya, penggunaan isu SARA yang dilakukan oleh pihak-pihak tertentu sudah menimbulkan dampak yang besar, baik di kalangan masyarakat bawah maupun untuk calon pasangan. &ldquo;Itu jelas ada dampaknya. Bahkan pengaruhnya cukup besar untuk pilkada putaran kedua nanti,&rdquo; tandasnya.</p>\r\n', 'Joko Widodo (kiri), Fauzi Bowo (kanan)', 'Minggu', '2018-04-22', '07:41:04', 'efendi_gazali.jpg', 0, 'metropolitan', 'Y'),
(624, 41, 'admin', 'Tuntut THR, Ratusan Pekerja Transjakarta Mogok', '', '', 'tuntut-thr-ratusan-pekerja-transjakarta-mogok', 'N', 'N', 'N', '<p>Jakarta - Ratusan pekerja bus koridor I (Blok M-Kota) dan X (Cililitan-Tanjung Priok) mogok bekerja. pramudi, teknisi, dan petugas keamanan menuntut kenaikan upah dan pembayaran Tunjangan Hari Raya (THR). Mereka di depan Pool Pinang Ranti, Jalan Raya Pondok Gede, Pinang Ranti, Makassar, Jakarta Timur, sambil berorasi membentangkan spanduk bertemakan agar PT Jakarta Expres Trans (JET) membayar THR.<br />\r\n<br />\r\nMenurut&nbsp; pramudi Bus TransJakarta Koridor I, Maya, pihaknya terpaksa melakukan mogok operasi karena pihak perusahaan tidak membayarkan kewajibannya memberikan THR.<br />\r\n<br />\r\n&quot;Sementara, anak-anak sudah menunggu di rumah ingin jalan-jalan ke mal untuk beli baju Lebaran,&quot; ujarnya kepada wartawan, Senin (13/08/2012).<br />\r\n<br />\r\nSedangkan Abdul Chakim berharap, selain memberikan THR perusahaan PT JET juga menaikan upah. Pasalnya, untuk Pramudi yang di bawah manajeman PT JET upahnya bervariasi mulai dari Rp2,4 juta-Rp2,8 juta. Sedangkan pramudi yang berada di bawah manajemen gajinya mencapai Rp5,3 juta.<br />\r\n<br />\r\n&quot;THR kami segera terbayar dan gaji kami dinaikkan sejajar dengan pramudi dari koridor lainnya,&quot; imbuhnya.<br />\r\n<br />\r\nHingga bubar aksi berjalan berdamai, pihak perusahaan berjanji akan membayarka THR dan menaikan upah para pekerja bus Transjakarta.</p>\r\n', '', 'Minggu', '2018-04-22', '07:42:01', 'bus-transjakarta.jpg', 0, 'metropolitan', 'Y'),
(622, 31, 'admin', 'Orang Beriman Kondisi Fisik n Mentalnya Lebih Sehat', '', '', 'orang-beriman-kondisi-fisik-n-mentalnya-lebih-sehat', 'N', 'N', 'N', '<p>Orang yang beriman disayang Tuhan, mungkin itulah sebabnya kemudian orang yang beriman juga memiliki kondisi kesehatan yang baik. Nyatanya, berbagai penelitian menunjukkan bahwa orang-orang yang memiliki keyakinan dan keimanan yang teguh juga memiliki kondisi fisik yang lebih prima.<br /> <br /> \"Keyakinan terhadap agama bisa mengurangi stres, depresi, dan meningkatkan kualitas hidup,\" kata Dr Harold G. Koenig, profesor psikiatri dan ilmu perilaku di Duke University Medical Center seperti dilansir Medpagetoday.com, Minggu (19/8/2012).<br /> <br /> Data sebuah penelitian yang dimuat American Journal of Health Promotion tahun 2005 menyimpulkan bahwa orang yang banyak berdoa lebih banyak mendapat manfaat kesehatan dengan cara menerapkan perilaku yang sehat, menjalankan antisipasi terhadap penyakit dan lebih puas terhadap pelayanan kesehatan.<br /> <br /> Sebuah penelitian tahun 2006 yang dimuat British Medical Journal juga menemukan bahwa kehadiran dalam sebuah acara keagamaan ternyata berkaitan dengan penurunan risiko penyakit menular.<br /> <br /> Menurut Koenig, adanya keyakinan beragama dan kegiatan spiritual berhubungan dengan risiko penyakit atau gangguan kesehatan yang lebih rendah, misalnya stres, penyakit kardiovaskular, tekanan darah, reaktivitas kardiovaskular, gangguan metabolisme serta dapat menjamin keberhasilan operasi jantung. Namun di sisi lain, Koenig juga memperingatkan bahwa cara kerja Tuhan ini tidak dapat diukur dengan cara dan metode apapun.<br /> <br /> \"Saya percaya bahwa doa efektif, tapi tidak berfungsi secara ilmiah dan tidak dapat diprediksi. Tidak ada alasan ilmiah atau teologis atas setiap efek dari keyakinan yang dapat dipelajari atau didokumentasi, seolah-olah Tuhan adalah bagian dari alam semesta yang dapat diprediksi. Ilmu pengetahuan tidak dirancang untuk membuktikan hal-hal yang supranatural,\" kata Koenig.<br /> <br /> Selain itu, keyakinan terhadap agama juga telah dikaitkan dengan umur panjang, perkembangan penyakit kognitif yang lebih lambat dan penuaan yang sehat. Senada dengan Koenig, dr Robert A. Hummer, profesor sosiologi di University of Texas di Austin yang berfokus pada hubungan antara agama dan rendahnya risiko kematian juga memiliki pendapat yang sama.<br /> <br /> Hummer merujuk sebuah penelitian yang melacak beberapa orang berusia 51 - 61 tahun selama 8 tahun untuk mendokumentasikan tingkat ketahanan hidupnya. Penelitian tersebut menemukan bahwa peserta yang tidak menghadiri acara keagamaan sama sekali memiliki kemungkinan 64 persen lebih tinggi mengalami kematian dibandingkan orang yang sering beribadah.</p>', '', 'Senin', '2012-08-20', '08:51:08', '', 27, 'kesehatan', 'Y'),
(644, 41, 'admin', 'Banjir Jakarta Paling banyak Dicari di Google', 'Jakarta Darurat Banjir', '', 'banjir-jakarta-paling-banyak-dicari-di-google', 'N', 'Y', 'N', '<p>Jakarta - Banjir yang mengguyur Jakarta beberapa hari lalu membuat sejumlah lokasi di ibukota banjir. Internet, jadi media yang digunakan warga Jakarta untuk mencari tahu informasi terkini seputar banjir. &nbsp;</p>\r\n\r\n<p>Dalam laporan Pencarian Terhangat Google Indonesia sepanjang 11 - 17 Januari 2013, kata kunci &quot;Banjir di Jakarta&quot; adalah yang paling banyak dimasukkan dalam mesin pencari Google.</p>\r\n\r\n<p>Tak hanya mesin pencari, beberapa platform milik Google juga digunakan untuk memberi informasi seputar banjir. Ada Google Crisis Response, yang menyajikan informasi lokasi-lokasi banjir di Jakarta. Bahkan, layanan ini juga memperlihatkan kondisi lalu lintas yang macet akibat banjir.</p>\r\n\r\n<p>Di dalam Google Crisis Response juga terdapat beberapa nomor telepon penting dari lembaga pemerintah DKI Jakarta maupun swadaya masyarakat, yang dapat dihubungi oleh warga untuk mendapat bantuan dan evakuasi.</p>\r\n\r\n<p>Selain layanan Google, jejaring sosial Twitter juga banyak digunakan untuk mencari informasi terkini. Beberapa akun Twitter yang memberi informasi banjir antara lain @TMCPoldaMetro dan @LewatMana.</p>\r\n\r\n<p>Situs web pemberi informasi lalu lintas LewatMana.com juga laris dikunjungi dalam sepekan ini. LewatMana memperlihatkan kondisi lalu lintas dan gambar dari CCTV. Ia menduduki peringkat 10 Pencarian Terhangat Google Indonesia pada 11 - 17 Januari 2013.</p>\r\n\r\n<p>Dalam sepekan ini, warga juga ingin tahu soal perkiraan cuaca dengan memasukkan kata kunci BMKG di mesin pencari Google. BMKG (Badan Meteorologi Klimatologi dan Geofisika) masuk ke posisi 9 sebagai topik yang paling dicari di Google Indonesia pekan ini. (Sumber: kompas.com)</p>\r\n', '', 'Minggu', '2018-04-22', '07:40:05', 'anis_mengatasi_banjir.jpg', 0, 'nasional', 'Y'),
(645, 39, 'admin', 'Korban dan Pelaku Pemerkosaan parah', 'Seleksi Calon Hakim Agung', '', 'korban-dan-pelaku-pemerkosaan-parah', 'N', 'N', 'Y', '<p>Calon hakim agung Muhammad Daming Sanusi menyatakan, hukuman mati tidak layak diberlakukan bagi pelaku pemerkosaan. Penjelasannya soal ini mengundang tawa sejumlah anggota Komisi III saat berlangsung fit and proper test hakim agung di Komisi III DPR pada Senin (14/1/2013) ini.</p>\r\n\r\n<p>&quot;Bagaimana menurut Anda, apabila kasus perkosaan ini dibuat menjadi hukuman mati?&quot; tanya anggota Komisi III dari Fraksi PAN, Andi Azhar, ketika itu kepada Daming.</p>\r\n\r\n<p>Daming menjawab, &quot;Yang diperkosa dengan yang memerkosa ini sama-sama menikmati. Jadi, harus pikir-pikir terhadap hukuman mati.&quot;</p>\r\n\r\n<p>Jawaban Daming ini pun langsung mengundang tawa, tetapi tidak sedikit yang mencibir pernyataannya. Dijumpai seusai menjalani fit and proper test, Daming berdalih bahwa pernyataannya itu hanya untuk mencairkan suasana.</p>\r\n\r\n<p>&quot;Kita tadi terlalu tegang, jadi supaya tidak terlalu tegang,&quot; imbuhnya.</p>\r\n\r\n<p>Menurut Daming, hukuman mati harus dipertimbangkan baik-baik. Ia beralasan, dirinya belum memberikan jawaban tegas apakah ia mendukung atau tidak penerapan hukuman mati bagi pelaku pemerkosaan. &quot;Tentu kita harus pertimbangkan baik-baik kasus tertentu, seperti narkoba, korupsi, saya setuju. Tapi untuk kasus pemerkosan, harus dipertimbangkan dulu. Tadi saya belum memberikan jawaban yang tegas,&quot; kata Daming.</p>\r\n\r\n<p>Menanggapi pernyataan itu, anggota Komisi III lain dari Fraksi Partai Demokrat, Himmatul Aliya Setiawati, menilai candaan Daming sangat tidak pantas.</p>\r\n\r\n<p>&quot;Saya kira candaannya tidak pas. Saya setuju ada hukuman mati ya,&quot; ucap Aliya.</p>\r\n\r\n<p>Meski menganggap tak pantas, ia menilai jawaban Daming sudah memenuhi kriteria yang diharapkan dari seorang hakim agung. &quot;Dari Fraksi Gerindra menyatakan tidak akan memilih, tapi kalau saya sih soal memilih kita lihat nilai-nilai keseluruhannya,&quot; tutur Aliya. (Sumber: kompas.com</p>\r\n', '', 'Minggu', '2018-06-03', '15:37:13', 'perkosaan.jpg', 1, 'hukum', 'Y'),
(602, 41, 'admin', 'La Nyalla Kembalikan Riedl Jadi Pelatih Timnas', '', '', 'la-nyalla-kembalikan-riedl-jadi-pelatih-timnas', 'Y', 'N', 'N', '<p>Jakarta - Jakarta - Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.<br />\r\n<br />\r\nPria asal Austria itu sebelumnya pernah menukangi Timnas, namun dipecat pada 13 Juli 2011 akibat kisruh ditubuh PSSI. Dengan penunjukan itu, berarti Riedl akan kembali jadi peramu permainan skuad &#39;Pasukan Garuda&#39; jelang Piala AFF di Malaysia, November mendatang.<br />\r\n<br />\r\nMenurut Acting Sekjen PSSI Tigor Shalom Boboy,&nbsp; Riedl ditunjuk oleh Direktur Teknik Timnas Benny Dollo yang sebelumnya diberi mandat oleh PSSI&nbsp; Rabu (8/8/2012) lalu.<br />\r\n<br />\r\n&quot;Benny Dollo telah memberikan rekomendasinya terkait posisi pelatih kepala tim nasional senior kepada Exco PSSI melalui Ketua Umum La Nyalla Mahmud Mattalitti. Posisi pelatih kepala tim nasional senior yg direkomendasikan oleh Benny Dollo selaku Direktur Teknik adalah Alfred Riedl,&quot; ujar Tigor melalui rilis yang diterima INILAH.COM, Kamis (16/8/2012).<br />\r\n<br />\r\nTigor mengungkapkan bahwa Riedl sudah menyatakan kesediaannya terhadap penunjukannya sebagai pelatih kepala tim nasional senior. Pria 62 tahun itu akan&nbsp; tiba di Indonesia pada akhir Agustus 2012.<br />\r\n<br />\r\nSetelah itu, Riedl akan langsung menyusun nama-nama siapa saja yang akan masuk dalam tim besutannya.<br />\r\n<br />\r\n&quot;Susunan Managemen dan Official serta pemain Tim Nasional akan diumumkan pasca lebaran menunggu konfirmasi pelatih kepala Alfred Riedl,&quot; tukas Tigor.<br />\r\n<br />\r\nSebelumnya, pihak PSSI KLB pimpinan La Nyalla menyatakan membentuk Timnas sendiri setelah mandegnya pertemuan Joint Committee PSSI. Menurut pihak La Nyalla, seharusnya pembentukan Timnas dibahas di komite bersama tersebut melibatkan dua belah pihak, antara kubu Djohar Arifin dengan pihaknya.<br />\r\n<br />\r\nPiala AFF akan diselenggarakan 22 November hingga 22 Desember 2012 dengan tuan rumah Malaysia dan Thailand. Indonesia akan bermain di Grup B yang bertempat di Malaysia bersama Malaysia, Singapura dan Runner Up babak penyisihan.</p>\r\n', '', 'Minggu', '2018-04-22', '07:44:01', 'la_nyalla.JPG', 0, 'bola,olahraga', 'Y'),
(603, 19, 'admin', '4 Teknologi yang Bakal Bertahan Sampai 2030', '', '', '4-teknologi-yang-bakal-bertahan-sampai-2030', 'Y', 'Y', 'N', 'Perkembangan teknologi telah mengantarkan berbagai perangkat yang lebih kecil, cepat dan tangguh ke dalam genggaman tangan. Ada juga yang telah ditinggalkan atau digantikan teknologi lain, seperti sebuah floppy disk. &nbsp;<br />\r\nSelain teknologi yang ditiggalkan, ada juga beberapa teknologi yang diprediksi akan tetap bertahan sampai puluhan tahun ke depan. Seperti dilansir Live Science, Sabtu (18/8/2012), berikut empat teknologi yang diprediksi akan bertahan sampai 2030.<br />\r\n<br />\r\n<strong>1. Papan Ketik QWERTY</strong><br />\r\nTeknologi untuk melakukan input telah semakin banyak, ada voice recognition, handwriting recognition dan gesture control. Ini diperkiraka akan semakin akurat dan populer dalam dua dekade ke depan. Namun, sampai nanti ditemukan cara input teks menggunakan kendali pikiran, metode mengetik akan tetap sebuah metode menyusun teks yang paling akurat.<br />\r\nKehadiran papan ketik di tablet dan telefon genggam memang semakin terancam, namun layout QWERTY yang sejak dulu digunakan akan terus hidup.<br />\r\n<br />\r\n<strong>2. PC</strong><br />\r\nBeberapa orang berpendapat kita sedang memasuki zaman pasca PC. Pasalnya kini orang semakin sering menghabiskan waktu menggunakan smartphone dan tablet ketimbang menggunakan komputer desktop tradisional berbasis Windows atau Mac.<br />\r\nNamun di sisi lain, ketika sudah waktunya menggarap pekerjaan yang benar-benar serius, terutama yang melibatkan multitasking, PC masih merupakan perangkat yang&nbsp; paling bisa diandalkan.<br />\r\n&nbsp;<br />\r\nPada 2030, ukuran serta bentuk PC mungkin akan berubah. Beberapa orang bahkan berpendapat bahwa dengan adanya prosesor berotak empat, telefon genggam dan tablet menjelma menjadi PC. Tetap saja, apapun faktor yang mempengaruhi, pengguna yang fokus pada produktivitas akan membutuhkan sebuah komputer utama dengan kemampuan proses yang tinggi dan sanggup multitasking.<br />\r\n&nbsp;<br />\r\n<strong>3. USB Ports</strong><br />\r\nSekarang telah lebih dari 15 tahun sejak USB pertama kali diperkenalkan dan kita akan sulit membayangkan hidup tanpa USB. Ini hampir menjadi sebuah standar untuk membuat Anda bisa menransfer data dan menghubungkan dengan berbagai hal seperti papan ketik atau harddisk eksternal. Beberapa orang berpendapat bahwa standar seperti Thunderbolt dari Intel akan menandingi USB, tapi mereka tidak memiliki dasar instalasi untuk menandingi USB. Standar ini diprediksi akan semakin berkembang ke depannya.<br />\r\n<strong><br />\r\n4. Uang Tunai</strong><br />\r\nAda beberapa perdebatan mengenai apakah kartu kredit dan debit akan sepenuhnya digantikan oleh sistem pembayaran mobile dalam beberapa tahun ke depan. Walau bagaimanapun, uang tunai tampaknya akan tetap dibawa meski pada 2030.<br />\r\n&nbsp;<br />\r\nPasalnya di era informasi ini, membayar dengan uang tunai adalah cara terbaik untuk membuat pembelian yang Anda lakukan tetap anonim dan pribadi. Selain itu, uang kertas memiliki perlindungan terbaik dalam melawan pencuri indentitas karena orang yang menerima pembayaran tidak harus mengetahui nama Anda.\r\n', '', 'Sabtu', '2012-11-17', '03:27:34', '', 21, 'teknologi', 'Y'),
(604, 19, 'admin', 'Usai China, Indonesia Tuan Rumah Miss World 2013', '', '', 'usai-china-indonesia-tuan-rumah-miss-world-2013', 'Y', 'N', 'N', 'Masyarakat Indonesia pantas bahagia dua kali lipat saat penyelenggaraan final Miss World 2012. Bukan saja prestasi Ines Putri yang masuk dalam jajaran 15 besar, tetapi Indonesia juga diumumkan menjadi lokasi penyelenggaraan Miss World 2013.<br />\r\n&nbsp;<br />\r\nAjang Miss World 2012 di Ordos, Mongolia, China, berlangsung sukses. Diikuti 116 finalis dari seantero dunia, Miss World yang diselenggarakan ke-62 tahun ini akhirnya mendaulat Wenxia Yu sebagai Miss World 2012.<br />\r\n<br />\r\nSelama setahun, wakil dari Republik Rakyat China ini akan berkeliling dunia dan menjalankan misi sosial dalam program yang dikemas secara baik bernama Beauty with a Purpose.<br />\r\n<br />\r\nAdapun masa tugas terakhir dari pemilik tinggi badan 177 sentimeter ini akan dilakukan saat penyelenggaraan Miss World 2013 di Indonesia. Dan, kepastian soal lokasi penyelenggaraan Miss World dilakukan secara simbolis saat malam final Miss World 2012. Saat itu, Nana Putra, Managing Director MNC Group menerima bendera Miss World.<br />\r\n<br />\r\nRencananya, Miss World 2013 diselenggarakan September dengan mengambil lokasi karantina di Bali. Sementara itu, Jakarta sebagai Ibu Kota Indonesia dipilih menjadi lokasi malam final Miss World 2013.<br />\r\n<br />\r\n&ldquo;Jakarta akan menjadi tuan rumah malam final Miss World 2013. Namun tepatnya di mana lokasi tersebut, kami belum bisa memastikan,&rdquo; tutur Kanti Mirdiati kepada Okezone di Blacksteer Lounge, Belleza Shopping Arcades, Permata Hijau, Jakarta, belum lama ini.<br />\r\n<br />\r\nProject Director Miss Indonesia &amp; Managing Director RCTI ini pun menjelaskan alasan Jakarta dipilih sebagai lokasi malam final Miss World 2013.<br />\r\n<br />\r\n&ldquo;Ini merupakan bagian dari upaya memperkenalkan Jakarta dan Indonesia sendiri ke mata dunia. Kebanyakan orang luar negeri tahu Bali, tapi tidak tahu kalau Bali ada di Indonesia. Mereka mengira bahwa Bali itu sebuah negara,&rdquo; ucap wanita ramah ini.\r\n', '', 'Minggu', '2012-08-19', '03:37:05', '', 26, 'internasional', 'Y'),
(605, 39, 'admin', 'Memalukan! Bu Guru di AS Bercinta dengan 4 Muridnya ', 'Didakwa Penyimpangan Seks', '', 'memalukan-bu-guru-di-as-bercinta-dengan-4-muridnya-', 'Y', 'N', 'N', '<p>Texas - Memalukan! Seorang guru SMA di Amerika Serikat diadili karena berhubungan seks dengan empat muridnya sementara murid kelima merekam aksi mesum tersebut.<br />\r\n<br />\r\nWanita bernama Brittni Colleps tersebut dikenai sejumlah dakwaan, termasuk seks menyimpang dan hubungan tidak pantas antara pendidik dan pelajar.<br />\r\n<br />\r\nWanita berumur 28 tahun itu tadinya merupakan guru Bahasa Inggris di SMA Fort Worth, Texas. Di persidangan yang digelar hari ini seperti dilansir MyFoxDFW.com, Kamis (16/8/2012), terungkap bahwa terdakwa yang telah memiliki tiga anak itu, menggunakan pesan-pesan SMS untuk mendekati kelima pelajar putra tersebut.<br />\r\n<br />\r\nSalah seorang remaja mengaku, dia dan Colleps berkirim 100 SMS dalam satu hari saat musim semi pada tahun 2010. Pesan-pesan itu kemudian kian menjadi-jadi sehingga akhirnya mereka sepakat untuk bertemu guna bercinta.<br />\r\n<br />\r\n&quot;Dia (Colleps) bilang dia mendambakan... bahwa saya punya sesuatu yang dia inginkan,&quot; kata remaja tersebut.<br />\r\n<br />\r\nDiungkapkan remaja laki-laki tersebut, dalam satu kesempatan, empat remaja berhubungan intim dengan bu guru yang telah dipecat tersebut. Para remaja tersebut sebenarnya sudah bisa digolongkan dewasa, namun hukum melindungi para pelajar dari hubungan dengan seseorang yang jabatannya lebih tinggi, dalam hal ini guru.<br />\r\n<br />\r\nSeorang remaja lainnya merekam adegan seks tersebut dengan video telepon genggamnya. Video tersebut diputar di persidangan.<br />\r\n<br />\r\nJika terbukti bersalah, Colleps terancam hukuman penjara maksimum 20 tahun. Suaminya, Christopher Colleps, seorang tentara AS, telah menegaskan bahwa dirinya akan terus mendukung istrinya dan bahwa mereka akan tetap mempertahankan rumah tangga mereka.</p>\r\n', 'Brittni Colleps (foto:abc)', 'Minggu', '2018-04-22', '07:24:45', 'hinaislam.jpg', 0, 'internasional', 'Y'),
(606, 42, 'admin', 'Astagfirullah, Festival Wine Digelar di Halaman Masjid ', '', '', 'astagfirullah-festival-wine-digelar-di-halaman-masjid-', 'N', 'N', 'N', '<p>Beer El-Sabe - Kelompok Muslim menyatakan kemarahannya atas rencana penyelenggaraan Festival Wine di kota Beer el-Sabe, Israel. Kemarahan karena, penyelenggaraan akan dilaksanakan di halaman luar sebuah bangunan bekas masjid kuno di wilayah tersebut.<br />\r\n<br />\r\nMenurut laporan media Israel, Gerakan Islam di Israel mengatakan festival ini merupakan &quot;dosa tak termaafkan&quot;. Festival juga dianggap sebagai pukulan keras bagi umat Muslim di sana Sebab menurut kelompok Muslim tersebut, publisitas festival anggur merupakan penghinaan terhadap sensitivitas Muslim. Seperti diketahui Islam melarang konsumsi alkohol.<br />\r\n<br />\r\nFestival &quot;Salut Wine dan Beer Festival&quot; ke enam ini rencananya akan diselenggarakan di pelataran sebuah bangunan bekas masjid di Beer el-Sabe, pada 5-6 September. Festival akan menampilkan minuman beralkohol dari sekitar 30 pabrik dan perkebunan anggur di seluruh negeri.<br />\r\n<br />\r\nPusat Hukum untuk Hak Minoritas Arab di Israel, Kamis (16/8) lalu, mengirimkan surat pada Jaksa Agung, Menteri Kebudayaan dan Olahraga Israel serta Kotamadya Beer el-Sabe. Mereka menuntut agar festival Wine di wilayah tersebut dibatalkan. &quot; Penggunaan pelataran Masjid untuk festival minuman beralkohol adalah sesuatu yang sensitif. Sebab Islam melarang konsumsi alkohol dan tak sesuai dengan penggunaan masjid untuk beribadah,&quot; tulis organisasi tersebut dalam surat ke Jaksa Aram Mahameed.<br />\r\n<br />\r\nSurat juga menambahkan, Festival Wine melanggar keputusan Mahkamah Agung Israel yang keluar Juni 2011 lalu. Dalam keputusan tersebut memerintahkan masjid untuk diubah menjadi museum sejarah dan kebudayaan Islam.<br />\r\n<br />\r\nMasjid yang dibangun pada Era Usmani pada 1906 ini sempat menjadi tempat ibadah hingga 1948. Kemudian berubah menjadi penjara dan pengadilan hingga 1952. Lalu dari 1953-1991 dibuka sebagai Museum Tanah Negeb. Pada 2002 sempat ada sebuah petisi yang meminta masjid untuk dibuka kembali sebagai tempat ibadah.</p>\r\n', '', 'Minggu', '2018-04-22', '07:54:00', 'wine.png', 32, '', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(607, 39, 'admin', 'Moskow Larang Parade Gay Selama 100 Tahun', '', '', 'moskow-larang-parade-gay-selama-100-tahun', 'Y', 'Y', 'N', '<p>Pengadilan di Moskow mengukuhkan keputusan untuk melarang parade homoseksual untuk seratus tahun ke depan.<br />\r\n<br />\r\nLangkah ini dilakukan menyusul upaya pegiat hak homoseksual Rusia, Nikolay Alexeyev untuk membatalkan keputusan pemerintah kota melarang parade.<br />\r\n<br />\r\nIa meminta hak melakukan parade selama 100 tahun ke depan.<br />\r\n<br />\r\nAlexeyev juga menentang larangan kota St Petersburgh untuk menyebarkan &quot;propaganda homoseksual.&quot;</p>\r\n\r\n<p>Mahkamah hak asasi Eropa telah meminta pemerintah Rusia untuk membayar kerugian kepada Alexeyev.</p>\r\n\r\n<p>Alexeyev mengatakan Jumat (17/08) ia akan kembali ke Mahkamah Eropa untuk meminta agar menetapkan bahwa larangan itu tidak adil.</p>\r\n\r\n<p>Pemerintah kota Moskow menyatakan parade gay akan menimbulkan risiko gangguan ketertiban umum.</p>\r\n\r\n<p>Pemkot juga mengatakan sebagian besar warga Moskow menentang kegiatan itu.</p>\r\n\r\n<p>Bulan September lalu, Dewan Eropa -pengawasan HAM di Eropa- akan meneliti tanggapan Rusia atas keputusan Mahkamah Eropa sebelumnya tentang hak gay, menurut media Rusia.</p>\r\n\r\n<p>Bulan Oktober 2010, Mahkamah Eropa mengatakan Rusia melakukan diskriminasi terhadap Alexeyev karena orientasi seksualnya.</p>\r\n\r\n<p>Mahkamah saat itu menangani larangan Moskow atas parade gay antara tahun 2006-2008.</p>\r\n', 'Nikolay Alexeye. ', 'Minggu', '2018-04-22', '07:20:38', 'moscow.jpg', 5, 'internasional', 'Y'),
(597, 44, 'admin', 'Pasar Tiban Kalibata Selalu Ramai Pengunjung', '', '', 'pasar-tiban-kalibata-selalu-ramai-pengunjung', 'Y', 'Y', 'N', 'Jakarta - Pasar tiban, atau pasar musiman, istilah untuk menjelaskan pasar yang musiman, tidak punya tempat menetap. Ada juga istilah pasar malam, pasar tumpah atau pasar kaget. Biasanya pasar ini mengambil waktu tertentu misalnya: bulan puasa, atau hari tertentu yang libur. Pasar tiban di Kalibata &lsquo;buka&rsquo; tiap hari minggu.<br />\r\n<br />\r\nBermacam-macam barang dijajakan, mulai dari pakaian, mainan anak-anak, sepatu, tas, tanaman hias, jajan pasar, peralatan rumah tanggga, sprei, parfum, buku dan majalah bekas, pigura, dll. Semua dengan harga murah. Pasar ini mengambil tempat sepanjang jalan dari menuju Stasiun Kalibata sampai depan STEKPI, samping periumahan DPR RI Kalibata.<br />\r\n<br />\r\nPasar ini awalnya tidak begitu ramai. Waktu itu setiap hari minggu di danau Taman Makam pahlawan (TMP) Kalibata banyak orang yang melakukan olah raga pagi. Muda-mudi paling banyak. Hukum ekonomi berjalan, di mana ada keramaian selalu ada yang menggunakan peluang. Maka ada orang jualan bubur ayam, lontong sayur, ketoprak dan lainnya. Mengambil tempat sempit di depan gerbang parkir TMP.<br />\r\n<br />\r\nLama-lama ada yang berjualan pakaian, mainan, poster, dan lainnya. Semakin banyak yang berjualan dan mengambil tempat di sepanjang jalan depan TMP. Di sini mulai ada masalah, kemacetan. Mungkin karena pengunjung semakin banyak, membuat kemacetan, pasar &lsquo;dipindah&rsquo; ke dalam. Hingga sekarang. Sebenarnya tidak tahu dipindah atau pindah sendiri, mungkin pihak berwenang berprinsip, yang penting tidak mebuat jalan macet.<br />\r\n<br />\r\nJadilah seperti sekarang, pasar tiban menjadi hiburan sendiri untuk warga Kalibata, Pancoran, Pasar minggu dan sekitarnya. Tempatnya yang relatif jauh dari jalan raya, masih hijau, memang enak buat jalan-jalan. Setelah lelah jalan-jalan melihat-lihat barang, tersedia berbagai warung yang meyediakan berbagai menu, tinggal pilih: Nasi uduk, lontong sayur, nasi rames, mendowan, bubur ayam, pecel lele, warung Padang, warung Sunda. Juga minuman, ada es tebu, Es Teh, es buah.<br />\r\n<br />\r\nPenasaran, sempatkan hari muingggu ke Kalibata. Tersedia angkutan dari berbagai arah: Dari Blok M, naik Kopaja 57, Dari Cililitan kopaja 57/ Metrimini 64, dari Kampung melayu dan Pasar Minggu naik M16, dari Manggarai naik Metromini 62. Jangan lupa ajak keluarga, sekalian makan bersama di hari Minggu.<br />\r\n', '', 'Minggu', '2012-08-19', '01:54:07', '', 30, 'wisata', 'Y'),
(627, 40, 'admin', 'Nikmatnya Bubur Ayam Cikini', '', '', 'nikmatnya-bubur-ayam-cikini', 'N', 'N', 'N', 'Jakarta - Jika Anda pecinta kuliner Bubur, pasti sudah mengenal Bubur Cikini H. Sulaiman. Bubur yang satu ini memang terbilang populer di Jakarta. Kabarnya bubur ini didirikan sejak tahun 1980-an. Bisa bertahan sampai sekarang tentu merupakan jaminan tersendiri. Kualitas rasa adalah modal utama sebuah usaha kuliner selalu diterima konsumen. Bubur Cikini H. Sulaiman memiliki hal tersebut.<br />\r\n<br />\r\nDahulu Bubur Cikini H. Sulaiman bisa dijumpai di tenda kaki lima. Jam operasional juga dimulai sekitar jam 6 sore hari. Namun kini Bubur Cikini H. Sulaiman telah memiliki tempat permanen yang lebih nyaman. Jam operasional juga berubah. Kini Bubur Cikini juga bisa dinikmati di pagi hari. Bagi yang suka menu bubur untuk sarapan, jangan sampai melewatkan Bubur Cikini.<br />\r\n<br />\r\nSoal menu, Bubur Cikini H. Sulaiman tentu menyajikan menu bubur sebagai sajian utama. Menu yang bisa dicicipi antara lain Bubur Ayam Biasa, Bubur Ayam Telur, Nasi Goreng Ayam, Nasi Goreng Otokwok, Mie Goreng/Rebus, Telur Goreng, Empal Gentong Nasi/Lontong, Ati Ampela, aneka minuman dan masih banyak lagi lainnya. Jika Ingin menikmati empal Gentong Nasi/Lontong harus datang di hari Sabtu atau Minggu sebab menu tersebut tidak tersedia setiap harinya.<br />\r\n<br />\r\nSoal harga memang fluktuatif. Bisa berubah kapanpun. Tetapi sebagai deskripsi harga, seporsi Bubur Ayam Biasa bisa dinikmati dengan harga Rp.13.000 per porsi, menu Bubur Telur juga di harga yang sama. Untuk Nasi Goreng Ayam bisa dinikmati dengan membayar Rp.15.000, sedangkan Nasi Goreng Otokwok bisa dinikmati dengan harga Rp,17.000. Bagi yang menyukai menu Empal Gentong Nasi/Lontong bisa dicicipi dengan membayar Rp.20.000 per porsi. Cukup murah!\r\n', '', 'Selasa', '2012-08-21', '13:55:20', '', 32, 'kuliner', 'Y'),
(628, 40, 'admin', 'Soto Betawi H. Husein sangat enak sekali', '', '', 'soto-betawi-h-husein', 'N', 'N', 'N', 'Indonesia sangat kaya akan khazanah kuliner. Masing-masing wilayah mempunyai makanan yang khas. Meskipun sama jenisnya, namun rasa dan racikannya berbeda.<br />\r\nSama seperti daerah-daerah lain di Indonesia, masyarakat Betawi juga mempunyai makanan khas yaitu soto Betawi. Salah satu yang terkenal adalah soto Betawi Haji Husein yang ada di kawasan Minangkabau, Manggarai, Jakarta Selatan. Di tempat seluas 5 x 10 meter, Bang Husein, 57; panggilan akrabnya, membuka usahanya dari pukul 07.00 WIB hingga dagangannya habis. Usaha ini telah dirintisnya sejak tahun 1989. Sebelum membuka usaha sendiri, ia terlebih dahulu belajar dari pamannya sejak tahun 1970-an.<br />\r\n<br />\r\nSaya sudah mulai ikut usaha sejak Kelas 4 SD. Waktu itu ikut Uwak (panggilan paman-Red) jualan sate, tongseng, sama soto, kata Bang Husein. Bapak empat orang anak ini mengaku memilih soto karena lebih praktis, selain itu ia ingin melestarikan makanan asli Betawi.<br />\r\nYang membedakan soto Betawi Haji Husein dengan soto di daerah lainnya adalah proses pengolahan isi sotonya. Olahan daging sapi yang berupa daging, jeroan, dan kikil terlebih dahulu direbus; baru kemudian digoreng. Yang hampir sama biasanya soto Makassar, cuma biasanya dagingnya direbus saja, nggak digoreng, ujar pria kelahiran Jakarta ini.<br />\r\nDalam sehari Bang Husein biasa menyediakan 50 Kg olahan daging sapi yang terdiri dari daging, jeroan, dan kikil. Mulai pukul 03.00 WIB ia merebus semuanya hingga pukul 06.00 WIB. Menurutnya proses merebus membutuhkan waktu yang cukup lama. Bumbu yang digunakan untuk kuah sotonya hanya terdiri dari rempah-rempah biasa yang banyak dijual di pasar. Bahan-bahan itu kemudian diracik sedemikian rupa sehingga mempunyai rasa yang khas. Kuah soto Betawi umumnya kental karena menggunakan santan. Dalam sehari ia bisa menghabiskan berpuluh butir kelapa tua untuk diolah menjadi santan.<br />\r\n<br />\r\nSetiap hari warungnya selalu ramai dikunjungi orang. Biasanya mereka datang pada saat jam istirahat makan siang. Penikmat soto Haji Husein berasal dari berbagai kalangan. Mulai dari yang berkantong tipis sampai yang berkantong tebal. Demikian lakunya, tidak jarang pelanggannya harus antre menunggu pelanggan lain yang sedang makan.<br />\r\nTempatnya yang terletak persis di pinggir jalan terkadang tidak muat menampung sepeda motor dan mobil yang dikendarai para pelanggannya. Tak jarang pula orang-orang kantoran datang jauh-jauh hanya untuk merasakan kenikmatan sotonya.<br />\r\n<br />\r\nMelihat banyaknya pengunjung yang datang, bisa dipastikan rasanya pastilah menggugah selera. Dalam sehari Bang Husein mengaku bisa menghabiskan lebih kurang 100 porsi. Untuk satu porsinya ia hargai Rp16.000, itu sudah termasuk nasi. Omzet per-bulannya bisa mencapai lebih kurang Rp20 juta. Ke-12 orang karyawan kini membantunya melayani pelanggan setiap hari. Waktu awal buka mah cuma berdua. Sekarang pegawainya nggak pernah berubah, ungkapnya. Di antara karyawannya ada dua anak lelakinya yang ikut membantu.<br />\r\nUsaha ini merupakan usaha keluarga turun-temurun. Bang Husein merupakan generasi keempat. Sebelum di tempatnya saat ini ia sempat merasakan berjualan keliling menggunakan pikulan.<br />\r\n<br />\r\nUang Rp400.000 menjadi modal awal usahanya. Dulu uang segitu besar, bisa buat beli semua, katanya. Usaha ini dijalaninya mulai dari bawah sekali. Bahan-bahan sotonya didapatkan dengan cara mengutang. Ia juga harus membayar sewa tempat.<br />\r\nSaat ini dengan omzet besar ia tidak perlu lagi mengutang. Bahkan sejak tahun 2000 tempatnyapun sudah menjadi milik pribadi. Asal ada kemauan, semua pasti bisa. Yang penting jangan pernah bosan kalau usaha, ujarnya. Untuk mempertahankan cita-rasa agar tidak berubah, Bang Husein selalu memerhatikan takaran komposisinya. Hal inilah yang menjadi salah satu daya tarik pengunjung untuk kembali karena rasa tidak berubah-ubah.<br />\r\n<br />\r\nMeski sudah menjadi pemilik, kakek dua orang cucu ini masih melayani sendiri para pelanggannya. Ia tidak canggung berbaur dengan karyawan lainnya. Ini juga menjadi salah satu trik untuk menarik pelanggannya. Terkadang para pelanggan yang seumurnya apabila dilayani olehnya akan merasa senang. Menurut mereka liat muka kita aja udah enak, makanan nomer dua, katanya sambil tertawa. Pertemuan seperti ini seperti sebuah nostalgia baginya.<br />\r\nSemua jerih payahnya telah membuahkan hasil yang cukup membanggakan baginya. Dari hasilnya berjualan ia sudah bisa pergi haji dan membiayai anak-anaknya sekolah. Ia juga sudah memberangkatkan dua karyawannya untuk menunaikan ibadah haji. Soto Betawi Bang Husein buka dari Senin sampai Minggu. Khusus hari Jumat ia sengaja tidak membuka warungnya untuk ibadah sholat Jumat. Pada bulan Ramadhan ia juga menutup usahanya sebulan penuh.<br />\r\n<br />\r\nInilah Bang Husein, usahanya dijalani secara seimbang dengan ibadah. Ia juga tidak sungkan membagi rahasia dapurnya. Rezeki mah ada aja, udah ada yang ngatur. Selain usaha juga jangan lupa berdoa, ujarnya.\r\n', '', 'Selasa', '2012-08-21', '14:35:48', '', 23, 'kuliner', 'Y'),
(629, 31, 'admin', 'Cokelat Hitam Turunkan Tekanan Darah', '', '', 'cokelat-hitam-turunkan-tekanan-darah', 'N', 'N', 'N', '<p>Cokelat hitam sudah lama diketahui manfaatnya bagi kesehatan. Hasil analisa terhadap 20 studi menunjukkan, konsumsi cokelat hitam setiap hari akan menurunkan tekanan darah.<br />\r\n<br />\r\nPenelitian yang dilakukan The Cochrane Group melaporkan, zat aktif dalam cokelat bermanfaat untuk membuat pembuluh darah lebih rileks. Akibatnya, tekanan darah pun turun.<br />\r\n<br />\r\nZat aktif yang punya efek positif tersebut adalah flavonol, yang di dalam tubuh akan menghasilkan zat kimia oksida nitrat dan membuat pembuluh darah lemas sehingga darah lebih lancar bersirkulasi.<br />\r\n<br />\r\nAnalisis yang dibuat tersebut mengombinasikan beberapa penelitian sebelumnya untuk mengetahui ada tidaknya efek cokelat bagi tekanan darah. Cokelat hitam yang dikonsumsi partisipan dalam penelitian itu cukup banyak, antara 3 gram sampai 105 gram setiap hari.<br />\r\n<br />\r\nNamun penurunan tekanan darah yang dihasilkan tidak terlalu besar, hanya 2-3 mmHg. Akan tetapi penelitian hanya dilakukan selama dua minggu sehingga tidak diketahui dampaknya dalam jangka panjang.<br />\r\n<br />\r\n&quot;Meski kami belum mendapat bukti adanya efek jangka panjang penurunan tekanan darah, tetapi penurunan sedikit dalam jangka pendek ini mungkin dalam jangka panjang bisa berkontribusi pada penurunan risiko penyakit jantung,&quot; kata Karin Ried, dari National Institute of Integrative Medicine di Melbourne, Australia.<br />\r\n<br />\r\nTekanan darah tinggi cukup banyak diderita dan diperkirakan menjadi penyebab terbanyak stroke dan penyakit jantung.<br />\r\n<br />\r\nBila Anda ingin mendapatkan manfaat dari cokelat hitam, sebaiknya pastikan produk yang dibeli mengandung cokelat dalam jumlah tinggi karena kebanyakan produk di pasaran lebih banyak kandungan gula dan lemaknya.<br />\r\n<br />\r\nSelain cokelat, kacang, aprikot, blackberries, dan apel juga mengandung flavonol meski kadarnya lebih rendah daripada cokelat.</p>\r\n', '', 'Minggu', '2018-04-22', '07:34:00', 'coklat-hitam.jpg', 0, 'kesehatan', 'Y'),
(630, 19, 'admin', 'Bos Yahoo Bajak 2 Karyawan Google tahun 2018', '', '', 'bos-yahoo-bajak-2-karyawan-google-tahun-2018', 'N', 'N', 'N', '<p>Marissa Mayer, sang CEO Yahoo kembali memperkuat &#39;pasukannya&#39;. Pernah bernaung di bawah bendera Google, Mayer pun membajak dua karyawan dari kantor terdahulunya tersebut.<br />\r\n<br />\r\nWanita yang diangkat menjadi CEO perusahaan internet pada bulan Juli lalu ini telah mempekerjakan mantan<em> Product Marketing Manager</em> Google yang bernama Andrew Schulte. Ia kini menjadi kepala staff di tubuh Yahoo.<br />\r\n<br />\r\nSchulte bergabung dengan Google pada tahun 2007. Ia sempat menangani kampanye marketing Google+. Penegasan kepindahan dirinya ia tuliskan di akun Twitter maupun profil LinkedInnya.<br />\r\n<br />\r\nSebelum Schulte, Mayer sudah membajak Anne Espiritu di mana duluanya bekerja sebagai<em> consumer technology PR </em>di Google, demikian dikutip dari <em>Cnet</em>, Senin (20/8/2012).<br />\r\n<br />\r\nMayer memang tengah sibuk menata struktur manajemen Yahoo. Perusahaan ini kabarnya juga tengah berburu <em>Chief Operating Officer </em>(COO) dengan pengalaman di bidang manajemen finansial dan restrukturisasi perusahaan.</p>\r\n', '', 'Minggu', '2018-04-22', '11:05:22', 'Marissa_Mayer.jpg', 11, 'teknologi', 'Y'),
(631, 19, 'admin', 'Perusahaan Besar Sharp Tak Lagi Produksi TV?', '', '', 'perusahaan-besar-sharp-tak-lagi-produksi-tv', 'N', 'N', 'N', '<p>Tokyo - Sharp kabarnya mempertimbangkan untuk lebih fokus memproduksi panel LCD (liquid crsytal display) sehingga perlu menjual sejumlah unit bisnisnya. Perusahaan asal Jepang ini berencana untuk tak lagi merakit TV.<br />\r\n<br />\r\nSharp seperti dilaporkan surat kabar setempat Nikkei, disebut-sebut akan melepas unit bisnis mesin fotokopi dan pendingin ruangan (AC) agar lebih fokus dalam persaingan pasar LCD.<br />\r\n<br />\r\nNamun seperti dilansir Reuters dan dikutip detikINET, Sabtu (18/8/2012), Sharp melalui juru bicaranya menolak laporan tersebut. &quot;Kami mempelajari berbagai pengukuran, namun tidak ada fakta yang mendukung laporan surat kabar Nikke mengenai kemungkinan penjualan operasional utama Sharp,&quot; ujar juru bicara tersebut.<br />\r\n<br />\r\nPerforma perusahaan elektronik ini memang tidak menggembirakan awal bulan ini, dengan harga saham yang merosot pada titik terendahnya dalam 40 tahun terakhir.<br />\r\n<br />\r\nNikkei menyebutkan, sebagai bagian dari upaya pemulihan, Sharp juga akan melakukan spinoff pabriknya di pusat Jepang, yang membuat panel LCD untuk smartphone dan tablet, termasuk untuk komponen iPhone dan iPad Apple.<br />\r\n<br />\r\n&quot;Sharp mungkin saja menerima suntikan investasi dari pabrikan lain dan menjalankan operasional pabrik bersama-sama, seperti yang dilakukan Hon Hai roPrecision asal Taiwan di pabrik Sakai yang berlokasi di prefecture Osaka,&quot; tulis Nikkei.<br />\r\n<br />\r\nSaham Sharp turun 1,14% menjadi 173 yen pada penutupan perdagangan Jumat.</p>\r\n', '', 'Minggu', '2018-04-22', '11:04:06', 'Sharp-Bulding.jpg', 2, 'teknologi', 'Y'),
(632, 19, 'admin', 'Kemungkinan Kodak Batal Jual Paten', '', '', 'kemungkinan-kodak-batal-jual-paten', 'N', 'N', 'N', '<p>New York - Kodak berencana menjual sebagian dari paten-patennya guna melindungi perusahaannya dari kebangkrutan. Namun belakangan, sang pionir di dunia fotografi ini menimbang ulang rencana tersebut.<br />\r\n<br />\r\nDilaporkan bahwa Kodak bisa jadi hanya menjual sebagian paten digital imaging yang hendak dilepas, atau malah tidak menjualnya satupun, demikian seperti dikutip detikINET dari AllThingsD, Senin (20/8/2012).<br />\r\n<br />\r\nKabar ini menyusul pemberitaan sebelumnya yang mengatakan bahwa Kodak telah menunda pengumuman hasil penjualan patennya. &quot;Kodak belum mencapai kepastian atau persetujuan untuk menjual portofolio paten digital imagingnya, &quot;ujar Kodak dalam sebuah pernyataan.<br />\r\n<br />\r\nSuara resmi tersebut menyugestikan bahwa lelang paten yang sudah berjalan tidak berjalan sesuai harapan perusahaan yang berbasis di Rochester, New York, Amerika Serikat ini.<br />\r\n<br />\r\nSebuah sumber yang mengetahui hal itu mengatakan bahwa tawaran yang datang untuk portofolio ini hanya berada di bawah angka USD 2 miliar.<br />\r\n<br />\r\nSebelumnya, Wall Street Journal pernah melaporkan bahwa tawaran awal datang dari dua konsorsium, di mana dipimpin oleh perusahaan raksasa, Google dan Apple.<br />\r\n<br />\r\nSeperti diketahui, Kodak berjuang keras menyelematkan &#39;nyawa&#39; perusahaan. Selain menjual sebagian dari 1.100 patennya, Kodak juga telah keluar dari bisnis kamera dan beralih ke digital printing serta penciptaan aplikasi-aplikasi baru di bidang tersebut.</p>\r\n', '', 'Sabtu', '2018-04-21', '23:57:24', 'kodak.jpg', 1, 'teknologi', 'Y'),
(633, 31, 'admin', 'Apakah dia mengalami Depresi? Cek Bicaranya', '', '', 'apakah-dia-mengalami-depresi-cek-bicaranya', 'N', 'N', 'N', '<p>Jakarta, Beberapa orang pandai menyembunyikan perasaan, dari luar tampak baik-baik saja meski hatinya menangis tercabik-cabik. Para ilmuwan baru-baru ini berhasil menentukan dengan tepat tingkat keparahan depresi berdasarkan cara berbicara.<br />\r\n<br />\r\nDalam penelitian yang diklaim sebagai yang terbesar di dunia tersebut, para ilmuwan menemukan bahwa cara berbicara susah dipalsukan ketika seseorang sedang depresi. Perubahan cara bicara itu bisa dipakai untuk mengukur tingkat keparahan depresi yang dialami.<br />\r\n<br />\r\nAdam Vogel, kepala Speech Neuroscience Unit di University of Melbourne mengatakan bahwa cara berbicara adalah penanda kesehatan otak yang sangat kuat. Berbagai perubahan yang terjadi pada cara berbicara bisa menunjukkan seberapa bagus otak bekerja.<br />\r\n<br />\r\n&quot;Cara berbicara orang yang sedang depresi berubah dan dipengaruhi oleh terapi yang diberikan, menjadi lebih cepat dengan jeda yang lebih pendek,&quot; kata Vogel dalam laporannya di jurnal Biological Psychiatry seperti dikutip dari Medindia, Selasa (21/8/2012).<br />\r\n<br />\r\nDalam penelitian tersebut, Vogel melakukan pengamatan terhadap 105 pasien yang sedang menjalani terapi untuk menyembuhkan depresi. Beberapa hal yang diamati antara lain waktu, nada dan intonasi bicara yang kemudian dibandingkan dengan hasil pemeriksaan psikologis.<br />\r\n<br />\r\nPara pasien diminta melakukan panggilan telepon ke sebuah mesin penjawab otomatis. Ada yang diminta berbicara apa saja, mengungkapkan perasaan dan sebagian hanya diminta untuk membaca teks supaya tidak perlu repot-reopot memikirkan mau bicara tentang apa.<br />\r\n<br />\r\n&quot;Temuan ini memungkinkan para psikolog jadi lebih fleksibel dalam memeriksa pasien dari jarak jauh, hanya dengan mendengarkan pola dan cara berbicara meski dari lokasi yang sangat jauh atau di kampung-kampung,&quot; kata James Mundt dari Centre for Psychological Consultation di Wisconsin.</p>\r\n', '', 'Minggu', '2018-04-22', '07:33:20', 'depresi.jpg', 0, 'kesehatan', 'Y'),
(634, 31, 'admin', 'Makanan Penyumbang KegemukaN', '', '', 'makanan-penyumbang-kegemukan', 'N', 'N', 'N', '<p>Jakarta - Salah satu faktor yang banyak bikin orang jadi gemuk adalah mengonsumsi makanan yang berlebihan dan salah. Untuk itu ketahui makanan apa saja yang ditemui sehari-hari dan bisa bikin gemuk.<br />\r\n<br />\r\n&quot;Yang paling banyak bikin gemuk adalah makanan dengan kandungan gula murni dan tepung,&quot; ujar dr Pauline Endang, SpGK dari FKUI, Rabu (15/8/2012).<br />\r\n<br />\r\ndr Pauline menjelaskan banyak orang yang kadang tidak suka nasi tapi ia suka mengemil. Namun sayangnya cemilan ini makanan yang manis dengan kadar gula tinggi, kadang ada telur dan menteganya sehingga kalori tinggi.<br />\r\n<br />\r\n&quot;Makanan-makanan ini tidak bikin kenyang, jadi orang yang mengonsumsi bawaannya ia ingin makan terus apalagi jika ditambah dengan makan gorengan yang kandungan lemaknya tinggi,&quot; ungkapnya.<br />\r\n<br />\r\nHal senada juga diungkapkan oleh ahli gizi dr Inge Permadhi, MS, SpGK bahwa makanan tinggi kalori, tinggi gula dan tinggi lemak bisa menyebabkan seseorang mengalami kegemukan.<br />\r\n<br />\r\n&quot;Misalnya makanan berminyak, daging yang ada gajih, mentega, margarin, makanan-makanan ini rasanya enak dan gurih sehingga bikin orang ketagihan,&quot; ujar dr Inge dari Departemen Ilmu Gizi FKUI.<br />\r\n<br />\r\nBerikut ini beberapa makanan yang diketahui bisa menyumbang kegemukan yaitu:<br />\r\n<br />\r\n1. Gorengan, mengandung banyak lemak dan juga kolesterol<br />\r\n2. Martabak, mengandung tinggi gula dan lemak<br />\r\n3. Cake, mengandung tinggi gula dan lemak<br />\r\n4. Minuman manis, mengandung tinggi gula dan kalori<br />\r\n5. Minuman soda, menyebabkan timbunan lemak visceral di perut<br />\r\n6. Kerupuk, mengandung karbohidrat dan kadar lemak yang tinggi<br />\r\n7. Es krim,mengandung tinggi gula dan lemak<br />\r\n8. Daging yang masih ada gajihnya<br />\r\n9. Fast food atau makanan cepat saji, kandungan lemak dan kalorinya tinggi tapi cenderung minim nutrisi<br />\r\n10. Keripik, kandungan lemak dan gula dari keripik ini membuat jumlah kalorinya tinggi serta ditambah dengan tinggi garam<br />\r\n11. Sereal manis, mengandung karbohidrat yang tinggi dan ditambah dengan gula yang bisa memicu penimbunan lemak<br />\r\n12. Krim-krim penambah minuman (Whipped cream), mengandung kadar lemak yang tinggi<br />\r\n<br />\r\n&quot;Kandungan dari bahan makanan ini bila asupannya melebihi kebutuhan tubuh maka akan diubah dan disimpan di dalam sel lemak dan tentu saja membuat seseorang jadi gemuk,&quot; ujar Dr Marini Siregar, MGizi, SpGK dari RS Premier Jatinegara.<br />\r\n<br />\r\nDr Marini menyarankan agar tidak menjadi gemuk yang terpenting adalah keseimbangan antara apa yang dimakan dengan aktivitas fisik yang dilakukan. Jika termasuk orang yang aktivitas fisiknya rendah, asupan makanannya harus disesuaikan tidak boleh terlalu banyak.<br />\r\n<br />\r\n&quot;Jangan lupa mengonsumsi air yang cukup agar metabolisme dalam tubuh berjalan dengan baik, serta sayuran dan buah yang mengandung serat tinggi akan membuat kita merasa lebih kenyang sehingga mengurangi asupan makanan yang lain dan tidak akan terjadi kegemukan,&quot; ujar Dr Marini.</p>\r\n', '', 'Minggu', '2018-04-22', '07:32:21', 'food-388.jpg', 0, 'kesehatan', 'Y'),
(635, 39, 'admin', 'Foto Bugil Pangeran Harry Beredar', '', '', 'foto-bugil-pangeran-harry-beredar', 'N', 'N', 'N', '<p>Las Vegas - Pangeran Harry dari Inggris kembali membuat sensasi. Kali ini TMZ, sebuah situs hiburan Amerika Serikat, merilis foto-foto bugil adik Pangeran William itu, Selasa (21/8/2012).<br />\r\n<br />\r\nMenurut TMZ, foto itu diambil ketika putra kedua Pangeran Charles itu berpesta dengan teman-temannya di kamar hotelnya di Las Vegas, Jumat (18/8/2012).<br />\r\n<br />\r\nMengutip sumbernya, TMZ melaporkan, Harry dan teman-temannya turun ke bar hotel dan bertemu sejumlah perempuan, yang kemudian diundangnya ke kamar suite-nya di hotel itu.<br />\r\n<br />\r\nSuasana pun menjadi liar karena anak-anak muda itu mengadakan permainan biliar. Dalam aturan permainan itu, yang kalah harus melepas pakaian, sampai akhirnya semua peserta bugil.<br />\r\n<br />\r\nBeberapa orang yang hadir di pesta itu memotret kehebohan pesta tersebut. Dalam salah satu foto, tampak Harry dalam keadaan telanjang bulat dengan kedua tangan menutupi alat vitalnya. Sementara itu, foto lainnya menunjukkan Harry memeluk seorang perempuan yang juga terlihat bugil.<br />\r\n<br />\r\nKepada TMZ, Keluarga Kerajaan Inggris mengatakan, &quot;Kami tidak berkomentar tentang foto-foto itu saat ini.&quot;</p>\r\n', '', 'Minggu', '2018-04-22', '08:14:38', 'meghan-markle-dan-pangeran-harry.jpg', 31, 'internasional', 'Y'),
(636, 2, 'admin', 'Hukuman Ganda Korea Diperingan, Greysia/Meiliana Tunggu Nasib', 'Buntut Pertandingan \"Sabun\" di Olimpiade London', '', 'hukuman-ganda-korea-diperingan-greysiameiliana-tunggu-nasib', 'N', 'N', 'N', 'Seoul - Otoritas bulutangkis Korea Selatan, Rabu (22/8) mengurangi hukuman untuk \r\nempat pemain yang diduga sengaja kalah pada pertandingan di Olimpiade \r\nLondon, dari dua tahun menjadi enam bulan setelah terjadi proses \r\nbanding.<br />\r\n&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\nJung Kyung-Eun, Kim Ha-Na, Ha Jung-Eun, dan Kim \r\nMin-Jung dilarang berpartisipasi di kompetisi-kompetisi domestik dan \r\ninternasional selama enam bulan, demikian disampaikan oleh Asosiasi \r\nBulutangkis Korea, Rabu.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nKeempat atlet itu berkata mereka \r\nhanya mengikuti perintah pelatih Sung Han-Kook, dan asisten Kim \r\nMoon-Soo. Sebelumnya, hukuman seumur hidup mereka telah dikurangi \r\nmenjadi dua tahun.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nDelapan pebulutangkis ganda putri, dari \r\nKorea Selatan, Indonesia, dan China didiskualifikasi dari Olimpiade \r\nkarena sengaja mengalah agar dapat mengamankan posisi yang lebih \r\nmenguntungkan di babak berikutnya.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nSkandal ini membuat bintang bulutangkis China, Yu Yang, pensiun dari bulutangkis.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nPresiden\r\nFederasi Bulutangkis Dunia, Kang Young-Joong, telah menepis rumor bahwa\r\npublikasi yang buruk dari olahraga ini dapat membahayakan masa depan \r\nbulutangkis di Olimpiade.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nKorea Selatan mendapat satu medali \r\nperunggu dari cabang olahraga bulutangkis di London - itu merupakan \r\npenampilan terburuk sepanjang partisipasi mereka di Olimpiade.<br />\r\n<br />\r\nSementara\r\ndi Indonesia, PBSI akhirnya memutuskan akan menjatuhkan sanksi kepada \r\ndua pemain ganda putri andalannya, Greysia Polii dan Meiliana Jauhari. \r\nSeperti diketahui, Greysia/Meiliana harus didiskualifkasi dari Olimpiade\r\nLondon 2012 karena diduga sengaja mengalah pada penyisihan grup untuk \r\nmenghindari lawan berat di babak perempat final.<br />\r\n&nbsp;<br />\r\nBadminton World\r\nFederation (BWF) memutuskan Greysia/Meiliana dan lawannya, Ha Jung \r\nEun/Kim Min Jung dari Korea didiskualifikasi dari turnamen paling \r\nbergengsi tersebut. Pasangan terkuat dunia asal China, Wang Xiaoli/Yu \r\nYang dan Kim Ha Na/Jung Kyung Eun dari Korea juga terkena \r\ndiskualifikasi.<br />\r\n<br />\r\n&ldquo;Kami tak mau dipengaruhi oleh keputusan yang \r\ndiambil oleh Korea atau China, karena setiap organisasi memiliki \r\nkebijakan masing-masing. Walaupun demikian, kami menghargai IOC dan BWF \r\nyang telah memutuskan bahwa Greysia/Meiliana bersalah, hal ini tidak \r\nboleh terulang lagi kedepannya. PBSI akan memberikan sanksi, namun belum\r\nbisa diumumkan bentuk sankisnya seperti apa&rdquo; ujar Sekjen PBSI, Yacob \r\nRusdianto di Pelatnas Cipayung, Selasa (21/8) sepersti dikutip situs \r\nPBSI.<br />\r\n&nbsp;<br />\r\nSaat ini PBSI masih dalam proses diskusi mengenai sanksi \r\nyang akan diberikan kepada Greysia/Meiliana dan belum ada keputusan \r\nserta pemberitahuan resmi kepada keduanya. Namun ia mengaku telah \r\nbeberapa kali mengadakan pertemuan kekeluargaan bersama kedua pemain \r\nuntuk membicarakan masalah ini dan kemungkinan-kemungkinan yang akan \r\nterjadi.\r\n', 'Suasana pertandingan memalukan itu.\r\n', 'Kamis', '2012-08-23', '01:47:26', '', 24, 'olahraga', 'Y'),
(637, 2, 'admin', 'Zeelenberg: Lorenzo Akan Bangkit melawan di Brno', 'MotoGP', '', 'zeelenberg-lorenzo-akan-bangkit-melawan-di-brno', 'N', 'N', 'N', '<p>London - Setelah harus bekerja keras merebut posisi kedua di Indianapolis, Manajer tim Yamaha, Wilco Zeelenberg, yakin pebalap Jorge Lorenzo akan bangkit di MotoGP seri Ceko.</p>\r\n\r\n<p>Lorenzo diyakini dapat tampil sebagai pemenang untuk menjaga posisi tertinggi di klasemen sementara. &quot;Sirkuit Indianapolis menyulitkan kami saat start. Namun, Sirkuit Brno memiliki lintasan yang halus dan cepat. Saya yakin kami dapat tampil lebih baik di sana,&quot; kata Zeelenberg, London, Rabu (22/8/2012) di London.</p>\r\n\r\n<p>Lorenzo menang di Brno pada musim 2010 tetapi finis keempat di musim 2011. Lorenzo akan berusaha merebut kemenangan keenam pada musim ini di Brno.</p>\r\n\r\n<p>Kemenangan ini penting bagi Lorenzo untuk memastikan langkahnya menjadi juara dunia di musim ini. Jika sampai kalah dari Dani Pedrosa, gelar juara dunia harus ditentukan sampai lomba di akhir musim</p>\r\n', 'Pebalap Yamaha, Jorge Lorenzo, dengan motor Jupiter Z1 di paddock Yamaha. ', 'Minggu', '2018-04-22', '10:57:39', 'jorge-lorenzo.jpg', 1, 'olahraga', 'Y'),
(638, 2, 'admin', 'Tyson Peringatkan Rapper 50 Cent untuk Diam', '', '', 'tyson-peringatkan-rapper-50-cent-untuk-diam', 'N', 'N', 'N', '<p>New York - Mantan juara dunia tinju kelas berat Mike Tyson memperingatkan rapper 50 Cent yang kini bertindak sebagai promotor tinju.<br />\r\n<br />\r\nRapper yang bernama asli Curtis Jackson ini baru saja mendirikan The Money Team (TMT) Promotions bersama petinju legendaris AS lainnya, Floyd Mayweather Jr. TMT bergerak di bidang pertandingan tinju profesional.<br />\r\n<br />\r\nSaat mendirikan perusahaan ini, 50 Cent bermaksud melakukan perubahan mendasar pada olahraga tinju profesional di AS.<br />\r\n<br />\r\nNamun, Tyson yang pernah malang melintang di dunia tinju antara 1985 hingga 2005 ini memperingatkan 50 Cent tentang &quot;kotornya&quot; dunia tinju profesional.<br />\r\n<br />\r\n&quot;Anda harus tahu tentang dunia tinju. Ini merupakan bisnis yang legal, tetapi tidak semua berjalan terbuka,&quot; kata Tyson. &quot;Memang seharusnya bisnis ini dikelola pemerintah.&quot;<br />\r\n<br />\r\n&quot;50 (Cent) adalah seorang bintang rap, penghibur, dan enterpreneur. Namun, ia sama sekali tidak mengerti dunia tinju,&quot; lanjut juara dunia tinju kelas berat 1986-1990 ini.<br />\r\n<br />\r\nMenurut Tyson, pengetahuan tentang tinju diperoleh 50 Cent hanya versi dari Floyd Mayweather.&nbsp; &quot;Begitu dia berkecimpung di dunia ini, ia harus tahu bahwa kawan bisa menjadi lawan,&quot; kata Tyson. &quot;Mereka hanya inginkan uang Anda dan ingin terus menguasai dunia ini.&quot;<br />\r\n<br />\r\n50 Cent mendapatkan izin promotornya di New York pada Juli lalu, dan mendapat izin usahanya di Nevada. Saat ini mereka telah mengikat beberapa petinju potensial, seperti petinju kelas bulu Yuriorkis Gamboa dari Kuba dan Billy Dib dari Australia.</p>\r\n', 'Mike Tyson', 'Minggu', '2018-04-22', '10:56:30', 'mike-tyson.jpg', 2, 'olahraga', 'Y'),
(639, 23, 'admin', 'Hilman Hariwijaya dan Eko Patrio akan Re-cycle Film', '', '', 'hilman-hariwijaya-dan-eko-patrio-akan-recycle-film', 'N', 'N', 'N', '<p>Jakarta - Kabar gembira bagi Anda pecinta novel maupun serial Lupus. Pasalnya, tokoh fiksi rekaan Hilman Wijaya ini akan segera diangkat ke layar lebar oleh rumah produksi eKomando Production.<br />\r\n<br />\r\n&quot;Nanti mau produksi film Lupus, kita re-cycle. Kita mudain lagi,&quot; ujar Eko, pemilik eKomando Production, saat ditemui di kawasan dr Saharjo, Jakarta, Kamis (16/8/2012).<br />\r\n<br />\r\nFilm Lupus diangkat kembali ke layar lebar bukan tanpa alasan. Menurut Eko, tokoh Lupus merupakan anak muda yang konyol tetapi inspiratif. Setiap seri Lupus selalu mengangkat unsur persahabatan. Tak ada nuansa politis atau hal lainnya.<br />\r\n<br />\r\n&quot;Di Lupus ada persahabatan yang abadi, bahu-membahu. Tidak pernah berkaitan dengan masalah politik dan sebagainya. Di sini pure banget yang diangkat pertemanan,&quot; tambah Eko.<br />\r\n<br />\r\nSaat ini skenario sudah rampung dibuat oleh penulisnya, Hilman Hariwijaya. Meski demikian, tokoh Lupus hingga saat ini belum ditentukan. Rencananya, Lupus mulai tayang di bioskop pada Februari 2013, bertepatan dengan Hari Valentine.</p>\r\n', '', 'Minggu', '2018-04-22', '11:11:01', 'eko-patrio.jpg', 0, 'film,hiburan', 'Y'),
(640, 23, 'admin', 'Marvel Umumkan Jadwal Rilis The Avengers 2', '', '', 'marvel-umumkan-jadwal-rilis-the-avengers-2', 'N', 'N', 'N', '<p>Los Angeles - The Avengers is back. Setelah memastikan Joss Whedon bakal kembali berada di balik layar, Marvel juga mengumumkan jadwal penayangan perdana The Avengers 2.<br />\r\n<br />\r\nRencanannya, film kumpulan para superhero ini akan dirilis pada tanggal 1 Mei 2015 mendatang setelah mereka menanyangkan film-film terkaitnya seperti Iron 3, Captain America 2 dan Thor 2.<br />\r\n<br />\r\nMeski belum memiliki judul, Marvel dan Disney sudah siap untuk kembali memproduksi film terlaris ketiga box office sepanjang masa. &quot;Walt Disney telah mengumumkan tanggal perilisan sekuel dari film blockbuster superhero terbesar dan film terlaris ketiga sepanjang masa, The Avengers,&quot; tulisnya dalam rilis yang dilansir Digital Spy.<br />\r\n<br />\r\n&quot;Josh Whedon akan kembali menulis naskah dan menyutradarai sekuel Avengers ini dan akan dirilis pada 1 Mei 2015,&quot; tambah Marvel.<br />\r\n<br />\r\nMenyusul pengumuman tersebut, bisa dipastikan bahwa para bintang The Avengers seperti Robert Downey Jr, Chris Hemsworth dan Chris Evens akan kembali tampil untuk memeriahkan film tersebut.</p>\r\n', 'The Avengers', 'Minggu', '2018-04-22', '00:13:57', 'avangers.jpg', 0, 'film,hiburan', 'Y'),
(641, 23, 'admin', 'Film Dirilis, Dewi Lestari Deg-degan Menunggu Pemutaran', '', 'http://www.youtube.com/embed/QgDWRe1TNRg', 'film-dirilis-dewi-lestari-degdegan-menunggu-pemutaran', 'N', 'N', 'N', '<p>Jakarta -&nbsp; Penulis novel laris &quot;Perahu Kertas&quot;, Dewi Lestari, mengaku tegang menjelang penayangan perdana film Perahu Kertas di bioskop hari ini. &quot;Sangat deg-degan,&quot; kata penulis dengan nama pena Dee itu usai jumpa pembaca novel Perahu Kertas di Gramedia Matraman, Jakarta, Kamis. Film yang diangkat dari novel setebal 456 halaman itu sudah tayang khusus untuk media dan undangan Rabu (8/8/2012) lalu.<br />\r\n<br />\r\n&quot;Kalau yang kemarin kan baru wartawan dan undangan, tetapi kalau sekarang yang dihadapi real judgment (penilaian nyata), sekarang penonton yang menilai. Lama film tayang di bioskop kan ditentukan dari penonton,&quot; kata Dee.<br />\r\n<br />\r\nFilm&nbsp; Perahu Kertas disutradarai oleh Hanung Bramantyo. Artis muda Maudy Ayunda dan Adipati Dolken yang pernah beradu akting di film&nbsp; Malaikat Tanpa Sayap menjadi pemeran utama film tersebut.<br />\r\n<br />\r\nMeskipun ada beberapa adegan film yang berbeda dengan kisah dalam novel namun Dee mengatakan hampir 80 persen jalan cerita film Perahu Kertas&nbsp; sama dengan novel.<br />\r\n<br />\r\n&quot;Kalau ada yang protes itu risiko ya, pasti ada dan buat saya itu wajar. Komparasi pasti terjadi. Tetapi sebagai film, Perahu Kertas solid,&quot; kata ibu dua anak itu.</p>\r\n', '', 'Minggu', '2018-04-22', '00:12:20', 'dewilestari.jpg', 0, 'film,hiburan', 'Y'),
(642, 39, 'admin', 'Israel, Tumor yang Harus Dihancurkan dari Muka Bumi', '', '', 'israel-tumor-yang-harus-dihancurkan-dari-muka-bumi', 'Y', 'N', 'N', '<p>Teheran - Israel adalah &quot;tumor kanker&quot; yang akan segera dihancurkan, kata Presiden Iran, Mahmoud Ahmadinejad, Jumat (17/8/2012), kepada para demonstran yang melakukan protes tahunan terhadap eksistensi negara Yahudi itu.<br />\r\n<br />\r\n&quot;Rezim Zionis dan warga Zionis adalah satu tumor kanker. Kendatipun satu sel dari mereka dikeluarkan dalam satu inci tanah (Palestina), pada masa depan sejarah ini (bagi eksistensi Israel) akan terulang kembali,&quot; katanya dalam satu pidato di Teheran untuk memperingati Hari Quds Iran yang disiarkan langsung televisi negara itu.<br />\r\n<br />\r\n&quot;Negara-negara dari kawasan ini akan segera mengusir kaum Zionis perampas tanah Palestina.... Sebuah Timur Tengah baru pasti dibentuk. Dengan bantuan Allah dan negara-negara kawasan ini, Timur Tengah baru tidak akan ditemukan lagi orang-orang Amerika dan Zionis,&quot; katanya.<br />\r\n<br />\r\nPeringatan itu dilakukan pada saat ketegangan meningkat antara Israel dan Iran menyangkut program nuklir Iran yang disengketakan itu.<br />\r\n<br />\r\nIsrael pekan-pekan belakangan ini meningkatkan ancaman-ancamannya untuk menghancurkan fasilitas-fasilitas nuklir Iran guna mencegah Teheran mampu memproduksi senjata-senjata atom. Iran yang terkena sanksi-sanksi Barat membantah tuduhan itu dan menegaskan bahwa program nuklirnya hanya untuk tujuan damai. Militernya memperingatkan akan menghancurkan Israel jika diserang.<br />\r\n<br />\r\nTelevisi Pemerintah Iran menunjukkan, massa berpawai di bawah sinar matahari yang menyengat di Teheran dan kota-kota lain negara itu untuk memperingati Hari Quds (Jerusalem) yang bertujuan membebaskan kota Jerusalem, yanga akan dijadikan ibu kota negara Palestina masa depan (Israel juga bersikeras untuk menjadikan Jerusalem sebagai ibu kotanya).<br />\r\n<br />\r\nPara pengunjuk rasa membawa bendera-bendera Palestina dan foro-foto pemimpin tertinggi Iran, Ayatollah Ali Khamenei, dan spanduk bertuliskan &quot;Ganyang Israel&quot; dan &quot;Ganyang Amerika&quot;. Satu kelompok orang di Teheran terlihat membakar satu bendera Israel.<br />\r\n<br />\r\nUnjuk rasa itu telah menjadi kegiatan tahunan selama Ramadhan di Iran sejak Revolusi Islam tahun 1979. Para pengunjuk rasa menegaskan antipati Iran terhadap Israel dan sekutunya Amerika Serikat serta mendukung perjuangan rakyat Palestina, yang Khamenei sebut &quot;satu tugas agama.&quot;<br />\r\n<br />\r\nPemimpin tertinggi itu, Rabu, menyebut Israel sebagai &quot;hasil pertumbuhan Zionis gadungan dan palsu&quot; di Timur Tengah yang &quot;akan dilenyapkan&quot;.<br />\r\n<br />\r\nPemimpin Pengawal Revolusi yang berpengaruh, Jenderal Mohammed Ali Jafari, mengemukakan kepada kantor berita Fars, ketika menghadiri unjuk rasa di Teheran itu, bahwa &quot;negara Iran sekarang berada di garis depan perlawanan regional anti-Israel dalam menunjukkan kebenciannya pada Israel.&quot; Ia menambahkan, Iran tetap mempertahankan sikap tegas itu.<br />\r\n<br />\r\nAhmadinejad dalam pidatonya menyatakan, Zionis menimbulkan perang dunia pertama dan kedua, dan &quot;menguasai masalah-masalah dunia, sejak saat itu mereka menguasai Pemerintah AS.&quot;</p>\r\n', '', 'Minggu', '2018-04-22', '07:17:57', 'ahmaddinejad.jpg', 9, 'internasional', 'Y'),
(643, 42, 'admin', 'Fatima Nabil, Presenter TV Berjilbab Pertama di Mesir', '', '', 'fatima-nabil-presenter-tv-berjilbab-pertama-di-mesir', 'N', 'N', 'N', '<p>Kairo - Fatima Nabil mencatat sejarah. Ia menjadi presenter pertama yang berjilbab yang muncul di televisi milik pemerintah Mesir. Dalam balutan jilbab berwarna krem, dan jas hitam Fatima membacakan buletin berita siang, Minggu 2 September 2012.&nbsp;</p>\r\n\r\n<p>&quot;Akhirnya revolusi juga terjadi di televisi milik pemerintah,&quot; kata Nabil. Ia berharap kemunculannya ini diikuti tak hanya presenter berita tapi juga presenter cuaca dan lainnya.</p>\r\n\r\n<p>&quot;Saat ini, standar bukan tergantung pada jilbab, yang sebenarnya merupakan pilihan pribadi setiap perempuan. Tapi lebih pada profesionalitas dan intelektual,&quot; ujarnya.</p>\r\n\r\n<p>Sejak televisi pemerintah ini berdiri tahun 1960, dibawah rejim Presiden Hosni Mubarok, perempuan yang mengenakan jilbab dilarang menjadi presenter. Aturan ini sempat ditentang sejumlah aktivis hak asasi dan kelompok liberal, namun kandas.</p>\r\n\r\n<p>Pemerintah baru yang dipimpin Presiden Mohammed Mursi, mencabut aturan ini. Menteri Informasi Baru Saleh Abdel-Makshoud mengatakan sudah banyak perempuan berjilbab yang muncul sebagai presenter di channel-channel televisi Arab dan internasional. Jadi perubahan ini tak menjadi masalah apalagi saat ini hampir 70% perempuan Mesir mengenakan jilbab.</p>\r\n\r\n<p>Petinggi stasiun televisi tersebut mengatakan munculnya Nabila bisa membangkitkan semangat perempuan lain yang ingin tetap mempertahankan jilbab mereka tanpa harus takut kehilangan pekerjaan. (Sumber: Tempo.co)</p>\r\n', 'Fatima Nabil', 'Minggu', '2018-04-22', '11:10:10', 'fatima_nabil.jpg', 0, 'internasional', 'Y'),
(650, 22, 'admin', 'Roy Suryo Menpora, SBY Dipertanyakan', '', '', 'roy-suryo-menpora-sby-dipertanyakan', 'Y', 'N', 'N', '<p>Pengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.</p>\r\n\r\n<p>Menurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. &quot;Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,&quot; kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.</p>\r\n\r\n<p>Karena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. &quot;Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,&quot; katanya. (sumber: republika.co.id)</p>\r\n', 'Roy Suryo saat dilantik jadi Menpora', 'Minggu', '2018-04-22', '07:14:42', 'roy_suryo.jpg', 2, '', 'Y'),
(651, 21, 'admin', 'Banjir Jakarta, Kerugian Ekonomi Capai Rp 1 Triliun', 'Jakarta Darurat Banjir', 'http://www.youtube.com/embed/RQMbr4DBqXk', 'banjir-jakarta-kerugian-ekonomi-capai-rp-1-triliun', 'N', 'N', 'Y', '<p>Ketua Asosiasi Pengusaha Indonesia Sofjan Wanandi mengatakan, banjir yang melanda Jakarta sepekan ini telah menimbulkan kerugian ekonomi yang cukup tinggi. Biaya bencana yang ditanggung untuk sekadar menyediakan makan&nbsp; bagi para pengungsi pun mencapai Rp 1 miliar lebih.</p>\r\n\r\n<p>Hal itu disampaikan Sofjan, saat ditemui di area bencana banjir di Penjaringan, Jakarta Utara, Minggu (20/1/2013).</p>\r\n\r\n<p>Sofjan menegaskan, tak bergeraknya roda ekonomi di Jakarta akibat bencana banjir menyebabkan kerugian lebih dari Rp 1 triliun. Aktivitas perdagangan menjadi tidak berjalan, dan kawasan Industri Pulogadung juga ikut lumpuh karena tak memperoleh suplai listrik akibat gardu listrik terendam banjir.</p>\r\n\r\n<p>Negara importir pun, katanya, mulai mempertanyakan kapan Jakarta bisa pulih, karena ini sangat terkait dengan kegiatan ekspor komoditas keluar negeri dari seluruh daerah di Indonesia yang bertumpu di Jakarta.</p>\r\n\r\n<p>&rdquo;Importir itu mulai bertanya-tanya, kapan banjir di Jakarta bisa surut. Kendati mereka saat ini memahami Jakarta sedang dilanda bencana,&rdquo; kata Sofjan. (sumber: kompas.com)</p>\r\n', 'Banjir di daerah Pluit', 'Minggu', '2018-04-22', '07:57:25', 'prediksi-banjir-jakarta.jpg', 13, '', 'Y'),
(652, 22, 'admin', 'Hary Tanoe Mundur dari Partai Nasdem', '', '', 'hary-tanoe-mundur-dari-partai-nasdem', 'N', 'Y', 'N', '<p>\r\nKetua Dewan Pakar DPP Partai Nasional Demokrat (Nasdem) Hary Tanoesoedibjo menyatakan mundur dari keanggotaan Partai Nasdem. Hal itu disampaikannya secara resmi dalam jumpa pers, Senin (21/1/2013), di Jakarta.\r\n</p>\r\n<p>\r\n&quot;Saya menyatakan mundur dalam kapasitas saya sebagai Ketua Dewan Pakar. Mulai hari ini, saya bukan lagi anggota dari Partai Nasdem. Keputusan ini saya lakukan dengan berat hati,&quot; kata Hary.\r\n</p>\r\n<p>\r\nIa menyatakan, sejak bergabung dengan Partai Nasdem pada 9 Oktober 2011, Hary merasa telah melakukan upaya terbaik, baik energi, pikiran, dana, maupun risiko, untuk berpartisipasi membesarkan Partai Nasdem. &quot;Target utamanya lolos verifikasi dan lolos sebagai partai peserta pemilu. Saya merupakan bagian yang ikut meloloskan Nasdem,&quot; kata bos MNC Grup ini.\r\n</p>\r\n<p>\r\n&quot;Keputusan saya ini tidak mengenakkan, tapi pada satu titik saya harus memutuskan ini. Aktivitas politik harus tetap dijalankan. Destiny keterlibatan saya di politik adalah menjadi bagian dari perubahan untuk bangsa Indonesia menjadi lebih baik. Saya ingin ikut andil secara nyata, langsung. Karena bagaimanapun politik menjadi satu bagian ideologi dan bagian dari masa depan kita,&quot; papar Hary.\r\n</p>\r\n<p>\r\nPerpecahan di tubuh Nasdem mulai merebak ketika beredar kabar adanya faksi di dalam partai itu. Dikabarkan, Surya Paloh yang akan menjadi ketua umum partai itu berseberangan dengan faksi Hary Tanoe. Beberapa waktu lalu, kelompok Surya Paloh memecat Sekjen Garda Pemuda Nasional Demokrat (GPND), Saiful Haq.\r\n</p>\r\n<p>\r\nTentang alasannya mundur, Hary mengatakan karena ada perbedaan pendapat dengan Ketua Majelis Tinggi Partai Nasdem Surya Paloh (sumber: kompas.com) \r\n</p>\r\n', 'Hary Tanoe saat memberikan keterangan pers', 'Jumat', '2013-01-25', '00:58:26', '', 14, 'politik', 'Y'),
(653, 41, 'admin', 'Ketika kata Ciyus Terucap dari Mulut Jokowi', '', '', 'ketika-kata-ciyus-terucap-dari-mulut-jokowi', 'N', 'Y', 'N', '<p>Kata <em>ciyus</em> atau serius sering terdengar diucapkan anak-anak zaman sekarang yang sering dijuluki anak baru gede (ABG). Nah, ketika bahasa gaul itu diucapkan oleh Joko Widodo, para pewarta yang bertugas meliput kegiatan Gubernur DKI Jakarta itu tak bisa menahan tawa karena nadanya yang sedikit medok.</p>\r\n\r\n<p>Terhitung sudah dua kali Jokowi melontarkan kata itu kepada wartawan. Pertama, saat Jumat (18/1/2013) malam lalu, ketika Jokowi meninjau perbaikan Tanggul Kanal Banjir Barat (KBB) di Latuharhary, Jakarta Pusat. Seharian raut muka Jokowi begitu serius dan tegang karena pengerjaan tanggul yang masih belum selesai, ditambah hujan deras yang terus mengguyur Ibu Kota. Pendek kata, Jokowi tampak sangat suntuk dan senyum khasnya pun tak terpancar dari dirinya.</p>\r\n\r\n<p>Saat itu, Jokowi menghampiri wartawan yang sudah menunggunya di luar rel kereta api yang terputus. Lantas para wartawan berniat mencairkan suasana dengan melontarkan pertanyaan-pertanyaan konyol kepada Jokowi, seperti &quot;Apabila tanggul selesai, ditandai oleh pemotongan pita di Sency (Senayan City)?&quot;. Mendengar pertanyaan itu, senyum yang hilang dari Jokowi akhirnya muncul kembali.</p>\r\n\r\n<p>Seraya mengernyitkan dahinya, Jokowi bertanya, &quot;Apa itu Sency?&quot; Wartawan pun langsung menjelaskan kalau Sency itu adalah kependekan dari Senayan City. Mengetahui hal tersebut, Jokowi pun tertawa dan mengatakan kalau berbicara hendaknya jangan disingkat-singkat. &quot;Oh, <em>kirain </em>saya sensitif itu maksudnya. <em>Mbok</em>, jangan disingkat-singkat, <em>tho</em>,&quot; kata Jokowi.</p>\r\n\r\n<p>Pembicaraan itu pula yang membuat Jokowi melontarkan kata <em>ciyus</em> dan <em>miapah</em> kepada wartawan. &quot;Kalau <em>ciyus miapah </em>itu apa? Ha-ha-ha,&quot; kata Jokowi yang membuat suasana lokasi tersebut yang awalnya tegang menjadi ramai.</p>\r\n\r\n<p>Kata <em>ciyus </em>kembali diucapkan Jokowi, Selasa (22/1/2013) kemarin, saat berbincang dengan wartawan di Balaikota DKI. Bahasa gaul itu keluar kembali setelah ia ditanya terkait kinerjanya 100 hari.</p>\r\n\r\n<p>Saat itu, Jokowi ditanya masalah Jakarta apa yang membuat Jokowi pusing. Jokowi pun menjawab tak ada persoalan yang membuatnya pusing karena ia telah menghadapi masalah itu sejak ia memimpin Solo selama delapan tahun. Namun, ada satu masa Jokowi mengaku tidak memiliki semangat. &quot;Yaitu kalau pas B sama pas T. Apa itu? Pokoknya pas B sama pas T. <em>Ciyuss</em>,&quot; canda Jokowi yang mengundang tawa para wartawan. (sumber: kompas.com)</p>\r\n', '', 'Minggu', '2018-04-22', '07:36:47', 'jokowi_ciyus.jpg', 0, 'metropolitan', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(654, 31, 'admin', 'Bahaya Mendiagnosis Penyakit Lewat Internet', '', '', 'bahaya-mendiagnosis-penyakit-lewat-internet', 'N', 'Y', 'N', '<p>Apakah Anda mengunjungi &quot;dokter Google&quot; lebih sering dari dokter di klinik? Anda tidak sendiri. Dalam sebuah survei tahun lalu di Amerika diketahui bahwa 35 persen responden mencocokkan gejala penyakitnya di internet dan mendiagnosis dirinya sendiri.</p>\r\n\r\n<p>Masih menurut survei yang dilakukan The Pew Research Center&#39;s Internet &amp; American Life Project itu, sekitar 41 responden mengatakan diagnosis sendiri itu ternyata dikonfirmasi kebenarannya oleh dokter.</p>\r\n\r\n<p>Tetapi, sekitar satu dari tiga responden mengaku tidak pernah pergi ke dokter untuk mencari opini kedua. Malahan, 18 persen responden mengatakan bahwa upaya mendiagnosis sendiri itu ternyata salah ketika ditanyakan ke dokter.</p>\r\n\r\n<p>Meski survei yang melibatkan 3.000 responden itu sebenarnya dilakukan untuk mengetahui siapa yang mencari informasi kesehatan secara <em>online</em>, tetapi para profesional medis merasa khawatir dengan tren itu.</p>\r\n\r\n<p>&quot;Rata-rata tiap orang mengunjungi empat situs lalu memutuskan ia menderita kanker dan akan segera meninggal. Padahal, di internet banyak informasi yang keliru,&quot; kata Rahul K Khare, dokter unit gawat darurat dari Northwestern Memorial Hospital.</p>\r\n\r\n<p>Menurut Khare, ia sering menemukan pasien yang hidupnya menjadi penuh kecemasan karena mereka merasa menderita penyakit berat setelah mencocokkan gejala yang dirasakannya dengan informasi di internet. (sumber: kompas.com)</p>\r\n', '', 'Minggu', '2018-04-22', '07:29:21', 'Diagnosis-Penyakit.jpg', 0, 'kesehatan', 'Y'),
(655, 19, 'admin', 'Microsoft Update Windows 8.2 Agustus?', '', '', 'microsoft-update-windows-82-agustus', 'N', 'Y', 'Y', '<p>Kebocoran mengenai update OS Windows 8 yang kedua datang menghinggapi Microsoft. Windows 8.1 update 2 direncanakan diperbarui pada Agustus mendatang.<br />\r\n<br />\r\nMelalui sebuah gambar yang diklaim otentik berasal dari Rusia, informasi dari dokumen itu hampir sama dengan rumor yang beredar selama ini.<br />\r\n<br />\r\nSementara itu, update untuk Threshold masih menjadi rumor dan belum diketahui kapan akan dilaksanakan. Microsoft belum mengkonfirmasi apapun terkait gambar bocornya&nbsp;<em>update</em>&nbsp;windows 8.1 update 2 tersebut seperti dilansir&nbsp;<em>Neowin</em>, Senin (21/7/2014).<br />\r\n<br />\r\nBelum diketahui seperti apa detail fitur yang dihadirkan pada Windows 8.2. Sementara Windows 9 dikabarkan memiliki tampilan antarmuka Metro baru.<br />\r\n<br />\r\nSelain itu, terdapat menu start baru dan aplikasi Metro dengan tampilan jendela yang disertakan dalam&nbsp;<em>update&nbsp;</em>tersebut. Konon, Microsoft sedang mempertimbangkan membuat versi gratis dari Windows 9.<br />\r\n<br />\r\nInformasi yang beredar juga menyebutkan bahwa Microsoft sedang bekerja pada Windows Cloud. Menurut WZor, ada tim di Microsoft yang bekerja pada prototype sistem operasi, di mana pengguna bisa mengunduh gratis dan menambahkan fungsionalitas melalui sistem berlangganan.</p>\r\n', '', 'Sabtu', '2018-04-21', '23:55:12', '55Windows-8_2.png', 2, 'internasional,teknologi', 'Y'),
(656, 39, 'admin', 'Usai Bertempur, banyak Tentara Israel Hilang di Jalur Gaza', 'Terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.', 'http://www.youtube.com/embed/hkzpLJjZQbA', 'usai-bertempur-banyak-tentara-israel-hilang-di-jalur-gaza', 'Y', 'Y', 'Y', '<p><strong>YERUSALEM&nbsp;</strong>- Seorang tentara Israel dilaporkan menghilang di Jalur Gaza. Hal ini terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.<br />\r\n<br />\r\nMelansir&Acirc;&nbsp;<em>Boston Herald</em>, Selasa (22/7/2014), pejabat pertahanan Israel mengatakan, tentaranya hilang usai pertempuran mematikan di Gaza terjadi pada pekan lalu. Namun, tidak jelas apakah tentara tersebut masih hidup atau sudah tewas.<br />\r\n<br />\r\nKonflik yang terjadi antara Israel dan Hamas sejauh ini sudah menyebabkan sekira 25 tentara Israel tewas dan ratusan warga Palestina. Sebagian besar korban warga Palestina adalah anak-anak.<br />\r\n<br />\r\nMemanasnya situasi itu membuat sejumlah desakan gencatan berdatangan dari sejumlah negara dan organisasi internasional.<br />\r\n<br />\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.<br />\r\n<br />\r\nMengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas.<br />\r\n<br />\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.<br />\r\n<br />\r\nMengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israele dan Hamas.</p>\r\n\r\n<p>Komentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.<br />\r\n<br />\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.</p>\r\n\r\n<p>Komentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.<br />\r\n<br />\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.</p>\r\n', 'Tentara Israel Bersimbah Darah', 'Jumat', '2018-04-20', '09:51:42', 'tentara_israel_hilang_di_palestina.jpg', 43, 'yahudi,israel,palestina,internasional,hukum,teknologi', 'Y'),
(657, 39, 'admin', 'Unjuk Rasa Anti-Yahudi Dikecam Eropa', '', '', 'unjuk-rasa-antiyahudi-dikecam-eropa', 'N', 'Y', 'Y', '<p><strong>PARIS&nbsp;</strong><span>- Demo anti-Yahudi yang menyeruak di dunia mendapat kecaman dari negara besar di Eropa. Kecaman tersebut datang dari Jerman, Prancis dan Italia.</span><br /><br /><span>Melalui menteri luar negerinya, masing-masing negara mengutuk aksi unjuk rasa yang sering berujung dengan kericuhan dan tindak kekerasan.</span><br /><br /><span>\"Hasutan, permusuhan, serangan terhadap orang-orang Yahudi tidak memiliki tempat di masyarakat kami,\"&nbsp; sebut pernyataan gabungan tiga Menlu tersebut, seperti dikutip dari&nbsp;</span><em>DNA</em><span>, Rabu (23/7/2014).</span><br /><br /><span>Tidak bisa dipungkiri sejak agresi Israel dilancarkan, protes besar terjadi di beberapa negara. Di Prancis, unjuk rasa kelompok Pro-Palestina diakhiri pembakaran di sejumlah objek di depan toko yang dimiliki warga Yahudi.</span><br /><br /><span>Bahkan di negara ini, akibat memanasnya kondisi di Gaza, ketegangan antara kelompok Pro-Palestina dan warga Yahudi di Prancis acap kali terjadi. Prancis sendiri merupakan negara dengan populasi warga Yahudi terbanyak di Eropa.</span><br /><br /><span>Tidak hanya di Prancis, kondisi di Gaza pun jauh lebih buruk. Akibat pertempuran Hamas-Israel jumlah korban, khususnya dari warga sipil Palestina mencapai hampir 600 orang.</span></p>', '', 'Rabu', '2014-07-23', '14:37:32', '', 23, 'internasional,israel,palestina,yahudi', 'Y'),
(658, 39, 'admin', 'Inggris Bela Serangan Roket Hamas ke israel', '', '', 'inggris-bela-serangan-roket-hamas-ke-israel', 'N', 'Y', 'Y', '<p>LONDON - Seorang anggota Parlemen Inggris membela serangan roket yang dilesakkan oleh Hamas ke arah Israel. Namun pembelaannya itu diganjar dengan sanksi indisipliner terhadapnya.</p>\r\n\r\n<p>Anggota Parlemen Inggris dari Partai Liberal Demokrat, David Ward, lewat akun Twitter miliknya menulis pernyataan yang membela serangan roket dari Hamas.</p>\r\n\r\n<p>&quot;The big question is - if I lived in #Gaza would I fire a rocket? - probably yes. &#39;Pertanyaan besar saat ini, apabila saya tinggal di #Gaza apakah saya akan menembakkan roket? mungkin saja iya&#39;,&quot; tulis Ward dalam akun pribadinya, seperti dikutip The Guardian, Rabu (23/7/2014).</p>\r\n\r\n<p>Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.</p>\r\n\r\n<p>Sementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.</p>\r\n\r\n<p>&quot;Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,&quot; ucap pihak Konservatif.</p>\r\n\r\n<p>Ini bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.</p>\r\n', '', 'Minggu', '2018-04-22', '11:15:29', 'hamas_inggris.jpg', 0, 'yahudi,israel,palestina,internasional,hukum', 'Y'),
(659, 39, 'admin', 'Target-Target Serangan Israel di Gaza', '', '', 'targettarget-serangan-israel-di-gaza', 'N', 'Y', 'Y', '<p><strong>GAZA</strong>&nbsp;- Israel makin gencar melakukan serangan ke Gaza, baik melalui udara maupun darat. Masjid menjadi salah satu target serangan dari Negara Yahudi itu.<br />\r\n<br />\r\nSekira 15 warga Palestina dilaporkan tewas dan 20 lainnya dalam serangan udara Isarel ke sebuah masjid di Kota Gaza pada Sabtu 19 Juli 2014 lalu. Masjid itu terletak tidak jauh dari rumah milik Komandan Polisi Gaza.<br />\r\n<br />\r\nRudal-rudal dari Israel menghancurkan sebagian dari bangunan masjid. Alquran yang berada di dalam masjid pun tampak rusak akibat serangan. Demikian diberitakan&nbsp;<em>Associated Press</em>, Rabu (23/7/2014).<br />\r\n<br />\r\nSelain itu, serangan Israel juga diarahkan ke rumah sakit yang berada di Gaza. Blokade yang dilakukan oleh Israel makin membuat rumah sakit sulit untuk beroperasi.<br />\r\n<br />\r\nKementerian Kesehatan Gaza menjelaskan, blokade telah memperburuk kualitas hidup warga yang terluka akibat konflik ini. 136 obat yang diperlukan sudah makin menipis dan diperkirakan akan habis dalam waktu beberapa hari ke depan.<br />\r\n<br />\r\nKantung kekuatan Hamas menjadi target penting yang diincar oleh Israel. Namun serangan terhadap basis kekuatan Hamas tersebut justru lebih sering menimpa warga sipil.<br />\r\n<br />\r\nHingga saat ini lebih dari 630 warga Palestina dilaporkan tewas dalam serangan yang dilakukan Israel ke Gaza. Sementara 30 warga Israel dilakukan turut tewas dalam pertempuran yang sudah berlangsung sekira 15 hari tersebut.</p>\r\n', '', 'Minggu', '2018-04-22', '11:14:45', 'target_israel.jpg', 0, 'yahudi,israel,palestina', 'Y'),
(660, 39, 'admin', 'Hamas Sebut Perdana Mentri Israel Kejam Sama seperti Hitler', '', '', 'hamas-sebut-perdana-mentri-israel-kejam-sama-seperti-hitler', 'N', 'Y', 'Y', '<p><strong>GAZA&nbsp;</strong>- Pernyataan keras disampaikan Hamas kepada Israel. Faksi garis keras Palestina ini menyamakan Perdana Menteri (PM) Israel, Benjamin Netanyahu dengan pemimpin Nazi, Adolf Hitler.<br />\r\n<br />\r\nCercaan Hamas ini disampaikan oleh Juru Bicaranya Osama Hamdan. Menurut Hamdan, pernyataan ini muncul akibat&nbsp; yang dilakukan Israel kepada warga Gaza, sama persis dengan pembantaian warga Yahudi oleh Hitler.<br />\r\n<br />\r\n&quot;PM Israel sudah kehilangan moral dia adalah cerminan dari Hitler dan tentara Nazi,&quot; sebut Hamdan, seperti dikutip dari&nbsp;<em>Times of Israel</em>, Rabu (23/7/2014).<br />\r\n<br />\r\n&quot;Pasukan Israel juga berlaku sama (dengan tentara Nazi) mereka disuruh membunuh warga Palestina jika, ini sama saja dengan yang dilakukan Hitler di abad lalu,&quot; tambah dia.<br />\r\n<br />\r\nPernyataan Hamdan disampaikannya bukan tanpa alasan. Setelah Israel melancarkan agresi ke Gaza, hampir 600 warga Palestina menjadi korban jiwa kekejaman Israel.<br />\r\n<br />\r\nParahnya lagi, korban jiwa dari Palestina kebanyakan adalah bocah dan perempuan. Hal tersebut bertentangan dengan pernyataan PM Israel yang mengatakan, serangan ke Gaza ditujukan untuk menghancurkan Hamas.</p>\r\n', '', 'Minggu', '2018-04-22', '11:13:58', 'hamas.jpg', 1, 'yahudi', 'Y'),
(661, 39, 'admin', 'Banyak Gereja yang Tampung Pengungsi Muslim Palestina', '', '', 'banyak-gereja-yang-tampung-pengungsi-muslim-palestina', 'N', 'Y', 'Y', '<p><strong>GAZA&nbsp;</strong>- Agresi Israel di Gaza meninggalkan duka mendalam bagi warga Palestina. Tidak hanya kehilangan nyawa, warga Palestina yang selamat harus tega melihat rumah mereka porak poranda dihancurkan Israel.<br />\r\n<br />\r\nPenduduk Palestina pun saat ini&nbsp; tinggal di tempat-tempat penampungan sementara. Salah satu tempat penampungan yang ada di Gaza adalah sebuah gereja Orthodoks Yunani, Santo Porphyrius.<br />\r\n<br />\r\nGereja ini menampung hampir 1.000 pengungsi Palestina yang mayoritas bergama Islam. Tidak hanya menyediakan tempat tinggal, Gereja Santo Porphyrius turut memberikan makanan, minuman, selimut, tempat duduk, mainan dan bahkan halaman belakang yang biasa digunakan bocah Palestina bermain sepak bola.<br />\r\n<br />\r\n&quot;Kami membuka gereja untuk menolong warga, ini sudah menjadi tugas gereja dan kami akan membantu mereka sekuat tenaga,&quot; sebut salah satu pengurus gereja, Archbishop Alexios, seperti dikutip dari&nbsp;<em>Arab News</em>, Rabu (23/7/2014).<br />\r\n<br />\r\n&quot;Awalnya ada 600 warga dan sekarang sudah ribuan, kebanyakan dari mereka adalah peremupuan, anak-anak dan orang tua yang kondisinya lemah,&quot; tambah dia.<br />\r\n<br />\r\nGereja Santo Porphyrius memang bukan tempat yang paling aman bagi pengungsi Palestina. Pasalnya, tidak lama setelah para pengungsi berdatangan, roket dari Israel menerjang daerah dekat gereja tersebut.<br />\r\n<br />\r\nNamun hal ini dapat menjadi bukti bagaimana agresi Israel tidak meruntuhkan semangat warga Palestina untuk tetap bersatu dan saling membantu tanpa memandang ras, etnis atau agama.<br />\r\n<br />\r\nSekedar informasi, warga Kristen Palestina merupakan penduduk minoritas. Jumlah mereka hanya sekitar 1.400 jiwa.&nbsp;</p>\r\n', '', 'Minggu', '2018-04-22', '11:13:08', 'penduduk_palestina_sembunyi_di_gereja.jpg', 1, 'palestina', 'Y'),
(662, 39, 'admin', 'Iran Dorong dan dukung Palestina Terus untuk Melawan Israel', '', '', 'iran-dorong-dan-dukung-palestina-terus-untuk-melawan-israel', 'N', 'Y', 'Y', '<p><strong>TEHERAN&nbsp;</strong>- Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel.<br />\r\n<br />\r\n&quot;Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,&quot; sebut Khamenei, seperti dikutip dari&nbsp;<em>IRNA,&nbsp;</em>Kamis (24/7/2014).<br />\r\n<br />\r\nKhamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.<br />\r\n<br />\r\nKomentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.<br />\r\n<br />\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.</p>\r\n', 'Iran Dorong Palestina Terus Lawan Israel', 'Minggu', '2018-04-22', '11:12:16', 'menlu_palestina.jpg', 6, 'palestina', 'Y'),
(664, 23, 'admin', 'Jokowi janji mati-matian akan bela Palestina jika jadi presiden', '', '', 'jokowi-janji-matimatian-akan-bela-palestina-jika-jadi-presiden', 'N', 'Y', 'Y', '<p><strong>Merdeka.com -&nbsp;</strong>Capres&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong>&nbsp;kembali menegaskan dukungannya untuk kemerdekaan 100 persen bagi Palestina.&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong>&nbsp;berjanji akan mati-matian membela negeri yang dijepit Israel ini.<br />\r\n<br />\r\n&quot;Kita lihat apa yang mereka butuhkan. Mereka butuh tandatangan untuk dukungan ya kita tanda tangan. Mereka butuh diplomasi ya diplomasi. Butuh kedutaan ya kita buka kedutaan,&quot; kata&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong>&nbsp;saat bertemu relawan seluruh Jakarta di GOR Yudo, Kelapa Gading, Kamis (26/6).<br />\r\n<br />\r\n&quot;Ini dukungan tanpa reserve,&quot; tegas&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong>.<br />\r\n<br />\r\nSebelumnya&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong>&nbsp;sudah menyatakan dukungannya pada kemerdekaan Palestina.&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong>&nbsp;juga mendukung Palestina menjadi anggota Perserikatan Bangsa-Bangsa (PBB).<br />\r\n<br />\r\n&quot;Saya dan&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/m/muhammad-jusuf-kalla/\">JK</a></strong>&nbsp;mendukung penuh Palestina menjadi negara merdeka dan mendukung penuh Palestina menjadi anggota penuh Dewan Perserikatan Bangsa-Bangsa (PBB),&quot; kata&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong>&nbsp;dalam pemaparan visi misi di debat capres di Hotel Holiday Inn, Kemayoran, Jakarta Pusat, Minggu (22/6).</p>\r\n\r\n<p>Bagaimana lontaran-lantaran Gubernur DKI Jakarta ini soal kebebasan Palestina dari tangan Israel. Tentu akan menarik jika kita menyaksikan secara langsung cara diplomasi yang dilakukan tokoh yang dikenal dengan blusukannya ini. Apakah Jokowi akan blusukan juga ke jalur Gaza? Atau hanya diplomasi wacana yang dilakukan para tokoh politik pada umumnya.</p>\r\n\r\n<p><span style=\"color:#c0c0c0\">Sumber :&nbsp;http://www.merdeka.com/peristiwa/jokowi-janji-mati-matian-bela-palestina.html</span></p>\r\n', '', 'Minggu', '2018-04-22', '00:10:47', 'jokowi.jpg', 3, 'nasional', 'Y'),
(665, 23, 'admin', 'Risma berjanji Akan Tolak Tawaran Jadi Menteri apapun yang terjadi', '', '', 'risma-berjanji-akan-tolak-tawaran-jadi-menteri-apapun-yang-terjadi', 'N', 'Y', 'Y', '<h3>&quot;Saya tidak ingin. Saya masih punya janji, saya di Surabaya saja.&quot;</h3>\r\n\r\n<p>Wali Kota Surabaya Tri Rismaharini mengaku tidak tertarik masuk ke dalam kabinet Joko Widodo-Jusuf Kalla.&nbsp;<br />\r\n<br />\r\nRisma mengatakan masih punya janji pada warga Surabaya. Sehingga dia ingin menuntaskan janjinya memimpin Surabaya hingga berakhir.<br />\r\n<br />\r\n&quot;Tidak, tidak. Saya tidak ingin (masuk kabinet). Saya masih punya janji, saya di Surabaya saja,&quot; kata Risma, Kamis 24 Juli 2014.<br />\r\n<br />\r\nHingga saat ini pun Risma mengaku belum mendapatkan tawaran apa pun untuk masuk dalam kabinet Jokowi-JK. Menurut Risma, selama bertemu dengan pimpinan partai, tak ada perbincangan soal kabinet.<br />\r\n<br />\r\nNamun dia menegaskan kalaupun ada tawaran, dia tetap akan menuntaskan janjinya pada masyarakat Surabaya. &quot;Kalau nanti ada yang&nbsp;<em>nawari</em>, ya nanti saja,&quot; ujarnya.<br />\r\n<br />\r\nDi media sosial Facebook muncul polling nama-nama untuk duduk di kabinet Jokowi-JK. Salah satunya Tri Rismaharini. Wali Kota Surabaya itu ditempatkan sebagai Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi.<br />\r\n<br />\r\nPolling itu diakui Jokowi untuk meminta masukan kepada masyarakat terkait siapa-siapa saja yang tepat untuk mengisi kabinetnya lima tahun ke depan.</p>\r\n\r\n<p>Sumber :&nbsp;http://politik.news.viva.co.id/news/read/524505-jabatan-belum-tuntas--risma-akan-tolak-tawaran-jadi-menteri/</p>\r\n', '', 'Minggu', '2018-04-22', '00:09:45', 'Tri-Rismaharin.jpg', 2, 'nasional', 'Y'),
(666, 19, 'admin', 'Pentax Q-S1 Kamera Mirorless Style Retro', '', '', 'pentax-qs1-kamera-mirorless-style-retro', 'N', 'Y', 'N', '<p>Q-S1 ini menawarkan ISO sampai 12,800 dengan kecepatan shutter sampai 1/2000 detik , selain itu kamera kompak ini pun menyertakan sensor gyro untuk mengurangi efek getaran atau goyangan. Kamera kompak retro ini pun mampu merekam video FULL HD dengan kecepatan 30fps dan mendukung 8 lensa yang kompatibel dengan Q-mount.</p>\r\n\r\n<p>Ada juga fungsi efek digital filter sebanyak 17 buah untuk menghasilkan efek bokeh, plus ada tambahan 21 mode adegan/scene serta mode 11 custom image. Layar LCDnya berukuran 3 inci beresolusi 460K dengan teknologi anti pantulan dan mendukung 170 derajat sudut pandang.</p>\r\n\r\n<p>Sayangnya kamera ini masih belum mendukung Wi-Fi yang mulai dibutuhkan untuk kemudahan berbagai foto.</p>\r\n\r\n<p>Q-S1 akan tersedia pada awal September 2014 dengan harga sekitar 500 USD untuk body saja dan 637 USD untuk kit dengan lensa 5-15mm.</p>\r\n', '', 'Sabtu', '2018-04-21', '23:53:46', 'cannon.png', 4, 'teknologi', 'Y'),
(667, 19, 'admin', 'Apple iWatch Bakal Dirilis Bulan Depan', '', '', 'apple-iwatch-bakal-dirilis-bulan-depan', 'N', 'Y', 'N', '<p>iWatch yang sudah lama dinanti-nanti oleh banyak pihak bakal secara resmi diluncurkan. Salah satu orang yang punya reputasi bagus dalam membocorkan informasi produk Apple, John Gruber, menyatakan bahwa iWatch akan direlease bulan depan.</p>\r\n\r\n<p>Peryataan seorang publisher asal Philadelphia ini memang dipercaya banyak orang sebagai kebenaran. Pasalnya, Apple akan menggelar event pada 9 September mendatang. Kemungkinan besar, iPhone 6 sekaligus iWatch bakal secara resmi direlease pada saat yang bersamaan saat itu juga. Keihatannya, Apple benar-benar sibuk untuk menyiapkan dua produk ini mengingat persaingann yang semakin berat. Dengan meluncurkan dua produk sekaligus, diharapkan bakal mendobrak pasar dan menciptakan momentum positif.</p>\r\n\r\n<p>Smartwatch ini diprediksi akan direlease dengan inovasi yang &ldquo;out of the box&rdquo; cirikhas Apple. iWatch diberitakan bakal menggunakan beberapa sensor yang dapat metrik-metrik kesehatan, seperti tingkat tekanan darah, tingkat denyut jantung atau bahkan tingkat gula darah si pengguna. Meski begitu, masih menjadi pernyataan bagaimana kualitas sistem internet yang ada pada iWatch.</p>\r\n', '', 'Sabtu', '2018-04-21', '23:49:09', 'iwatch.jpg', 3, 'teknologi', 'Y'),
(668, 41, 'admin', 'ROBOT Kecil Cikal Bakal Transformer segera relase untuk anak', '', '', 'robot-kecil-cikal-bakal-transformer-segera-relase-untuk-anak', 'N', 'Y', 'Y', '<p>Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah. Nah tapi jangan pernah berpikir kalau Transformer tidak mungkin terwujud di masa depan karena banyak film fiksi yang menjadi non fiksi berkat kecanggihan teknologi. Nah kali ini ada robot kecil yang mampu menampilkan kemampuan berubah diri dengan konsep lipatan karena terinspirasi dari ORIGAMI (seni melipat kertas Jepang) dan proses biologi.</p>\r\n\r\n<p>Walau robot yang Anda lihat ini bukan seperti robot keren seperti Transformer tapi robot origami hasil ciptaan periset dari MIT dan Harvard ini mampu merubah bentuk dari robot yang &ldquo;datar&rdquo; seperti kertas menjadi bentuk aslinya dengan empat kaki yang bisa berjalan.</p>\r\n\r\n<p>Desain robot ini juga terpinspirasi dari proses biologi seperti bagaimana amino acid membentuk protein dari struktur datar menjadi coil tiga dimensi.</p>\r\n\r\n<p>Robot ini memulai berubah bentuk saat panas diaplikasikan pada &ldquo; Shrinky dinks&rdquo; (nama material yang digunakan) sebagai bagian dari materi kertas komposit yang digunakan pada tubuh robot ini. Memang tampilan robot ini sangat sederhana dan tidak menarik karena memang robot ini menggunakan bahan yang sangat murah dan mereka ingin menghasilkan prototipe pertama untuk konsep transformasi robot yang mereka pikirkan dalam waktu yang singkat.</p>\r\n', '', 'Minggu', '2018-04-22', '07:35:07', 'Transformers.jpg', 25, 'teknologi', 'Y'),
(669, 31, 'admin', '5 Buah Penangkal Racun dalam Tubuh', '', '', '5-buah-penangkal-racun-dalam-tubuh', 'N', 'Y', 'N', '<p>Setiap hari tubuh memproduksi racun yang berasal dari udara yang dihirup dan makanan yang dikonsumsi. Akhirnya, racun pun memengaruhi kesehatan kita. Kulit mengalami kerusakan, pencernaan yang bermasalah, sampai ketidakseimbangan hormon, merupakan akibat dari racun yang ada di dalam tubuh.<br />\r\n<br />\r\nMaka itu, untuk membersihkan racun-racun dalam tubuh (detoksifikasi), dianjurkan untuk mengonsumsi beberapa jenis buah yang memiliki peran besar untuk hal ini.&nbsp;<br />\r\n<br />\r\nLemon kaya akan vitamin C, yang membantuh tubuh memproduksi glutation. Glutation adalah antioksidan yang membantu membuang racun yang ada di hati. Minum air lemon setiap hari, membantu mendetoksifikasi hati Anda. Selain sistem kekebalan yang baik, pencernaan pun turut merasakan manfaatnya.</p>\r\n\r\n<p>Buah nanas tidak hanya mengandung vitamin C, tapi juga mengandung enzim bromelain. Enzim ini dapat menenangkan dan membersihkan usus dari racun. Hal ini juga dikenal sebagai anti-inflamasi yang kuat, yang dapat membantu mengurangi rasa sakit akibat peradangan.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'Minggu', '2018-04-22', '07:28:10', 'buah_penangkal.jpg', 0, 'kesehatan', 'Y'),
(670, 31, 'admin', '7 Efek Buruk dari Konsumsi Obat Tidur', '', '', '7-efek-buruk-dari-konsumsi-obat-tidur', 'N', 'Y', 'N', '<p>Konsumsi obat tidur kerap dipilih bagi mereka yang mengalami kesulitan tidur atau insomnia. Mereka berpikir bahwa obat tidur mampu memberikan apa yang diinginkan, yaitu tidur dengan lelap. Namun kenyataannya, obat tidur tidak dapat mengobati kondisi tersebut, bahkan hanya memperburuk masalah saja.&nbsp;<br />\r\n<br />\r\nDi bawah ini beberapa jenis masalah terkait dengan pil tidur dan penggunaan yang terlalu berlebihan, seperti dikutip&nbsp;<em>Health Me Up</em>, Senin (11/8/2014):</p>\r\n\r\n<p>1. Efek samping dari obat tidur dapat membuat orang yang meminumnya merasa lupa, merasa pusing, bingung, dan sulit untuk berpikir keesokan harinya.</p>\r\n\r\n<p>2. Berlebihan dalam mengonsumsinya, akan memaksa Anda untuk meningkatkan asupannya agar Anda benar-benar tertidur. Sudah jelas, akan menimbulkan efek samping yang lebih besar.</p>\r\n\r\n<p>3. Terlalu sering mengonsumsi obat tidur akan membuat Anda ketergantungan yang berkepanjangan. Tidur lelap secara alami, tampaknya hanya mimpi yang jauh dari angan, yang hanya akan membuat Anda mengalami sulit tidur dan kerap merasa cemas.</p>\r\n\r\n<p>4. Jika Anda berhenti mengonsumsinya, secara perlahan tubuh akan menggigil, berkeringat, dan mual.</p>\r\n\r\n<p>5. Anda harus tahu bahwa obat tidur akan memengaruhi proses dari obat jenis lainnya yang sedang Anda konsumsi. Apakah itu obat pusing, demam, dan lain-lain.</p>\r\n\r\n<p>6. Kondisi akan semakin parah, saat Anda menggabungkannya dengan obat penghilang rasa sakit atau obat penenang.</p>\r\n\r\n<p>7. Anda harus menyadari bahwa masalah tidur mungkin menjadi pemicu terjadinya beberapa penyakit kesehatan mental, yang mendasari terjadinya gangguan tidur. Dan obat tidak selalu menjadi pilihan yang tepat.</p>\r\n', '', 'Minggu', '2018-04-22', '07:27:03', 'obat.png', 0, 'kesehatan', 'Y'),
(671, 23, 'admin', 'Ahli Kejiwaan pribadi Sebut Marshanda sungguh Keterlaluan', '', '', 'ahli-kejiwaan-pribadi-sebut-marshanda-sungguh-keterlaluan', 'N', 'Y', 'Y', '<p>LEWAT sebuah video berjudul &ldquo;The Truth Part #1&rdquo; yang diunggah ke Youtube Kamis (7/8) malam, Marshanda muncul menjelaskan insiden penjemputan paksa yang dia alami pada 26 Juli 2014 lalu.</p>\r\n\r\n<p>Saat itu, saat sedang berada di kamar apartemennya, Caca--sapaan akrabnya--mengaku didatangi oleh tak kurang dari 7 orang. Mereka terdiri dari 3&nbsp;petugas dari rumah sakit jiwa, petugas kepolisian, petugas keamanan apartemen, serta pengurus apartemen.</p>\r\n\r\n<p>Pada kesempatan itu, menurut Caca, perawat laki-laki dan perempuan memaksa dirinya untuk disuntuk dan dibawa ke rumah sakit untuk diopname.</p>\r\n\r\n<p>&ldquo;Aku enggak terima dan dengan hormat meminta mereka untuk keluar dari apartemen aku. Kareka aku sudah merasa enggak nyaman,&rdquo; bilang ibu satu anak itu.</p>\r\n\r\n<p>Namun sang perawat tetap pada pendiriannya dan kemudian menelepon dr. Richard Budiman, dokter ahli kejiwaan yang selama ini menangani Caca. Telepon itu kemudian diberikan kepada Caca.</p>\r\n\r\n<p>&ldquo;dr. Richard bilang, &#39;Ca, beberapa hari ini kamu sudah keterlaluan lho, Ca. Sudah banyak tindakan kamu yang keluar jalur, sudah banyak diomongin di TV&#39;,&rdquo; Caca menirukan apa yang dikatakan dr. Richard di seberang telepon.</p>\r\n\r\n<p>&ldquo;Saya enggak nangkap apa yang disebut keluar jalur secara psikis. Akhirnya saya bilang, yasudah dok, saya telepon pengacara saya dulu deh,&rdquo; lanjutnya.</p>\r\n\r\n<p>Usaha Caca untuk menghubungi pengacara OC Kaligis saat itu sia-sia. Teleponnya tak diangkat. Karena terus didesak, bintang sinetron &ldquo;Bidadari&rdquo; itu akhirnya pasrah menerima suntikan di lengan kanan dan kirinya.</p>\r\n', '', 'Minggu', '2018-04-22', '00:08:00', 'marshanda.jpg', 6, 'selebritis,metropolitan', 'Y'),
(672, 2, 'admin', '3 Cewek K-Pop Paling Hot Jalan Bersama', '', '', '3-cewek-kpop-paling-hot-jalan-bersama', 'N', 'Y', 'Y', '<p>Sudah banyak line seangkatan yang jadi perbincangan pecinta K-Pop. Tiap line punya keunikam masing-masing karena berisi artis idola dari boyband atau girlband populer.&nbsp;</p>\r\n\r\n<p>Tapi dari sekian pertemuan &nbsp;istimewa sesama idola, pertemuan 3 idola paling &quot;panas&quot; di industri hiburan K-Pop ini layak jadi pembicaraan. Ya, Soyu &quot;SISTAR&quot;, Min &quot;Miss A&quot;, dan Nicole eks. &quot;KARA&quot; secara mengejutkan &nbsp;memperlihatkan persahabatan<br />\r\nmereka.</p>\r\n\r\n<p>Min yang membocorkan pertemuan itu lewat akun Instagramnya, Rabu (6/8). Min mengunggah foto mereka bertiga sedang hangout bareng. Meski tak ada komentar, bukti foto adalah segalahnya. Dalam foto tampak mereka melakukan selfie saat sedang hangout bareng.&nbsp;</p>\r\n\r\n<p>Ketiganya saat ini sedang sibuk-sibuknya. Min tengah mempersiapkan konser JYP Nation, ONE MIC, Nicole tengah bertlatih untuk karier solonya, sedang Soyu sedang mempromosikan single baru SISTAR, Touch My Body. Min dan Nicole dikenal sebagai line &#39;91, namun selama ini diketahui paling akrab dengan Key &quot;SHINee&quot; dam Jinwoon &quot;2AM&quot;.&nbsp;</p>\r\n\r\n<p>Sedang Soyu sendiri saat ini anggota girlband paling sukses dengan single solonya. Menarik melihat pertemuan-pertemuan geng baru cewek ini.&nbsp;</p>\r\n', '', 'Minggu', '2018-04-22', '10:55:21', 'kpop.jpg', 43, 'selebritis,internasional', 'Y'),
(673, 23, 'admin', 'Dukungan penuh dari Orang tua Bagi Karier Jessica Mila', '', '', 'dukungan-penuh-dari-orang-tua-bagi-karier-jessica-mila', 'N', 'Y', 'N', '<p>Kelangsungan karier&nbsp;<a href=\"http://www.tabloidbintang.com/profile/jessica-mila\">Jessica Mila</a>&nbsp;tak lepas dari dukungan mendiang sang ayah, Bambang Sutejo, yang meninggal pada 3 Mei 2014, dalam usia 62 tahun.&nbsp;</p>\r\n\r\n<p>&quot;Papa sangat support karierku. Papa, apa pun yang aku lakukan, selalu support. Kuliahku, juga karierku, selalu support,&quot; tandasnya.&nbsp;</p>\r\n\r\n<p>Dukungan serupa ditunjukkan ibunda Mila, M. Baker. Merasa tak ada teman di rumah, ia kerap menemani Mila di lokasi syuting.&nbsp;</p>\r\n\r\n<p>&quot;Daripada di rumah, katanya mending Mama menemaniku. Bukan aku yang minta, Mama sendiri yang mau. Aku malah kasihan, Mama capek. Tapi Mama keukeuh, katanya enggak capek. Dia bilang, kalau menungguku, kan bisa tidur di mobil,&quot; cerita Mila.&nbsp;</p>\r\n', '', 'Minggu', '2018-04-22', '00:05:33', 'jessicamila.jpg', 49, 'selebritis', 'Y'),
(685, 2, 'admin', 'Crutchlow Finis di Posisi 19 MotoGP Amerika Serikat ', '', '', 'crutchlow-finis-di-posisi-19-motogp-amerika-serikat-', 'N', 'N', 'N', '<p><strong>AUSTIN&nbsp;</strong>&ndash; Pembalap Tim LCR Honda, Cal Crutchlow, harus menelan hasil yang buruk di seri ketiga MotoGP 2018 yang digelar di Circuit of the America (COTA), Austin, Amerika Serikat, pada Senin (23/4/2018) dini hari WIB. Crutchlow pun membeberkan penyebabnya finis di posisi ke-19 MotoGP Amerika Serikat 2018.</p>\r\n\r\n<p>Menurut Crutchlow, hasil minor ini didapatkan karena dirinya terjatuh saat melakoni balapan tersebut. Insiden ini terjadi di lap-lap awal ketika Crutchlow tengah berusaha merebut posisi pembalap di depannya.</p>\r\n\r\n<p>Crutchlow harus terjatuh ketika tengah memperebutkan posisi keenam bersama Johann Zarco dan Dani Pedrosa. Usahanya saat itu tak berjalan mulus karena laju motornya yang tak stabil sehingga Crutchlow harus terjatuh dan keluar jalur.</p>\r\n\r\n<p>Beruntung, Crutchlow bisa bangkit kembali dan melanjutkan balapan hingga garis finis. Meski begitu, dirinya tak bisa merebut kembali posisi terdepan dan harus puas finis di urutan ke-19 dengan catatan waktu 42 menit 51,057 detik.</p>\r\n\r\n<p>Rekan setim Takaaki Nakagami itu mengaku insiden ini terjadi karena dirinya salah memilih ban. Ban keras yang digunakan Crutchlow saat race di MotoGP Amerika Serikat ternyata membuat laju kendaraannya tak dapat maksimal. Alhasil, dirinya pun harus terjatuh saat tengah memperebutkan posisi terdepan.</p>\r\n\r\n<p>&quot;Saya merasa telah tampil dengan baik, tetapi saya membuat kesalahan, saya terjatuh. Sejujurnya, saya mampu untuk finis kedua atau ketiga dalam perlombaan ini, tetapi saya jatuh di tikungan terakhir,&rdquo; ujar Crutchlow, sebagaimana dikutip dari Speedweek, Senin (23/4/2018).</p>\r\n', 'Cal Crutchlow', 'Selasa', '2018-04-24', '01:30:53', 'crutchlowjpg.jpg', 18, 'olahraga,hiburan', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(11, 'Total Biaya Pembuatan Aplikasi Simpeg', 'Contoh_File_Download_1.txt', '2014-09-23', 8),
(12, 'Type atau Jenis Join di MySQL', 'Contoh_File_Download_1.txt', '2014-09-23', 68),
(13, 'Kegiatan Monev Tgl. 14-17 Oktober 2014 (SAKPA)', 'Contoh_File_Download_1.txt', '2014-09-23', 34),
(14, 'Pembayaran Tunjangan Remunerasi', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(15, 'Target PNBP Umum & PNBP Fungsional TA.2015', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(16, 'Pelaksanaan Disiplin Pasca Idul Fitri 1435', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(17, 'Kegiatan Akurasi Data Semester I TA. 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 14),
(18, 'Rapat Koordinasi dan Konsultasi', 'Contoh_File_Download_1.txt', '2014-09-23', 5),
(19, 'Lomba dan Penilaian SIMPEG dan E-DOCu', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(20, 'Pemanggilan Peserta Bimtek Hakim Tahun 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 33),
(21, 'Penyusunan PAGU Indikatif Tahun Anggaran 2015', 'Contoh_File_Download_1.txt', '2014-09-23', 57),
(22, 'Revisi Tata Cara Restore Backup SAKPA13 Audited', 'Contoh_File_Download_1.txt', '2014-09-23', 44),
(23, 'Penyusunan RKAKL Alokasi Anggaran DIPA (04)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(24, 'Tindaklanjut Temuan Pemeriksaan BPK RI', 'Contoh_File_Download_1.txt', '2014-09-23', 12),
(25, 'Verifikasi Kewajaran Nilai Tanah SIMAK-BMN', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(26, 'Instruksi Ketua Umum IPASPI Pusat (new)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(27, 'Relaas Perkara No.0081/Pdt.G/2013/PA.Stg', 'Contoh_File_Download_1.txt', '2014-09-23', 6);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(238, 30, 'admin', 'Lautan Penonton', 'lautan-penonton', 'Lebih kurang dari 50.000 penonton yang memadati Stadion Gelora Bung Karno menyaksikan aksi Kantata Barock.\r\n', ''),
(237, 30, 'admin', 'Mengenang WS. Rendra', 'mengenang-ws-rendra', 'Konser didedikasikan buat salah satu anggota Kantata Takwa, WS. Rendra. Suasana kemeriahan para artis pendukung.\r\n', ''),
(240, 31, 'admin', 'Doa Bersamaaa', 'doa-bersamaaa', '<p>Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.cbcvb</p>\r\n', ''),
(239, 30, 'admin', 'Semangat Kantata', 'semangat-kantata', 'Semangat para macan-macan tua Kantata, seolah mmemberi penyadaran baru dan bagai api yang tak pernah padam.\r\n', ''),
(236, 30, 'admin', 'Iwan Fals', 'iwan-fals', 'Iwan Fals yang tergabung dalam Kantata Barock bersama Setiawan Djodi dan Sawong Jabo menghibur penggemarnya di GBK.\r\n', ''),
(235, 30, 'admin', 'Iwan dan Oemar Bakrie', 'iwan-dan-oemar-bakrie', 'Aksi penonton yang mirip dengan Iwan Fals dan sang guru Oemar Bakrie\r\n', ''),
(234, 30, 'admin', 'Bento...Bento..!!', 'bentobento', 'Bento...Bento...Bentok...!! ....Asyikkk... begitu teriak Setiawan Djody dan Sawung Jabo yang ikuti ribuan penonton.\r\n', ''),
(232, 29, 'admin', 'Karpet Raksasa dari Bunga 008', 'karpet-raksasa-dari-bunga-008', 'sdasdasd', ''),
(233, 30, 'admin', 'Sujud Syukur', 'sujud-syukur', 'Seluruh awak Kantata Barock melakukan sujud syukur di penghujung acara.<br />\r\n', ''),
(231, 29, 'admin', 'Karpet Raksasa dari Bunga 007', 'karpet-raksasa-dari-bunga-007', '', ''),
(230, 29, 'admin', 'Karpet Raksasa dari Bunga 006', 'karpet-raksasa-dari-bunga-006', '', ''),
(229, 29, 'admin', 'Karpet Raksasa dari Bunga 005', 'karpet-raksasa-dari-bunga-005', '', ''),
(228, 29, 'admin', 'Karpet Raksasa dari Bunga 004', 'karpet-raksasa-dari-bunga-004', '', ''),
(227, 29, 'admin', 'Karpet Raksasa dari Bunga 003', 'karpet-raksasa-dari-bunga-003', '', ''),
(225, 29, 'admin', 'Karpet Raksasa dari Bunga 001', 'karpet-raksasa-dari-bunga-001', '', ''),
(226, 29, 'admin', 'Karpet Raksasa dari Bunga 002', 'karpet-raksasa-dari-bunga-002', '', ''),
(224, 28, 'admin', 'Favorit', 'favorit', 'Mainan adalah barang favorit yang senantiasa diburu para pembeli. Selain murah, pilihannya pun berbagai jenis.\r\n', ''),
(223, 28, 'admin', 'Suasana Pasar Asemka', 'suasana-pasar-asemka', 'Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.<br />\r\n', ''),
(222, 28, 'admin', 'Petasan', 'petasan', 'Petasan aneka jenis juga dijajakan di Pasar Asemka, Jakarta.\r\n', ''),
(221, 28, 'admin', 'Merah Marun', 'merah-marun', 'Salah satu suvenir pernikahan nan cantik yang dijual di Pasar Asemka, Jakarta.\r\n', ''),
(220, 28, 'admin', 'Menata Cincin', 'menata-cincin', 'Seorang pedagang cincin aksesoris sedang merapihkan letak cincin agar lebih menarik di Pasar Asemka, Jakarta.\r\n', ''),
(219, 28, 'admin', 'Suvenir', 'suvenir', 'Aneka Souvenir Pernikahan yang dijual di Pasar Asemka, Jakarta.\r\n', ''),
(218, 28, 'admin', 'Seorang Wanita Pedagang', 'seorang-wanita-pedagang', 'Seorang wanita sedang menunggu kios aksesorisnya.\r\n', ''),
(217, 28, 'admin', 'Suasana Pasar', 'suasana-pasar', 'Suasana di Pasar Asemka yang senantiasa ramai. Dan pengunjung bebas memilih berbagai jenis aksesoris.\r\n', ''),
(216, 28, 'admin', 'Pedagang', 'pedagang', 'Seorang pedagang sedang membungkus souvenir penikahan yang akan dijual ataupun pesanan dari pelanggangnnya.\r\n', ''),
(254, 1, 'admin', 'Screenshot 1 ', 'screenshot-1-', 'Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 ', '');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(46, 'Tentang Kami Jatimnomics', 'tentang-kami-jatimnomics', '<p>SMART Jatimnomics merupakan portal online jual beli produk yang berfokus pada UMKM yang tersebar khususnya pada wilayah Jawa Timur.</p>\r\n', '2014-04-07', '', 'admin', 94, '13:10:57', 'Senin'),
(58, 'Tentang E-Commerce', 'tentang-ecommerce', '<p>Secara umum, pengertian E-commerce (perdagangan elektronik) adalah kegiatan&nbsp;jual beli&nbsp;barang/jasa atau transmisi dana/data melalui jaringan elektronik, terutama internet.</p>\r\n\r\n<p>Dengan perkembangan teknologi informasi dan software, hal ini&nbsp;membuat transaksi&nbsp;konvensional menjadi mungkin&nbsp;untuk&nbsp;dilakukan secara elektronik.</p>\r\n\r\n<p>Website digunakan&nbsp;sebagai pengganti toko offline. Website ecommerce mencakup berbagai fungsi seperti etalase produk, pemesanan online dan inventarisasi stok, untuk menjalankan fungsi utama sebagai e-commerce.</p>\r\n\r\n<p>Software yang digunakan terpasang pada server e-commerce dan bekerja secara simultan dengan sistem pembayaran online untuk memproses transaksi.</p>\r\n\r\n<p>Secara umum e-commerce artinya melakukan bisnis melalui jaringan yang saling terhubung (interconnected networks/internet).</p>\r\n\r\n<p>Berikut beberapa contoh dari praktek e-commerce:</p>\r\n\r\n<ul>\r\n	<li>Penyaluran informasi kepada perusahaan melalui intranet</li>\r\n	<li>Penyaluran manufaktur dan distribusi dengan partner melalui ekstranet</li>\r\n	<li>Melakukan penjualan produk digital melalui website</li>\r\n</ul>\r\n\r\n<p>Transaksi e-commerce terjadi pada banyak ruang lingkup mulai dari bisnis ke bisnis, bisnis ke konsumen, konsumen ke konsumen dan konsumen ke bisnis. Istilah e-commerce atau e-business sering digunakan secara bergantian juga dengan istilah e-tail dalam referensi untuk proses transaksional belanja online.</p>\r\n', '2020-06-01', '', 'admin', 3, '12:57:03', 'Senin'),
(59, 'Tentang Produksi', 'tentang-produksi', '<p>Produksi adalah serangkaian kegiatan untuk menciptakan serta menambah nilai guna dari suatu barang, dengan tujuan untuk memenuhi kebutuhan. Produksi juga bisa disebut sebagai suatu kegiatan untuk menambah daya guna suatu benda, tanpa harus mengubah bentuk barang tersebut atau disebut juga produksi jasa. Sedangkan, jika menambah daya guna suatu benda serta mengubah sifatnya, maka disebut produksi barang.</p>\r\n\r\n<p>Dalam bisnis, proses produksi merupakan hal inti yang harus dilakukan secara maksimal, karena bertujuan untuk memenuhi kebutuhan manusia. Orang atau badan yang melakukan kegiatan &nbsp;produksi ini disebut produsen. Produksi secara pokok adalah bagaimana menciptakan nilai guna serta menambah nilai guna.</p>\r\n\r\n<h2>Faktor Produksi</h2>\r\n\r\n<p>Setelah mengetahui mengenai produksi, saatnya kita mengetahui apa saja yang menjadi faktor-faktor produksi. Berikut ulasanya:</p>\r\n\r\n<ul>\r\n	<li>Sumber Daya Alam, segala sesuatu dari alam yang dimanfaatkan manusia untuk mencapai kemakmuran. Sumber daya alam melingkupi lahan, alam dan kekayaan di dalamnya.</li>\r\n	<li>Sumber daya manusia, daya atau usaha manusia, baik itu jasmani dan rohani yang digunakan untuk meningkatkan guna suatu barang. Yang termasuk dalam SDM adalah tenaga kerja terdidik, tenaga kerja terlatih, dan tenaga kerja terdidik dan terlatih.</li>\r\n	<li>Sumber daya modal, merupakan alat atau barang hasil produksi untuk menghasilkan suatu barang. Modal dibeli oleh produsen bukan oleh konsumen.</li>\r\n	<li>Keahlian, merupakan suatu factor yang penting untuk menjalankan proses produksi. Keahlian disertai keterampilan penting untuk mengelola factor produksi dalam menghasilkan jasa dan barang.</li>\r\n</ul>\r\n\r\n<h2>Proses Produksi</h2>\r\n\r\n<p>Adapun proses produksi adalah merupakan suatu tahapan yang dilewati dalam produksi, untuk memproduksi barang atau jasa. Apa saja bagian dari proses produksi itu, berikut ulasanya:</p>\r\n\r\n<ul>\r\n	<li>Proses produksi panjang, dimana proses produksi yang dilakukan memakan waktu lama, seperti proses menanam padi yang dibuat dirumah</li>\r\n	<li>Proses produksi pendek, dimana proses produksinya ini langsung menghasilkan barang atau jasa yang bisa dinikmati konsumen, seperti bakwan, bakso, pisang goreng dan lain sebagainya.</li>\r\n	<li>Proses produksi terus menerus, dimana proses produksinya berurutan melalui beberapa tahap, dari bahan mentah hingga menjadi barang jadi. Contohnya seperti produksi karet, gula, kertas dan lainya.</li>\r\n	<li>Proses produksi Intermitten atau berselingan, dimana proses produksi untuk mengolah bahan dengan cara digabungkan menjadi barang jadi. Misalnya, produksi mobil dengan bagian-bagian yang terpisah seperti setir, kaca, mesin dan lainya. Setelah semua bagian diproduksi, baru digabungkan menjadi mobil utuh.</li>\r\n</ul>\r\n\r\n<p>Dapat disimpulkan bahwa proses produksi adalah merupakan hal yang penting dan sangat inti dalam suatu bisnis apapun. Proses produksi juga tentunya akan melibatkan transaksi keuangan untuk perhitungan segala biaya produksi yang diperlukan. Pastikan setiap proses produksi ini dilakukan secara maksimal dengan kualitas kontrol produksi yang baik.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Source : https://cpssoft.com/blog/bisnis/produksi-adalah-faktor-dan-proses-yang-wajib-diketahui-pebisnis/</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-06-01', '3015.jpg', 'admin', 4, '13:36:40', 'Senin'),
(48, 'Cara Belanja Disini', 'cara-belanja-disini', '<p>Tajalapak.com merupakan portal online berita dan hiburan yang berfokus pada pembaca Indonesia baik yang berada di tanah air maupun yang tinggal di luar negeri. Berita Tajalapak.com diupdate selama 24 jam dan mendapatkan kunjungan lebih dari 190 juta pageviews setiap bulannya (Sumber: Google Analytics).</p>\r\n\r\n<p>Tajalapak.com memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Tajalapak juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n\r\n<p>Tajalapak.com memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Tajalapak juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n', '2014-04-07', '', 'admin', 74, '13:32:28', 'Senin'),
(52, 'Star Seller 1 Bulan', 'star-seller-1-bulan', '<p>Keterangan untuk paket&nbsp;Star Seller 1 Bulan</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2020-02-23', '', 'admin', 4, '06:28:09', 'Minggu'),
(53, 'Star Seller 3 Bulan', 'star-seller-3-bulan', '<p>Keterangan untuk paket&nbsp;Star Seller 3 Bulan</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2020-02-23', '', 'admin', 0, '06:28:22', 'Minggu'),
(54, 'Star Seller 6 Bulan', 'star-seller-6-bulan', '<p>Keterangan untuk paket&nbsp;Star Seller 6 Bulan</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2020-02-23', '', 'admin', 3, '06:28:32', 'Minggu'),
(1, 'Perjanjian Pengguna', 'perjanjian-pengguna', '<p>Pendahuluan</p>\r\n\r\n<p>Selamat datang di BakulSolo.com. Dengan menggunakan blanja.com (mencakup blanja.com dan situs, layanan, dan piranti terkait), Anda menyetujui persyaratan berikut, termasuk hal yang berupa tautan, dengan prinsip umum untuk PT.Metraplasa. Jika Anda memiliki pertanyaan, silahkan menghubungi Layanan Pelanggan.Perjanjian ini berlaku secara efektif pada tanggal 30 Mei 2014 untuk pengguna sekarang dan setelah persetujuan ini, juga termasuk pengguna baru.</p>\r\n\r\n<p>Cakupan</p>\r\n\r\n<p>Sebelum Anda menjadi anggota dari blanja.com, Anda harus membaca dan menyetujui seluruh syarat dan ketentuan yang ada dan yang berkaitan dengan, Perjanjian Penggunaan dan Kebijakan Privasi blanja.com. Kami merekomendasikan saat Anda membaca Perjanjian Penggunaan, Anda juga mengakses dan membaca informasi yang disajikan berupa tautan. Dengan menerima Perjanjian Penggunaan ini, Anda menyetujui bahwa Perjanjian Penggunaan dan Kebijakan Privasi akan berlaku kapanpun Anda menggunakan situs dan layanan di blanja.com, atau saat Anda menggunakan piranti yang berhubungan/berkaitan dengan situs dan layanan di blanja.com. Jika Anda menggunakan situs blanja.com yang lain, Anda setuju untuk menerima Perjanjian Penggunaan dan Kebijakan Privasi yang berlaku pada situs tersebut. Perjanjian yang berlaku di berbagai domain dan sub-domain merupakan perjanjian yang tampak di bagian bawah di setiap situs. Beberapa situs, layanan, dan piranti blanja.com memiliki tambahan atau ketentuan lain yang disediakan untuk Anda saat menggunakan situs, layanan, ataupun peranti pada website tersebut.</p>\r\n', '2020-03-18', '', 'admin', 3, '09:38:01', 'Rabu'),
(2, 'Kebijakan Privasi', 'kebijakan-privasi', '<p>Kebijakan ini menjelaskan pada Anda tentang bagaimana Kami menggunakan dan melindungi informasi pribadi Anda.</p>\r\n\r\n<p>Kebijakan Privasi ini menjelaskan bagaimana Kami menangani informasi pribadi Anda dalam pelayanan Kami di website blanja.com. Website blanja.com beserta konten dan website terkait lainnya dimanapun kebijakan ini ada pada bagian bawah halaman blanja.comDengan menyetujui Kebijakan Privasi dan Perjanjian Pengguna pada saat registrasi, Anda berarti menyetujui pengumpulan, penyimpanan, penggunaan dan pengungkapan informasi pribadi Anda seperti yang telah dijelaskan pada Kebijakan Privasi ini. Kebijakan Privasi ini mulai berlaku sejak penerimaan pengguna baru atau mulai berlaku pada tanggal 28 Juni 2013.</p>\r\n\r\n<p>Pengumpulan</p>\r\n\r\n<p>Anda dapat menelusuri situs Kami tanpa memberitahu Kami siapa Anda atau menyampaikan informasi pribadi apa pun tentang diri Anda. Sekali Anda memberi Kami informasi pribadi Anda, Anda tidak asing bagi Kami. Jika Anda memberikan informasi pribadi Anda, Anda setuju memindahkan dan menyimpan informasi tersebut dalam server Kami di Indonesia.Kami dapat mengumpulkan dan menyimpan informasi pribadi berikut ini:</p>\r\n\r\n<ul>\r\n	<li>Alamat email, informasi kontak, dan (tergantung layanan yang digunakan) terkadang informasi keuangan, seperti kartu kredit atau nomor rekening bank;</li>\r\n	<li>Informasi transaksi berdasarkan aktivitas Anda di situs (seperti menawar, membeli, menjual barang dan konten yang Anda hasilkan atau yang berhubungan dengan akun Anda);</li>\r\n	<li>Biaya pengiriman, penagihan dan informasi lain yang Anda berikan untuk membeli atau mengirim barang;</li>\r\n	<li>Forum diskusi, obrolan/chating, penyelesaian perselisihan, korespondensi melalui situs, dan korespondensi yang dikirimkan kepada Kami;</li>\r\n	<li>Informasi profil seperti nama, alamat email, gambar profil dan ulang tahun dari layanan keaslian pihak ketiga seperti Facebook Connect;</li>\r\n</ul>\r\n', '2020-03-18', '', 'admin', 8, '09:38:51', 'Rabu'),
(57, 'Jemput Sedekah', 'jemput-sedekah', '<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#ff0000\"><strong>Belum ada Informasi pada Halaman ini.</strong></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', '2020-04-05', '', 'admin', 4, '14:22:43', 'Minggu');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `lampiran` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`, `jam`, `dibaca`, `lampiran`) VALUES
(39, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '::1', 'Kami memiliki komitmen untuk memberikan layanan terbaik kepada Anda dan selalu berusaha untuk menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami, Anda dapat menyampaikan kritik dan saran Anda kepada kami. Kami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.', '2017-01-23', '21:56:12', 'Y', ''),
(35, 'yusri renor', 'aciafifah@gmail.com', 'pertanyaan', 'bagaimana cara mengunduh nomor ujian fak. pertanian', '2014-01-19', '00:00:00', 'Y', ''),
(36, 'Lusi Rahmawati', 'robby.prihandaya@gmail.com', 'xvgxcvxc', 'gbvibviubuibiub', '2014-07-02', '00:00:00', 'Y', ''),
(38, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Ip Pengirim : 120.177.28.244', 'Silahkan menghubungi kami melalui private message melalui form yang berada pada bagian kanan halaman ini. Kritik dan saran Anda sangat penting bagi kami untuk terus meningkatkan kualitas produk dan layanan yang kami berikan kepada Anda.', '2015-06-02', '00:00:00', 'Y', ''),
(40, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '::1', 'Kami memiliki komitmen untuk memberikan layanan terbaik kepada Anda dan selalu berusaha untuk menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami, Anda dapat menyampaikan kritik dan saran Anda kepada kami. Kami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.', '2017-01-25', '09:54:45', 'Y', ''),
(41, 'Robby Prihandaya', 'todaynews.co.id@gmail.coms', '::1', 'asdasdasd', '2018-05-04', '19:33:01', 'N', '');

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `pengirim_email` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL,
  `api_mutasibank` text NOT NULL,
  `api_rajaongkir` text NOT NULL,
  `free_reseller` int(11) NOT NULL,
  `flash_deal` date NOT NULL,
  `info_atas` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `pengirim_email`, `email`, `password`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`, `api_mutasibank`, `api_rajaongkir`, `free_reseller`, `flash_deal`, `info_atas`) VALUES
(1, 'Jatimnomics : Shopping From Home and Anytime', 'Smart Jatimnomics', 'tajalapak.indonesia@gmail.com', 'xxxxxxxxxx', 'https://jatimnomics.com', 'https://www.facebook.com/robbyprihandaya, https://twitter.com/robbyprihandaya, https://plus.google.com/106633506064864167239, https://id.linkedin.com/', '3511887071', '0812 6777 13xx', 'Menyajikan berita terbaru, tercepat, dan terpercaya seputar ekonomi.', 'Selamat datang di Smart Jatimnomics, bersatu demi ekonomi yang lebih baik.', 'fav-32px.png', '', 'Daftar akun di http://mutasibank.co.id, dan Copy + Paste kode API nya disini.', '66ff6e50774f0edd8e4e04e3c969ee57', 12, '2020-06-02', '<strong>Pengiriman gratis</strong>\r\nUntuk pesanan min Rp 999.000');

-- --------------------------------------------------------

--
-- Table structure for table `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `iklanatas`
--

INSERT INTO `iklanatas` (`id_iklanatas`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(40, 'Dapatkan Diskon 25%', 'Y', 'Berlangganan milis Jatimnomics.com\r\nuntuk menerima pembaruan tentang informasi terbaru, \r\npenawaran khusus dan promosi kami.', 'subscribe.jpg', '2020-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `iklantengah`
--

INSERT INTO `iklantengah` (`id_iklantengah`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(3, 'Home - Iklan Home No 3', 'admin', 'http://phpmu.com', '3.jpg', '2020-01-30'),
(2, 'Home - Iklan Home No 2', 'admin', 'http://phpmu.com', '2.jpg', '2020-01-30'),
(1, 'Home - Iklan Home No 1', 'admin', 'http://phpmu.com', '1.jpg', '2020-01-30'),
(34, 'Footer - Iklan No 1', 'admin', 'https://members.phpmu.com', 'ad-1.jpg', '2020-01-30'),
(35, 'Footer - Iklan No 2', 'admin', 'https://phpmu.com', 'ad-2.jpg', '2020-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******'),
(5, 'fuck', 'admin', 'f**k'),
(6, 'pantat', 'admin', 'p****t');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`) VALUES
(19, 'Teknologi', '', 'teknologi', 'Y', 2),
(2, 'Olahraga', '', 'olahraga', 'Y', 4),
(21, 'Ekonomi', '', 'ekonomi', 'Y', 7),
(22, 'Politik', '', 'politik', 'N', 0),
(23, 'Hiburan', '', 'hiburan', 'Y', 3),
(31, 'Kesehatan ', '', 'kesehatan-', 'Y', 5),
(39, 'Internasional', '', 'internasional', 'Y', 1),
(40, 'Kuliner', '', 'kuliner', 'Y', 0),
(41, 'Metropolitan', '', 'metropolitan', 'Y', 6),
(42, 'Dunia Islam', '', 'dunia-islam', 'N', 0),
(44, 'Wisata', '', 'wisata', 'N', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_banner`
--

CREATE TABLE `kategori_banner` (
  `id_kategori_banner` int(11) NOT NULL,
  `nama_kategori_banner` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_banner`
--

INSERT INTO `kategori_banner` (`id_kategori_banner`, `nama_kategori_banner`) VALUES
(1, 'Hubungi Kami'),
(2, 'Link Terkait'),
(3, 'Pembeli'),
(4, 'Pelapak');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`, `email`) VALUES
(84, 650, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Nice  story, Roy suryo dan Susilo bambang yudhoyono memang cucak rowo. :)   ', '2012-01-05', '00:15:45', 'N', 'robby.prihandaya@gmail.com'),
(88, 650, 'Udin Sedunia', 'www.belajarkonseling.com', ' hm...  kae.x  perlu  juga  ne  bantuan  dari  para  konselor...:)		   ', '2012-01-13', '20:09:07', 'Y', 'www.belajarkonseling.com'),
(90, 650, 'Rizal Faizal', 'www.rizal-online.co.cc', ' asyik  aja  dehh...   ', '2012-02-25', '15:01:40', 'Y', 'www.rizal-online.co.cc'),
(91, 645, 'Eka Praja W', 'komputerkampus.com', ' makin  parah  aja  nih  ...\r\nmudah2n  bisa  berbenah  negeri  ku  yg  q  banggakan   ', '2012-03-08', '20:06:07', 'Y', 'komputerkampus.com'),
(137, 650, 'Lukmanul Hakim', '', ' saya  yakin  PHP  juga  bisa  bertahan  sampai  2030   ', '2013-01-19', '18:56:25', 'Y', 'lukmanul.haskim@gmai;.com'),
(146, 645, 'Tommy Utama', 'tommy.utama@gmail.com', ' Calon  hakim  agung  Muhammad  Daming  Sanusi  menyatakan,  hukuman  mati  tidak  layak  diberlakukan  bagi  pelaku  pemerkosaan.   ', '2014-07-21', '21:03:04', 'Y', 'tommy.utama@gmail.com'),
(147, 655, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Mudah-mudahan  windows  8.2  tampilannya  lebih  keren  lagi  dari  windows  8.1 sebelumnya  yang  kurang  enak  di gunakan.  heheheee   ', '2014-07-22', '08:33:04', 'Y', 'robby.prihandaya@gmail.com'),
(144, 650, 'Tommy Utama', 'tommy.utama@gmail.com', 'Pengamat  politik  dari  Charta  Politika,  Yunarto  Wijaya  mempertanyakan  dasar  keputusan  SBY  menunjuk  Roy  Suryo  sebagai  Menpora.   ', '2014-07-21', '20:59:16', 'Y', 'tommy.utama@gmail.com'),
(143, 650, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Menurut  Yunarto,  Roy  selama  ini  lebih  dikenal  sebagai  pakar  foto  digital  dan  video  serta  dosen  di  sebuah  perguruan  tinggi  negeri.   ', '2014-07-21', '20:57:52', 'Y', 'udin.sedunia@gmail.com'),
(148, 662, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'pantat negara yahudi yang sangat perlu untuk dihancurkan /  musnahkan  dan  bantai  seluruh  warga israel..!!!   ', '2014-07-24', '09:29:20', 'Y', 'robby.prihandaya@gmail.com'),
(149, 662, 'Edo Ikfianda', 'edomuhammad90@gmail.com', 'Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.', '2014-08-09', '17:34:35', 'Y', 'edomuhammad90@gmail.com'),
(152, 650, 'Dewi Safitriir', 'dewi_safitri@gmail.com', 'Peremimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei  menyampaikan  pernyataan  kontroversial  terkait  ketegangan  di  Gaza.Israele.   ', '2014-08-17', '17:46:28', 'N', 'dewi_safitri@gmail.com'),
(153, 662, 'Robby Prihandaya', 'ww.phpmu.com', 'Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.\r\n\r\nAnda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.', '2015-03-25', '06:10:12', 'Y', 'robby.prihandaya@gmail.com'),
(154, 642, 'Tommy Utama', 'tommyutama.com', ' Para  pengunjuk  rasa  membawa  bendera-bendera  Palestina  dan  foro-foto  pemimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei.   ', '2016-11-24', '10:24:15', 'Y', 'tommy.utama@gmail.com'),
(164, 656, 'Robby Prihandaya', 'https://phpmu.com', 'Komentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.', '2018-04-20', '10:41:54', 'Y', 'robby.prihandaya@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `komentarvid`
--

INSERT INTO `komentarvid` (`id_komentar`, `id_video`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(107, 160, 'Prabowo Subianto', 'Prabowo@gmail.com', ' Your  email  address  will  not  be  published.  Required  fields  are  marked', '2014-07-21', '13:29:29', 'N'),
(108, 163, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', ' Kita  memang  harus  selamatkan  hutan  indonesia,  walau  apapun  yang  terjadi.   ', '2014-07-21', '13:31:10', 'Y'),
(109, 160, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', ' Swarakalibata  V.3 sekarang  hadir  dengan  tampilan  baru  yang  pastinya  sudah  jauh  lebih  maju  dari  versi  sebelumnya.', '2014-07-21', '21:09:31', 'Y'),
(112, 166, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Exclusive Di IDAFF Acedemy - &quot;Social Blogging Mastery 2&quot; - Workshop 2 Hari Yang Akan Merubah Hidup Anda Di Tahun 2017. Di Bongkar Oleh Ahlinya Cara Paling Mudah Memiliki Penghasillan Sampingan Lewat Internet Hingga Jutaan Rupiah Setiap Bulannya.', '2017-01-25', '09:40:01', 'Y'),
(113, 166, 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. &quot;Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,&quot; sebut Khamenei, seperti dikutip dari IRNA.', '2017-01-25', '09:40:55', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'logo_glow-42.png');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`, `keterangan`) VALUES
(115, 0, 'Cara Belanja', 'halaman/detail/cara-belanja-disini', 'Ya', 'Top', 2, NULL),
(113, 0, 'Tentang Kami', 'halaman/detail/tentang-kami-jatimnomics', 'Ya', 'Top', 1, NULL),
(112, 22, 'Dalam Negeri', '#', 'Ya', 'Bottom', 20, NULL),
(151, 0, 'Produk', 'produk', 'Ya', 'Bottom', 6, NULL),
(150, 0, 'Shop', '#', 'Ya', 'Bottom', 7, NULL),
(116, 0, 'Mitra Jatimnomics', '#', 'Ya', 'Top', 3, NULL),
(126, 22, 'Luar Negeri', '#', 'Ya', 'Bottom', 21, NULL),
(147, 150, 'Testimoni', 'testimoni', 'Ya', 'Bottom', 11, NULL),
(148, 150, 'Konfirmasi Orders', 'konfirmasi', 'Ya', 'Bottom', 9, NULL),
(149, 150, 'Tracking Orders', 'konfirmasi/tracking', 'Ya', 'Bottom', 8, NULL),
(152, 0, 'Toko', 'produk/reseller', 'Ya', 'Bottom', 5, NULL),
(155, 150, 'Orders Report', 'members/orders_report', 'Ya', 'Bottom', 10, NULL),
(157, 0, 'Beranda', 'main', 'Ya', 'Bottom', 4, ''),
(159, 171, 'Blog', 'berita', 'Ya', 'Bottom', 21, ''),
(166, 171, 'Donasi', '#', 'Ya', 'Bottom', 16, ''),
(167, 166, 'Sedekah Online', 'donasi/sedekah', 'Ya', 'Bottom', 17, ''),
(168, 166, 'Wakaf Uang', 'donasi/wakaf_uang', 'Ya', 'Bottom', 18, ''),
(169, 166, 'Wakaf Asset', 'donasi/wakaf_asset', 'Ya', 'Bottom', 19, ''),
(170, 166, 'Jemput Zakat', 'donasi/jemput_zakat', 'Ya', 'Bottom', 20, ''),
(171, 0, 'Jatimnomics', '#', 'Ya', 'Bottom', 12, ''),
(172, 171, 'E-Commerce', 'halaman/detail/tentang-ecommerce', 'Ya', 'Bottom', 13, ''),
(173, 171, 'Produksi', 'halaman/detail/tentang-produksi', 'Ya', 'Bottom', 14, '');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'user', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, ''),
(34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'user', 'N', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'user', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `judul`, `alamat`) VALUES
(1, 'Alamat / Hubungi', '<strong>Haloo!</strong>, Kami berkomitmen memberikan layanan terbaik untuk Anda,&nbsp;menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami dapat menyampaikan kritik dan saran.<br />\r\n<br />\r\nKami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.\r\n'),
(2, 'Informasi Login dan Register', '<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h3><strong>Sign up today and you will be able to:</strong></h3>\r\n\r\n<p>MartFury Buyer Protection has you covered from click to delivery. Sign up or sign in and you will be able to:</p>\r\n\r\n<ul>\r\n	<li>SPEED YOUR WAY THROUGH CHECKOUT</li>\r\n	<li>TRACK YOUR ORDERS EASILY</li>\r\n	<li>KEEP A RECORD OF ALL YOUR PURCHASES</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pasangiklan`
--

INSERT INTO `pasangiklan` (`id_pasangiklan`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(1, 'Iklan Sidebar Kanan atas 2', 'admin', 'https://jatimnomics.com', 'side-banner-2.png', '2020-06-01'),
(2, 'Iklan Sidebar Kanan atas 1', 'admin', 'https://jatimnomics.com', 'side-banner-1.png', '2020-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `jdl_playlist`, `username`, `playlist_seo`, `gbr_playlist`, `aktif`) VALUES
(56, 'Playlist Video 1', 'admin', 'playlist-video-1', '', 'Y'),
(57, 'Playlist Video 2', 'admin', 'playlist-video-2', '', 'Y'),
(61, 'Playlist Video 4', 'admin', 'playlist-video-4', '', 'Y'),
(60, 'Playlist Video 3', 'admin', 'playlist-video-3', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(18, 'Siapakah Calon Walikota dan Wakil Walikota Padang Favorit Anda?', 'Pertanyaan', 'admin', 0, 'Y'),
(25, 'Mahyeldi Ansyarullah - Emzalmi', 'Jawaban', 'admin', 25, 'Y'),
(31, 'Robby Prihandaya - Dewi Safitri', 'Jawaban', 'admin', 1, 'Y'),
(32, 'Tommy Utama - Laura Hikmah', 'Jawaban', 'admin', 3, 'Y'),
(33, 'Willy Fernando - Vicky Armita', 'Jawaban', 'admin', 9, 'Y'),
(35, 'Laura Himah i Nisaa - Safaruddin', 'Jawaban', 'admin', 5, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `rb_bonus`
--

CREATE TABLE `rb_bonus` (
  `id_bonus` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `waktu_bonus` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_bonus`
--

INSERT INTO `rb_bonus` (`id_bonus`, `username`, `nominal`, `status`, `waktu_bonus`) VALUES
(8, 'arsenio', 100000, '1', '2017-04-10 23:55:38'),
(7, 'robby', 100000, '1', '2017-04-10 23:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `rb_donasi`
--

CREATE TABLE `rb_donasi` (
  `id_donasi` int(11) NOT NULL,
  `jenis` enum('sedekah','zakat','wakaf_uang','wakaf_asset') NOT NULL DEFAULT 'sedekah',
  `nominal` int(11) DEFAULT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `no_handphone` varchar(100) NOT NULL,
  `alamat_email` varchar(255) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `doa_terbaik` text DEFAULT NULL,
  `file_upload` text DEFAULT NULL,
  `waktu_kirim` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_donasi`
--

INSERT INTO `rb_donasi` (`id_donasi`, `jenis`, `nominal`, `nama_lengkap`, `no_handphone`, `alamat_email`, `id_rekening`, `keterangan`, `doa_terbaik`, `file_upload`, `waktu_kirim`) VALUES
(1, 'sedekah', 25000, 'Robby Prihandaya', '081267771344', 'robby.prihandaya@gmail.com', 1, 'Orang Tua', 'Ya Allah, janganlah Kau goyahkan hati kami setelah Kau beri petunjuk dan berilah kami rahmat dari sisi-Mu. Sesungguhnya Engkau Maha Pemberi.\r\n\r\n', NULL, '2020-04-05 13:51:09'),
(2, 'wakaf_uang', 100000, 'Dewiit Safitri', '081267771355', 'dewiit.safitri@gmail.com', 1, '-', 'Ya Tuhan kami, janganlah Engkau hukum kami jika kami lupa atau kami tersalah. Ya Tuhan kami, janganlah Engkau bebankan kepada kami beban yang berat sebagaimana Engkau bebankan kepada orang-orang sebelum kami. Ya Tuhan kami, janganlah Engkau pikulkan kepada kami apa yang tak sanggup kami memikulnya. Beri ma&rsquo;aflah kami. ampunilah kami. dan rahmatilah kami. Engkaulah Penolong kami, maka tolonglah kami terhadap kaum yang kafir.', NULL, '2020-04-05 14:37:12'),
(3, 'wakaf_asset', 535000000, 'Willy Fernando', '081267771366', 'willy.fernando@gmail.com', 0, 'Bangunan||Jl. Angkasa Puri Perundam 4||Asset dalam bentuk bangunan layak huni, kondisi sangat baik.', NULL, 'Islamic-Bank1.zip', '2020-04-05 14:39:16'),
(4, 'zakat', NULL, 'Tommy Utama', '081267771377', 'tommy.utama@gmail.com', 2, 'Zakat Profesi||Jl. Tarok Dipo, Guguak Panjang', 'Ya Tuhanku, tunjukilah aku untuk mensyukuri ni&rsquo;mat Engkau yang telah Engkau berikan kepadaku dan kepada ibu bapakku dan supaya aku dapat berbuat amal yang saleh yang Engkau ridhai. berilah kebaikan kepadaku dengan (memberi kebaikan) kepada anak cucuku. Sesungguhnya aku bertaubat kepada Engkau dan sesungguhnya aku termasuk orang-orang yang berserah diri (muslim). ', NULL, '2020-04-05 14:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `rb_kategori_produk`
--

CREATE TABLE `rb_kategori_produk` (
  `id_kategori_produk` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `kategori_seo` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `icon_kode` varchar(100) DEFAULT NULL,
  `icon_image` varchar(255) DEFAULT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_kategori_produk`
--

INSERT INTO `rb_kategori_produk` (`id_kategori_produk`, `nama_kategori`, `kategori_seo`, `gambar`, `icon_kode`, `icon_image`, `urutan`) VALUES
(1, 'Aksesoris & Komputer', 'aksesoris--komputer', 'kat1.jpg', 'icon-telephone', NULL, 1),
(2, 'Fashion & Busana Wanita', 'fashion--busana-wanita', 'fashion_wanita.jpg', 'icon-bag2', NULL, 2),
(6, 'Fashion & Busana Pria', 'fashion--busana-pria', 'fashion.jpg', 'icon-heart', NULL, 3),
(9, 'Alat Musik & Pro Audio', 'alat-musik--pro-audio', 'alat_musik.jpg', 'icon-gift', NULL, 4),
(10, 'Tas, Koper & Perjalanan', 'tas-koper--perjalanan', 'perjalanan.jpg', 'icon-bubbles', NULL, 5),
(12, 'Perhiasan dan Jam Tangan', 'perhiasan-dan-jam-tangan', 'Jewelry_Watch.jpg', 'icon-credit-card', NULL, 6),
(13, 'Olahraga dan Luar Rumah', 'olahraga-dan-luar-rumah', 'olahraga3.jpg', 'icon-sync', '', 7),
(14, 'Taman dan Alat Dapur', 'taman-dan-alat-dapur', 'dapur1.jpg', 'icon-rocket', NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `rb_kategori_produk_sub`
--

CREATE TABLE `rb_kategori_produk_sub` (
  `id_kategori_produk_sub` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `nama_kategori_sub` varchar(255) NOT NULL,
  `kategori_seo_sub` varchar(255) NOT NULL,
  `icon_kode` varchar(100) DEFAULT NULL,
  `icon_image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_kategori_produk_sub`
--

INSERT INTO `rb_kategori_produk_sub` (`id_kategori_produk_sub`, `id_kategori_produk`, `nama_kategori_sub`, `kategori_seo_sub`, `icon_kode`, `icon_image`) VALUES
(1, 2, 'Kiyora Sedang', 'kiyora-sedang', NULL, NULL),
(2, 2, 'Kiyora Dalam', 'kiyora-dalam', NULL, NULL),
(3, 1, 'Motherboard', 'motherboard', NULL, NULL),
(4, 1, 'Storage External', 'storage-external', NULL, NULL),
(6, 1, 'CD / DVD Internal', 'cd--dvd-internal', NULL, NULL),
(7, 14, 'Cookware', 'cookware', NULL, NULL),
(8, 14, 'Decoration', 'decoration', NULL, NULL),
(9, 14, 'Furniture', 'furniture', NULL, NULL),
(10, 14, 'Garden Tools', 'garden-tools', NULL, NULL),
(11, 13, 'Freezer Burn', 'freezer-burn', NULL, NULL),
(12, 13, 'Frigde Cooler', 'frigde-cooler', NULL, NULL),
(13, 13, 'Wine Cabinets', 'wine-cabinets', NULL, NULL),
(14, 6, 'Accessories', 'accessories', NULL, NULL),
(15, 6, 'Kid\'s Fashion', 'kids-fashion', NULL, NULL),
(16, 6, 'Shoes', 'shoes', NULL, NULL),
(17, 10, 'Car Electronics', 'car-electronics', NULL, NULL),
(18, 10, 'Office Electronics', 'office-electronics', NULL, NULL),
(19, 12, 'Emas Putih', 'emas-putih', NULL, NULL),
(20, 12, 'Cincin Kawin', 'cincin-kawin', NULL, NULL),
(21, 9, 'Gitar', 'gitar', NULL, NULL),
(22, 9, 'Piano', 'piano', NULL, NULL),
(23, 9, 'Talempong', 'talempong', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rb_keterangan`
--

CREATE TABLE `rb_keterangan` (
  `id_keterangan` int(5) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_keterangan`
--

INSERT INTO `rb_keterangan` (`id_keterangan`, `id_reseller`, `keterangan`, `tanggal_posting`) VALUES
(1, 2, '<b>Informasi dari Reseller :</b><p></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis.&nbsp; dfsdfsdf</p><p>Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero. ertert</p>', '2017-03-31'),
(2, 6, '<p>asdasdasd</p>', '2019-09-07'),
(3, 1, '<p></p>', '2019-09-07');

-- --------------------------------------------------------

--
-- Table structure for table `rb_konfirmasi_pembayaran`
--

CREATE TABLE `rb_konfirmasi_pembayaran` (
  `id_konfirmasi_pembayaran` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `total_transfer` varchar(20) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `bukti_transfer` varchar(255) NOT NULL,
  `waktu_konfirmasi` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_konfirmasi_pembayaran`
--

INSERT INTO `rb_konfirmasi_pembayaran` (`id_konfirmasi_pembayaran`, `id_penjualan`, `total_transfer`, `id_rekening`, `nama_pengirim`, `tanggal_transfer`, `bukti_transfer`, `waktu_konfirmasi`) VALUES
(1, 14, 'Rp 3,605,000', 2, 'Robby Prihandaya', '2017-06-01', 'Transfer_Member_PHP.png', '2017-06-01 17:17:55'),
(2, 58, 'Rp 700,000', 1, 'ttt', '2018-09-12', '', '2018-09-12 14:43:39'),
(3, 68, 'Rp 1,332,900', 1, 'Reseller Utama', '2018-12-26', '234.JPG', '2018-12-26 08:19:57'),
(4, 91, 'Rp 399,000', 1, 'Murni Jaya', '2019-03-22', 'Screenshot_20190227-155933_BCA_mobile.jpg', '2019-03-22 06:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `rb_konfirmasi_pembayaran_konsumen`
--

CREATE TABLE `rb_konfirmasi_pembayaran_konsumen` (
  `id_konfirmasi_pembayaran` int(11) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `total_transfer` varchar(20) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `bukti_transfer` varchar(255) NOT NULL,
  `waktu_konfirmasi` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rb_konsumen`
--

CREATE TABLE `rb_konsumen` (
  `id_konsumen` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `kecamatan_id` int(11) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `token` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_konsumen`
--

INSERT INTO `rb_konsumen` (`id_konsumen`, `username`, `password`, `nama_lengkap`, `email`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `alamat_lengkap`, `kecamatan_id`, `kota_id`, `provinsi_id`, `no_hp`, `foto`, `tanggal_daftar`, `token`) VALUES
(1, 'robby.prihandaya1@gmail.com', 'd3f88e2aac2dfada1b146c7a803f05bee297011d3fb3eb916dc2e92967d03b12971d8eab2aea472b45e9eaf8bb3ec4cdb664e70908450fddb66a5aa92963f7db', 'Robby Prihandaya', 'robby.prihandaya1@gmail.com', 'Laki-laki', '1989-05-06', 'Padang', 'Gang. Manggis, No 231 C, Belakang Puskesmas', 1276, 93, 32, '081267771344', 'robby1.jpg', '2020-02-15', '-'),
(2, 'dewi.safitri@gmail.com', 'c0f148b63581b1fcb2b4a431e869c6d41a8357db784cc5e9699684526eb7fcfb10d46f2951522f3d3a7d50076022ad9a75bd6f1a514393113d210bf595b53b20', 'Dewi Safitri', 'dewi.safitri@gmail.com', 'Laki-laki', '0000-00-00', '', 'Jl. Denpasar Indah Mpok Anin No 115 DX', 1573, 114, 1, '082298730972', '', '2020-02-17', ''),
(3, 'bukhori.06051989@gmail.com', '58111a9c6498fa496870830284dbaf28ee4ee1570ea0ecb99454d6d504413497734c86121bef3c3eb15df3bfe4ac42f90b2167fa744174b3c9c66b9e8f9d4edc', 'bukhori.06051989', 'bukhori.06051989@gmail.com', 'Laki-laki', '2020-02-18', '-', 'Jl. Ndeso Karyo Husodo, No 78 UT', 5445, 394, 32, '081222675266', '', '2020-02-18', ''),
(4, 'robby.prihandayaxx@gmail.com', '6a7ff0e630804b1a36b13793b042ed699c85af032833aed3c7402a56c2f1272c7f71df457224c02326923affe2a5826ba9f6e66cb8b96e08101e6591d462e866', 'robby.prihandayaxx', 'robby.prihandayaxx@gmail.com', 'Laki-laki', '0000-00-00', '', '', 0, 0, 0, '081267771322', '', '2020-03-17', ''),
(5, 'tommy.utama@gmail.com', 'cbcab76cf7711df6da990baaa255d17da466a59bd2319c77ff5d63daf8fecd990f9837348ea2ce233e3f8cfb8a56dbcf8eb1d4c918549155a5a5dccc43b51d97', 'tommy.utama', 'tommy.utama@gmail.com', 'Laki-laki', '0000-00-00', '', '', 0, 0, 0, '081268881888', '', '2020-03-17', ''),
(6, 'roberto_carlos', 'f90fe09b4c09b8eadee43099c188a2f8dcc6c075c05e906fcb230433df414064011d5395a0439d2246bec9ab804a04a6c64f4d5162f9fb03cc8fb29153484fbb', 'roberto.carlos', 'roberto.carlos@gmail.com', 'Laki-laki', '0000-00-00', '', '', 0, 0, 0, '081289781222', '', '2020-03-18', ''),
(7, 'mahmud.abbas@gmail.com', '1d8f5a81d6b05804f83c90c688eff7a937733acf96b22e1687d466d8d844895ed2501026e5e7cbf49af6e6323f728c7152509d9bf39577b0cc05a19de6a61020', 'Mahmud Abbas', 'mahmud.abbas@gmail.com', 'Laki-laki', '0000-00-00', '', 'Jl. Siti Lawang Mancusari', 307, 22, 9, '085612345555', '', '2020-03-18', '-'),
(8, 'Hendri Yanto', '7f28a09d785a62132b802919e94ea322a4ca30fa72328eb096904938e0a6ece368883cd34934dac043bd0a840c3f1a16d5457afa463e869d2dbf2819d0322266', 'hendriyanto123', 'hendriyanto123@gmail.com', 'Laki-laki', '0000-00-00', '', '', 0, 0, 0, '081200001111', '', '2020-04-06', ''),
(9, 'yanuarin.arafat@gmail.com', 'd0eef1bf977ba655e0c210e62e588b96587c9c952879fe28277b2aa9e992fe59b2535dec683b3bf1ed355b151120f3594dceae22a313c2834d8b570ddb42fdce', 'Yanuarin Arafat', 'yanuarin.arafat@gmail.com', 'Laki-laki', '0000-00-00', '', 'Jl. Bimasaksi Jaya Kencana, No 456', 436, 28, 2, '081288889999', '', '2020-05-01', '-'),
(10, 'kangasepmz', '65e3f20911492fa12560a956bc185e44a82e2f55ed589e51145f31dc64f4c5504c2465a3e2924f23853e655d7dc610f1eafce1ada530b06e55fa24528bbac9b6', 'asepmarzuki5', 'asepmarzuki5@gmail.com', 'Laki-laki', '0000-00-00', '', 'Jalan Parit Indah', 4914, 350, 26, '082113150495', '', '2020-05-01', ''),
(11, 'digresik@gmail.com', '3a69a2c2382eb18fecdf857225709b4df73604c090cf47a4ace2f6dcc9eb29d42f0a73f912853366e5603099d1dc43cbf90815fdeeea819eae7eac58526ff442', 'werqwer', 'digresik@gmail.com', 'Laki-laki', '0000-00-00', '', 'ertwert', 434, 28, 2, '241534253453453', '', '2020-05-01', '-'),
(17, 'joankris.note4@gmail.com', '0615db5a9cb96f0674038a67a8435c031f1bf0061c6e548e4be0108ef1f542818ed11e5ff3a015ac1ba7b53122e624325de544c71aa05027ed9ca5deef97af6c', 'joankris', 'joankris.note4@gmail.com', 'Laki-laki', '0000-00-00', '', 'ungaran', 5496, 398, 10, '082326167888', '', '2020-05-04', '-'),
(13, 'manusialah@gmail.com', '22845c200ca4097f075622a5c2f479a7487d4f91276d71c615b53b728069eae391b67728a04498df9ef9c43fb2cf9e1bef817465674f6182893158588c9861a5', 'Anama saya', 'manusialah@gmail.com', 'Laki-laki', '0000-00-00', '', 'Jalan saja', 730, 54, 9, '875757575', '', '2020-05-02', '-'),
(18, 'Syana', '82a166a85f18eeb522de137baf0c75d738621fca41db321150d9b52a521e7414660dfc25e9e892dded1984f210a83ca73df3a62db02eb525a721dcd526168bd4', 'londojoworestocafe', 'londojoworestocafe@gmail.com', 'Laki-laki', '2020-05-05', '-klaten', 'Genuk ungaran', 5496, 398, 10, '085641172888', 'D9B6C5E9-6AE7-4ECF-B7A4-4116954B4D05.jpeg', '2020-05-04', ''),
(15, 'isalfrenship@gmail.com', '172cd98f71a7aed722c35523e8f2e2007cf8642cf13fe784457e3f92f2416d68abeb7e3e09ce5026354a9d14ba40fb5143f3e0fa4f63fde5626edcb87913bb86', 'isal', 'isalfrenship@gmail.com', 'Laki-laki', '0000-00-00', '', 'jl. landak', 2753, 198, 30, '085241919393', '', '2020-05-03', '-'),
(16, 'muchyiddin', '90b5f654f260dce5583466bd7cc7b68d1e452e3d7fe6ad04456cc72b3f5aabcd6bf0e5f417fa20422fffe70d723d982a39ebf90f1b26ad9acb28479cfcfdf686', 'muchyiddin', 'muchyiddin@live.com', 'Laki-laki', '0000-00-00', '-', '', 2924, 209, 10, '085292456800', '', '2020-05-04', ''),
(19, 'project@ksrtrading.id', '0615db5a9cb96f0674038a67a8435c031f1bf0061c6e548e4be0108ef1f542818ed11e5ff3a015ac1ba7b53122e624325de544c71aa05027ed9ca5deef97af6c', 'Jeana', 'project@ksrtrading.id', 'Laki-laki', '0000-00-00', '', 'yo sudarso', 5496, 398, 10, '082326167888', '', '2020-05-04', '-'),
(25, 'tuliem', '2c738b16918d0c11b486bf082733f4f58efe47bba6dfd8d55a6c78fe46a8495eca83953945b388b0b679dbc9c4e9cbf7ebd17551b5702fd29f45a4324a1a071f', 'tuliem754', 'tuliem754@gmail.com', 'Laki-laki', '0000-00-00', '', '', 0, 0, 0, '081299877728', '', '2020-05-06', ''),
(22, 'robby_prihandaya2', 'db3f3681dddd953bd10714c0230fcd8e6b8ab595b7c816fd458df997be6985c2e2a249b241168ca0131d3254700b6c5ca9c2e96d51adef1091ef80d07b36c9d2', 'robby.prihandaya', 'robby.prihandaya2@gmail.com', 'Laki-laki', '0000-00-00', '', 'Jl. Angkasa Puri Limbawe', 3167, 224, 18, '081267771455', '', '2020-05-06', ''),
(24, 'robby_prihandaya', 'd4ea6196db2a2d7c1c14acd45ecfe7d72670c5c6c7ef32c7d03dfd7a61552943ec7b06fa00439bdd2d229f5330a1e7048bad3842bd83caf9e0acc33ff18e9bd3', 'robby.prihandaya', 'robby.prihandaya@gmail.com', 'Laki-laki', '0000-00-00', '', 'Jl. Pusako Bundo Kanduang', 3642, 257, 16, '081299882211', '', '2020-05-06', ''),
(26, 'malili urban', 'b9ee25426b1443b1c6e292be08b6edeb049386ed8ba83a0be6076b6ff3382057c1e2997cb9bb31af6c996d22ec3cc12de4749af6f75545a889fa9ddc1eb24dfd', 'maliliurbanenduro', 'maliliurbanenduro@gmail.com', 'Laki-laki', '2020-05-10', '-', 'Perumahan Sawita Permai Blok D6 no 6, Malili', 3473, 245, 28, '082187870877', 'logo.jpg', '2020-05-10', ''),
(27, 'aaaaa', '253d2a57a81fc604d3a170dab9757503a30903c51d6732327d59dd6f5f900186de82c02282627282dcf1cb34bb7231155c319727880f8615c040627b95d955f8', 'admin', 'admin@x.net', 'Laki-laki', '0000-00-00', '', 'e', 6118, 442, 8, '88888', '', '2020-05-12', ''),
(28, 'an@mail.net', '4d38968b3bd83439c3ca6f77e66cb1136c18c5aa1f1f9e1ebc206d71a27b4e9a11efaa23a2b0d35fa7bcbb8c5e69a7c600179eb281dcbd86b01a9102b9834f33', 'dewa', 'an@mail.net', 'Laki-laki', '0000-00-00', '', '2', 1868, 135, 5, '087745321695', '', '2020-05-12', '-'),
(29, 'jundiharsya', '496d1f07730bcfacf697f54dbb22da26e82399e8e2117a8809d72e63dfb9d65e5007273f8b0b89f7d3d5c6ef3754901c64548b54f66b7ffe9090d60e85f72f12', 'jundiharsya', 'jundiharsya@gmail.com', 'Laki-laki', '2020-05-18', '-', 'Jl. Baladewa 20, Girya Permata Gedangan', 5634, 409, 11, '081357657007', '', '2020-05-18', ''),
(30, 'siswobudoyo', '9970f16668b0ce09b694293b5164ae2b211fb9a23e9026bb4d0d1aef370f192120dd5f5a8e78c06d57fa036de0975c09b528ea7dc49262aee10c3247e62964fa', 'surti2018pagerwojo', 'surti2018pagerwojo@gmail.com', 'Laki-laki', '0000-00-00', '', '', 0, 0, 0, '55', '', '2020-05-19', ''),
(31, 'developer-delta', 'b6b55a140b728e68e70a90d3776164a82bc8177a1ae3cdd3ee68edae05c9b1fc3fc6f107f4b6da86276a103c511d5b9ee7b5ae5cc0cea643b5a0626468402ac2', 'devs.delta', 'devs.delta@gmail.com', 'Laki-laki', '1993-03-03', 'Kediri', 'Jl. Baladewa 15, Girya Permata Gedangan', 5634, 409, 11, '081336439021', '', '2020-05-20', ''),
(32, 'mediagarasi@gmail.com', '3103cf0b51481f4dced5c10fb9ff66e7e5e43ac2c799d4faddf86b548c8af4838f1bcd7186799a7d5e92146bfdfaffa4cab1919810cbc678cfd01f759b915e3f', 'Coba Dulu', 'mediagarasi@gmail.com', 'Laki-laki', '0000-00-00', '', 'Gorontalo', 1788, 129, 7, '08124519238', '', '2020-05-24', '-'),
(33, 'dsds2@gfgfg.com', 'ad83e75e985a9e23661282a5574091e28444db190f501409b76004ffb58bc103eb55c87d10735c0a43d7deed9a1897ba05e7a80d717b92cb5cc1745d1740fd41', 'asasasasas', 'dsds2@gfgfg.com', 'Laki-laki', '0000-00-00', '', '', 2718, 195, 12, '232323', '', '2020-05-27', '-');

-- --------------------------------------------------------

--
-- Table structure for table `rb_konsumen_alamat`
--

CREATE TABLE `rb_konsumen_alamat` (
  `id_konsumen_alamat` int(11) NOT NULL,
  `id_konsumen` int(11) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `kecamatan_id` int(11) NOT NULL,
  `waktu_perubahan` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_konsumen_alamat`
--

INSERT INTO `rb_konsumen_alamat` (`id_konsumen_alamat`, `id_konsumen`, `alamat_lengkap`, `provinsi_id`, `kota_id`, `kecamatan_id`, `waktu_perubahan`) VALUES
(1, 2, 'Jl. Mawar Berduri Indah Menwangi No 165 CD', 32, 421, 5810, '2020-02-17 18:20:25'),
(2, 2, 'Jl. Denpasar Indah Mpok Anin No 115 DX', 1, 114, 1573, '2020-02-17 18:27:29'),
(3, 3, 'Jl. Ndeso Karyo Husodo, No 78 UT', 32, 394, 5445, '2020-02-18 07:12:11'),
(4, 10, 'Jalan Parit Indah', 26, 350, 4914, '2020-05-01 19:00:16'),
(5, 21, 'Jl. Sirotol Mustaqim', 2, 28, 435, '2020-05-06 08:39:50'),
(6, 22, 'Jl. Angkasa Puri Limbawe', 18, 224, 3167, '2020-05-06 08:46:59'),
(7, 24, 'Jl. Pusako Bundo Kanduang', 16, 257, 3642, '2020-05-06 10:51:15'),
(8, 27, 'e', 8, 442, 6118, '2020-05-12 15:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `rb_konsumen_detail`
--

CREATE TABLE `rb_konsumen_detail` (
  `id_konsumen_detail` int(11) NOT NULL,
  `id_konsumen` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `status` enum('sosmed','rekening') NOT NULL DEFAULT 'sosmed',
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_konsumen_detail`
--

INSERT INTO `rb_konsumen_detail` (`id_konsumen_detail`, `id_konsumen`, `keterangan`, `status`, `waktu_input`) VALUES
(1, 1, 'http://facebook.com/robby.prihandaya;http://twitter.com/robby.prihandaya;http://instagram.com/robby.prihandaya;081267771344;081267771344;https://www.youtube.com/channel/UCXkiw4naejPtIx-1Ca6N5-Q;https://www.linkedin.com/robby.prihandaya;https://aboutme.google.com/robby.prihandaya', 'sosmed', '2020-02-16 07:09:04'),
(2, 1, 'Bank Mandiri Syariah;7128 5288 67;Robby Prihandaya', 'rekening', '2020-02-16 07:42:09'),
(4, 1, 'Bank BNI Syariah;0817 0242 31;Robby Prihandaya', 'rekening', '2020-02-16 07:55:09'),
(5, 1, 'Bank BRI Syariah;1043 5665 19;Robby Prihandaya', 'rekening', '2020-02-16 07:55:30'),
(6, 18, '-londojoworestocafe;-;-londojoworestocafe;-082326167888;-;-;-;-', 'sosmed', '2020-05-05 08:56:35'),
(7, 18, 'BCA;0306258448;Yohanes kristanto wibowo', 'rekening', '2020-05-05 08:57:52'),
(8, 32, 'BCA;797123456;Coba Dulu', 'rekening', '2020-05-24 00:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `rb_konsumen_simpan`
--

CREATE TABLE `rb_konsumen_simpan` (
  `id_konsumen_simpan` int(11) NOT NULL,
  `id_konsumen` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `waktu_simpan` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_konsumen_simpan`
--

INSERT INTO `rb_konsumen_simpan` (`id_konsumen_simpan`, `id_konsumen`, `id_produk`, `waktu_simpan`) VALUES
(1, 1, 4, '2020-02-16 09:17:28'),
(15, 1, 8, '2020-05-30 07:47:50'),
(3, 1, 7, '2020-02-16 09:43:57'),
(17, 1, 14, '2020-05-30 13:33:12'),
(16, 1, 30, '2020-05-30 12:13:31'),
(7, 1, 5, '2020-02-16 10:23:43'),
(8, 1, 6, '2020-02-16 10:27:40'),
(9, 18, 30, '2020-05-04 22:11:05'),
(10, 27, 31, '2020-05-12 15:12:10'),
(11, 27, 31, '2020-05-12 15:12:11'),
(12, 29, 34, '2020-05-20 15:33:06'),
(13, 29, 10, '2020-05-20 15:33:23'),
(14, 29, 5, '2020-05-20 15:33:30'),
(18, 1, 9, '2020-05-30 13:34:44'),
(19, 29, 11, '2020-05-30 18:49:53'),
(20, 29, 29, '2020-05-31 20:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `rb_kota`
--

CREATE TABLE `rb_kota` (
  `kota_id` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_kota`
--

INSERT INTO `rb_kota` (`kota_id`, `provinsi_id`, `nama_kota`) VALUES
(17, 1, 'Badung'),
(32, 1, 'Bangli'),
(94, 1, 'Buleleng'),
(114, 1, 'Denpasar'),
(128, 1, 'Gianyar'),
(161, 1, 'Jembrana'),
(170, 1, 'Karangasem'),
(197, 1, 'Klungkung'),
(447, 1, 'Tabanan'),
(27, 2, 'Bangka'),
(28, 2, 'Bangka Barat'),
(29, 2, 'Bangka Selatan'),
(30, 2, 'Bangka Tengah'),
(56, 2, 'Belitung'),
(57, 2, 'Belitung Timur'),
(334, 2, 'Pangkal Pinang'),
(106, 3, 'Cilegon'),
(232, 3, 'Lebak'),
(331, 3, 'Pandeglang'),
(402, 3, 'Serang'),
(403, 3, 'Serang'),
(455, 3, 'Tangerang'),
(456, 3, 'Tangerang'),
(457, 3, 'Tangerang Selatan'),
(62, 4, 'Bengkulu'),
(63, 4, 'Bengkulu Selatan'),
(64, 4, 'Bengkulu Tengah'),
(65, 4, 'Bengkulu Utara'),
(175, 4, 'Kaur'),
(183, 4, 'Kepahiang'),
(233, 4, 'Lebong'),
(294, 4, 'Muko Muko'),
(379, 4, 'Rejang Lebong'),
(397, 4, 'Seluma'),
(39, 5, 'Bantul'),
(135, 5, 'Gunung Kidul'),
(210, 5, 'Kulon Progo'),
(419, 5, 'Sleman'),
(501, 5, 'Yogyakarta'),
(151, 6, 'Jakarta Barat'),
(152, 6, 'Jakarta Pusat'),
(153, 6, 'Jakarta Selatan'),
(154, 6, 'Jakarta Timur'),
(155, 6, 'Jakarta Utara'),
(189, 6, 'Kepulauan Seribu'),
(77, 7, 'Boalemo'),
(88, 7, 'Bone Bolango'),
(129, 7, 'Gorontalo'),
(130, 7, 'Gorontalo'),
(131, 7, 'Gorontalo Utara'),
(361, 7, 'Pohuwato'),
(50, 8, 'Batang Hari'),
(97, 8, 'Bungo'),
(156, 8, 'Jambi'),
(194, 8, 'Kerinci'),
(280, 8, 'Merangin'),
(293, 8, 'Muaro Jambi'),
(393, 8, 'Sarolangun'),
(442, 8, 'Sungaipenuh'),
(460, 8, 'Tanjung Jabung Barat'),
(461, 8, 'Tanjung Jabung Timur'),
(471, 8, 'Tebo'),
(22, 9, 'Bandung'),
(23, 9, 'Bandung'),
(24, 9, 'Bandung Barat'),
(34, 9, 'Banjar'),
(54, 9, 'Bekasi'),
(55, 9, 'Bekasi'),
(78, 9, 'Bogor'),
(79, 9, 'Bogor'),
(103, 9, 'Ciamis'),
(104, 9, 'Cianjur'),
(107, 9, 'Cimahi'),
(108, 9, 'Cirebon'),
(109, 9, 'Cirebon'),
(115, 9, 'Depok'),
(126, 9, 'Garut'),
(149, 9, 'Indramayu'),
(171, 9, 'Karawang'),
(211, 9, 'Kuningan'),
(252, 9, 'Majalengka'),
(332, 9, 'Pangandaran'),
(376, 9, 'Purwakarta'),
(428, 9, 'Subang'),
(430, 9, 'Sukabumi'),
(431, 9, 'Sukabumi'),
(440, 9, 'Sumedang'),
(468, 9, 'Tasikmalaya'),
(469, 9, 'Tasikmalaya'),
(37, 10, 'Banjarnegara'),
(41, 10, 'Banyumas'),
(49, 10, 'Batang'),
(76, 10, 'Blora'),
(91, 10, 'Boyolali'),
(92, 10, 'Brebes'),
(105, 10, 'Cilacap'),
(113, 10, 'Demak'),
(134, 10, 'Grobogan'),
(163, 10, 'Jepara'),
(169, 10, 'Karanganyar'),
(177, 10, 'Kebumen'),
(181, 10, 'Kendal'),
(196, 10, 'Klaten'),
(209, 10, 'Kudus'),
(249, 10, 'Magelang'),
(250, 10, 'Magelang'),
(344, 10, 'Pati'),
(348, 10, 'Pekalongan'),
(349, 10, 'Pekalongan'),
(352, 10, 'Pemalang'),
(375, 10, 'Purbalingga'),
(377, 10, 'Purworejo'),
(380, 10, 'Rembang'),
(386, 10, 'Salatiga'),
(398, 10, 'Semarang'),
(399, 10, 'Semarang'),
(427, 10, 'Sragen'),
(433, 10, 'Sukoharjo'),
(445, 10, 'Surakarta (Solo)'),
(472, 10, 'Tegal'),
(473, 10, 'Tegal'),
(476, 10, 'Temanggung'),
(497, 10, 'Wonogiri'),
(498, 10, 'Wonosobo'),
(31, 11, 'Bangkalan'),
(42, 11, 'Banyuwangi'),
(51, 11, 'Batu'),
(74, 11, 'Blitar'),
(75, 11, 'Blitar'),
(80, 11, 'Bojonegoro'),
(86, 11, 'Bondowoso'),
(133, 11, 'Gresik'),
(160, 11, 'Jember'),
(164, 11, 'Jombang'),
(178, 11, 'Kediri'),
(179, 11, 'Kediri'),
(222, 11, 'Lamongan'),
(243, 11, 'Lumajang'),
(247, 11, 'Madiun'),
(248, 11, 'Madiun'),
(251, 11, 'Magetan'),
(256, 11, 'Malang'),
(255, 11, 'Malang'),
(289, 11, 'Mojokerto'),
(290, 11, 'Mojokerto'),
(305, 11, 'Nganjuk'),
(306, 11, 'Ngawi'),
(317, 11, 'Pacitan'),
(330, 11, 'Pamekasan'),
(342, 11, 'Pasuruan'),
(343, 11, 'Pasuruan'),
(363, 11, 'Ponorogo'),
(369, 11, 'Probolinggo'),
(370, 11, 'Probolinggo'),
(390, 11, 'Sampang'),
(409, 11, 'Sidoarjo'),
(418, 11, 'Situbondo'),
(441, 11, 'Sumenep'),
(444, 11, 'Surabaya'),
(487, 11, 'Trenggalek'),
(489, 11, 'Tuban'),
(492, 11, 'Tulungagung'),
(61, 12, 'Bengkayang'),
(168, 12, 'Kapuas Hulu'),
(176, 12, 'Kayong Utara'),
(195, 12, 'Ketapang'),
(208, 12, 'Kubu Raya'),
(228, 12, 'Landak'),
(279, 12, 'Melawi'),
(364, 12, 'Pontianak'),
(365, 12, 'Pontianak'),
(388, 12, 'Sambas'),
(391, 12, 'Sanggau'),
(395, 12, 'Sekadau'),
(415, 12, 'Singkawang'),
(417, 12, 'Sintang'),
(18, 13, 'Balangan'),
(33, 13, 'Banjar'),
(35, 13, 'Banjarbaru'),
(36, 13, 'Banjarmasin'),
(43, 13, 'Barito Kuala'),
(143, 13, 'Hulu Sungai Selatan'),
(144, 13, 'Hulu Sungai Tengah'),
(145, 13, 'Hulu Sungai Utara'),
(203, 13, 'Kotabaru'),
(446, 13, 'Tabalong'),
(452, 13, 'Tanah Bumbu'),
(454, 13, 'Tanah Laut'),
(466, 13, 'Tapin'),
(44, 14, 'Barito Selatan'),
(45, 14, 'Barito Timur'),
(46, 14, 'Barito Utara'),
(136, 14, 'Gunung Mas'),
(167, 14, 'Kapuas'),
(174, 14, 'Katingan'),
(205, 14, 'Kotawaringin Barat'),
(206, 14, 'Kotawaringin Timur'),
(221, 14, 'Lamandau'),
(296, 14, 'Murung Raya'),
(326, 14, 'Palangka Raya'),
(371, 14, 'Pulang Pisau'),
(405, 14, 'Seruyan'),
(432, 14, 'Sukamara'),
(19, 15, 'Balikpapan'),
(66, 15, 'Berau'),
(89, 15, 'Bontang'),
(214, 15, 'Kutai Barat'),
(215, 15, 'Kutai Kartanegara'),
(216, 15, 'Kutai Timur'),
(341, 15, 'Paser'),
(354, 15, 'Penajam Paser Utara'),
(387, 15, 'Samarinda'),
(96, 16, 'Bulungan (Bulongan)'),
(257, 16, 'Malinau'),
(311, 16, 'Nunukan'),
(450, 16, 'Tana Tidung'),
(467, 16, 'Tarakan'),
(48, 17, 'Batam'),
(71, 17, 'Bintan'),
(172, 17, 'Karimun'),
(184, 17, 'Kepulauan Anambas'),
(237, 17, 'Lingga'),
(302, 17, 'Natuna'),
(462, 17, 'Tanjung Pinang'),
(21, 18, 'Bandar Lampung'),
(223, 18, 'Lampung Barat'),
(224, 18, 'Lampung Selatan'),
(225, 18, 'Lampung Tengah'),
(226, 18, 'Lampung Timur'),
(227, 18, 'Lampung Utara'),
(282, 18, 'Mesuji'),
(283, 18, 'Metro'),
(355, 18, 'Pesawaran'),
(356, 18, 'Pesisir Barat'),
(368, 18, 'Pringsewu'),
(458, 18, 'Tanggamus'),
(490, 18, 'Tulang Bawang'),
(491, 18, 'Tulang Bawang Barat'),
(496, 18, 'Way Kanan'),
(14, 19, 'Ambon'),
(99, 19, 'Buru'),
(100, 19, 'Buru Selatan'),
(185, 19, 'Kepulauan Aru'),
(258, 19, 'Maluku Barat Daya'),
(259, 19, 'Maluku Tengah'),
(260, 19, 'Maluku Tenggara'),
(261, 19, 'Maluku Tenggara Barat'),
(400, 19, 'Seram Bagian Barat'),
(401, 19, 'Seram Bagian Timur'),
(488, 19, 'Tual'),
(138, 20, 'Halmahera Barat'),
(139, 20, 'Halmahera Selatan'),
(140, 20, 'Halmahera Tengah'),
(141, 20, 'Halmahera Timur'),
(142, 20, 'Halmahera Utara'),
(191, 20, 'Kepulauan Sula'),
(372, 20, 'Pulau Morotai'),
(477, 20, 'Ternate'),
(478, 20, 'Tidore Kepulauan'),
(1, 21, 'Aceh Barat'),
(2, 21, 'Aceh Barat Daya'),
(3, 21, 'Aceh Besar'),
(4, 21, 'Aceh Jaya'),
(5, 21, 'Aceh Selatan'),
(6, 21, 'Aceh Singkil'),
(7, 21, 'Aceh Tamiang'),
(8, 21, 'Aceh Tengah'),
(9, 21, 'Aceh Tenggara'),
(10, 21, 'Aceh Timur'),
(11, 21, 'Aceh Utara'),
(20, 21, 'Banda Aceh'),
(59, 21, 'Bener Meriah'),
(72, 21, 'Bireuen'),
(127, 21, 'Gayo Lues'),
(230, 21, 'Langsa'),
(235, 21, 'Lhokseumawe'),
(300, 21, 'Nagan Raya'),
(358, 21, 'Pidie'),
(359, 21, 'Pidie Jaya'),
(384, 21, 'Sabang'),
(414, 21, 'Simeulue'),
(429, 21, 'Subulussalam'),
(68, 22, 'Bima'),
(69, 22, 'Bima'),
(118, 22, 'Dompu'),
(238, 22, 'Lombok Barat'),
(239, 22, 'Lombok Tengah'),
(240, 22, 'Lombok Timur'),
(241, 22, 'Lombok Utara'),
(276, 22, 'Mataram'),
(438, 22, 'Sumbawa'),
(439, 22, 'Sumbawa Barat'),
(13, 23, 'Alor'),
(58, 23, 'Belu'),
(122, 23, 'Ende'),
(125, 23, 'Flores Timur'),
(212, 23, 'Kupang'),
(213, 23, 'Kupang'),
(234, 23, 'Lembata'),
(269, 23, 'Manggarai'),
(270, 23, 'Manggarai Barat'),
(271, 23, 'Manggarai Timur'),
(301, 23, 'Nagekeo'),
(304, 23, 'Ngada'),
(383, 23, 'Rote Ndao'),
(385, 23, 'Sabu Raijua'),
(412, 23, 'Sikka'),
(434, 23, 'Sumba Barat'),
(435, 23, 'Sumba Barat Daya'),
(436, 23, 'Sumba Tengah'),
(437, 23, 'Sumba Timur'),
(479, 23, 'Timor Tengah Selatan'),
(480, 23, 'Timor Tengah Utara'),
(16, 24, 'Asmat'),
(67, 24, 'Biak Numfor'),
(90, 24, 'Boven Digoel'),
(111, 24, 'Deiyai (Deliyai)'),
(117, 24, 'Dogiyai'),
(150, 24, 'Intan Jaya'),
(157, 24, 'Jayapura'),
(158, 24, 'Jayapura'),
(159, 24, 'Jayawijaya'),
(180, 24, 'Keerom'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)'),
(231, 24, 'Lanny Jaya'),
(263, 24, 'Mamberamo Raya'),
(264, 24, 'Mamberamo Tengah'),
(274, 24, 'Mappi'),
(281, 24, 'Merauke'),
(284, 24, 'Mimika'),
(299, 24, 'Nabire'),
(303, 24, 'Nduga'),
(335, 24, 'Paniai'),
(347, 24, 'Pegunungan Bintang'),
(373, 24, 'Puncak'),
(374, 24, 'Puncak Jaya'),
(392, 24, 'Sarmi'),
(443, 24, 'Supiori'),
(484, 24, 'Tolikara'),
(495, 24, 'Waropen'),
(499, 24, 'Yahukimo'),
(500, 24, 'Yalimo'),
(124, 25, 'Fakfak'),
(165, 25, 'Kaimana'),
(272, 25, 'Manokwari'),
(273, 25, 'Manokwari Selatan'),
(277, 25, 'Maybrat'),
(346, 25, 'Pegunungan Arfak'),
(378, 25, 'Raja Ampat'),
(424, 25, 'Sorong'),
(425, 25, 'Sorong'),
(426, 25, 'Sorong Selatan'),
(449, 25, 'Tambrauw'),
(474, 25, 'Teluk Bintuni'),
(475, 25, 'Teluk Wondama'),
(60, 26, 'Bengkalis'),
(120, 26, 'Dumai'),
(147, 26, 'Indragiri Hilir'),
(148, 26, 'Indragiri Hulu'),
(166, 26, 'Kampar'),
(187, 26, 'Kepulauan Meranti'),
(207, 26, 'Kuantan Singingi'),
(350, 26, 'Pekanbaru'),
(351, 26, 'Pelalawan'),
(381, 26, 'Rokan Hilir'),
(382, 26, 'Rokan Hulu'),
(406, 26, 'Siak'),
(253, 27, 'Majene'),
(262, 27, 'Mamasa'),
(265, 27, 'Mamuju'),
(266, 27, 'Mamuju Utara'),
(362, 27, 'Polewali Mandar'),
(38, 28, 'Bantaeng'),
(47, 28, 'Barru'),
(87, 28, 'Bone'),
(95, 28, 'Bulukumba'),
(123, 28, 'Enrekang'),
(132, 28, 'Gowa'),
(162, 28, 'Jeneponto'),
(244, 28, 'Luwu'),
(245, 28, 'Luwu Timur'),
(246, 28, 'Luwu Utara'),
(254, 28, 'Makassar'),
(275, 28, 'Maros'),
(328, 28, 'Palopo'),
(333, 28, 'Pangkajene Kepulauan'),
(336, 28, 'Parepare'),
(360, 28, 'Pinrang'),
(396, 28, 'Selayar (Kepulauan Selayar)'),
(408, 28, 'Sidenreng Rappang/Rapang'),
(416, 28, 'Sinjai'),
(423, 28, 'Soppeng'),
(448, 28, 'Takalar'),
(451, 28, 'Tana Toraja'),
(486, 28, 'Toraja Utara'),
(493, 28, 'Wajo'),
(25, 29, 'Banggai'),
(26, 29, 'Banggai Kepulauan'),
(98, 29, 'Buol'),
(119, 29, 'Donggala'),
(291, 29, 'Morowali'),
(329, 29, 'Palu'),
(338, 29, 'Parigi Moutong'),
(366, 29, 'Poso'),
(410, 29, 'Sigi'),
(482, 29, 'Tojo Una-Una'),
(483, 29, 'Toli-Toli'),
(53, 30, 'Bau-Bau'),
(85, 30, 'Bombana'),
(101, 30, 'Buton'),
(102, 30, 'Buton Utara'),
(182, 30, 'Kendari'),
(198, 30, 'Kolaka'),
(199, 30, 'Kolaka Utara'),
(200, 30, 'Konawe'),
(201, 30, 'Konawe Selatan'),
(202, 30, 'Konawe Utara'),
(295, 30, 'Muna'),
(494, 30, 'Wakatobi'),
(73, 31, 'Bitung'),
(81, 31, 'Bolaang Mongondow (Bolmong)'),
(82, 31, 'Bolaang Mongondow Selatan'),
(83, 31, 'Bolaang Mongondow Timur'),
(84, 31, 'Bolaang Mongondow Utara'),
(188, 31, 'Kepulauan Sangihe'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)'),
(192, 31, 'Kepulauan Talaud'),
(204, 31, 'Kotamobagu'),
(267, 31, 'Manado'),
(285, 31, 'Minahasa'),
(286, 31, 'Minahasa Selatan'),
(287, 31, 'Minahasa Tenggara'),
(288, 31, 'Minahasa Utara'),
(485, 31, 'Tomohon'),
(12, 32, 'Agam'),
(93, 32, 'Bukittinggi'),
(116, 32, 'Dharmasraya'),
(186, 32, 'Kepulauan Mentawai'),
(236, 32, 'Lima Puluh Koto/Kota'),
(318, 32, 'Padang'),
(321, 32, 'Padang Panjang'),
(322, 32, 'Padang Pariaman'),
(337, 32, 'Pariaman'),
(339, 32, 'Pasaman'),
(340, 32, 'Pasaman Barat'),
(345, 32, 'Payakumbuh'),
(357, 32, 'Pesisir Selatan'),
(394, 32, 'Sawah Lunto'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)'),
(420, 32, 'Solok'),
(421, 32, 'Solok'),
(422, 32, 'Solok Selatan'),
(453, 32, 'Tanah Datar'),
(40, 33, 'Banyuasin'),
(121, 33, 'Empat Lawang'),
(220, 33, 'Lahat'),
(242, 33, 'Lubuk Linggau'),
(292, 33, 'Muara Enim'),
(297, 33, 'Musi Banyuasin'),
(298, 33, 'Musi Rawas'),
(312, 33, 'Ogan Ilir'),
(313, 33, 'Ogan Komering Ilir'),
(314, 33, 'Ogan Komering Ulu'),
(315, 33, 'Ogan Komering Ulu Selatan'),
(316, 33, 'Ogan Komering Ulu Timur'),
(324, 33, 'Pagar Alam'),
(327, 33, 'Palembang'),
(367, 33, 'Prabumulih'),
(15, 34, 'Asahan'),
(52, 34, 'Batu Bara'),
(70, 34, 'Binjai'),
(110, 34, 'Dairi'),
(112, 34, 'Deli Serdang'),
(137, 34, 'Gunungsitoli'),
(146, 34, 'Humbang Hasundutan'),
(173, 34, 'Karo'),
(217, 34, 'Labuhan Batu'),
(218, 34, 'Labuhan Batu Selatan'),
(219, 34, 'Labuhan Batu Utara'),
(229, 34, 'Langkat'),
(268, 34, 'Mandailing Natal'),
(278, 34, 'Medan'),
(307, 34, 'Nias'),
(308, 34, 'Nias Barat'),
(309, 34, 'Nias Selatan'),
(310, 34, 'Nias Utara'),
(319, 34, 'Padang Lawas'),
(320, 34, 'Padang Lawas Utara'),
(323, 34, 'Padang Sidempuan'),
(325, 34, 'Pakpak Bharat'),
(353, 34, 'Pematang Siantar'),
(389, 34, 'Samosir'),
(404, 34, 'Serdang Bedagai'),
(407, 34, 'Sibolga'),
(413, 34, 'Simalungun'),
(459, 34, 'Tanjung Balai'),
(463, 34, 'Tapanuli Selatan'),
(464, 34, 'Tapanuli Tengah'),
(465, 34, 'Tapanuli Utara'),
(470, 34, 'Tebing Tinggi'),
(481, 34, 'Toba Samosir');

-- --------------------------------------------------------

--
-- Table structure for table `rb_paket`
--

CREATE TABLE `rb_paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `durasi` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `max_produk` int(11) NOT NULL,
  `icon_kode` varchar(100) DEFAULT NULL,
  `icon_image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_paket`
--

INSERT INTO `rb_paket` (`id_paket`, `nama_paket`, `judul`, `keterangan`, `durasi`, `harga`, `max_produk`, `icon_kode`, `icon_image`) VALUES
(1, 'Star Seller 1 Bulan', 'Paket Wajib Untuk anda para Newbie', 'Masa Aktif 30 Hari\r\nMaksimal untuk 100 Produk\r\nSelangkapnya : <a target=\"_BLANK\" href=\"http://localhost/swarakalibata_martfury/halaman/detail/star-seller-1-bulan\">baca disini</a>', 30, 199000, 100, '', 'star1.png'),
(2, 'Star Seller 3 Bulan', 'Paket Wajib Untuk anda para Pedagang', 'Masa Aktif 90 Hari\r\nMaksimal untuk 200 Produk\r\nSelangkapnya : <a target=\"_BLANK\" href=\"http://localhost/swarakalibata_martfury/halaman/detail/star-seller-3-bulan\">baca disini</a>', 90, 549000, 200, '', 'star2.png'),
(3, 'Star Seller 6 Bulan', 'Paket Wajib Untuk anda Berjiwa Pengusaha', 'Masa Aktif 180 Hari\r\nMaksimal untuk 300 Produk\r\nSelangkapnya : <a target=\"_BLANK\" href=\"http://localhost/swarakalibata_martfury/halaman/detail/star-seller-6-bulan\">baca disini</a>', 180, 999000, 300, '', 'star3.png');

-- --------------------------------------------------------

--
-- Table structure for table `rb_pembayaran_bonus`
--

CREATE TABLE `rb_pembayaran_bonus` (
  `id_pembayaran_bonus` int(10) NOT NULL,
  `username` varchar(60) NOT NULL,
  `nominal_bayar` int(10) NOT NULL,
  `waktu_bayar` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_pembayaran_bonus`
--

INSERT INTO `rb_pembayaran_bonus` (`id_pembayaran_bonus`, `username`, `nominal_bayar`, `waktu_bayar`) VALUES
(1, 'arsenio', 50000, '2017-04-11'),
(2, 'robby', 70000, '2017-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `rb_pembelian`
--

CREATE TABLE `rb_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `kode_pembelian` varchar(50) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `waktu_beli` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_pembelian`
--

INSERT INTO `rb_pembelian` (`id_pembelian`, `kode_pembelian`, `id_supplier`, `waktu_beli`) VALUES
(1, 'PO-0001', 1, '2017-05-23 10:13:05'),
(2, 'PO-0002', 2, '2017-05-24 07:05:11'),
(3, 'PO-0003', 1, '2017-05-27 14:58:50'),
(5, 'PO-0004', 1, '2017-05-30 09:30:02'),
(6, 'PO-0005', 1, '2017-06-01 10:29:39'),
(8, 'PO-0006', 1, '2019-02-20 07:44:57'),
(9, 'PO-20190321100135', 2, '2019-03-21 10:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `rb_pembelian_detail`
--

CREATE TABLE `rb_pembelian_detail` (
  `id_pembelian_detail` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_pesan` int(11) NOT NULL,
  `jumlah_pesan` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_pembelian_detail`
--

INSERT INTO `rb_pembelian_detail` (`id_pembelian_detail`, `id_pembelian`, `id_produk`, `harga_pesan`, `jumlah_pesan`, `satuan`) VALUES
(1, 1, 1, 260000, 100, 'pcs'),
(2, 1, 2, 455000, 150, 'pcs'),
(3, 2, 1, 255000, 235, 'pcs'),
(5, 2, 2, 3000000, 58, 'pcs'),
(9, 3, 1, 600000, 3, 'pcs'),
(7, 3, 2, 3000000, 43, 'pcs'),
(12, 5, 6, 320000, 25, 'unit'),
(13, 5, 5, 6990000, 10, 'unit'),
(14, 5, 4, 1000000, 45, 'unit'),
(16, 6, 13, 45900, 16, 'pcs'),
(17, 6, 12, 490000, 12, 'unit'),
(18, 6, 11, 8299000, 10, 'pcs'),
(19, 6, 9, 584000, 15, 'unit'),
(20, 6, 8, 275000, 6, 'unit'),
(21, 6, 7, 879000, 11, 'unit'),
(22, 6, 3, 14998000, 1, 'unit'),
(23, 6, 0, 0, 0, ''),
(26, 8, 13, 55000, 8, 'pcs'),
(27, 9, 13, 55000, 13, 'pcs');

-- --------------------------------------------------------

--
-- Table structure for table `rb_pencairan_bonus`
--

CREATE TABLE `rb_pencairan_bonus` (
  `id_pencairan_bonus` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `bonus_referral` int(11) NOT NULL,
  `waktu_pencairan` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_pencairan_bonus`
--

INSERT INTO `rb_pencairan_bonus` (`id_pencairan_bonus`, `id_reseller`, `bonus_referral`, `waktu_pencairan`) VALUES
(2, 1, 20000, '2017-06-04 13:39:15'),
(4, 1, 24450, '2019-03-22 08:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `rb_pencairan_reward`
--

CREATE TABLE `rb_pencairan_reward` (
  `id_pencairan_reward` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `id_reward` int(11) NOT NULL,
  `reward_date` varchar(10) NOT NULL,
  `waktu_pencairan` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_pencairan_reward`
--

INSERT INTO `rb_pencairan_reward` (`id_pencairan_reward`, `id_reseller`, `id_reward`, `reward_date`, `waktu_pencairan`) VALUES
(5, 2, 1, '2019-03', '2019-03-22 09:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `rb_penjualan`
--

CREATE TABLE `rb_penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `id_penjual` int(11) NOT NULL DEFAULT 0,
  `status_pembeli` enum('reseller','konsumen') NOT NULL,
  `status_penjual` enum('admin','reseller') NOT NULL,
  `no_resi` varchar(255) DEFAULT NULL,
  `kode_kurir` varchar(100) DEFAULT NULL,
  `kurir` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `proses` enum('0','1','2','3','4') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_penjualan`
--

INSERT INTO `rb_penjualan` (`id_penjualan`, `kode_transaksi`, `id_pembeli`, `id_penjual`, `status_pembeli`, `status_penjual`, `no_resi`, `kode_kurir`, `kurir`, `service`, `ongkir`, `keterangan`, `waktu_transaksi`, `proses`) VALUES
(1, 'TRX1.20200215073040', 1, 1, 'konsumen', 'reseller', NULL, 'JNE', 'Jalur Nugraha Ekakurir (JNE)', 'REG', 11000, '32|93|1276|Gang. Manggis, No 231 C, Belakang Puskesmas', '2020-02-15 07:30:40', '0'),
(2, 'TRX1.20200215073040', 1, 2, 'konsumen', 'reseller', '640010035662419', 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'REG', 17000, '32|93|1276|Gang. Manggis, No 231 C, Belakang Puskesmas', '2020-02-15 07:30:40', '4'),
(3, 'TRX-20200215095733', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:57:33', '1'),
(4, 'TRX-20200215095737', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:57:37', '1'),
(5, 'TRX-20200215095742', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:57:42', '1'),
(6, 'TRX-20200215095745', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:57:45', '1'),
(7, 'TRX-20200215095751', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:57:51', '1'),
(8, 'TRX-20200215095754', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:57:54', '1'),
(9, 'TRX-20200215095836', 2, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:58:36', '1'),
(10, 'TRX-20200215095840', 2, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:58:40', '1'),
(11, 'TRX-20200215095843', 2, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:58:43', '1'),
(12, 'TRX-20200215095847', 2, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:58:47', '1'),
(13, 'TRX-20200215095852', 2, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:58:52', '1'),
(14, 'TRX-20200215095856', 2, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:58:56', '1'),
(15, 'TRX-20200215095900', 2, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:59:00', '1'),
(16, 'TRX-20200215095905', 2, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:59:05', '1'),
(17, 'TRX-20200215095912', 2, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:59:12', '1'),
(18, 'TRX-20200215095924', 2, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-02-15 09:59:24', '1'),
(21, 'TRX1.20200215154422', 1, 2, 'konsumen', 'reseller', '640010035662419', 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'REG', 11000, '32|93|1276|Gang. Manggis, No 231 C, Belakang Puskesmas', '2020-02-15 15:44:22', '4'),
(22, 'TRX1.20200215154616', 1, 2, 'konsumen', 'reseller', '640010035662419', 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'REG', 11000, '32|93|1276|Gang. Manggis, No 231 C, Belakang Puskesmas', '2020-02-15 15:46:16', '3'),
(23, 'TRX1.20200217072110', 1, 2, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'REG', 11000, '32|93|1276|Gang. Manggis, No 231 C, Belakang Puskesmas', '2020-02-17 07:21:10', '0'),
(24, 'TRX1.20200217074238', 1, 2, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'REG', 11000, '32|93|1276|Gang. Manggis, No 231 C, Belakang Puskesmas', '2020-02-17 07:42:38', '0'),
(25, 'TRX2.20200217180509', 2, 2, 'konsumen', 'reseller', NULL, 'pos', 'POS Indonesia (POS)', 'Paket Kilat Khusus', 54000, '1|114|1573|Jl. Denpasar Indah Mpok Anin No 115 DX', '2020-02-17 18:05:09', '0'),
(26, 'TRX2.20200217182025', 2, 2, 'konsumen', 'reseller', NULL, 'tiki', 'Citra Van Titipan Kilat (TIKI)', 'REG', 11000, '1|114|1573|Jl. Denpasar Indah Mpok Anin No 115 DX', '2020-02-17 18:20:25', '0'),
(27, 'TRX2.20200217182729', 2, 2, 'konsumen', 'reseller', NULL, 'pos', 'POS Indonesia (POS)', 'Paket Kilat Khusus', 33000, '32|421|5810|Jl. Mawar Berduri Indah Menwangi No 165 CD', '2020-02-17 18:27:29', '0'),
(28, 'TRX3.20200218071211', 3, 1, 'konsumen', 'reseller', '640010035662419', 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'REG', 11000, '32|394|5445|Jl. Ndeso Karyo Husodo, No 78 UT', '2020-02-18 07:12:11', '3'),
(29, 'TRX-20200218171826', 2, 1, 'reseller', 'admin', NULL, NULL, '', '', 0, NULL, '2020-02-18 17:18:26', '0'),
(31, 'TRX-20200311063953', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-03-11 06:39:53', '1'),
(32, 'TRX-20200311064156', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-03-11 06:41:56', '1'),
(33, 'TRX-20200311064532', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-03-11 06:45:32', '1'),
(34, 'TRX-20200311064754', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-03-11 06:47:54', '1'),
(35, 'TRX-20200311064828', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-03-11 06:48:28', '1'),
(36, 'TRX-20200311064942', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-03-11 06:49:42', '1'),
(37, 'TRX-20200311065018', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-03-11 06:50:18', '1'),
(38, 'TRX-20200311065034', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-03-11 06:50:34', '1'),
(39, 'TRX-20200311065426', 1, 1, 'reseller', 'admin', '-', '-', '-', 'Stok Otomatis (Pribadi)', 0, '-', '2020-03-11 06:54:26', '1'),
(40, 'TRX-20200311143451', 1, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-03-11 14:34:51', '1'),
(41, 'TRX-20200312171226', 1, 1, 'reseller', 'admin', NULL, NULL, '', '', 0, NULL, '2020-03-12 17:12:26', '0'),
(42, 'TRX-20200312173638', 1, 1, 'reseller', 'admin', NULL, NULL, '', '', 0, NULL, '2020-03-12 17:36:38', '0'),
(44, 'TRX7.20200318205859', 7, 2, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'REG', 22000, '9|22|307|Jl. Siti Lawang Mancusari', '2020-03-18 20:58:59', '0'),
(45, 'TRX7.20200318211146', 7, 1, 'konsumen', 'reseller', NULL, 'tiki', 'Citra Van Titipan Kilat (TIKI)', 'ECO', 30000, '9|22|307|Jl. Siti Lawang Mancusari', '2020-03-18 21:11:46', '0'),
(46, 'TRX9.20200501081319', 9, 1, 'konsumen', 'reseller', NULL, 'pos', 'POS Indonesia (POS)', 'Paket Kilat Khusus', 47000, '2|28|436|Jl. Bimasaksi Jaya Kencana, No 456', '2020-05-01 08:13:19', '0'),
(47, 'TRX9.20200501081319', 9, 2, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'OKE', 37000, '2|28|436|Jl. Bimasaksi Jaya Kencana, No 456', '2020-05-01 08:13:19', '0'),
(48, 'TRX9.20200501081507', 9, 2, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'OKE', 37000, '2|28|436|Jl. Bimasaksi Jaya Kencana, No 456', '2020-05-01 08:15:07', '0'),
(49, 'TRX10.20200501190016', 10, 1, 'konsumen', 'reseller', NULL, 'jet', 'COD (Cash on delivery)', 'Ulak Karang', 5500, '26|350|4914|Jalan Parit Indah', '2020-05-01 19:00:16', '0'),
(50, 'TRX11.20200501221734', 11, 1, 'konsumen', 'reseller', NULL, '0', 'COD (Cash on delivery)', 'Tunggul Hitam', 6500, '2|28|434|ertwert', '2020-05-01 22:17:34', '0'),
(51, 'TRX12.20200502042818', 12, 2, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'REG', 25000, '5|501|6993|', '2020-05-02 04:28:18', '0'),
(52, 'TRX13.20200502180432', 13, 2, 'konsumen', 'reseller', NULL, 'jet', 'COD (Cash on delivery)', 'Panjang Bana', 3700, '9|54|730|Jalan saja', '2020-05-02 18:04:32', '0'),
(53, 'TRX14.20200502181240', 14, 1, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'OKE', 30000, '3|331|4658|', '2020-05-02 18:12:40', '0'),
(54, 'TRX14.20200502181240', 14, 2, 'konsumen', 'reseller', NULL, '0', 'COD (Cash on delivery)', 'Panjang Bana', 3700, '3|331|4658|', '2020-05-02 18:12:40', '0'),
(55, 'TRX15.20200503110428', 15, 2, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'OKE', 74000, '30|198|2753|jl. landak', '2020-05-03 11:04:28', '0'),
(56, 'TRX16.20200504053827', 16, 1, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'OKE', 29000, '10|209|2924|', '2020-05-04 05:38:27', '0'),
(57, 'TRX17.20200504172431', 17, 2, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'OKE', 22000, '10|398|5496|ungaran', '2020-05-04 17:24:31', '0'),
(58, 'TRX-20200504202457', 36, 1, 'reseller', 'admin', NULL, NULL, '', '', 0, NULL, '2020-05-04 20:24:57', '0'),
(59, 'TRX-20200504202908', 36, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-05-04 20:29:08', '1'),
(60, 'TRX19.20200504203149', 19, 36, 'konsumen', 'reseller', 'SRGA02414842419', 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'CTC', 7000, '10|398|5496|yo sudarso', '2020-05-04 20:31:49', '3'),
(63, 'TRX-20200504221242', 18, 1, 'konsumen', 'reseller', NULL, NULL, '', '', 0, NULL, '2020-05-04 22:12:42', '0'),
(65, 'TRX-20200505075934', 18, 1, 'konsumen', 'reseller', NULL, NULL, 'jne', '', 0, NULL, '2020-05-05 07:59:34', '0'),
(66, 'TRX-20200505123307', 18, 1, 'konsumen', 'reseller', NULL, NULL, 'jne', '', 0, NULL, '2020-05-05 12:33:07', '0'),
(68, 'TRX22.20200506084659', 22, 1, 'konsumen', 'reseller', NULL, 'tiki', 'Citra Van Titipan Kilat (TIKI)', 'ECO', 46000, '18|224|3167|Jl. Angkasa Puri Limbawe', '2020-05-06 08:46:59', '0'),
(69, 'TRX22.20200506085626', 22, 1, 'konsumen', 'reseller', NULL, 'pos', 'POS Indonesia (POS)', 'Paket Kilat Khusus', 45000, '18|224|3167|Jl. Angkasa Puri Limbawe', '2020-05-06 08:56:26', '0'),
(70, 'TRX-20200506090955', 37, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-05-06 09:09:55', '1'),
(71, 'TRX3.20200506093128', 3, 37, 'konsumen', 'reseller', NULL, 'pos', 'POS Indonesia (POS)', 'Paket Kilat Khusus', 43500, '32|394|5445|Jl. Ndeso Karyo Husodo, No 78 UT', '2020-05-06 09:31:28', '0'),
(73, 'TRX18.20200506104958', 18, 1, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'OKE', 22000, '10|398|5496|Genuk ungaran', '2020-05-06 10:49:58', '0'),
(74, 'TRX24.20200506105115', 24, 37, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'OKE', 92000, '16|257|3642|Jl. Pusako Bundo Kanduang', '2020-05-06 10:51:15', '0'),
(75, 'TRX-20200506110645', 36, 1, 'reseller', 'admin', '-', '-', '-', 'Stok Otomatis (Pribadi)', 0, '-', '2020-05-06 11:06:45', '1'),
(76, 'TRX18.20200506111033', 18, 1, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'OKE', 22000, '10|398|5496|Genuk ungaran', '2020-05-06 11:10:33', '0'),
(77, 'TRX18.20200506111033', 18, 2, 'konsumen', 'reseller', NULL, 'tiki', 'Citra Van Titipan Kilat (TIKI)', 'ECO', 25000, '10|398|5496|Genuk ungaran', '2020-05-06 11:10:33', '0'),
(78, 'TRX18.20200507120833', 18, 2, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'OKE', 22000, '10|398|5496|Genuk ungaran', '2020-05-07 12:08:33', '0'),
(79, 'TRX18.20200507171922', 18, 2, 'konsumen', 'reseller', NULL, 'tiki', 'Citra Van Titipan Kilat (TIKI)', 'ECO', 25000, '10|398|5496|Genuk ungaran', '2020-05-07 17:19:22', '0'),
(80, 'TRX3.20200510171523', 3, 2, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'REG', 11000, '32|394|5445|Jl. Ndeso Karyo Husodo, No 78 UT', '2020-05-10 17:15:23', '0'),
(81, 'TRX18.20200511090141', 18, 1, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'OKE', 22000, '10|398|5496|Genuk ungaran', '2020-05-11 09:01:41', '0'),
(82, 'TRX-20200512150326', 38, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-05-12 15:03:26', '1'),
(83, 'TRX-20200512150515', 38, 1, 'reseller', 'admin', NULL, NULL, '', '', 0, NULL, '2020-05-12 15:05:15', '0'),
(84, 'TRX27.20200512151619', 27, 36, 'konsumen', 'reseller', NULL, 'lion', 'Citra Van Titipan Kilat (TIKI)', 'REG', 48000, '8|442|6118|e', '2020-05-12 15:16:19', '0'),
(85, 'TRX28.20200512152811', 28, 37, 'konsumen', 'reseller', NULL, 'jne', 'Jalur Nugraha Ekakurir (JNE)', 'OKE', 29000, '5|135|1868|2', '2020-05-12 15:28:11', '0'),
(86, 'TRX29.20200520111324', 29, 1, 'konsumen', 'reseller', NULL, '0', 'Jalur Nugraha Ekakurir (JNE)', 'OKE', 19000, '11|409|5634|Jl. Baladewa 20, Girya Permata Gedangan', '2020-05-20 11:13:24', '0'),
(87, 'TRX-20200520112527', 39, 1, 'reseller', 'admin', NULL, NULL, '', 'Stok Otomatis (Pribadi)', 0, NULL, '2020-05-20 11:25:27', '1'),
(88, 'TRX31.20200520132727', 31, 39, 'konsumen', 'reseller', '', '0', 'COD (Cash on delivery)', 'Griya Permata Gedangan III', 2500, '11|409|5634|Jl. Baladewa 15, Girya Permata Gedangan', '2020-05-20 13:27:27', '4'),
(89, 'TRX32.20200524003616', 32, 2, 'konsumen', 'reseller', NULL, '0', 'COD (Cash on delivery)', 'Padang Lua', 3000, '7|129|1788|Gorontalo', '2020-05-24 00:36:16', '0'),
(90, 'TRX33.20200527083723', 33, 1, 'konsumen', 'reseller', NULL, '0', 'COD (Cash on delivery)', 'Lubuk Begalung', 7600, '12|195|2718|', '2020-05-27 08:37:23', '0');

-- --------------------------------------------------------

--
-- Table structure for table `rb_penjualan_detail`
--

CREATE TABLE `rb_penjualan_detail` (
  `id_penjualan_detail` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `keterangan_order` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_penjualan_detail`
--

INSERT INTO `rb_penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `jumlah`, `diskon`, `harga_jual`, `satuan`, `keterangan_order`) VALUES
(1, 1, 11, 1, 0, 89000, 'pcs', 'Umar Lapakers - Ukuran XL'),
(2, 2, 4, 2, 89000, 129900, 'unit', 'Syarii Sentral - Merah'),
(3, 3, 28, 5, 0, 0, 'pcs', NULL),
(4, 4, 27, 3, 0, 0, 'unit', NULL),
(5, 5, 20, 2, 0, 57000, 'pcs', NULL),
(6, 6, 12, 8, 0, 0, 'unit', NULL),
(7, 7, 11, 4, 0, 0, 'pcs', NULL),
(8, 8, 10, 12, 0, 0, 'pcs', NULL),
(11, 11, 14, 5, 0, 0, 'pcs', NULL),
(12, 12, 9, 1, 0, 0, 'unit', NULL),
(13, 13, 8, 7, 0, 0, 'unit', NULL),
(14, 14, 6, 6, 0, 0, 'unit', NULL),
(15, 15, 5, 1, 0, 0, 'unit', NULL),
(16, 16, 4, 2, 0, 0, 'unit', NULL),
(17, 17, 3, 7, 0, 0, 'unit', NULL),
(18, 18, 2, 9, 0, 0, 'pcs', NULL),
(21, 1, 12, 1, 0, 24000, 'unit', NULL),
(22, 21, 9, 1, 15000, 68500, 'unit', NULL),
(23, 21, 6, 1, 0, 75000, 'unit', 'Warna Ungu'),
(24, 21, 3, 1, 0, 169980, 'unit', ''),
(25, 22, 5, 1, 0, 755000, 'unit', NULL),
(26, 23, 2, 1, 100000, 350000, 'pcs', 'Warna Hitam'),
(27, 24, 8, 1, 0, 34500, 'unit', NULL),
(28, 25, 6, 1, 0, 75000, 'unit', NULL),
(29, 25, 2, 1, 100000, 350000, 'pcs', NULL),
(30, 26, 14, 1, 0, 100000, 'pcs', NULL),
(31, 27, 2, 1, 100000, 350000, 'pcs', NULL),
(32, 28, 10, 1, 0, 59900, 'pcs', NULL),
(33, 29, 13, 5, 0, 57000, 'pcs', NULL),
(35, 31, 28, 3, 0, 0, 'pcs', NULL),
(36, 32, 28, 3, 0, 0, 'pcs', NULL),
(37, 33, 28, 3, 0, 0, 'pcs', NULL),
(38, 34, 28, 3, 0, 0, 'pcs', NULL),
(39, 35, 28, 3, 0, 0, 'pcs', NULL),
(40, 36, 28, 3, 0, 0, 'pcs', NULL),
(41, 37, 28, 3, 0, 0, 'pcs', NULL),
(42, 38, 28, 3, 0, 0, 'pcs', NULL),
(43, 39, 28, 3, 0, 0, 'pcs', '-'),
(44, 40, 30, 2, 0, 0, 'pcs', NULL),
(45, 41, 13, 1, 0, 57000, 'pcs', NULL),
(46, 41, 18, 2, 0, 720000, 'Unit', NULL),
(47, 42, 13, 5, 0, 57000, 'pcs', NULL),
(49, 44, 14, 1, 0, 100000, 'pcs', NULL),
(50, 45, 12, 2, 0, 66000, 'unit', ''),
(51, 46, 11, 1, 0, 89000, 'pcs', NULL),
(52, 47, 4, 1, 89000, 129900, 'unit', NULL),
(53, 48, 6, 1, 0, 75000, 'unit', NULL),
(54, 49, 10, 1, 0, 59900, 'pcs', ''),
(55, 50, 12, 1, 0, 66000, 'unit', ''),
(56, 51, 14, 1, 0, 100000, 'pcs', NULL),
(57, 52, 2, 1, 100000, 350000, 'pcs', NULL),
(58, 53, 10, 1, 0, 59900, 'pcs', NULL),
(59, 54, 6, 4, 0, 75000, 'unit', NULL),
(60, 55, 9, 1, 15000, 68500, 'unit', NULL),
(61, 56, 12, 1, 0, 66000, 'unit', NULL),
(62, 57, 9, 2, 15000, 68500, 'unit', NULL),
(63, 58, 13, 3, 0, 57000, 'pcs', NULL),
(64, 59, 31, 2, 0, 0, 'PCS', NULL),
(65, 60, 31, 1, 1000, 8000, 'PCS', 'MOHON KIRIM SKRG'),
(71, 65, 30, 1, 0, 514900, 'pcs', ' - '),
(69, 63, 30, 1, 0, 514900, 'pcs', NULL),
(72, 66, 30, 2, 0, 514900, 'pcs', ' - '),
(74, 68, 30, 1, 40000, 554900, 'pcs', NULL),
(75, 69, 12, 1, 0, 66000, 'unit', NULL),
(76, 70, 32, 5, 0, 0, 'pcs', NULL),
(77, 71, 32, 1, 10000, 130000, 'pcs', ''),
(79, 73, 30, 1, 40000, 554900, 'pcs', NULL),
(80, 74, 32, 1, 10000, 130000, 'pcs', NULL),
(81, 75, 31, 3, 0, 0, 'PCS', '-'),
(82, 76, 12, 1, 0, 66000, 'unit', NULL),
(83, 77, 14, 1, 0, 100000, 'pcs', NULL),
(84, 78, 8, 1, 0, 34500, 'unit', NULL),
(85, 78, 6, 3, 0, 75000, 'unit', NULL),
(86, 78, 5, 1, 0, 755000, 'unit', NULL),
(87, 79, 3, 2, 0, 169980, 'unit', NULL),
(88, 79, 6, 1, 0, 75000, 'unit', NULL),
(89, 80, 2, 1, 100000, 350000, 'pcs', ''),
(90, 80, 14, 2, 0, 100000, 'pcs', ''),
(91, 81, 30, 2, 40000, 554900, 'pcs', 'Yang besar'),
(92, 82, 33, 5, 0, 0, '3', NULL),
(93, 83, 0, 0, 0, 0, '', NULL),
(94, 83, 13, 1, 0, 57000, 'pcs', NULL),
(95, 84, 31, 1, 1000, 8000, 'PCS', 'vvv'),
(96, 85, 32, 1, 10000, 130000, 'pcs', NULL),
(97, 86, 11, 1, 0, 89000, 'pcs', NULL),
(98, 87, 34, 30, 0, 0, 'Botol', NULL),
(99, 88, 34, 5, 0, 3000, 'Botol', NULL),
(100, 89, 5, 1, 0, 755000, 'unit', NULL),
(101, 90, 10, 1, 0, 59900, 'pcs', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rb_penjualan_otomatis`
--

CREATE TABLE `rb_penjualan_otomatis` (
  `id_penjualan_otomatis` int(11) NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `nominal` int(50) NOT NULL,
  `pembayaran` int(11) DEFAULT NULL,
  `waktu_proses` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_penjualan_otomatis`
--

INSERT INTO `rb_penjualan_otomatis` (`id_penjualan_otomatis`, `kode_transaksi`, `nominal`, `pembayaran`, `waktu_proses`) VALUES
(1, 'TRX1.20200217074238', 45738, NULL, '2020-02-17 06:19:00'),
(2, 'TRX2.20200217180509', 379009, NULL, '2020-02-17 18:05:09'),
(3, 'TRX2.20200217182025', 111025, 1, '2020-02-17 18:20:25'),
(4, 'TRX2.20200217182729', 283729, NULL, '2020-02-17 18:27:29'),
(5, 'TRX3.20200218071211', 71111, 1, '2020-02-18 07:12:11'),
(6, 'TRX1.20200215073040', 222840, NULL, '2020-02-18 05:10:08'),
(8, 'TRX1.20200215154616', 766016, 1, '2020-02-18 05:15:08'),
(9, 'TRX1.20200217072110', 261010, NULL, '2020-02-18 11:11:08'),
(11, 'TRX1.20200215154422', 309502, 1, '2020-02-19 00:00:00'),
(13, 'TRX7.20200318205859', 122859, NULL, '2020-03-18 20:58:59'),
(14, 'TRX7.20200318211146', 162146, NULL, '2020-03-18 21:11:46'),
(15, 'TRX9.20200501081319', 214219, NULL, '2020-05-01 08:13:19'),
(16, 'TRX9.20200501081507', 112507, NULL, '2020-05-01 08:15:07'),
(17, 'TRX10.20200501190016', 65416, NULL, '2020-05-01 19:00:16'),
(18, 'TRX11.20200501221734', 73234, NULL, '2020-05-01 22:17:34'),
(19, 'TRX12.20200502042818', 125818, NULL, '2020-05-02 04:28:18'),
(20, 'TRX13.20200502180432', 254132, NULL, '2020-05-02 18:04:32'),
(21, 'TRX14.20200502181240', 393840, NULL, '2020-05-02 18:12:40'),
(22, 'TRX15.20200503110428', 127928, NULL, '2020-05-03 11:04:28'),
(23, 'TRX16.20200504053827', 95827, NULL, '2020-05-04 05:38:27'),
(24, 'TRX17.20200504172431', 129431, NULL, '2020-05-04 17:24:31'),
(25, 'TRX19.20200504203149', 14149, 1, '2020-05-04 20:31:49'),
(26, 'TRX21.20200506083950', 180950, NULL, '2020-05-06 08:39:50'),
(27, 'TRX22.20200506084659', 561559, NULL, '2020-05-06 08:46:59'),
(28, 'TRX22.20200506085626', 111626, NULL, '2020-05-06 08:56:26'),
(29, 'TRX3.20200506093128', 163628, NULL, '2020-05-06 09:31:28'),
(30, 'TRX18.20200506104958', 537858, NULL, '2020-05-06 10:49:58'),
(31, 'TRX24.20200506105115', 212115, NULL, '2020-05-06 10:51:15'),
(32, 'TRX18.20200506111033', 213033, NULL, '2020-05-06 11:10:33'),
(33, 'TRX18.20200507120833', 1037333, NULL, '2020-05-07 12:08:33'),
(34, 'TRX18.20200507171922', 440882, NULL, '2020-05-07 17:19:22'),
(35, 'TRX3.20200510171523', 461523, NULL, '2020-05-10 17:15:23'),
(36, 'TRX18.20200511090141', 1051941, NULL, '2020-05-11 09:01:41'),
(37, 'TRX27.20200512151619', 55619, NULL, '2020-05-12 15:16:19'),
(38, 'TRX28.20200512152811', 149811, NULL, '2020-05-12 15:28:11'),
(39, 'TRX29.20200520111324', 108324, NULL, '2020-05-20 11:13:24'),
(40, 'TRX31.20200520132727', 18227, 1, '2020-05-20 13:27:27'),
(41, 'TRX32.20200524003616', 758616, NULL, '2020-05-24 00:36:16'),
(42, 'TRX33.20200527083723', 68223, NULL, '2020-05-27 08:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `rb_penjualan_temp`
--

CREATE TABLE `rb_penjualan_temp` (
  `id_penjualan_detail` int(11) NOT NULL,
  `session` varchar(50) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `keterangan_order` text DEFAULT NULL,
  `waktu_order` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_penjualan_temp`
--

INSERT INTO `rb_penjualan_temp` (`id_penjualan_detail`, `session`, `id_produk`, `jumlah`, `diskon`, `harga_jual`, `satuan`, `keterangan_order`, `waktu_order`) VALUES
(30, '20200220064925', 4, 1, 89000, 129900, 'unit', NULL, '2020-02-20 06:49:25'),
(19, '20200217070931', 2, 1, 100000, 350000, 'pcs', NULL, '2020-02-17 07:09:31'),
(10, '20200215152318', 2, 1, 100000, 350000, 'pcs', NULL, '2020-02-15 15:23:18'),
(36, '20200501165916', 6, 1, 0, 75000, 'unit', NULL, '2020-05-01 16:59:16'),
(37, '20200501170757', 10, 1, 0, 59900, 'pcs', NULL, '2020-05-01 17:07:57'),
(38, '20200501173359', 9, 1, 15000, 68500, 'unit', NULL, '2020-05-01 17:33:59'),
(39, '20200501180642', 4, 1, 89000, 129900, 'unit', NULL, '2020-05-01 18:06:42'),
(40, '20200501180849', 9, 1, 15000, 68500, 'unit', NULL, '2020-05-01 18:08:49'),
(41, '20200501182718', 9, 1, 15000, 68500, 'unit', NULL, '2020-05-01 18:27:18'),
(42, '20200501184804', 11, 1, 0, 89000, 'pcs', NULL, '2020-05-01 18:48:04'),
(45, '20200501214805', 5, 3, 0, 755000, 'unit', '', '2020-05-01 21:48:05'),
(47, '20200502013838', 2, 1, 100000, 350000, 'pcs', NULL, '2020-05-02 01:38:38'),
(48, '20200502023509', 11, 1, 0, 89000, 'pcs', NULL, '2020-05-02 02:35:09'),
(50, '20200502050911', 12, 1, 0, 66000, 'unit', NULL, '2020-05-02 05:09:11'),
(51, '20200502061212', 4, 1, 89000, 129900, 'unit', NULL, '2020-05-02 06:12:12'),
(52, '20200502145857', 9, 1, 15000, 68500, 'unit', NULL, '2020-05-02 14:58:57'),
(68, '20200506101330', 32, 1, 10000, 130000, 'pcs', NULL, '2020-05-06 10:13:30'),
(74, '20200507095022', 30, 2, 40000, 554900, 'pcs', NULL, '2020-05-07 09:51:02'),
(69, '20200506101330', 3, 1, 0, 169980, 'unit', NULL, '2020-05-06 10:35:42'),
(73, '20200507095022', 32, 2, 10000, 130000, 'pcs', NULL, '2020-05-07 09:50:22'),
(80, '20200509113102', 32, 1, 10000, 130000, 'pcs', NULL, '2020-05-09 11:31:02'),
(86, '20200512100202', 30, 1, 40000, 554900, 'pcs', NULL, '2020-05-12 10:02:29'),
(85, '20200512100202', 4, 1, 89000, 129900, 'unit', NULL, '2020-05-12 10:02:03'),
(89, '20200512211220', 8, 1, 0, 34500, 'unit', NULL, '2020-05-12 21:12:20'),
(91, '20200518134828', 6, 1, 0, 75000, 'unit', NULL, '2020-05-18 13:48:28'),
(94, '20200520160210', 34, 1, 0, 3000, 'Botol', NULL, '2020-05-20 16:02:10'),
(97, '20200529180352', 2, 1, 100000, 350000, 'pcs', NULL, '2020-05-29 18:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `rb_produk`
--

CREATE TABLE `rb_produk` (
  `id_produk` int(11) NOT NULL,
  `id_produk_perusahaan` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `id_kategori_produk_sub` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `produk_seo` varchar(255) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_reseller` int(11) NOT NULL,
  `harga_konsumen` int(11) NOT NULL,
  `berat` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tentang_produk` text NOT NULL,
  `keterangan` text NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `tag` varchar(255) NOT NULL,
  `dilihat` int(11) DEFAULT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_produk`
--

INSERT INTO `rb_produk` (`id_produk`, `id_produk_perusahaan`, `id_kategori_produk`, `id_kategori_produk_sub`, `id_reseller`, `nama_produk`, `produk_seo`, `satuan`, `harga_beli`, `harga_reseller`, `harga_konsumen`, `berat`, `gambar`, `tentang_produk`, `keterangan`, `username`, `aktif`, `tag`, `dilihat`, `waktu_input`) VALUES
(1, 0, 2, 2, 2, 'Segitiga Instan Aira- AA94.9 Tropical Blue', 'segitiga-instan-aira-aa949-tropical-blue', 'pcs', 60000, 0, 70000, '300', 'RYB6_1_Grey_grande.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', 'Y', 'muslimah,kaos,wanita', 10, '2017-05-23 17:04:25'),
(2, 0, 2, 1, 2, 'Segitiga Instan Aira- AA94.8 Minty Green', 'segitiga-instan-aira-aa948-minty-green', 'pcs', 340000, 0, 350000, '500', 'RV71_27_Jeans_grande.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller2', 'Y', 'muslimah,kaos,wanita', 35, '2017-05-23 17:10:17'),
(3, 0, 2, 2, 2, 'Segitiga Instan KEINA - KN54.38 Delfine Lilac', 'segitiga-instan-keina--kn5438-delfine-lilac', 'unit', 159980, 0, 169980, '300', 'RV71_5_Cold_Ocean_grande.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller2', 'Y', 'muslimah,kaos,wanita', 24, '2017-05-30 06:47:14'),
(4, 0, 2, 1, 2, 'Segitiga Instan Madeira - MDB5.3 Sunset', 'segitiga-instan-madeira--mdb53-sunset', 'unit', 119900, 0, 129900, '100', '22.png;c4_grande1.jpg;AR91_95_Sheva_Maroon_1_grande1.png;MK97_7_Mocca_grande1.jpg;Emily_Grey_grande.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller2', 'Y', 'muslimah,kaos,wanita', 279, '2017-05-30 06:53:10'),
(5, 0, 2, 1, 2, 'Segitiga Instan Madeira - MDB5.2 Ocean', 'segitiga-instan-madeira--mdb52-ocean', 'unit', 745000, 0, 755000, '150', 'KYB4_14_Soft_Lavender_1024x1024_f993283a-dae0-4a05-b163-9f6b44465732_grande.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller2', 'Y', 'muslimah,kaos,wanita', 40, '2017-05-30 06:56:24'),
(6, 0, 2, 2, 2, 'Pashmina Instan Rafella - RLN1.2 Gold Maroon', 'pashmina-instan-rafella--rln12-gold-maroon', 'unit', 65000, 0, 75000, '130', 'Emily_Grey_grande.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller2', 'Y', 'muslimah,kaos,wanita', 81, '2017-05-30 06:57:11'),
(7, 0, 2, 2, 2, 'Pashmina Instan Rafella - RLN1.1 Sweet Grey', 'pashmina-instan-rafella--rln11-sweet-grey', 'unit', 89000, 0, 99000, '600', 'AYD5_3_Mayra_Pink_grande.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', 'Y', 'muslimah,kaos,wanita', 30, '2017-05-30 09:52:58'),
(8, 0, 6, 0, 2, 'Black Cotton Puplin Semi Wol Red White URI-12', 'black-cotton-puplin-semi-wol-red-white-uri12', 'unit', 24500, 0, 34501, '220', 'gamis6.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller2', 'Y', 'jeans,kemeja,kaos,pria', 506, '2017-05-30 09:55:04'),
(9, 0, 6, 0, 2, 'Rompi Kurta Hoodie Zip Dark Grey Semi Wol', 'rompi-kurta-hoodie-zip-dark-grey-semi-wol', 'unit', 58500, 0, 68500, '250', 'gamis5.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller2', 'Y', 'jeans,kemeja,kaos,pria', 381, '2017-05-30 09:58:43'),
(10, 0, 6, 0, 1, 'Gamis Green Filosifi Oxorcities TG-3452', 'gamis-green-filosifi-oxorcities-tg3452', 'pcs', 49900, 0, 59900, '320', 'gamis11.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller', 'Y', 'jeans,kemeja,kaos,pria', 40, '2017-05-30 10:02:14'),
(11, 0, 6, 0, 1, 'Rompi Kurta Hoodie Zip Mentantarei YU-234', 'rompi-kurta-hoodie-zip-mentantarei-yu234', 'pcs', 79000, 0, 89000, '250', 'gamis4.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller', 'Y', 'jeans,kemeja,kaos,pria', 39, '2017-05-30 10:03:47'),
(12, 0, 6, 0, 1, 'Koku Fren Grenn Latifa Consesi TY-634', 'koku-fren-grenn-latifa-consesi-ty634', 'unit', 55000, 0, 66000, '360', 'gamis3.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller', 'Y', 'jeans,kemeja,kaos,pria', 403, '2017-05-30 10:06:33'),
(21, 0, 1, 0, 3, 'Ultrabook Hackintosh Acer - I5 Haswell - 8 Gb - SSD', 'ultrabook-hackintosh-acer--i5-haswell--8-gb--ssd', 'Unit', 12500000, 13000000, 16500000, '1200', 'a1.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Untuk diperhatikan : - Untuk Saat Ini Bless Hackintosh Tidak Melayani COD/Datang Ketempat, murni hanya melayani transaksi Online dengan fasilitas pengiriman spt yang ditetapkan</p>\r\n\r\n<p>Budayakan membaca Iklan sampai beres. Mohon jangan tanyakan lagi apa yang sudah dijelaskan di Lapak.</p>\r\n\r\n<p>Barang bergaransi 7x24 jam terhitung sejak agan menerima Barang. Dengan catatan, tidak merusak segel yang ada. Retur tidak dilayani apabila SEGEL RUSAK.</p>', 'reseller3', 'Y', 'jeans,kemeja,kaos,pria', 30, '2019-03-23 19:39:53'),
(13, 0, 2, 0, 0, 'Super Segiempat Rebya  - RYB6.7 Pink Clover', 'segiempat-rebya---ryb67-pink-clover', 'pcs', 55000, 57000, 65000, '300', 'AD_19_20_Misty_Grey_grande.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', 'Y', 'jeans,kemeja,kaos,pria', NULL, '2017-05-30 10:10:37'),
(14, 0, 6, 0, 2, 'Koku Black Cotton Sesnsation Gamis TY-4312', 'koku-black-cotton-sesnsation-gamis-ty4312', 'pcs', 90000, 0, 100000, '310', 'gamis2.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Instan ZIFA, pashmina instan dengan bahan legendaris Diamond Lava ORIGINAL by Hijab Wanita Cantik, lentur dan nyaman bangeett! Ada ruffle cantik dan manis. Layernya panjang bisa dikreasi suka2, dijamin makin percaya diri ! Yuk belanja sekarang ! Nyeseel kalo cuma punya satu</p>', 'reseller2', 'Y', 'jeans,kemeja,kaos,pria', 45, '2018-09-11 10:20:24'),
(17, 13, 2, 0, 2, 'Segiempat Rebya  - RYB6.7 Pink Clover', 'segiempat-rebya---ryb67-pink-clover', 'pcs', 55000, 57000, 65000, '300', 'AD_19_20_Misty_Grey_grande.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller2', 'Y', 'muslimah,kaos,wanita', 4, '2019-03-21 08:01:06'),
(18, 0, 10, 0, 0, 'Consina Expert Series Lunara Biru Gelap', 'consina-expert-series-lunara-biru-gelap', 'Unit', 700000, 720000, 759000, '500', 'tas.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<h2>Produk Lokal, Rasa Internasional</h2>\r\n\r\n<p>Consina merupakan salah satu produk lokal yang lahir pada tahun 1994. Bagi Anda yang memiliki hobi mendaki gunung dan berkemah, tentunya merk Consina sudah melekat di telinga Anda. Semakin berkembangnya perusahaan ini, peminatnya semakin banyak. Produk-produk dari consina memiliki kualitas yang sangat bersaing karena dibuat dengan material-material kelas satu. Tidak hanya itu, fungsi dan desainnya tidak kalah dengan merk-merk dari luar negeri.&nbsp;</p>\r\n\r\n<h3>Menampung Keseharian Anda Sehari-hari</h3>\r\n\r\n<p>Kali ini consina mengeluarkan tas ransel dengan ukuran yang besar yang mampu menampung kebutuhan berpetualang Anda. Tidak hanya itu, tas ransel Consina Lunara hadir dengan dimensi ukuran 30 x 25 x 60 sehingga Anda mampu menampung barang bawaan hingga 20 sampai 40 liter. Walaupun tas ini diperuntukkan untuk kebutuhan bertualang, Anda dapat menggunakan tas ini untuk kegiatan sehari-hari Anda.</p>\r\n', 'admin', 'Y', 'jeans,kemeja,kaos,pria', NULL, '2019-03-21 11:38:37'),
(19, 18, 10, 0, 2, 'Consina Expert Series Lunara Biru Gelap', 'consina-expert-series-lunara-biru-gelap', 'Unit', 700000, 720000, 759000, '500', 'tas.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<h2>Produk Lokal, Rasa Internasional</h2>\r\n\r\n<p>Consina merupakan salah satu produk lokal yang lahir pada tahun 1994. Bagi Anda yang memiliki hobi mendaki gunung dan berkemah, tentunya merk Consina sudah melekat di telinga Anda. Semakin berkembangnya perusahaan ini, peminatnya semakin banyak. Produk-produk dari consina memiliki kualitas yang sangat bersaing karena dibuat dengan material-material kelas satu. Tidak hanya itu, fungsi dan desainnya tidak kalah dengan merk-merk dari luar negeri.&nbsp;</p>\r\n\r\n<h3>Menampung Keseharian Anda Sehari-hari</h3>\r\n\r\n<p>Kali ini consina mengeluarkan tas ransel dengan ukuran yang besar yang mampu menampung kebutuhan berpetualang Anda. Tidak hanya itu, tas ransel Consina Lunara hadir dengan dimensi ukuran 30 x 25 x 60 sehingga Anda mampu menampung barang bawaan hingga 20 sampai 40 liter. Walaupun tas ini diperuntukkan untuk kebutuhan bertualang, Anda dapat menggunakan tas ini untuk kegiatan sehari-hari Anda.</p>', 'reseller2', 'Y', 'muslimah,kaos,wanita', 15, '2019-03-21 11:52:49'),
(20, 13, 6, 0, 1, 'Gamis Green Filosifi Oxorcities TG-3452', 'gamis-green-filosifi-oxorcities-tg3452', 'pcs', 55000, 57000, 65000, '300', 'gamis1.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller', 'Y', 'muslimah,kaos,wanita', NULL, '2019-03-22 06:37:29'),
(22, 0, 1, 0, 3, 'APPLE MacBook Pro - Space Gray - Intel Core i5 2.3GHz', 'apple-macbook-pro--space-gray--intel-core-i5-23ghz', 'Unit', 19500000, 20000000, 22500000, '1200', 'a2.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<h3>Spesifikasi Lebih Tinggi untuk Pacu Produktivitas</h3>\r\n\r\n<p>Apple MacBook Pro edisi terbaru hadir dengan dua pilihan ukuran layar yakni 13 Inch dan 15 Inch. Apple MacBook Pro memiliki fitur terbaru yang memudahkan Anda bekerja dengan mengganti jejeran tombol Function (F) dengan panel sentuh. Fitur bernama Touch Bar ini dapat mengganti tampilan menu di panel sentuh sesuai aplikasi yang Anda gunakan. Namun, jika Anda masih menginginkan versi MacBook tanpa Touch Bar, Apple juga menyediakan varian MacBook Pro 13 Inch tanpa Touch Bar. Jadi Anda masih menggunakan Keyboard dengan tombol F berbentuk fisik seperti Layout Keyboard Laptop konvensional. MacBook Pro tanpa Touch Bar membawa peningkatan performa dibanding pendahulunya. Hadir sebagai otak utama adalah Processor Dual-Core besutan Intel Core i5 berkecepatan 2.3 GHz yang terintegrasi dengan pengolah grafis Intel Iris Graphics 640. Dua buah Port Thunderbolt 3 dengan antarmuka USB-C bisa digunakan untuk transfer data, mengisi baterai, dan Output Display.</p>\r\n\r\n<h3>Dua Pilihan Ukuran MacBook Pro</h3>\r\n\r\n<p>2 model MacBook Pro layar 13 dan 15 Inch, dengan dan tanpa Touch Bar.</p>\r\n', 'admin', 'Y', 'hardware,laptop,elektronik', 30, '2019-03-23 20:24:24'),
(23, 0, 1, 0, 3, 'HP Business EliteBook X360 1020 G2', 'hp-business-elitebook-x360-1020-g2', 'Unit', 30520000, 31520000, 32520000, '1100', 'a4.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<h3><strong>Ringan, Kuat, dan Bertenaga</strong></h3>\r\n\r\n<p>HP EliteBook x360 1020 G2 merupakan laptop yang diperuntukkan bagi pebisnis yang memerlukkan tidak hanya bermobilitas tinggi, namun juga bertenaga. Elitebook x360 1020 G2 didukung oleh prosesor Intel® Core™ i7-7500U sehingga mampu menghadirkan performa yang sangat dapat diandalkan. Selain itu, laptop dengan layar 12.5 beresolusi Full HD ini sudah dilengkapi dengan SSD (Solid State Drive) sebagai media penyimpanan data sehingga kinerjanya semakin kencang. Tentu saja laptop ini memiliki bobot yang sangat ringan agar Anda dapat membawanya kemana saja.&nbsp;</p>\r\n\r\n<h3><strong>Empat Mode Untuk Segala Kebutuhan Bisnis</strong></h3>\r\n\r\n<p>EliteBook x360 1020 G@ hadir dengan beberapa mode yang didesain untuk kebutuhan Anda sehingga dapat menunjang produktivitas Anda. Mode-mode tersebut yaitu Mode Tent yang berbentuk seperti tenda yang sangat cocok untuk presentasi, Mode Tablet yang mentransformasikan laptop Anda menjadi sebuah tablet, Mode Media yang membawa Anda untuk merasakan pengalaman hiburan mendalam, dan yang terakhir adalah Mode Laptop.</p>', 'reseller3', 'Y', 'hardware,laptop,elektronik', 35, '2019-03-24 10:09:20'),
(24, 0, 1, 0, 3, 'ACER Swift 7 (SF713-51) (Core i7-7Y75) - Gold', 'acer-swift-7-sf71351-core-i77y75--gold', 'Unit', 20465000, 21465000, 22465000, '1100', 'a7.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<h3><strong>5 Alasan Jitu Memilih Acer Swift 7</strong></h3>\r\n\r\n<p>Pasar ultrabook dunia diramaikan kehadiran Acer Swift 7 yang menjadi salah satu ultrabook paling tipis di dunia. Ketebalan laptop yang super tipis memang ditujukan untuk Anda yang punya mobilitas tinggi. Karena tipis dan ringan, saat dibawa-bawa Acer Swift 7 tidak akan terlalu menyiksa Anda. Berikut ini lima alasan kenapa Anda harus segera memiliki Acer Swift 7:</p>\r\n\r\n<h3>1) Laptop Paling Tipis di Dunia</h3>\r\n\r\n<p>Acer Swift 7 menjadi laptop paling tipis di dunia saat diluncurkan pertama kali pada awal Juli 2016. Ini sangat wajar karena ketebalan laptop satu ini hanya 0.39 inci. Pemilihan material berkualitas juga membuatnya sangat ringan. Perpaduan warna emas di bagian dalam dan hitam matte di luar menciptakan kesan elegan dan modern. Dengan memakai Acer Swift 7 tentu akan meningkatkan kepercayaan diri Anda.</p>\r\n\r\n<h3>2) Layar Sentuh Jernih Seluas 13 Inci</h3>\r\n\r\n<p>Konten layar yang Anda lihat jadi terlihat jernih berkat dukungan layar sentuh seluas 13.3 inci beresolusi Full HD. Teknologi Acer Color Intelligence mengatur gamma dan saturasi agar bisa menghasilkan warna lebih kaya. Acer Swift 7 juga menggunakan panel layar jenis IPS sehingga dari sudut mana pun Anda melihatnya, kontras dan warna layar tidak pudar. Tak usah khawatir layar tergores, karena sudah menggunakan kaca Corning Gorilla Glass yang 2 kali lebih kuat dari kaca biasa.&nbsp;</p>', 'reseller3', 'Y', 'hardware,laptop,elektronik', 73, '2019-03-24 10:11:03'),
(25, 0, 1, 0, 3, 'DELL Business Latitude 7290 (Core i7-8650U)', 'dell-business-latitude-7290-core-i78650u', 'Unit', 20449000, 21449000, 22449000, '1100', 'a8.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<h3><strong>Alasan Jitu Memilih DELL Business Latitude 7290</strong></h3>\r\n\r\n<p>Pasar ultrabook dunia diramaikan kehadiran DELL Business Latitude 7290 yang menjadi salah satu ultrabook paling tipis di dunia. Ketebalan laptop yang super tipis memang ditujukan untuk Anda yang punya mobilitas tinggi. Karena tipis dan ringan, saat dibawa-bawa DELL Business Latitude 7290 tidak akan terlalu menyiksa Anda. Berikut ini lima alasan kenapa Anda harus segera memiliki DELL Business Latitude 7290:</p>\r\n\r\n<p>DELL Business Latitude 7290 menjadi laptop paling tipis di dunia saat diluncurkan pertama kali pada awal Juli 2016. Ini sangat wajar karena ketebalan laptop satu ini hanya 0.39 inci. Pemilihan material berkualitas juga membuatnya sangat ringan. Perpaduan warna emas di bagian dalam dan hitam matte di luar menciptakan kesan elegan dan modern. Dengan memakai DELL Business Latitude 7290 tentu akan meningkatkan kepercayaan diri Anda.</p>\r\n\r\n<p>Konten layar yang Anda lihat jadi terlihat jernih berkat dukungan layar sentuh seluas 13.3 inci beresolusi Full HD. Teknologi Acer Color Intelligence mengatur gamma dan saturasi agar bisa menghasilkan warna lebih kaya. Acer Swift 7 juga menggunakan panel layar jenis IPS sehingga dari sudut mana pun Anda melihatnya, kontras dan warna layar tidak pudar. Tak usah khawatir layar tergores, karena sudah menggunakan kaca Corning Gorilla Glass yang 2 kali lebih kuat dari kaca biasa.&nbsp;</p>\r\n', 'admin', 'Y', 'hardware,laptop,elektronik', 118, '2019-03-24 10:13:19'),
(26, 0, 1, 0, 3, 'LENOVO X1 Carbon Gen 6 [20KGA04GID]', 'lenovo-x1-carbon-gen-6-20kga04gid', 'Unit', 33750000, 34750000, 35750000, '1200', 'carbon1.jpg;carbon2.jpg;carbon3.jpg;carbon4.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<h3><strong>Alasan Jitu Memilih DELL Business Latitude 7290</strong></h3>\r\n\r\n<p>Pasar ultrabook dunia diramaikan kehadiran LENOVO X1 Carbon Gen 6&nbsp; yang menjadi salah satu ultrabook paling tipis di dunia. Ketebalan laptop yang super tipis memang ditujukan untuk Anda yang punya mobilitas tinggi. Karena tipis dan ringan, saat dibawa-bawa LENOVO X1 Carbon Gen 6&nbsp; tidak akan terlalu menyiksa Anda. Berikut ini lima alasan kenapa Anda harus segera memiliki LENOVO X1 Carbon Gen 6&nbsp;:</p>\r\n\r\n<p>LENOVO X1 Carbon Gen 6&nbsp; menjadi laptop paling tipis di dunia saat diluncurkan pertama kali pada awal Juli 2016. Ini sangat wajar karena ketebalan laptop satu ini hanya 0.39 inci. Pemilihan material berkualitas juga membuatnya sangat ringan. Perpaduan warna emas di bagian dalam dan hitam matte di luar menciptakan kesan elegan dan modern. Dengan memakai LENOVO X1 Carbon Gen 6&nbsp; tentu akan meningkatkan kepercayaan diri Anda.</p>\r\n\r\n<p>Konten layar yang Anda lihat jadi terlihat jernih berkat dukungan layar sentuh seluas 13.3 inci beresolusi Full HD. Teknologi Acer Color Intelligence mengatur gamma dan saturasi agar bisa menghasilkan warna lebih kaya. LENOVO X1 Carbon Gen 6&nbsp; juga menggunakan panel layar jenis IPS sehingga dari sudut mana pun Anda melihatnya, kontras dan warna layar tidak pudar. Tak usah khawatir layar tergores, karena sudah menggunakan kaca Corning Gorilla Glass yang 2 kali lebih kuat dari kaca biasa.&nbsp;</p>\r\n', 'admin', 'Y', 'hardware,laptop,elektronik', 147, '2019-03-24 10:15:21'),
(27, 12, 6, 0, 1, 'Koku Fren Grenn Latifa Consesi TY-634', 'koku-fren-grenn-latifa-consesi-ty634', 'unit', 55000, 0, 66000, '360', 'gamis3.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller', 'Y', '', NULL, '2019-11-26 06:39:25'),
(28, 10, 6, 0, 1, 'Gamis Green Filosifi Oxorcities TG-3452', 'gamis-green-filosifi-oxorcities-tg3452', 'pcs', 49900, 0, 59900, '320', 'gamis11.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p><img src=\"http://localhost/tokosa/asset/images/video1.png\" style=\"width: 25%; float: left;\" class=\"note-float-left\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', '1', 'Y', '', NULL, '2019-11-26 06:39:25'),
(29, 0, 10, 0, 4, 'Koper anti Maling Conggih Sekali', 'koper-anti-maling-conggih-sekali', 'pcs', 450000, 0, 550000, '1500', 'foto_kopers.jpg', '1. Unrestrained and portable active stereo speaker\r\n2. Free from the confines of wires and chords\r\n3. 20 hours of portable capabilities\r\n4. Double-ended Coil Cord with 3.5mm Stereo Plugs Included\r\n5. 3/4? Dome Tweeters: 2X and 4? Woofer: 1X', '<p>Ngeri bukan ?? Kejadian ini mungkin sudah sering terjadi , mungkin pernah menimpa kita atau sanak saudara kita. Sungguh merugikan tapi tidak pernah ada tindak lanjut atau menjadi sorotan berita. Masalahnya apa ?<br><br>Kejadian pencurian bagasi tidak pernah tertangkap kamera sehingga saat kita klaim pun tidak membuahkan hasil apapun. Kurangnya barang bukti membuat kita tidak bisa melakukan laporan dan kita dianggap mengada ada.<br><br>Daripada bingung dan menjadi tenang untuk melakukan perjalanan, berikut ini asher-online.com akan memberikan tips agar koper travel Anda menjadi koper anti maling.</p>', 'udinn', 'Y', '', 31, '2019-12-22 05:49:49'),
(30, 0, 14, 7, 1, 'Oxone Cookware Set Panci Stainless OX933', 'oxone-cookware-set-panci-stainless-ox933', 'pcs', 504900, 0, 554900, '500', 'cookware.jpg;cookware1.jpg', '1 set Oxone Cookware Set OX933 berisi :\r\n1 Buah Ketel Stainless Alumunium dengan gagang kayu\r\n1 Buah Wajan Penggorengan 26 cm dengan tutup kaca (25.5x6cm)\r\n1 Buah Panci 22 cm dengan tutup kaca (21.5x10cm)\r\n1 Buah Panci 24 cm dengan tutup kaca\r\n1 Buah Panci 26 cm dengan tutup kaca (25.5x12cm)\r\n1 Buah Panci Penggorengan 22 cm dengan saringan dan gagang kayu panjang ', '<p>Deskripsi Oxone Cookware Set Panci Stainless OX933, <span style=\"color: rgb(102, 102, 102); font-family: \"Work Sans\", sans-serif; font-size: 1.4rem;\">Lengkapi dapur Anda dengan satu set perlengkapan memasak dari Oxone Cookware Set - OX933, selalu memberikan kemudahan bagi Anda setiap Anda memasak. </span><span style=\"color: rgb(102, 102, 102); font-family: \"Work Sans\", sans-serif; font-size: 1.4rem;\">1 set panci serbaguna yang dapat digunakan untuk keperluan memasak sehari-hari , dengan desain yang classic dapat menambah kesan indah pada interior rumah anda .</span></p><p><b>Specifications :</b></p><p>1 set Oxone Cookware Set OX933 berisi :<br><span style=\"color: rgb(102, 102, 102); font-family: \"Work Sans\", sans-serif; font-size: 1.4rem;\">1 Buah Ketel Stainless Alumunium dengan gagang kayu<br></span><span style=\"color: rgb(102, 102, 102); font-family: \"Work Sans\", sans-serif; font-size: 1.4rem;\">1 Buah Wajan Penggorengan 26 cm dengan tutup kaca (25.5x6cm)<br></span><span style=\"color: rgb(102, 102, 102); font-family: \"Work Sans\", sans-serif; font-size: 1.4rem;\">1 Buah Panci 22 cm dengan tutup kaca (21.5x10cm)<br></span><span style=\"color: rgb(102, 102, 102); font-family: \"Work Sans\", sans-serif; font-size: 1.4rem;\">1 Buah Panci 24 cm dengan tutup kaca<br></span><span style=\"color: rgb(102, 102, 102); font-family: \"Work Sans\", sans-serif; font-size: 1.4rem;\">1 Buah Panci 26 cm dengan tutup kaca (25.5x12cm)<br></span><span style=\"color: rgb(102, 102, 102); font-family: \"Work Sans\", sans-serif; font-size: 1.4rem;\">1 Buah Panci Penggorengan 22 cm dengan saringan dan gagang kayu panjang <br></span><span style=\"color: rgb(102, 102, 102); font-family: \"Work Sans\", sans-serif; font-size: 1.4rem;\"><br><b>Buah Sodet Kayu </b></span><span style=\"color: rgb(102, 102, 102); font-family: \"Work Sans\", sans-serif; font-size: 1.4rem;\"><b>Ukuran :</b></span></p><p>Saucepan ( 2) : 25.5x6cm<br><span style=\"color: rgb(102, 102, 102); font-family: \"Work Sans\", sans-serif; font-size: 1.4rem;\">Stock pot ( 1) : 19.5x9cm<br></span><span style=\"color: rgb(102, 102, 102); font-family: \"Work Sans\", sans-serif; font-size: 1.4rem;\">Stock Pot ( 2) : 21.5x10cm<br></span><span style=\"color: rgb(102, 102, 102); font-family: \"Work Sans\", sans-serif; font-size: 1.4rem;\">Stock Pot ( 3) : 25.5x12cm</span></p>', '1', 'Y', '', 39, '2020-03-11 14:34:51'),
(32, 0, 14, 7, 37, 'Panci Masak Super Hebat dan Awet', 'panci-masak-super-hebat-dan-awet', 'pcs', 123000, 0, 130000, '100', 'panci.jpg;xiaomi-zhiwu.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, 'Y', '', 124, '2020-05-06 09:09:55'),
(34, 0, 14, 7, 39, 'Botol Madu', 'botol-madu', 'Botol', 2500, 0, 3000, '300', 'botol-madu-embun-Murni-PET-botol-plastik-transparan-bodoh-perak-aluminium.jpg', 'Botol yang biasanya digunakan untuk mengemas madu [Cuplikan]', 'Botol yang biasanya digunakan untuk mengemas madu [Keterangan]', NULL, 'Y', '', 9, '2020-05-20 11:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `rb_produk_diskon`
--

CREATE TABLE `rb_produk_diskon` (
  `id_produk_diskon` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `diskon` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_produk_diskon`
--

INSERT INTO `rb_produk_diskon` (`id_produk_diskon`, `id_produk`, `id_reseller`, `diskon`) VALUES
(1, 13, 2, 8000),
(2, 12, 2, 42000),
(3, 9, 2, 15000),
(4, 7, 2, 10000),
(5, 4, 2, 89000),
(7, 2, 2, 100000),
(8, 14, 1, 10000),
(9, 14, 2, 0),
(10, 16, 2, 342),
(11, 12, 1, 0),
(12, 11, 1, 0),
(13, 10, 1, 0),
(14, 26, 3, 0),
(15, 25, 3, 0),
(16, 24, 3, 0),
(17, 23, 3, 0),
(18, 21, 3, 0),
(19, 28, 1, 0),
(20, 27, 1, 0),
(21, 20, 1, 0),
(22, 19, 2, 0),
(23, 17, 2, 0),
(24, 8, 2, 0),
(25, 6, 2, 0),
(26, 5, 2, 0),
(27, 3, 2, 0),
(28, 30, 1, 40000),
(29, 31, 36, 1000),
(30, 32, 37, 10000),
(31, 33, 38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rb_produk_penawaran`
--

CREATE TABLE `rb_produk_penawaran` (
  `id_produk_penawaran` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_produk_penawaran`
--

INSERT INTO `rb_produk_penawaran` (`id_produk_penawaran`, `id_produk`, `waktu_input`) VALUES
(3, 11, '2020-02-19 21:43:10'),
(2, 4, '2020-02-19 00:00:00'),
(4, 7, '2020-02-19 21:43:43'),
(5, 9, '2020-02-19 21:43:49'),
(6, 6, '2020-02-19 21:44:08'),
(7, 2, '2020-02-19 21:44:18'),
(8, 10, '2020-02-19 21:44:31'),
(9, 20, '2020-02-19 21:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `rb_produk_ulasan`
--

CREATE TABLE `rb_produk_ulasan` (
  `id_ulasan` int(11) NOT NULL,
  `id_konsumen` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `ulasan` text NOT NULL,
  `waktu_kirim` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_produk_ulasan`
--

INSERT INTO `rb_produk_ulasan` (`id_ulasan`, `id_konsumen`, `id_produk`, `rating`, `ulasan`, `waktu_kirim`) VALUES
(1, 1, 4, '4', 'Layanan cepat, repon sangat bagus dan ramah sekali. \r\nuntuk kualitas produk juga sangat baik. :)', '2020-02-16 14:18:07'),
(2, 2, 4, '3', 'Cras id nulla at metus congue auctor. Suspendisse auctor dictum orci quis interdum. Nullam et eleifend metus. Integer in est orci. Duis hendrerit ex metus, vel tempor sem aliquet nec. Donec ornare hend rerit bibendum.', '2020-02-16 10:00:00'),
(3, 31, 34, '5', 'Kualitas bagus, pengemasan aman dan rapi. Seller fast response', '2020-05-20 15:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `rb_provinsi`
--

CREATE TABLE `rb_provinsi` (
  `provinsi_id` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_provinsi`
--

INSERT INTO `rb_provinsi` (`provinsi_id`, `nama_provinsi`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `rb_rekening`
--

CREATE TABLE `rb_rekening` (
  `id_rekening` int(5) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `pemilik_rekening` varchar(150) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_rekening`
--

INSERT INTO `rb_rekening` (`id_rekening`, `nama_bank`, `no_rekening`, `pemilik_rekening`, `gambar`) VALUES
(1, 'Bank BNI Syariah', '0817 0242 31', 'PT. TAJALAPAK Indonesia', 'bni.jpg'),
(2, 'Bank Mandiri Syariah', '7128 5288 67', 'PT. TAJALAPAK Indonesia ', 'mandiri.gif'),
(4, 'Bank BRI Syariah', '1043 5665 19', 'PT. TAJALAPAK Indonesia', 'bri.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rb_rekening_reseller`
--

CREATE TABLE `rb_rekening_reseller` (
  `id_rekening_reseller` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `pemilik_rekening` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_rekening_reseller`
--

INSERT INTO `rb_rekening_reseller` (`id_rekening_reseller`, `id_reseller`, `nama_bank`, `no_rekening`, `pemilik_rekening`) VALUES
(1, 2, 'Bank Danamon', '56234234000', 'Syarii Sentral'),
(2, 2, 'Bank BCA', '10823422', 'Syarii Sentral'),
(3, 3, 'Bank Mandiri', '234123123332', 'Kalifah Umayyah');

-- --------------------------------------------------------

--
-- Table structure for table `rb_reseller`
--

CREATE TABLE `rb_reseller` (
  `id_reseller` int(11) NOT NULL,
  `id_konsumen` int(11) NOT NULL,
  `nama_reseller` varchar(255) NOT NULL,
  `kecamatan_id` int(11) DEFAULT NULL,
  `kota_id` int(11) DEFAULT NULL,
  `provinsi_id` int(11) DEFAULT NULL,
  `alamat_lengkap` text DEFAULT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `referral` varchar(50) DEFAULT NULL,
  `tanggal_daftar` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_reseller`
--

INSERT INTO `rb_reseller` (`id_reseller`, `id_konsumen`, `nama_reseller`, `kecamatan_id`, `kota_id`, `provinsi_id`, `alamat_lengkap`, `no_telpon`, `keterangan`, `foto`, `referral`, `tanggal_daftar`) VALUES
(1, 1, 'Umar Lapakers', 1281, 94, 1, 'Jl. Angkasa Pura Raya, No 456 BG', '681267771355', 'Kami merupakan perusahaan yang bergerak dalam bidang kecantikan. Produk yang kami hasilkan secara ilmiah terbukti bermanfaat.  Harapan perusahaan kami adalah, menciptakan produk kecantikan produksi Indonesia yang berstandar internasional.', 'Mozilla_Firefox.png', '', '2017-05-23 00:00:00'),
(2, 2, 'Syarii Sentral Java', 4537, 318, 32, 'Jl. Ulak Karang Raya, No 165', '681966552310', 'Kami merupakan perusahaan yang bergerak dalam bidang kecantikan. Produk yang kami hasilkan secara ilmiah terbukti bermanfaat.  Harapan perusahaan kami adalah, menciptakan produk kecantikan produksi Indonesia yang berstandar internasional.', 'avatar.png', 'reseller', '2017-05-23 00:00:00'),
(3, 3, 'Kalifah Umayyah', 4193, 296, 14, 'Jl. Tiaka Raya, No 678', '685423020111', 'Kami merupakan perusahaan yang bergerak dalam bidang kecantikan. Produk yang kami hasilkan secara ilmiah terbukti bermanfaat.  Harapan perusahaan kami adalah, menciptakan produk kecantikan produksi Indonesia yang berstandar internasional.', 'avatar2.png', 'reseller', '2017-05-28 00:00:00'),
(4, 4, 'Al-Bukhori Lapak', 2095, 152, 6, 'Jl. Kenduri Miranti Jaya, No 4B', '684521212121', 'Kami merupakan perusahaan yang bergerak dalam bidang kecantikan. Produk yang kami hasilkan secara ilmiah terbukti bermanfaat.  Harapan perusahaan kami adalah, menciptakan produk kecantikan produksi Indonesia yang berstandar internasional.', 'avatar3.png', 'reseller1', '2017-06-08 08:15:49'),
(6, 6, 'Cut Kebaya', 675, 48, 17, 'Jl. Gang Cinta Suci, No 333 UT', '688834771222', 'Kami merupakan perusahaan yang bergerak dalam bidang kecantikan. Produk yang kami hasilkan secara ilmiah terbukti bermanfaat.  Harapan perusahaan kami adalah, menciptakan produk kecantikan produksi Indonesia yang berstandar internasional.', 'reseller.png', 'reseller1', '2017-06-08 08:52:21'),
(5, 5, 'Toko Koko', 3939, 280, 8, 'Jl. Sitinjau Laiuk Lauih Mandiangin', '081268881888', 'Apakah Anda mencari gambar Eceran, Ikon Komputer, E Commerce png? Jelajahi koleksi gambar png Eceran, Ikon Komputer, E Commerce kami yang luar biasa. Di bagian ini, Anda akan menemukan ratusan Eceran, Ikon Komputer, E Commerce gambar transparan, ikon, vektor, dan banyak lainnya. Koleksi gambar Eceran, Ikon Komputer, E Commerce png kami meliputi, Array dan lainnya. Gambar baru diunggah setiap minggu. Klik pada gambar thumbail untuk mengunduh gambar ukuran penuh.', NULL, NULL, '0000-00-00 00:00:00'),
(35, 16, 'delingart', 2924, 209, 10, 'Getas Pejaten, Jati, Kudus', '085292456800', 'Menjual Berbagai Kerajinan dari Kayu Bambu', NULL, NULL, '0000-00-00 00:00:00'),
(36, 18, 'Toko iwak pithik', 5496, 398, 10, 'Jalan yos sudarso no 44 ungaran', '085641172888', 'Toko iwak dan pithik', '030EBF7C-CE14-40CF-8463-F0329D51F59C.jpeg', NULL, '0000-00-00 00:00:00'),
(37, 24, 'Toko Karupuak', 4673, 331, 3, 'Jl. Simanse Maturase Baik', '081299882211', 'Tidak ada keterangan untuk toko,..', NULL, NULL, '0000-00-00 00:00:00'),
(38, 27, 'aa', 1470, 107, 9, 'aaa', '88888', 'aa', 'Desert.jpg', NULL, '0000-00-00 00:00:00'),
(39, 29, 'Toko Madu dan Herbal Alami', 5634, 409, 11, 'Jl. Baladewa 20, Girya Permata Gedangan', '081357657007', 'Kami menjual madu berkualitas dan herbal alami', NULL, NULL, '0000-00-00 00:00:00'),
(40, 32, 'Tokolami', 1788, 129, 7, 'Gorontalo', '08124519238', 'Okey', NULL, NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rb_reseller_cod`
--

CREATE TABLE `rb_reseller_cod` (
  `id_cod` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `nama_alamat` varchar(255) NOT NULL,
  `biaya_cod` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_reseller_cod`
--

INSERT INTO `rb_reseller_cod` (`id_cod`, `id_reseller`, `nama_alamat`, `biaya_cod`) VALUES
(1, 1, 'Ulak Karang', 5500),
(2, 1, 'Tunggul Hitam', 6500),
(4, 1, 'Lubuk Begalung', 7600),
(5, 2, 'Padang Lua', 3000),
(6, 2, 'Panjang Bana', 3700),
(7, 1, 'Tabiang', 5430),
(8, 38, 'wa', 2000),
(9, 39, 'Griya Permata Gedangan III', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `rb_reseller_paket`
--

CREATE TABLE `rb_reseller_paket` (
  `id_reseller_paket` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'N',
  `expire_date` date NOT NULL,
  `waktu_paket` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_reseller_paket`
--

INSERT INTO `rb_reseller_paket` (`id_reseller_paket`, `id_paket`, `id_reseller`, `status`, `expire_date`, `waktu_paket`) VALUES
(3, 2, 2, 'N', '2020-05-19', '2020-02-19 09:34:29'),
(4, 1, 1, 'N', '2020-03-16', '2020-03-16 06:49:20'),
(5, 1, 40, 'N', '2020-05-24', '2020-05-24 00:48:44'),
(6, 2, 39, 'Y', '2020-08-30', '2020-05-31 20:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `rb_reward`
--

CREATE TABLE `rb_reward` (
  `id_reward` int(5) NOT NULL,
  `posisi` int(100) NOT NULL,
  `reward` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_reward`
--

INSERT INTO `rb_reward` (`id_reward`, `posisi`, `reward`) VALUES
(1, 100000, 'Samsung Galaxy Senilai 2.500.000'),
(2, 500000, 'Laptop Asus Senilai 5.000.000'),
(3, 1000000, 'Pergi Umroh Senilai 25.000.000'),
(4, 90000000, 'Mobil Seken Senilai 50.000.000'),
(5, 120000000, 'Mobil Mewah Senilai 80.000.000'),
(7, 150000000, 'Rumah Mewah Senilai 100.000.000');

-- --------------------------------------------------------

--
-- Table structure for table `rb_setting`
--

CREATE TABLE `rb_setting` (
  `id_setting` int(11) NOT NULL,
  `referral` int(11) NOT NULL,
  `tanggal_pencairan` varchar(11) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_setting`
--

INSERT INTO `rb_setting` (`id_setting`, `referral`, `tanggal_pencairan`, `aktif`) VALUES
(1, 5, '1', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `rb_subscribe`
--

CREATE TABLE `rb_subscribe` (
  `id_subscribe` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `waktu_subscribe` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_subscribe`
--

INSERT INTO `rb_subscribe` (`id_subscribe`, `ip_address`, `email`, `waktu_subscribe`) VALUES
(3, '182.1.62.69', 'lengayang@gmail.com', '2020-05-02 03:22:11'),
(4, '182.253.121.29', 'ddd@a.com', '2020-05-12 15:23:43'),
(5, '::1', 'bakul.solo.com@gmail.com', '2020-05-29 08:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `rb_supplier`
--

CREATE TABLE `rb_supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `kontak_person` varchar(100) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat_email` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_supplier`
--

INSERT INTO `rb_supplier` (`id_supplier`, `nama_supplier`, `kontak_person`, `alamat_lengkap`, `no_hp`, `alamat_email`, `kode_pos`, `no_telpon`, `fax`, `keterangan`) VALUES
(1, 'PT. Elektronik Jaya Abadi', 'Muhammad Arsen', 'Jl. Siti Nurbayara, No 23 D, Tunggul Hitam, Padang', '082173054522', 'jaya.abadi@gmail.com', 56123, '0751461692', '0751461691', 'Tidak ada keterangan,..'),
(2, 'PT. Muda Hardware Sejahtera', 'Saiful Tanjung', 'Jl. Persada Ramayana, Ulak Karang, Padang', '098912334566', 'hardware.sejahtera@gmail.com', 87632, '075165321', '075165312', 'Tidak ada keterangan,..'),
(3, 'PT.Antasari Jaya Melajaya', 'Roberto Duransi', 'Jl. Kilometer Jaya Raya', '081288991244', 'roberto.melajaya@gmail.com', 12456, '0751890231', '0751890234', 'Tidak ada keterangan untuk supplier ini...');

-- --------------------------------------------------------

--
-- Table structure for table `rb_withdraw`
--

CREATE TABLE `rb_withdraw` (
  `id_withdraw` int(11) NOT NULL,
  `id_rekening_reseller` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `status` enum('Pending','Proses','Sukses','Batal') NOT NULL DEFAULT 'Pending',
  `waktu_withdraw` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_withdraw`
--

INSERT INTO `rb_withdraw` (`id_withdraw`, `id_rekening_reseller`, `id_reseller`, `nominal`, `status`, `waktu_withdraw`) VALUES
(1, 2, 2, 100000, 'Sukses', '2020-02-18 15:18:00'),
(2, 1, 2, 75000, 'Batal', '2020-02-18 15:39:46'),
(3, 2, 1, 20000, 'Pending', '2020-03-13 07:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`, `aktif`) VALUES
(1, 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2015-04-11', '', 'Y'),
(2, 'WHO merilis, 30 persen anak di dunia kecanduan komputer dan menonton televisi.', '2015-03-16', '', 'Y'),
(3, 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lama.', '2015-04-17', '', 'Y'),
(4, 'Menurut United Stated Trade Representatives, 25% obat yang beredar di adalah palsu.', '2015-04-17', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id_slide` int(5) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id_slide`, `keterangan`, `gambar`, `waktu`) VALUES
(5, 'Images Slider Produk 4', 'slider-1.png', '2020-06-01 15:00:13'),
(6, 'Images Slider Produk 5', 'slider-2.png', '2020-06-01 15:06:49'),
(7, 'Images Slider Produk 6', 'slider-3.png', '2020-06-01 15:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2018-04-19', 1, '1524111568'),
('::1', '2018-04-21', 1, '1524249582'),
('::1', '2018-04-24', 19, '1524509093'),
('::1', '2018-05-04', 13, '1525441129'),
('::1', '2018-05-05', 36, '1525494921'),
('::1', '2018-05-06', 5, '1525614861'),
('::1', '2018-05-11', 15, '1525998298'),
('::1', '2018-05-18', 4, '1526611139'),
('::1', '2018-05-19', 6, '1526701697'),
('::1', '2018-05-20', 13, '1526833607'),
('::1', '2018-05-22', 13, '1526947912'),
('::1', '2018-05-23', 16, '1527056425'),
('::1', '2018-05-31', 1, '1527743948'),
('::1', '2018-06-01', 2, '1527815549'),
('::1', '2018-06-03', 191, '1528045141'),
('::1', '2018-06-04', 100, '1528127678'),
('::1', '2018-12-11', 315, '1544522200'),
('::1', '2018-12-21', 68, '1545398144'),
('::1', '2018-12-22', 81, '1545450822'),
('::1', '2018-12-23', 310, '1545529051'),
('::1', '2018-12-26', 70, '1545792411'),
('::1', '2018-12-28', 21, '1545959894'),
('::1', '2019-01-01', 40, '1546327662'),
('::1', '2019-01-11', 1, '1547192056'),
('::1', '2019-01-15', 1, '1547535461'),
('::1', '2019-02-03', 21, '1549151755'),
('::1', '2019-02-08', 2, '1549583794'),
('::1', '2019-02-14', 5, '1550143909'),
('::1', '2019-02-16', 139, '1550293098'),
('::1', '2019-02-17', 12, '1550360900'),
('::1', '2019-02-18', 9, '1550451537'),
('::1', '2019-02-19', 11, '1550552634'),
('::1', '2019-02-20', 115, '1550632680'),
('::1', '2019-02-20', 115, '1550632680'),
('::1', '2019-02-22', 83, '1550824388'),
('::1', '2019-02-23', 143, '1550910213'),
('::1', '2019-03-03', 2, '1551627040'),
('::1', '2019-03-05', 1, '1551794436'),
('::1', '2019-03-21', 127, '1553174723'),
('::1', '2019-03-22', 25, '1553221802'),
('::1', '2019-03-23', 255, '1553343322'),
('::1', '2019-03-24', 151, '1553429554'),
('::1', '2019-03-25', 292, '1553521395'),
('::1', '2019-03-26', 236, '1553603754'),
('::1', '2019-03-27', 135, '1553688661'),
('::1', '2019-07-03', 36, '1562116358'),
('::1', '2019-07-05', 1, '1562284598'),
('::1', '2019-07-14', 2, '1563088030'),
('::1', '2019-08-03', 2, '1564790513'),
('::1', '2019-08-10', 1, '1565406009'),
('::1', '2019-08-17', 20, '1566001489'),
('::1', '2019-08-31', 58, '1567260005'),
('::1', '2019-09-01', 181, '1567296028'),
('::1', '2019-09-05', 15, '1567643036'),
('::1', '2019-09-07', 34, '1567844461'),
('::1', '2019-09-08', 51, '1567913869'),
('::1', '2019-09-11', 25, '1568208517'),
('::1', '2019-09-12', 42, '1568244671'),
('::1', '2019-09-15', 11, '1568514021'),
('::1', '2019-09-17', 3, '1568684826'),
('::1', '2019-09-18', 90, '1568802276'),
('::1', '2019-09-19', 60, '1568872728'),
('::1', '2019-09-21', 2, '1569024199'),
('::1', '2019-09-23', 24, '1569222282'),
('::1', '2019-09-24', 14, '1569299438'),
('::1', '2019-09-25', 1, '1569400762'),
('::1', '2019-09-27', 13, '1569554693'),
('::1', '2019-09-28', 2, '1569667273'),
('::1', '2019-09-30', 1, '1569830610'),
('::1', '2019-10-01', 2, '1569896879'),
('::1', '2019-10-06', 2, '1570337512'),
('::1', '2019-10-11', 1, '1570759743'),
('::1', '2019-10-12', 1, '1570853724'),
('::1', '2019-10-13', 1, '1570940785'),
('::1', '2019-10-14', 100, '1571042984'),
('::1', '2019-10-15', 237, '1571145507'),
('::1', '2019-10-16', 10, '1571189531'),
('::1', '2019-10-18', 2, '1571357095'),
('::1', '2019-10-19', 117, '1571466807'),
('::1', '2019-10-20', 3, '1571526013'),
('::1', '2019-10-24', 56, '1571875455'),
('::1', '2019-10-25', 1, '1571968010'),
('::1', '2019-11-11', 3, '1573447645'),
('::1', '2019-11-13', 4, '1573603595'),
('::1', '2019-11-17', 2, '1573948469'),
('::1', '2019-11-19', 1, '1574128321'),
('::1', '2019-11-25', 15, '1574674063'),
('::1', '2019-11-26', 7, '1574726698'),
('::1', '2019-12-01', 1, '1575166721'),
('::1', '2019-12-02', 293, '1575267546'),
('::1', '2019-12-03', 53, '1575346481'),
('::1', '2019-12-09', 1, '1575847071'),
('::1', '2019-12-19', 2, '1576718936'),
('::1', '2019-12-21', 136, '1576912141'),
('::1', '2019-12-22', 115, '1576976444'),
('::1', '2019-12-24', 1, '1577144896'),
('::1', '2019-12-27', 18, '1577405840'),
('::1', '2019-12-31', 8, '1577751721'),
('::1', '2020-01-03', 30, '1578007712'),
('::1', '2020-01-13', 11, '1578889474'),
('::1', '2020-01-14', 2, '1578963741'),
('::1', '2020-01-18', 2, '1579307661'),
('::1', '2020-01-23', 2, '1579753595'),
('::1', '2020-01-27', 11, '1580082630'),
('::1', '2020-02-19', 86, '1582124464'),
('::1', '2020-02-20', 141, '1582165457'),
('::1', '2020-02-22', 93, '1582381399'),
('::1', '2020-02-23', 86, '1582419792'),
('::1', '2020-02-25', 70, '1582626330'),
('::1', '2020-02-26', 3, '1582674222'),
('::1', '2020-03-09', 105, '1583741758'),
('::1', '2020-03-10', 16, '1583818326'),
('::1', '2020-03-11', 84, '1583912245'),
('::1', '2020-03-12', 89, '1584010966'),
('::1', '2020-03-13', 144, '1584064281'),
('::1', '2020-03-14', 1, '1584192782'),
('::1', '2020-03-16', 175, '1584343922'),
('::1', '2020-03-17', 87, '1584433755'),
('::1', '2020-03-18', 339, '1584540778'),
('::1', '2020-04-03', 26, '1585925193'),
('::1', '2020-04-05', 111, '1586075479'),
('::1', '2020-04-06', 10, '1586132537'),
('::1', '2020-04-20', 7, '1587375690'),
('::1', '2020-04-26', 3, '1587883946'),
('::1', '2020-04-29', 1, '1588153097'),
('::1', '2020-04-30', 193, '1588244598'),
('::1', '2020-05-01', 82, '1588318681'),
('114.125.41.35', '2020-05-01', 5, '1588327519'),
('66.220.149.20', '2020-05-01', 1, '1588320473'),
('66.220.149.31', '2020-05-01', 2, '1588332933'),
('114.125.41.141', '2020-05-01', 3, '1588327500'),
('114.125.41.243', '2020-05-01', 3, '1588328178'),
('114.125.41.223', '2020-05-01', 4, '1588326502'),
('66.220.149.13', '2020-05-01', 3, '1588341481'),
('180.253.73.230', '2020-05-01', 1, '1588326992'),
('103.120.168.0', '2020-05-01', 3, '1588327086'),
('182.1.23.168', '2020-05-01', 1, '1588327057'),
('66.220.149.19', '2020-05-01', 2, '1588332931'),
('66.220.149.2', '2020-05-01', 1, '1588327064'),
('114.79.18.165', '2020-05-01', 2, '1588327119'),
('112.215.172.6', '2020-05-01', 5, '1588327160'),
('173.252.83.11', '2020-05-01', 1, '1588327146'),
('173.252.83.15', '2020-05-01', 1, '1588327148'),
('223.255.231.154', '2020-05-01', 7, '1588327309'),
('36.71.234.201', '2020-05-01', 1, '1588327488'),
('180.242.78.160', '2020-05-01', 10, '1588327710'),
('173.252.95.7', '2020-05-01', 2, '1588329781'),
('173.252.95.40', '2020-05-01', 1, '1588327520'),
('173.252.95.19', '2020-05-01', 1, '1588327522'),
('173.252.95.38', '2020-05-01', 2, '1588327552'),
('173.252.95.22', '2020-05-01', 1, '1588327552'),
('173.252.95.12', '2020-05-01', 1, '1588327552'),
('36.65.228.30', '2020-05-01', 1, '1588327563'),
('139.255.91.146', '2020-05-01', 3, '1588327657'),
('117.54.140.18', '2020-05-01', 5, '1588330998'),
('66.220.149.29', '2020-05-01', 3, '1588334264'),
('202.179.187.226', '2020-05-01', 1, '1588327649'),
('173.252.95.31', '2020-05-01', 2, '1588327676'),
('114.124.161.188', '2020-05-01', 3, '1588327719'),
('36.93.104.180', '2020-05-01', 3, '1588327931'),
('114.125.41.229', '2020-05-01', 2, '1588327876'),
('104.161.92.2', '2020-05-01', 1, '1588327842'),
('114.124.161.177', '2020-05-01', 3, '1588328150'),
('66.220.149.4', '2020-05-01', 1, '1588328144'),
('114.124.212.232', '2020-05-01', 17, '1588328342'),
('103.88.170.58', '2020-05-01', 1, '1588328166'),
('173.252.79.6', '2020-05-01', 1, '1588328259'),
('173.252.87.9', '2020-05-01', 1, '1588328264'),
('112.215.173.168', '2020-05-01', 7, '1588333032'),
('52.221.232.71', '2020-05-01', 13, '1588329298'),
('114.124.161.140', '2020-05-01', 1, '1588328605'),
('114.5.253.206', '2020-05-01', 1, '1588328828'),
('180.242.222.43', '2020-05-01', 2, '1588329126'),
('114.5.248.16', '2020-05-01', 1, '1588329059'),
('114.125.252.7', '2020-05-01', 7, '1588329251'),
('173.252.83.7', '2020-05-01', 1, '1588329220'),
('114.125.81.121', '2020-05-01', 3, '1588330392'),
('182.1.47.223', '2020-05-01', 1, '1588330728'),
('120.188.86.13', '2020-05-01', 21, '1588331109'),
('66.220.149.9', '2020-05-01', 2, '1588331198'),
('36.73.33.69', '2020-05-01', 6, '1588330870'),
('36.82.97.238', '2020-05-01', 1, '1588330927'),
('66.220.149.10', '2020-05-01', 3, '1588335373'),
('182.1.96.242', '2020-05-01', 1, '1588331116'),
('182.1.115.91', '2020-05-01', 2, '1588331167'),
('66.220.149.6', '2020-05-01', 2, '1588335261'),
('66.220.149.7', '2020-05-01', 4, '1588333840'),
('182.1.113.220', '2020-05-01', 4, '1588331214'),
('66.220.149.23', '2020-05-01', 2, '1588341461'),
('180.249.203.119', '2020-05-01', 10, '1588335327'),
('66.220.149.12', '2020-05-01', 1, '1588331297'),
('36.90.43.16', '2020-05-01', 1, '1588331661'),
('180.246.156.19', '2020-05-01', 5, '1588337566'),
('36.81.223.208', '2020-05-01', 3, '1588332260'),
('114.124.212.201', '2020-05-01', 8, '1588332447'),
('114.124.247.72', '2020-05-01', 2, '1588332372'),
('114.124.212.233', '2020-05-01', 1, '1588332388'),
('114.125.236.153', '2020-05-01', 1, '1588332476'),
('125.167.168.14', '2020-05-01', 2, '1588332712'),
('180.249.200.226', '2020-05-01', 4, '1588332931'),
('202.67.32.7', '2020-05-01', 6, '1588333105'),
('36.74.65.161', '2020-05-01', 1, '1588333633'),
('180.253.21.142', '2020-05-01', 3, '1588333685'),
('64.233.173.152', '2020-05-01', 2, '1588333677'),
('173.252.79.5', '2020-05-01', 1, '1588333681'),
('114.125.40.50', '2020-05-01', 72, '1588338381'),
('36.72.213.248', '2020-05-01', 5, '1588333851'),
('114.124.212.18', '2020-05-01', 1, '1588334017'),
('36.82.245.40', '2020-05-01', 4, '1588334794'),
('125.162.108.237', '2020-05-01', 1, '1588334266'),
('66.102.8.174', '2020-05-01', 1, '1588334426'),
('182.2.133.179', '2020-05-01', 24, '1588337856'),
('66.220.149.17', '2020-05-01', 2, '1588342623'),
('36.84.146.175', '2020-05-01', 1, '1588336480'),
('173.252.83.10', '2020-05-01', 1, '1588337006'),
('36.71.238.60', '2020-05-01', 3, '1588337364'),
('36.72.214.225', '2020-05-01', 4, '1588342688'),
('173.252.95.8', '2020-05-01', 1, '1588338358'),
('114.125.22.85', '2020-05-01', 19, '1588339987'),
('173.252.127.22', '2020-05-01', 1, '1588339801'),
('173.252.111.13', '2020-05-01', 1, '1588339806'),
('173.252.111.1', '2020-05-01', 1, '1588339865'),
('69.171.251.11', '2020-05-01', 1, '1588339867'),
('173.252.111.11', '2020-05-01', 1, '1588339867'),
('36.76.153.144', '2020-05-01', 4, '1588341477'),
('66.220.149.33', '2020-05-01', 1, '1588341457'),
('114.125.12.135', '2020-05-01', 1, '1588341461'),
('114.125.13.153', '2020-05-01', 1, '1588341462'),
('114.125.29.138', '2020-05-01', 1, '1588342568'),
('114.125.14.53', '2020-05-01', 3, '1588342808'),
('114.125.15.152', '2020-05-01', 1, '1588342648'),
('114.122.15.185', '2020-05-01', 1, '1588342743'),
('114.125.31.169', '2020-05-01', 1, '1588342846'),
('103.241.24.42', '2020-05-01', 4, '1588343528'),
('180.249.202.235', '2020-05-01', 3, '1588343611'),
('66.220.149.27', '2020-05-01', 1, '1588343533'),
('66.220.149.11', '2020-05-01', 1, '1588343536'),
('158.140.170.79', '2020-05-01', 3, '1588344120'),
('158.140.170.43', '2020-05-01', 1, '1588344122'),
('114.122.103.47', '2020-05-01', 8, '1588344507'),
('66.220.149.21', '2020-05-01', 1, '1588344484'),
('103.93.55.108', '2020-05-01', 6, '1588345990'),
('36.73.170.215', '2020-05-01', 6, '1588346260'),
('66.220.149.16', '2020-05-01', 1, '1588346142'),
('66.220.149.30', '2020-05-01', 1, '1588346144'),
('114.125.40.132', '2020-05-01', 1, '1588346704'),
('36.77.114.101', '2020-05-01', 4, '1588348096'),
('66.220.149.22', '2020-05-01', 1, '1588348101'),
('173.252.87.10', '2020-05-01', 1, '1588348729'),
('173.252.87.15', '2020-05-01', 1, '1588348757'),
('36.79.157.38', '2020-05-01', 4, '1588349283'),
('66.220.149.24', '2020-05-02', 3, '1588417848'),
('173.252.79.13', '2020-05-02', 1, '1588356118'),
('31.13.127.7', '2020-05-02', 1, '1588357543'),
('36.79.157.38', '2020-05-02', 1, '1588357798'),
('173.252.83.12', '2020-05-02', 1, '1588358211'),
('173.252.83.4', '2020-05-02', 1, '1588358212'),
('182.253.245.21', '2020-05-02', 4, '1588358318'),
('66.220.149.27', '2020-05-02', 3, '1588406335'),
('66.220.149.29', '2020-05-02', 1, '1588358319'),
('114.124.161.149', '2020-05-02', 5, '1588361715'),
('66.220.149.23', '2020-05-02', 3, '1588400932'),
('66.220.149.14', '2020-05-02', 3, '1588374722'),
('2.236.112.207', '2020-05-02', 12, '1588402289'),
('66.220.149.21', '2020-05-02', 1, '1588364152'),
('182.1.44.120', '2020-05-02', 1, '1588364496'),
('182.1.62.69', '2020-05-02', 1, '1588364532'),
('182.1.60.101', '2020-05-02', 2, '1588364571'),
('66.220.149.33', '2020-05-02', 2, '1588392863'),
('31.13.115.7', '2020-05-02', 1, '1588364581'),
('66.220.149.3', '2020-05-02', 1, '1588364582'),
('173.252.127.27', '2020-05-02', 2, '1588431572'),
('173.252.127.17', '2020-05-02', 1, '1588364585'),
('173.252.107.17', '2020-05-02', 1, '1588364585'),
('173.252.107.13', '2020-05-02', 1, '1588364585'),
('173.252.87.4', '2020-05-02', 1, '1588364793'),
('182.1.62.246', '2020-05-02', 1, '1588364826'),
('114.124.161.191', '2020-05-02', 2, '1588366972'),
('66.220.149.10', '2020-05-02', 1, '1588366979'),
('66.220.149.30', '2020-05-02', 3, '1588425399'),
('173.252.79.5', '2020-05-02', 1, '1588367905'),
('173.252.79.14', '2020-05-02', 1, '1588367908'),
('69.171.251.22', '2020-05-02', 1, '1588368240'),
('69.171.251.6', '2020-05-02', 1, '1588368241'),
('173.252.95.39', '2020-05-02', 1, '1588368350'),
('114.142.168.9', '2020-05-02', 6, '1588368539'),
('66.220.149.31', '2020-05-02', 1, '1588368414'),
('103.87.78.122', '2020-05-02', 1, '1588368857'),
('114.122.9.166', '2020-05-02', 3, '1588369652'),
('66.220.149.18', '2020-05-02', 1, '1588369632'),
('138.197.155.4', '2020-05-02', 1, '1588369712'),
('114.125.234.32', '2020-05-02', 8, '1588372424'),
('112.215.245.10', '2020-05-02', 1, '1588371805'),
('31.13.127.12', '2020-05-02', 2, '1588372917'),
('31.13.127.23', '2020-05-02', 1, '1588372920'),
('31.13.127.24', '2020-05-02', 1, '1588374401'),
('182.1.63.165', '2020-05-02', 1, '1588374695'),
('182.1.45.162', '2020-05-02', 1, '1588374718'),
('66.220.149.13', '2020-05-02', 1, '1588374724'),
('182.1.60.27', '2020-05-02', 3, '1588374769'),
('114.125.12.205', '2020-05-02', 4, '1588375366'),
('210.209.11.181', '2020-05-02', 2, '1588375455'),
('202.67.32.45', '2020-05-02', 1, '1588376158'),
('114.125.6.207', '2020-05-02', 1, '1588376752'),
('31.13.103.1', '2020-05-02', 1, '1588377900'),
('31.13.115.8', '2020-05-02', 1, '1588378591'),
('66.220.149.12', '2020-05-02', 2, '1588417846'),
('66.220.149.8', '2020-05-02', 3, '1588392860'),
('66.220.149.17', '2020-05-02', 1, '1588379305'),
('84.17.42.35', '2020-05-02', 3, '1588379759'),
('68.183.241.134', '2020-05-02', 2, '1588379714'),
('5.62.34.17', '2020-05-02', 2, '1588379714'),
('134.209.142.35', '2020-05-02', 2, '1588379713'),
('66.220.149.20', '2020-05-02', 2, '1588390663'),
('114.124.212.212', '2020-05-02', 1, '1588381921'),
('173.252.87.16', '2020-05-02', 2, '1588416850'),
('66.220.149.16', '2020-05-02', 2, '1588400928'),
('173.252.87.12', '2020-05-02', 1, '1588383940'),
('173.252.95.22', '2020-05-02', 1, '1588384360'),
('54.208.201.249', '2020-05-02', 1, '1588385550'),
('173.252.95.33', '2020-05-02', 1, '1588386227'),
('173.252.95.12', '2020-05-02', 1, '1588386227'),
('3.22.242.162', '2020-05-02', 3, '1588388762'),
('173.252.111.17', '2020-05-02', 1, '1588391402'),
('114.5.220.94', '2020-05-02', 1, '1588392350'),
('114.122.107.197', '2020-05-02', 8, '1588392901'),
('114.142.169.57', '2020-05-02', 1, '1588392802'),
('173.252.79.7', '2020-05-02', 1, '1588392906'),
('173.252.111.24', '2020-05-02', 1, '1588392918'),
('173.252.87.28', '2020-05-02', 3, '1588393678'),
('173.252.79.18', '2020-05-02', 1, '1588398034'),
('116.206.8.48', '2020-05-02', 11, '1588400942'),
('66.220.149.7', '2020-05-02', 1, '1588400902'),
('173.252.107.2', '2020-05-02', 1, '1588401103'),
('31.13.103.3', '2020-05-02', 1, '1588401530'),
('31.13.103.18', '2020-05-02', 1, '1588401530'),
('173.252.95.17', '2020-05-02', 1, '1588404371'),
('36.77.114.101', '2020-05-02', 6, '1588406021'),
('182.1.1.55', '2020-05-02', 1, '1588406214'),
('114.124.161.182', '2020-05-02', 5, '1588406403'),
('36.73.32.216', '2020-05-02', 12, '1588409376'),
('173.252.83.2', '2020-05-02', 1, '1588407319'),
('66.220.149.2', '2020-05-02', 1, '1588407529'),
('66.220.149.28', '2020-05-02', 1, '1588407532'),
('182.1.193.192', '2020-05-02', 1, '1588407999'),
('173.252.95.31', '2020-05-02', 1, '1588408177'),
('173.252.79.16', '2020-05-02', 1, '1588409512'),
('104.238.217.123', '2020-05-02', 1, '1588411391'),
('112.78.132.224', '2020-05-02', 20, '1588414724'),
('173.252.111.13', '2020-05-02', 1, '1588414190'),
('173.252.111.12', '2020-05-02', 1, '1588414193'),
('173.252.111.16', '2020-05-02', 1, '1588415374'),
('173.252.111.4', '2020-05-02', 1, '1588415374'),
('180.254.95.79', '2020-05-02', 12, '1588417476'),
('69.171.251.21', '2020-05-02', 1, '1588417295'),
('66.220.149.32', '2020-05-02', 1, '1588417338'),
('66.220.149.9', '2020-05-02', 1, '1588417380'),
('36.90.250.210', '2020-05-02', 11, '1588417963'),
('66.220.149.26', '2020-05-02', 1, '1588417846'),
('173.252.95.13', '2020-05-02', 2, '1588432644'),
('173.252.127.2', '2020-05-02', 2, '1588419352'),
('114.124.213.83', '2020-05-02', 1, '1588421847'),
('150.249.214.251', '2020-05-02', 2, '1588421993'),
('150.249.214.252', '2020-05-02', 1, '1588421995'),
('150.249.214.253', '2020-05-02', 1, '1588421997'),
('31.13.115.21', '2020-05-02', 1, '1588423959'),
('31.13.115.5', '2020-05-02', 1, '1588423965'),
('173.252.79.20', '2020-05-02', 1, '1588425022'),
('158.140.173.61', '2020-05-02', 1, '1588426471'),
('35.167.132.212', '2020-05-02', 1, '1588427965'),
('36.73.32.205', '2020-05-02', 5, '1588435162'),
('54.244.133.240', '2020-05-02', 1, '1588430648'),
('173.252.127.20', '2020-05-02', 1, '1588431571'),
('173.252.127.25', '2020-05-02', 1, '1588431571'),
('173.252.127.5', '2020-05-02', 1, '1588431572'),
('207.241.229.160', '2020-05-02', 1, '1588432385'),
('173.252.87.15', '2020-05-02', 1, '1588432510'),
('173.252.87.27', '2020-05-02', 1, '1588432510'),
('89.45.90.247', '2020-05-02', 3, '1588433782'),
('173.252.95.24', '2020-05-02', 1, '1588432644'),
('38.99.62.88', '2020-05-02', 1, '1588433588'),
('104.199.92.203', '2020-05-02', 1, '1588435900'),
('81.133.241.97', '2020-05-02', 1, '1588438268'),
('66.220.149.30', '2020-05-03', 1, '1588439210'),
('66.220.149.31', '2020-05-03', 1, '1588439281'),
('36.71.237.209', '2020-05-03', 3, '1588440369'),
('173.252.127.32', '2020-05-03', 1, '1588440044'),
('173.252.127.4', '2020-05-03', 1, '1588440051'),
('173.252.127.34', '2020-05-03', 2, '1588457797'),
('66.220.149.32', '2020-05-03', 1, '1588440374'),
('173.252.111.1', '2020-05-03', 1, '1588447398'),
('173.252.111.6', '2020-05-03', 2, '1588455559'),
('173.252.111.2', '2020-05-03', 1, '1588447399'),
('173.252.111.24', '2020-05-03', 1, '1588448223'),
('173.252.111.19', '2020-05-03', 1, '1588448223'),
('173.252.111.22', '2020-05-03', 1, '1588448223'),
('31.13.127.18', '2020-05-03', 1, '1588448933'),
('31.13.127.5', '2020-05-03', 1, '1588448934'),
('31.13.127.20', '2020-05-03', 2, '1588468006'),
('66.220.149.14', '2020-05-03', 2, '1588478557'),
('66.220.149.21', '2020-05-03', 2, '1588449210'),
('66.220.149.10', '2020-05-03', 1, '1588449212'),
('66.220.149.17', '2020-05-03', 1, '1588449213'),
('66.220.149.22', '2020-05-03', 1, '1588449213'),
('66.220.149.26', '2020-05-03', 1, '1588449216'),
('66.220.149.13', '2020-05-03', 2, '1588525113'),
('66.220.149.27', '2020-05-03', 1, '1588449217'),
('66.220.149.7', '2020-05-03', 1, '1588450804'),
('66.220.149.5', '2020-05-03', 1, '1588450804'),
('188.68.53.70', '2020-05-03', 1, '1588451999'),
('216.55.138.168', '2020-05-03', 1, '1588452713'),
('206.225.80.193', '2020-05-03', 2, '1588452750'),
('66.249.84.221', '2020-05-03', 1, '1588452756'),
('35.163.232.235', '2020-05-03', 1, '1588454780'),
('173.252.111.7', '2020-05-03', 1, '1588455559'),
('103.87.78.122', '2020-05-03', 1, '1588455984'),
('66.249.71.112', '2020-05-03', 4, '1588511832'),
('66.220.149.3', '2020-05-03', 1, '1588457461'),
('173.252.83.22', '2020-05-03', 1, '1588457747'),
('173.252.83.23', '2020-05-03', 2, '1588505356'),
('173.252.83.4', '2020-05-03', 1, '1588457747'),
('173.252.127.14', '2020-05-03', 1, '1588457797'),
('173.252.127.16', '2020-05-03', 1, '1588457798'),
('38.135.95.34', '2020-05-03', 1, '1588458122'),
('35.230.58.15', '2020-05-03', 1, '1588462000'),
('66.220.149.19', '2020-05-03', 1, '1588462858'),
('40.76.35.32', '2020-05-03', 2, '1588468689'),
('167.114.233.118', '2020-05-03', 2, '1588465501'),
('173.252.87.27', '2020-05-03', 1, '1588466755'),
('173.252.87.25', '2020-05-03', 1, '1588466755'),
('173.252.87.26', '2020-05-03', 1, '1588466755'),
('114.125.22.147', '2020-05-03', 1, '1588467060'),
('104.161.92.2', '2020-05-03', 3, '1588467118'),
('173.252.107.14', '2020-05-03', 1, '1588468001'),
('173.252.107.19', '2020-05-03', 1, '1588468001'),
('31.13.127.17', '2020-05-03', 1, '1588468006'),
('31.13.127.11', '2020-05-03', 1, '1588468006'),
('142.93.45.120', '2020-05-03', 1, '1588469068'),
('198.58.111.58', '2020-05-03', 1, '1588471986'),
('182.1.0.9', '2020-05-03', 1, '1588472533'),
('35.153.200.104', '2020-05-03', 1, '1588472607'),
('195.201.57.164', '2020-05-03', 2, '1588492882'),
('31.13.103.15', '2020-05-03', 1, '1588475558'),
('31.13.103.1', '2020-05-03', 2, '1588509079'),
('31.13.103.7', '2020-05-03', 1, '1588475558'),
('159.65.77.224', '2020-05-03', 1, '1588475640'),
('167.99.102.248', '2020-05-03', 1, '1588478274'),
('114.125.185.52', '2020-05-03', 1, '1588478532'),
('114.125.169.102', '2020-05-03', 4, '1588478672'),
('103.11.28.70', '2020-05-03', 1, '1588478687'),
('52.32.48.232', '2020-05-03', 1, '1588478829'),
('18.236.108.26', '2020-05-03', 1, '1588478831'),
('159.89.116.11', '2020-05-03', 1, '1588480224'),
('66.220.149.1', '2020-05-03', 1, '1588481317'),
('68.183.241.134', '2020-05-03', 3, '1588481859'),
('45.127.134.93', '2020-05-03', 2, '1588481812'),
('212.92.116.46', '2020-05-03', 2, '1588481812'),
('173.252.79.17', '2020-05-03', 1, '1588482828'),
('173.252.79.2', '2020-05-03', 1, '1588482830'),
('69.25.58.61', '2020-05-03', 1, '1588482985'),
('46.45.185.186', '2020-05-03', 1, '1588483581'),
('66.220.149.9', '2020-05-03', 2, '1588525113'),
('31.13.115.8', '2020-05-03', 1, '1588487687'),
('183.89.211.59', '2020-05-03', 1, '1588487771'),
('13.55.66.148', '2020-05-03', 1, '1588489886'),
('173.252.111.16', '2020-05-03', 1, '1588490610'),
('173.252.111.10', '2020-05-03', 2, '1588490787'),
('173.252.111.20', '2020-05-03', 1, '1588490788'),
('128.90.22.218', '2020-05-03', 1, '1588493192'),
('114.125.124.153', '2020-05-03', 1, '1588493437'),
('173.252.83.21', '2020-05-03', 1, '1588494898'),
('173.252.111.9', '2020-05-03', 3, '1588508470'),
('114.125.81.115', '2020-05-03', 1, '1588497580'),
('144.76.101.105', '2020-05-03', 2, '1588498075'),
('173.252.107.22', '2020-05-03', 1, '1588498579'),
('173.252.107.1', '2020-05-03', 1, '1588498579'),
('173.252.87.7', '2020-05-03', 2, '1588498714'),
('173.252.87.24', '2020-05-03', 1, '1588498711'),
('52.13.126.240', '2020-05-03', 1, '1588500917'),
('36.90.153.211', '2020-05-03', 4, '1588505376'),
('173.252.83.10', '2020-05-03', 1, '1588505357'),
('173.252.87.23', '2020-05-03', 1, '1588505641'),
('173.252.87.10', '2020-05-03', 1, '1588505641'),
('31.13.103.9', '2020-05-03', 1, '1588506850'),
('31.13.103.14', '2020-05-03', 1, '1588506851'),
('31.13.103.17', '2020-05-03', 1, '1588506851'),
('173.252.127.18', '2020-05-03', 1, '1588506855'),
('173.252.127.22', '2020-05-03', 1, '1588506856'),
('173.252.127.19', '2020-05-03', 1, '1588506856'),
('85.206.165.44', '2020-05-03', 1, '1588507288'),
('31.13.103.20', '2020-05-03', 1, '1588508273'),
('31.13.103.24', '2020-05-03', 1, '1588508273'),
('31.13.103.8', '2020-05-03', 1, '1588508274'),
('173.252.111.12', '2020-05-03', 1, '1588508470'),
('31.13.103.22', '2020-05-03', 1, '1588509080'),
('31.13.103.10', '2020-05-03', 1, '1588509080'),
('83.110.102.110', '2020-05-03', 1, '1588510528'),
('199.193.248.144', '2020-05-03', 1, '1588511213'),
('66.249.71.116', '2020-05-03', 1, '1588511831'),
('31.13.115.22', '2020-05-03', 1, '1588516769'),
('31.13.115.13', '2020-05-03', 2, '1588516802'),
('31.13.115.20', '2020-05-03', 1, '1588516771'),
('31.13.115.19', '2020-05-03', 1, '1588516802'),
('31.13.115.2', '2020-05-03', 1, '1588516802'),
('41.42.69.203', '2020-05-03', 1, '1588519215'),
('182.1.61.55', '2020-05-03', 1, '1588519274'),
('194.94.127.9', '2020-05-03', 1, '1588522777'),
('66.220.149.11', '2020-05-04', 3, '1588555980'),
('66.220.149.3', '2020-05-04', 1, '1588526015'),
('173.252.87.24', '2020-05-04', 1, '1588526047'),
('66.220.149.27', '2020-05-04', 1, '1588526399'),
('66.220.149.5', '2020-05-04', 3, '1588582895'),
('66.220.149.18', '2020-05-04', 2, '1588563879'),
('35.174.139.209', '2020-05-04', 1, '1588528717'),
('54.92.161.164', '2020-05-04', 1, '1588528722'),
('185.220.70.151', '2020-05-04', 2, '1588529115'),
('45.127.134.92', '2020-05-04', 2, '1588529115'),
('89.36.122.251', '2020-05-04', 3, '1588529163'),
('128.90.22.218', '2020-05-04', 1, '1588529523'),
('36.90.153.211', '2020-05-04', 55, '1588563974'),
('31.13.103.20', '2020-05-04', 1, '1588533429'),
('31.13.103.1', '2020-05-04', 1, '1588533432'),
('31.13.103.9', '2020-05-04', 1, '1588533433'),
('31.13.103.16', '2020-05-04', 2, '1588584313'),
('31.13.103.12', '2020-05-04', 1, '1588533434'),
('138.197.222.62', '2020-05-04', 1, '1588534244'),
('69.171.251.26', '2020-05-04', 1, '1588534403'),
('69.171.251.17', '2020-05-04', 1, '1588534563'),
('69.171.251.22', '2020-05-04', 1, '1588535863'),
('31.13.115.14', '2020-05-04', 1, '1588542564'),
('31.13.115.24', '2020-05-04', 2, '1588584369'),
('173.252.79.18', '2020-05-04', 2, '1588544027'),
('173.252.79.12', '2020-05-04', 1, '1588544027'),
('66.220.149.22', '2020-05-04', 2, '1588560207'),
('38.99.62.92', '2020-05-04', 2, '1588547202'),
('66.249.71.114', '2020-05-04', 3, '1588586256'),
('66.249.71.112', '2020-05-04', 4, '1588550915'),
('114.125.14.141', '2020-05-04', 1, '1588551244'),
('173.252.95.33', '2020-05-04', 1, '1588551729'),
('173.252.95.35', '2020-05-04', 1, '1588551730'),
('66.220.149.8', '2020-05-04', 1, '1588551789'),
('173.252.127.21', '2020-05-04', 1, '1588552946'),
('66.249.71.116', '2020-05-04', 3, '1588564575'),
('104.161.92.2', '2020-05-04', 3, '1588568879'),
('142.93.45.120', '2020-05-04', 1, '1588555707'),
('66.220.149.17', '2020-05-04', 1, '1588555981'),
('66.220.149.28', '2020-05-04', 1, '1588555992'),
('182.1.3.25', '2020-05-04', 3, '1588562623'),
('101.255.6.136', '2020-05-04', 5, '1588558481'),
('66.220.149.25', '2020-05-04', 1, '1588558466'),
('139.255.186.220', '2020-05-04', 12, '1588593267'),
('114.125.14.50', '2020-05-04', 1, '1588558610'),
('31.13.103.22', '2020-05-04', 1, '1588558958'),
('31.13.103.6', '2020-05-04', 2, '1588584313'),
('173.252.83.16', '2020-05-04', 1, '1588559423'),
('173.252.83.13', '2020-05-04', 1, '1588559423'),
('114.125.15.129', '2020-05-04', 1, '1588559486'),
('140.213.0.183', '2020-05-04', 16, '1588564896'),
('182.1.23.13', '2020-05-04', 1, '1588559986'),
('173.252.83.19', '2020-05-04', 1, '1588560081'),
('173.252.83.5', '2020-05-04', 1, '1588560081'),
('182.1.23.44', '2020-05-04', 2, '1588560242'),
('66.220.149.19', '2020-05-04', 1, '1588560204'),
('182.1.5.140', '2020-05-04', 1, '1588560347'),
('31.13.103.17', '2020-05-04', 2, '1588560462'),
('31.13.103.14', '2020-05-04', 1, '1588560462'),
('182.1.7.142', '2020-05-04', 3, '1588560640'),
('182.1.5.62', '2020-05-04', 2, '1588560656'),
('173.252.83.12', '2020-05-04', 1, '1588560858'),
('173.252.83.14', '2020-05-04', 1, '1588560858'),
('173.252.83.3', '2020-05-04', 1, '1588560859'),
('173.252.107.9', '2020-05-04', 1, '1588561145'),
('173.252.107.8', '2020-05-04', 1, '1588561145'),
('173.252.107.12', '2020-05-04', 1, '1588561145'),
('202.67.47.7', '2020-05-04', 1, '1588561703'),
('182.1.18.7', '2020-05-04', 1, '1588562624'),
('66.220.149.1', '2020-05-04', 1, '1588563750'),
('66.220.149.33', '2020-05-04', 1, '1588563753'),
('66.220.149.31', '2020-05-04', 2, '1588573463'),
('66.220.149.6', '2020-05-04', 1, '1588563877'),
('178.162.215.45', '2020-05-04', 5, '1588564921'),
('31.13.115.12', '2020-05-04', 1, '1588564811'),
('173.252.111.8', '2020-05-04', 2, '1588564834'),
('173.252.111.6', '2020-05-04', 2, '1588602309'),
('173.252.111.10', '2020-05-04', 1, '1588564862'),
('31.13.115.23', '2020-05-04', 1, '1588564931'),
('31.13.115.9', '2020-05-04', 1, '1588564932'),
('31.13.115.20', '2020-05-04', 1, '1588564935'),
('31.13.115.3', '2020-05-04', 2, '1588584369'),
('173.252.111.9', '2020-05-04', 2, '1588604640'),
('173.252.111.21', '2020-05-04', 2, '1588604524'),
('173.252.111.2', '2020-05-04', 1, '1588568542'),
('173.252.111.24', '2020-05-04', 3, '1588604761'),
('114.125.15.18', '2020-05-04', 5, '1588574263'),
('114.125.12.48', '2020-05-04', 1, '1588571253'),
('114.125.30.47', '2020-05-04', 1, '1588573618'),
('69.171.251.25', '2020-05-04', 1, '1588573846'),
('69.171.251.10', '2020-05-04', 1, '1588573847'),
('69.171.251.24', '2020-05-04', 1, '1588573847'),
('36.73.32.52', '2020-05-04', 1, '1588574962'),
('173.252.111.17', '2020-05-04', 2, '1588605078'),
('173.252.111.12', '2020-05-04', 1, '1588576483'),
('173.252.107.7', '2020-05-04', 1, '1588583613'),
('31.13.103.15', '2020-05-04', 2, '1588592653'),
('31.13.115.16', '2020-05-04', 1, '1588584369'),
('188.87.161.30', '2020-05-04', 1, '1588585841'),
('180.254.254.81', '2020-05-04', 156, '1588606079'),
('182.2.74.136', '2020-05-04', 2, '1588586739'),
('173.252.87.26', '2020-05-04', 1, '1588586739'),
('173.252.95.26', '2020-05-04', 1, '1588587698'),
('31.13.103.2', '2020-05-04', 1, '1588592654'),
('65.155.30.101', '2020-05-04', 1, '1588595431'),
('125.161.128.184', '2020-05-04', 2, '1588607589'),
('31.13.127.10', '2020-05-04', 1, '1588598414'),
('66.220.149.14', '2020-05-04', 1, '1588598998'),
('182.1.19.6', '2020-05-04', 1, '1588601546'),
('182.1.2.139', '2020-05-04', 1, '1588601554'),
('69.171.251.19', '2020-05-04', 1, '1588602150'),
('173.252.87.18', '2020-05-04', 1, '1588602270'),
('173.252.87.12', '2020-05-04', 1, '1588602271'),
('173.252.127.37', '2020-05-04', 1, '1588603070'),
('173.252.127.34', '2020-05-04', 1, '1588603071'),
('173.252.127.28', '2020-05-04', 1, '1588603152'),
('173.252.127.6', '2020-05-04', 1, '1588603152'),
('173.252.111.20', '2020-05-04', 1, '1588604699'),
('173.252.111.4', '2020-05-04', 1, '1588604701'),
('36.75.143.155', '2020-05-04', 1, '1588604707'),
('173.252.111.23', '2020-05-04', 1, '1588604759'),
('173.252.111.15', '2020-05-04', 1, '1588604838'),
('173.252.111.14', '2020-05-04', 1, '1588604840'),
('173.252.111.18', '2020-05-04', 1, '1588605080'),
('66.220.149.39', '2020-05-04', 1, '1588605982'),
('114.4.4.138', '2020-05-04', 1, '1588606742'),
('104.155.5.157', '2020-05-04', 1, '1588608905'),
('173.252.87.3', '2020-05-04', 1, '1588611504'),
('173.252.87.27', '2020-05-04', 1, '1588611504'),
('110.50.81.203', '2020-05-05', 1, '1588611987'),
('69.171.251.16', '2020-05-05', 1, '1588613367'),
('46.45.185.181', '2020-05-05', 1, '1588616016'),
('159.89.175.74', '2020-05-05', 8, '1588618250'),
('66.249.71.114', '2020-05-05', 3, '1588662937'),
('66.249.71.112', '2020-05-05', 3, '1588637350'),
('128.30.52.73', '2020-05-05', 1, '1588618260'),
('66.249.82.82', '2020-05-05', 2, '1588618295'),
('66.249.82.80', '2020-05-05', 1, '1588618277'),
('66.249.82.84', '2020-05-05', 1, '1588618289'),
('31.13.115.2', '2020-05-05', 1, '1588621599'),
('66.102.6.151', '2020-05-05', 5, '1588622033'),
('66.102.9.144', '2020-05-05', 1, '1588621951'),
('66.249.81.76', '2020-05-05', 6, '1588621985'),
('66.102.6.150', '2020-05-05', 6, '1588622041'),
('66.102.9.140', '2020-05-05', 3, '1588621998'),
('66.249.81.78', '2020-05-05', 2, '1588621986'),
('66.102.6.152', '2020-05-05', 5, '1588622036'),
('66.102.9.142', '2020-05-05', 3, '1588621992'),
('66.249.81.80', '2020-05-05', 3, '1588621995'),
('173.252.127.34', '2020-05-05', 1, '1588623182'),
('173.252.127.37', '2020-05-05', 1, '1588623182'),
('173.252.127.41', '2020-05-05', 1, '1588623185'),
('114.125.6.223', '2020-05-05', 1, '1588627262'),
('138.197.222.62', '2020-05-05', 1, '1588630374'),
('173.252.127.39', '2020-05-05', 2, '1588631071'),
('173.252.127.1', '2020-05-05', 1, '1588631029'),
('173.252.127.7', '2020-05-05', 1, '1588631071'),
('173.252.127.15', '2020-05-05', 1, '1588631080'),
('103.249.65.5', '2020-05-05', 1, '1588631801'),
('35.166.225.229', '2020-05-05', 1, '1588635199'),
('66.249.71.116', '2020-05-05', 3, '1588662936'),
('31.13.103.7', '2020-05-05', 2, '1588638595'),
('31.13.103.10', '2020-05-05', 1, '1588638595'),
('182.2.72.255', '2020-05-05', 48, '1588659142'),
('173.252.79.3', '2020-05-05', 1, '1588639167'),
('173.252.79.22', '2020-05-05', 1, '1588639169'),
('66.220.149.14', '2020-05-05', 2, '1588639188'),
('66.220.149.17', '2020-05-05', 1, '1588639187'),
('173.252.83.1', '2020-05-05', 1, '1588640118'),
('173.252.83.13', '2020-05-05', 1, '1588640325'),
('31.13.103.20', '2020-05-05', 1, '1588641653'),
('31.13.103.2', '2020-05-05', 1, '1588641861'),
('31.13.103.21', '2020-05-05', 1, '1588641861'),
('66.220.149.33', '2020-05-05', 1, '1588643332'),
('31.13.103.15', '2020-05-05', 1, '1588643437'),
('31.13.103.3', '2020-05-05', 2, '1588667986'),
('180.254.254.81', '2020-05-05', 17, '1588643969'),
('101.255.6.136', '2020-05-05', 3, '1588650038'),
('36.90.153.130', '2020-05-05', 2, '1588656526'),
('173.252.83.24', '2020-05-05', 1, '1588649964'),
('66.220.149.37', '2020-05-05', 2, '1588657400'),
('66.220.149.20', '2020-05-05', 1, '1588650039'),
('180.242.180.241', '2020-05-05', 1, '1588650449'),
('66.220.149.32', '2020-05-05', 1, '1588650491'),
('36.92.68.131', '2020-05-05', 6, '1588651864'),
('173.252.107.17', '2020-05-05', 2, '1588653019'),
('173.252.107.5', '2020-05-05', 4, '1588690180'),
('173.252.107.18', '2020-05-05', 1, '1588653019'),
('173.252.87.26', '2020-05-05', 1, '1588653021'),
('173.252.87.111', '2020-05-05', 1, '1588653021'),
('173.252.83.23', '2020-05-05', 1, '1588656788'),
('182.0.232.50', '2020-05-05', 1, '1588657302'),
('182.0.201.52', '2020-05-05', 8, '1588657420'),
('31.13.127.7', '2020-05-05', 1, '1588657987'),
('31.13.127.19', '2020-05-05', 1, '1588660445'),
('46.45.185.175', '2020-05-05', 1, '1588660742'),
('173.252.127.3', '2020-05-05', 1, '1588660894'),
('173.252.83.15', '2020-05-05', 2, '1588682742'),
('36.74.44.182', '2020-05-05', 2, '1588661327'),
('173.252.95.30', '2020-05-05', 2, '1588661531'),
('173.252.95.23', '2020-05-05', 1, '1588661531'),
('173.252.83.2', '2020-05-05', 1, '1588665242'),
('36.73.32.201', '2020-05-05', 2, '1588666661'),
('114.125.10.79', '2020-05-05', 1, '1588666009'),
('114.5.250.31', '2020-05-05', 8, '1588666752'),
('173.252.107.15', '2020-05-05', 1, '1588667833'),
('173.252.107.10', '2020-05-05', 1, '1588667879'),
('39.111.208.132', '2020-05-05', 1, '1588670490'),
('150.249.214.252', '2020-05-05', 1, '1588670492'),
('150.249.214.254', '2020-05-05', 1, '1588670493'),
('150.249.214.253', '2020-05-05', 1, '1588670495'),
('84.17.46.223', '2020-05-05', 1, '1588671217'),
('173.252.127.28', '2020-05-05', 1, '1588672558'),
('173.252.127.10', '2020-05-05', 1, '1588672558'),
('69.171.251.36', '2020-05-05', 1, '1588673258'),
('69.171.251.13', '2020-05-05', 1, '1588673258');
INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('207.102.138.158', '2020-05-05', 1, '1588673447'),
('44.230.198.24', '2020-05-05', 1, '1588673953'),
('44.232.52.177', '2020-05-05', 1, '1588674742'),
('14.241.67.193', '2020-05-05', 1, '1588674759'),
('66.220.149.25', '2020-05-05', 1, '1588675022'),
('31.13.127.4', '2020-05-05', 3, '1588695998'),
('31.13.127.24', '2020-05-05', 1, '1588676424'),
('180.243.232.157', '2020-05-05', 6, '1588681409'),
('66.220.149.26', '2020-05-05', 1, '1588684303'),
('66.220.149.11', '2020-05-05', 1, '1588684303'),
('173.252.111.17', '2020-05-05', 1, '1588685649'),
('173.252.111.13', '2020-05-05', 1, '1588685650'),
('173.252.79.6', '2020-05-05', 2, '1588695051'),
('173.252.95.15', '2020-05-05', 1, '1588694182'),
('173.252.79.10', '2020-05-05', 2, '1588694297'),
('45.79.38.68', '2020-05-05', 1, '1588694883'),
('34.77.41.251', '2020-05-05', 1, '1588694950'),
('173.252.79.11', '2020-05-05', 1, '1588695051'),
('69.171.251.14', '2020-05-05', 1, '1588695776'),
('173.252.107.14', '2020-05-05', 1, '1588696231'),
('31.13.127.9', '2020-05-05', 1, '1588697410'),
('173.252.107.7', '2020-05-05', 1, '1588697891'),
('173.252.87.8', '2020-05-06', 1, '1588703647'),
('173.252.87.11', '2020-05-06', 1, '1588703734'),
('173.252.87.111', '2020-05-06', 1, '1588704287'),
('173.252.87.2', '2020-05-06', 1, '1588704708'),
('173.252.87.13', '2020-05-06', 2, '1588705281'),
('173.252.87.7', '2020-05-06', 1, '1588705281'),
('173.252.87.1', '2020-05-06', 1, '1588705281'),
('31.13.103.7', '2020-05-06', 2, '1588705534'),
('173.252.87.24', '2020-05-06', 1, '1588705712'),
('66.220.149.1', '2020-05-06', 1, '1588708038'),
('173.252.107.18', '2020-05-06', 1, '1588713121'),
('173.252.107.10', '2020-05-06', 1, '1588713123'),
('66.249.71.116', '2020-05-06', 3, '1588733978'),
('66.249.71.114', '2020-05-06', 2, '1588740457'),
('31.13.115.3', '2020-05-06', 1, '1588717026'),
('66.249.79.158', '2020-05-06', 1, '1588722897'),
('31.13.103.10', '2020-05-06', 1, '1588724855'),
('31.13.103.21', '2020-05-06', 1, '1588724856'),
('31.13.103.18', '2020-05-06', 1, '1588724856'),
('182.1.0.159', '2020-05-06', 4, '1588736029'),
('182.1.19.6', '2020-05-06', 2, '1588726833'),
('182.1.3.25', '2020-05-06', 5, '1588735936'),
('182.1.16.38', '2020-05-06', 8, '1588735654'),
('104.161.92.2', '2020-05-06', 3, '1588726510'),
('182.1.3.138', '2020-05-06', 9, '1588736440'),
('199.127.56.236', '2020-05-06', 1, '1588727070'),
('31.13.103.22', '2020-05-06', 1, '1588727149'),
('182.1.6.153', '2020-05-06', 2, '1588727452'),
('182.1.4.17', '2020-05-06', 5, '1588727562'),
('34.243.158.60', '2020-05-06', 2, '1588727544'),
('31.13.103.2', '2020-05-06', 1, '1588727668'),
('69.171.251.1', '2020-05-06', 2, '1588752388'),
('69.171.251.25', '2020-05-06', 1, '1588727743'),
('114.125.13.204', '2020-05-06', 6, '1588728697'),
('114.125.12.87', '2020-05-06', 6, '1588729623'),
('173.252.95.28', '2020-05-06', 2, '1588747251'),
('114.125.30.57', '2020-05-06', 16, '1588731520'),
('66.220.149.9', '2020-05-06', 1, '1588729143'),
('66.102.8.172', '2020-05-06', 1, '1588729360'),
('66.220.149.19', '2020-05-06', 1, '1588729586'),
('114.125.28.32', '2020-05-06', 15, '1588732291'),
('114.125.13.49', '2020-05-06', 6, '1588731015'),
('114.125.15.84', '2020-05-06', 9, '1588732173'),
('114.125.13.116', '2020-05-06', 6, '1588737079'),
('114.125.12.161', '2020-05-06', 5, '1588732044'),
('173.252.83.6', '2020-05-06', 1, '1588732063'),
('173.252.83.9', '2020-05-06', 1, '1588732068'),
('114.125.13.60', '2020-05-06', 3, '1588732341'),
('114.125.13.16', '2020-05-06', 3, '1588732430'),
('114.125.29.44', '2020-05-06', 2, '1588732443'),
('182.1.18.7', '2020-05-06', 12, '1588736382'),
('66.220.149.22', '2020-05-06', 2, '1588769357'),
('182.1.17.152', '2020-05-06', 1, '1588732784'),
('182.1.1.136', '2020-05-06', 2, '1588735385'),
('182.1.16.48', '2020-05-06', 17, '1588736105'),
('182.1.3.12', '2020-05-06', 4, '1588735210'),
('182.1.0.137', '2020-05-06', 7, '1588734811'),
('182.1.1.33', '2020-05-06', 1, '1588734678'),
('173.252.83.17', '2020-05-06', 1, '1588734810'),
('182.1.3.166', '2020-05-06', 6, '1588736062'),
('182.1.17.49', '2020-05-06', 3, '1588735574'),
('182.1.16.153', '2020-05-06', 1, '1588735808'),
('173.252.83.113', '2020-05-06', 1, '1588736144'),
('173.252.83.10', '2020-05-06', 1, '1588736146'),
('173.252.107.23', '2020-05-06', 1, '1588736480'),
('173.252.107.2', '2020-05-06', 1, '1588736481'),
('173.252.107.21', '2020-05-06', 1, '1588736481'),
('180.254.254.81', '2020-05-06', 45, '1588739308'),
('114.125.15.62', '2020-05-06', 1, '1588737351'),
('173.252.111.20', '2020-05-06', 1, '1588738046'),
('173.252.111.1', '2020-05-06', 2, '1588751730'),
('173.252.111.24', '2020-05-06', 1, '1588738083'),
('66.249.79.157', '2020-05-06', 1, '1588740459'),
('180.246.97.17', '2020-05-06', 5, '1588744108'),
('31.13.127.113', '2020-05-06', 2, '1588744337'),
('66.220.149.25', '2020-05-06', 1, '1588746151'),
('66.220.149.31', '2020-05-06', 1, '1588746151'),
('66.220.149.6', '2020-05-06', 2, '1588746152'),
('66.220.149.113', '2020-05-06', 2, '1588746152'),
('66.220.149.28', '2020-05-06', 1, '1588746152'),
('66.220.149.3', '2020-05-06', 1, '1588746152'),
('173.252.107.3', '2020-05-06', 2, '1588760469'),
('173.252.111.113', '2020-05-06', 1, '1588751730'),
('69.171.251.8', '2020-05-06', 1, '1588752388'),
('173.252.87.3', '2020-05-06', 1, '1588753509'),
('173.252.87.21', '2020-05-06', 1, '1588753510'),
('66.220.149.30', '2020-05-06', 1, '1588759722'),
('173.252.107.13', '2020-05-06', 1, '1588760271'),
('31.13.103.5', '2020-05-06', 1, '1588760358'),
('66.220.149.29', '2020-05-06', 2, '1588762012'),
('66.220.149.23', '2020-05-06', 1, '1588761861'),
('66.220.149.17', '2020-05-06', 1, '1588762013'),
('46.45.185.172', '2020-05-06', 1, '1588762405'),
('66.220.149.27', '2020-05-06', 1, '1588763672'),
('31.13.127.19', '2020-05-06', 1, '1588768166'),
('31.13.127.5', '2020-05-06', 1, '1588769020'),
('66.220.149.12', '2020-05-06', 1, '1588769357'),
('173.252.107.15', '2020-05-06', 1, '1588769822'),
('31.13.127.21', '2020-05-06', 1, '1588770127'),
('69.171.251.36', '2020-05-06', 1, '1588771064'),
('180.251.240.141', '2020-05-06', 6, '1588772582'),
('128.90.22.218', '2020-05-06', 1, '1588772402'),
('66.220.149.13', '2020-05-06', 1, '1588772456'),
('196.75.126.200', '2020-05-06', 1, '1588775199'),
('173.252.79.15', '2020-05-06', 1, '1588776901'),
('173.252.79.113', '2020-05-06', 1, '1588776901'),
('167.172.122.46', '2020-05-06', 1, '1588777365'),
('66.220.149.2', '2020-05-06', 1, '1588778271'),
('173.252.111.112', '2020-05-06', 1, '1588778846'),
('167.114.172.167', '2020-05-06', 1, '1588778963'),
('173.252.83.19', '2020-05-07', 1, '1588785068'),
('173.252.83.12', '2020-05-07', 1, '1588785068'),
('173.252.87.10', '2020-05-07', 1, '1588786340'),
('173.252.87.1', '2020-05-07', 1, '1588787123'),
('37.120.236.214', '2020-05-07', 1, '1588789214'),
('69.171.251.3', '2020-05-07', 2, '1588793386'),
('69.171.251.7', '2020-05-07', 1, '1588792804'),
('31.13.115.7', '2020-05-07', 1, '1588793049'),
('31.13.115.13', '2020-05-07', 1, '1588793049'),
('69.171.251.18', '2020-05-07', 1, '1588793387'),
('31.13.127.19', '2020-05-07', 2, '1588794264'),
('31.13.103.22', '2020-05-07', 1, '1588794530'),
('173.252.107.12', '2020-05-07', 1, '1588795854'),
('69.171.251.111', '2020-05-07', 2, '1588862844'),
('173.252.83.10', '2020-05-07', 1, '1588796824'),
('173.252.83.13', '2020-05-07', 1, '1588796826'),
('31.13.103.113', '2020-05-07', 1, '1588801680'),
('31.13.103.13', '2020-05-07', 1, '1588801680'),
('209.97.178.167', '2020-05-07', 1, '1588801783'),
('66.220.149.7', '2020-05-07', 1, '1588802770'),
('66.220.149.3', '2020-05-07', 1, '1588802770'),
('66.249.71.148', '2020-05-07', 1, '1588803280'),
('66.249.71.152', '2020-05-07', 1, '1588803281'),
('173.252.127.29', '2020-05-07', 1, '1588804517'),
('173.252.127.16', '2020-05-07', 1, '1588804520'),
('65.154.226.109', '2020-05-07', 1, '1588807215'),
('173.252.87.17', '2020-05-07', 2, '1588852203'),
('173.252.87.111', '2020-05-07', 1, '1588810045'),
('173.252.127.119', '2020-05-07', 1, '1588810550'),
('173.252.127.28', '2020-05-07', 1, '1588810550'),
('173.252.87.120', '2020-05-07', 1, '1588811832'),
('69.171.251.30', '2020-05-07', 2, '1588826212'),
('69.171.251.23', '2020-05-07', 1, '1588818140'),
('182.2.73.120', '2020-05-07', 2, '1588819935'),
('182.2.73.244', '2020-05-07', 6, '1588819893'),
('66.220.149.16', '2020-05-07', 2, '1588819862'),
('66.220.149.9', '2020-05-07', 1, '1588819797'),
('182.2.72.116', '2020-05-07', 3, '1588819849'),
('182.2.72.104', '2020-05-07', 1, '1588819843'),
('182.2.72.252', '2020-05-07', 2, '1588819978'),
('182.2.73.232', '2020-05-07', 1, '1588819935'),
('182.2.72.240', '2020-05-07', 3, '1588819982'),
('65.155.30.101', '2020-05-07', 1, '1588821317'),
('31.13.115.119', '2020-05-07', 1, '1588822929'),
('31.13.103.118', '2020-05-07', 1, '1588823044'),
('31.13.103.14', '2020-05-07', 1, '1588823054'),
('173.252.111.4', '2020-05-07', 1, '1588825434'),
('173.252.111.16', '2020-05-07', 1, '1588825435'),
('69.171.251.117', '2020-05-07', 1, '1588826212'),
('180.254.14.29', '2020-05-07', 50, '1588869609'),
('173.252.95.20', '2020-05-07', 3, '1588827991'),
('173.252.95.1', '2020-05-07', 1, '1588828006'),
('173.252.95.26', '2020-05-07', 1, '1588828008'),
('173.252.95.12', '2020-05-07', 2, '1588846706'),
('173.252.95.119', '2020-05-07', 1, '1588828044'),
('173.252.111.111', '2020-05-07', 2, '1588830401'),
('182.1.63.195', '2020-05-07', 15, '1588835110'),
('182.1.62.232', '2020-05-07', 1, '1588831402'),
('182.1.47.67', '2020-05-07', 8, '1588834632'),
('104.161.92.2', '2020-05-07', 5, '1588847944'),
('182.1.62.188', '2020-05-07', 7, '1588833883'),
('182.1.44.219', '2020-05-07', 3, '1588833529'),
('182.1.61.79', '2020-05-07', 4, '1588847021'),
('114.4.4.200', '2020-05-07', 1, '1588833809'),
('182.1.63.222', '2020-05-07', 4, '1588835242'),
('173.252.107.16', '2020-05-07', 1, '1588834514'),
('182.1.62.194', '2020-05-07', 3, '1588835094'),
('182.1.46.92', '2020-05-07', 1, '1588835248'),
('31.13.103.4', '2020-05-07', 1, '1588836233'),
('173.252.95.29', '2020-05-07', 1, '1588837413'),
('173.252.95.27', '2020-05-07', 1, '1588837413'),
('66.220.149.6', '2020-05-07', 1, '1588838004'),
('66.220.149.23', '2020-05-07', 1, '1588838004'),
('173.252.83.4', '2020-05-07', 1, '1588838023'),
('31.13.127.10', '2020-05-07', 1, '1588839462'),
('31.13.127.13', '2020-05-07', 1, '1588839477'),
('31.13.127.17', '2020-05-07', 1, '1588839524'),
('31.13.127.6', '2020-05-07', 1, '1588839539'),
('31.13.127.3', '2020-05-07', 1, '1588840014'),
('173.252.83.8', '2020-05-07', 1, '1588840111'),
('173.252.111.7', '2020-05-07', 1, '1588842495'),
('173.252.95.24', '2020-05-07', 1, '1588843337'),
('173.252.87.23', '2020-05-07', 1, '1588844556'),
('173.252.87.5', '2020-05-07', 1, '1588844557'),
('45.79.38.68', '2020-05-07', 1, '1588844564'),
('66.220.149.111', '2020-05-07', 2, '1588856004'),
('31.13.127.120', '2020-05-07', 1, '1588845689'),
('31.13.127.4', '2020-05-07', 1, '1588845695'),
('173.252.95.10', '2020-05-07', 1, '1588846671'),
('173.252.95.8', '2020-05-07', 1, '1588846687'),
('173.252.95.4', '2020-05-07', 1, '1588846690'),
('173.252.95.23', '2020-05-07', 1, '1588846703'),
('46.45.185.183', '2020-05-07', 1, '1588847388'),
('69.171.251.16', '2020-05-07', 1, '1588847585'),
('173.252.95.11', '2020-05-07', 2, '1588867483'),
('173.252.95.111', '2020-05-07', 2, '1588862684'),
('173.252.87.116', '2020-05-07', 1, '1588852203'),
('31.13.115.113', '2020-05-07', 1, '1588853265'),
('114.5.219.186', '2020-05-07', 11, '1588855126'),
('31.13.115.111', '2020-05-07', 1, '1588854798'),
('31.13.115.22', '2020-05-07', 1, '1588854798'),
('173.252.83.2', '2020-05-07', 1, '1588854952'),
('69.171.251.120', '2020-05-07', 1, '1588861885'),
('173.252.79.119', '2020-05-07', 1, '1588862634'),
('173.252.95.5', '2020-05-07', 1, '1588862684'),
('173.252.95.3', '2020-05-07', 1, '1588862684'),
('34.78.0.44', '2020-05-07', 1, '1588867858'),
('31.13.127.22', '2020-05-07', 1, '1588869925'),
('31.13.127.113', '2020-05-07', 1, '1588869927'),
('31.13.127.16', '2020-05-07', 1, '1588869927'),
('81.133.241.97', '2020-05-08', 1, '1588871211'),
('180.254.14.29', '2020-05-08', 1, '1588873107'),
('66.220.149.25', '2020-05-08', 1, '1588873868'),
('173.252.83.9', '2020-05-08', 1, '1588876100'),
('173.252.83.10', '2020-05-08', 1, '1588876100'),
('38.99.62.94', '2020-05-08', 1, '1588878115'),
('173.252.83.22', '2020-05-08', 1, '1588878135'),
('173.252.83.6', '2020-05-08', 1, '1588878135'),
('173.252.83.116', '2020-05-08', 1, '1588878135'),
('46.45.185.172', '2020-05-08', 1, '1588884915'),
('31.13.115.10', '2020-05-08', 2, '1588887316'),
('31.13.115.12', '2020-05-08', 1, '1588887314'),
('31.13.115.17', '2020-05-08', 1, '1588887315'),
('31.13.115.2', '2020-05-08', 1, '1588887316'),
('31.13.115.18', '2020-05-08', 1, '1588887316'),
('173.252.111.20', '2020-05-08', 1, '1588887716'),
('173.252.111.23', '2020-05-08', 1, '1588887716'),
('173.252.107.21', '2020-05-08', 1, '1588894583'),
('173.252.111.15', '2020-05-08', 1, '1588894913'),
('173.252.95.31', '2020-05-08', 1, '1588895091'),
('173.252.95.19', '2020-05-08', 1, '1588895093'),
('173.252.87.22', '2020-05-08', 2, '1588895683'),
('104.161.92.2', '2020-05-08', 4, '1588907253'),
('173.252.127.3', '2020-05-08', 1, '1588901839'),
('114.125.13.20', '2020-05-08', 3, '1588909395'),
('114.125.30.7', '2020-05-08', 9, '1588909059'),
('114.125.31.72', '2020-05-08', 2, '1588907122'),
('114.125.28.75', '2020-05-08', 5, '1588907807'),
('173.252.127.112', '2020-05-08', 1, '1588903340'),
('173.252.127.119', '2020-05-08', 1, '1588903340'),
('114.125.14.23', '2020-05-08', 6, '1588909771'),
('114.125.28.181', '2020-05-08', 2, '1588909697'),
('114.125.13.53', '2020-05-08', 5, '1588909888'),
('114.125.13.164', '2020-05-08', 4, '1588908151'),
('114.125.15.132', '2020-05-08', 1, '1588903702'),
('31.13.103.1', '2020-05-08', 1, '1588904012'),
('31.13.103.112', '2020-05-08', 1, '1588904013'),
('182.1.19.21', '2020-05-08', 3, '1588906632'),
('182.1.2.4', '2020-05-08', 1, '1588906623'),
('182.1.19.133', '2020-05-08', 1, '1588906629'),
('182.1.18.20', '2020-05-08', 2, '1588906632'),
('182.1.3.236', '2020-05-08', 1, '1588906633'),
('114.125.30.183', '2020-05-08', 4, '1588909204'),
('114.125.29.180', '2020-05-08', 3, '1588909820'),
('66.220.149.117', '2020-05-08', 2, '1588942478'),
('66.220.149.120', '2020-05-08', 1, '1588907780'),
('139.255.186.220', '2020-05-08', 1, '1588908216'),
('114.125.31.148', '2020-05-08', 2, '1588908885'),
('114.125.14.133', '2020-05-08', 1, '1588908863'),
('36.69.53.114', '2020-05-08', 3, '1588911993'),
('66.220.149.111', '2020-05-08', 2, '1588942418'),
('173.252.87.16', '2020-05-08', 1, '1588912133'),
('173.252.87.4', '2020-05-08', 1, '1588912133'),
('173.252.87.118', '2020-05-08', 1, '1588912133'),
('182.1.22.216', '2020-05-08', 1, '1588912718'),
('173.252.87.116', '2020-05-08', 1, '1588915977'),
('31.13.127.18', '2020-05-08', 1, '1588917526'),
('31.13.127.1', '2020-05-08', 2, '1588952121'),
('103.22.251.179', '2020-05-08', 103, '1588928051'),
('31.13.127.112', '2020-05-08', 2, '1588952858'),
('31.13.127.6', '2020-05-08', 1, '1588920060'),
('31.13.127.11', '2020-05-08', 1, '1588920060'),
('173.252.95.25', '2020-05-08', 1, '1588922188'),
('173.252.111.24', '2020-05-08', 1, '1588924980'),
('173.252.79.117', '2020-05-08', 2, '1588929674'),
('173.252.79.1', '2020-05-08', 1, '1588929674'),
('39.111.208.132', '2020-05-08', 1, '1588930124'),
('150.249.214.249', '2020-05-08', 1, '1588930131'),
('150.249.214.251', '2020-05-08', 1, '1588930136'),
('150.249.214.254', '2020-05-08', 1, '1588930142'),
('173.252.95.29', '2020-05-08', 1, '1588930970'),
('118.97.34.169', '2020-05-08', 2, '1588951097'),
('173.252.83.3', '2020-05-08', 1, '1588934590'),
('173.252.79.119', '2020-05-08', 1, '1588934756'),
('69.164.206.42', '2020-05-08', 1, '1588934862'),
('31.13.115.21', '2020-05-08', 1, '1588936484'),
('173.252.127.117', '2020-05-08', 1, '1588937018'),
('173.252.127.120', '2020-05-08', 1, '1588937019'),
('173.252.127.10', '2020-05-08', 1, '1588937019'),
('173.252.127.14', '2020-05-08', 1, '1588937019'),
('173.252.127.9', '2020-05-08', 1, '1588937019'),
('173.252.127.17', '2020-05-08', 1, '1588937019'),
('173.252.111.2', '2020-05-08', 1, '1588938063'),
('66.220.149.119', '2020-05-08', 1, '1588940850'),
('36.68.246.220', '2020-05-08', 1, '1588942418'),
('66.220.149.13', '2020-05-08', 1, '1588942419'),
('173.252.127.26', '2020-05-08', 1, '1588944657'),
('173.252.127.24', '2020-05-08', 1, '1588944657'),
('173.252.127.18', '2020-05-08', 1, '1588944657'),
('173.252.79.113', '2020-05-08', 1, '1588947621'),
('173.252.79.6', '2020-05-08', 1, '1588947621'),
('66.220.149.22', '2020-05-08', 1, '1588949915'),
('31.13.127.15', '2020-05-08', 1, '1588951863'),
('31.13.127.16', '2020-05-08', 2, '1588951864'),
('66.220.149.15', '2020-05-08', 1, '1588951995'),
('66.220.149.5', '2020-05-08', 1, '1588951996'),
('66.220.149.21', '2020-05-08', 1, '1588951998'),
('31.13.127.113', '2020-05-08', 1, '1588952121'),
('31.13.127.8', '2020-05-08', 1, '1588952858'),
('35.241.177.227', '2020-05-08', 1, '1588954528'),
('66.249.71.150', '2020-05-09', 5, '1589034711'),
('66.249.71.148', '2020-05-09', 6, '1589026653'),
('66.220.149.5', '2020-05-09', 1, '1588960498'),
('173.252.111.22', '2020-05-09', 1, '1588961604'),
('173.252.111.3', '2020-05-09', 2, '1589005227'),
('173.252.111.119', '2020-05-09', 2, '1589021809'),
('173.252.87.2', '2020-05-09', 1, '1588962210'),
('173.252.87.119', '2020-05-09', 2, '1589040092'),
('31.13.103.7', '2020-05-09', 1, '1588962555'),
('31.13.103.12', '2020-05-09', 1, '1588962555'),
('31.13.103.19', '2020-05-09', 1, '1588962555'),
('66.220.149.10', '2020-05-09', 2, '1588995450'),
('66.220.149.111', '2020-05-09', 1, '1588967926'),
('31.13.127.8', '2020-05-09', 1, '1588970675'),
('31.13.127.6', '2020-05-09', 1, '1588970675'),
('31.13.127.112', '2020-05-09', 1, '1588970677'),
('31.13.127.23', '2020-05-09', 1, '1588970679'),
('31.13.127.12', '2020-05-09', 1, '1588970679'),
('31.13.127.20', '2020-05-09', 1, '1588970679'),
('173.252.79.113', '2020-05-09', 1, '1588971985'),
('66.220.149.3', '2020-05-09', 1, '1588974660'),
('173.252.83.8', '2020-05-09', 1, '1588977095'),
('173.252.79.8', '2020-05-09', 1, '1588977957'),
('173.252.79.6', '2020-05-09', 1, '1588977957'),
('173.252.79.3', '2020-05-09', 1, '1588977957'),
('173.252.79.23', '2020-05-09', 1, '1588978489'),
('173.252.79.2', '2020-05-09', 1, '1588978489'),
('173.252.79.14', '2020-05-09', 1, '1588978489'),
('173.252.83.22', '2020-05-09', 1, '1588978812'),
('173.252.83.2', '2020-05-09', 1, '1588978813'),
('173.252.83.118', '2020-05-09', 1, '1588978813'),
('66.220.149.22', '2020-05-09', 2, '1588995716'),
('66.220.149.119', '2020-05-09', 1, '1588980773'),
('66.220.149.4', '2020-05-09', 1, '1588980774'),
('66.249.71.152', '2020-05-09', 5, '1589034712'),
('66.220.149.21', '2020-05-09', 1, '1588983244'),
('104.161.92.2', '2020-05-09', 6, '1589004278'),
('182.1.63.43', '2020-05-09', 1, '1588985634'),
('182.1.44.56', '2020-05-09', 5, '1589001511'),
('173.252.107.2', '2020-05-09', 1, '1588986291'),
('173.252.107.9', '2020-05-09', 1, '1588986291'),
('173.252.107.10', '2020-05-09', 1, '1588986292'),
('182.1.44.164', '2020-05-09', 16, '1588987763'),
('69.171.251.5', '2020-05-09', 2, '1588986370'),
('69.171.251.9', '2020-05-09', 1, '1588986370'),
('182.1.61.80', '2020-05-09', 1, '1588986783'),
('182.1.45.127', '2020-05-09', 3, '1589001355'),
('182.1.45.64', '2020-05-09', 4, '1588989285'),
('173.252.95.112', '2020-05-09', 2, '1589018019'),
('173.252.95.29', '2020-05-09', 1, '1588987883'),
('182.1.44.236', '2020-05-09', 3, '1589001374'),
('182.1.46.102', '2020-05-09', 3, '1588989360'),
('66.220.149.23', '2020-05-09', 2, '1589000531'),
('66.220.149.8', '2020-05-09', 2, '1588998659'),
('114.5.254.122', '2020-05-09', 31, '1588993295'),
('66.220.149.24', '2020-05-09', 1, '1588990497'),
('73.147.202.67', '2020-05-09', 1, '1588993010'),
('173.252.95.17', '2020-05-09', 1, '1588993464'),
('3.134.82.1', '2020-05-09', 8, '1588993572'),
('34.250.9.32', '2020-05-09', 2, '1588993989'),
('173.252.127.9', '2020-05-09', 1, '1588995251'),
('173.252.127.24', '2020-05-09', 1, '1588995253'),
('173.252.127.5', '2020-05-09', 1, '1588995254'),
('66.220.149.7', '2020-05-09', 1, '1588995452'),
('66.220.149.12', '2020-05-09', 1, '1588995452'),
('66.220.149.18', '2020-05-09', 1, '1588995674'),
('66.220.149.113', '2020-05-09', 1, '1588995674'),
('66.220.149.11', '2020-05-09', 1, '1588995716'),
('66.220.149.117', '2020-05-09', 1, '1588995716'),
('65.155.30.101', '2020-05-09', 1, '1588996813'),
('173.252.95.9', '2020-05-09', 1, '1588996950'),
('173.252.95.7', '2020-05-09', 1, '1588996950'),
('66.220.149.14', '2020-05-09', 2, '1588997547'),
('66.220.149.2', '2020-05-09', 1, '1588997425'),
('66.220.149.17', '2020-05-09', 2, '1589019010'),
('114.125.81.83', '2020-05-09', 35, '1589003672'),
('36.90.152.74', '2020-05-09', 20, '1589003622'),
('66.220.149.116', '2020-05-09', 2, '1589036948'),
('66.220.149.1', '2020-05-09', 1, '1589000531'),
('31.13.115.11', '2020-05-09', 1, '1589003136'),
('31.13.115.22', '2020-05-09', 1, '1589003136'),
('31.13.115.19', '2020-05-09', 1, '1589003136'),
('173.252.111.120', '2020-05-09', 2, '1589021647'),
('173.252.111.1', '2020-05-09', 1, '1589005227'),
('173.252.95.2', '2020-05-09', 1, '1589010349'),
('173.252.107.20', '2020-05-09', 1, '1589010416'),
('173.252.107.21', '2020-05-09', 1, '1589010417'),
('36.72.218.136', '2020-05-09', 19, '1589037806'),
('173.252.87.3', '2020-05-09', 1, '1589014056'),
('172.69.34.208', '2020-05-09', 1, '1589017382'),
('66.249.64.46', '2020-05-09', 2, '1589026650'),
('173.252.95.11', '2020-05-09', 1, '1589018018'),
('173.252.95.27', '2020-05-09', 1, '1589018018'),
('103.79.168.226', '2020-05-09', 1, '1589018275'),
('66.220.149.19', '2020-05-09', 1, '1589019010'),
('173.252.127.120', '2020-05-09', 1, '1589019360'),
('173.252.111.116', '2020-05-09', 1, '1589021648'),
('173.252.111.117', '2020-05-09', 1, '1589021648'),
('173.252.111.21', '2020-05-09', 1, '1589021809'),
('173.252.111.9', '2020-05-09', 1, '1589021810'),
('69.171.251.116', '2020-05-09', 1, '1589022269'),
('130.149.230.224', '2020-05-09', 1, '1589023574'),
('66.220.149.118', '2020-05-09', 1, '1589027012'),
('31.13.103.111', '2020-05-09', 2, '1589030202'),
('31.13.103.16', '2020-05-09', 1, '1589030202'),
('173.252.87.15', '2020-05-09', 1, '1589040091'),
('173.252.87.4', '2020-05-09', 2, '1589040182'),
('173.252.87.21', '2020-05-09', 1, '1589040179'),
('173.252.87.8', '2020-05-09', 1, '1589040182'),
('173.252.87.112', '2020-05-09', 1, '1589040182'),
('35.240.14.136', '2020-05-09', 1, '1589040377'),
('66.220.149.6', '2020-05-09', 1, '1589041058'),
('173.252.79.2', '2020-05-10', 1, '1589049031'),
('173.252.79.20', '2020-05-10', 2, '1589101650'),
('66.220.149.1', '2020-05-10', 1, '1589050107'),
('66.220.149.25', '2020-05-10', 1, '1589050107'),
('66.220.149.117', '2020-05-10', 2, '1589112532'),
('173.252.95.16', '2020-05-10', 1, '1589050913'),
('173.252.95.29', '2020-05-10', 1, '1589050916'),
('69.171.251.6', '2020-05-10', 1, '1589057467'),
('69.171.251.119', '2020-05-10', 1, '1589057467'),
('69.171.251.4', '2020-05-10', 1, '1589057467'),
('46.45.185.165', '2020-05-10', 1, '1589059204'),
('69.171.251.27', '2020-05-10', 1, '1589064982'),
('69.171.251.11', '2020-05-10', 1, '1589064983'),
('69.171.251.25', '2020-05-10', 2, '1589064985'),
('69.171.251.118', '2020-05-10', 1, '1589064985'),
('69.171.251.116', '2020-05-10', 1, '1589064985'),
('69.171.251.12', '2020-05-10', 1, '1589064986'),
('69.171.251.19', '2020-05-10', 1, '1589064987'),
('69.171.251.3', '2020-05-10', 1, '1589064987'),
('31.13.103.21', '2020-05-10', 1, '1589068214'),
('104.161.92.2', '2020-05-10', 5, '1589107197'),
('66.249.71.148', '2020-05-10', 1, '1589068687'),
('66.249.71.150', '2020-05-10', 2, '1589087565'),
('173.252.87.20', '2020-05-10', 1, '1589070830'),
('173.252.107.18', '2020-05-10', 1, '1589072647'),
('173.252.107.20', '2020-05-10', 1, '1589072648'),
('173.252.111.7', '2020-05-10', 1, '1589072711'),
('173.252.111.23', '2020-05-10', 1, '1589072711'),
('173.252.111.14', '2020-05-10', 2, '1589084130'),
('173.252.95.4', '2020-05-10', 1, '1589072958'),
('173.252.95.116', '2020-05-10', 1, '1589072958'),
('31.13.127.24', '2020-05-10', 1, '1589074092'),
('31.13.127.113', '2020-05-10', 2, '1589104079'),
('114.5.254.122', '2020-05-10', 3, '1589078251'),
('31.13.103.16', '2020-05-10', 1, '1589079946'),
('173.252.83.23', '2020-05-10', 1, '1589079997'),
('173.252.87.14', '2020-05-10', 1, '1589081411'),
('173.252.111.8', '2020-05-10', 3, '1589082774'),
('31.13.127.14', '2020-05-10', 1, '1589081942'),
('31.13.127.22', '2020-05-10', 1, '1589081942'),
('31.13.103.8', '2020-05-10', 1, '1589081982'),
('31.13.103.3', '2020-05-10', 2, '1589083407'),
('173.252.111.6', '2020-05-10', 1, '1589082774'),
('66.249.71.152', '2020-05-10', 2, '1589087568'),
('31.13.103.113', '2020-05-10', 1, '1589083407'),
('31.13.103.23', '2020-05-10', 1, '1589083853'),
('31.13.103.5', '2020-05-10', 1, '1589083853'),
('173.252.79.13', '2020-05-10', 1, '1589083960'),
('173.252.79.22', '2020-05-10', 1, '1589083960'),
('173.252.79.19', '2020-05-10', 1, '1589084017'),
('173.252.79.118', '2020-05-10', 1, '1589084017'),
('173.252.111.11', '2020-05-10', 1, '1589084130'),
('173.252.111.5', '2020-05-10', 1, '1589085086'),
('173.252.111.19', '2020-05-10', 1, '1589085088'),
('173.252.111.2', '2020-05-10', 2, '1589105507'),
('173.252.111.116', '2020-05-10', 1, '1589085100'),
('134.122.14.53', '2020-05-10', 1, '1589085157'),
('69.171.251.21', '2020-05-10', 1, '1589087517'),
('173.252.83.7', '2020-05-10', 1, '1589087731'),
('173.252.83.5', '2020-05-10', 1, '1589087732'),
('173.252.127.113', '2020-05-10', 1, '1589092435'),
('173.252.127.28', '2020-05-10', 1, '1589092440'),
('173.252.95.10', '2020-05-10', 1, '1589093497'),
('173.252.95.111', '2020-05-10', 1, '1589093497'),
('173.252.87.118', '2020-05-10', 1, '1589094830'),
('46.45.185.161', '2020-05-10', 1, '1589095062'),
('173.252.87.16', '2020-05-10', 1, '1589095283'),
('95.217.104.173', '2020-05-10', 1, '1589097010'),
('180.249.200.126', '2020-05-10', 20, '1589098045'),
('103.11.28.68', '2020-05-10', 1, '1589097797'),
('66.220.149.5', '2020-05-10', 2, '1589105020'),
('66.220.149.8', '2020-05-10', 1, '1589098017'),
('206.189.70.84', '2020-05-10', 16, '1589099251'),
('120.188.65.121', '2020-05-10', 3, '1589100221'),
('173.252.87.120', '2020-05-10', 1, '1589101126'),
('173.252.79.14', '2020-05-10', 1, '1589102247'),
('182.1.45.37', '2020-05-10', 4, '1589105238'),
('182.1.63.216', '2020-05-10', 5, '1589105729'),
('31.13.127.5', '2020-05-10', 1, '1589104093'),
('182.1.63.178', '2020-05-10', 4, '1589104519'),
('182.1.46.4', '2020-05-10', 12, '1589106034'),
('182.1.60.164', '2020-05-10', 1, '1589104147'),
('182.1.47.183', '2020-05-10', 1, '1589104155'),
('173.252.127.10', '2020-05-10', 1, '1589104306'),
('173.252.127.25', '2020-05-10', 1, '1589104307'),
('173.252.127.27', '2020-05-10', 1, '1589104307'),
('173.252.127.2', '2020-05-10', 1, '1589104308'),
('182.1.46.121', '2020-05-10', 8, '1589105533'),
('173.252.111.18', '2020-05-10', 1, '1589104477'),
('173.252.111.117', '2020-05-10', 1, '1589104480'),
('173.252.111.111', '2020-05-10', 1, '1589104503'),
('173.252.111.16', '2020-05-10', 1, '1589104505'),
('182.1.62.27', '2020-05-10', 1, '1589104750'),
('182.1.46.30', '2020-05-10', 1, '1589105085'),
('182.1.45.50', '2020-05-10', 4, '1589105396'),
('173.252.111.1', '2020-05-10', 1, '1589105505'),
('173.252.87.21', '2020-05-10', 1, '1589105790'),
('173.252.107.1', '2020-05-10', 1, '1589107410'),
('70.42.131.189', '2020-05-10', 1, '1589111112'),
('150.249.214.252', '2020-05-10', 1, '1589111385'),
('150.249.214.249', '2020-05-10', 1, '1589111387'),
('39.111.208.132', '2020-05-10', 1, '1589111389'),
('150.249.214.251', '2020-05-10', 1, '1589111391'),
('66.220.149.2', '2020-05-10', 1, '1589112531'),
('66.220.149.118', '2020-05-10', 1, '1589112532'),
('66.220.149.113', '2020-05-10', 1, '1589112718'),
('31.13.127.21', '2020-05-10', 1, '1589113257'),
('31.13.115.3', '2020-05-10', 1, '1589115195'),
('31.13.115.14', '2020-05-10', 1, '1589115195'),
('173.252.95.119', '2020-05-10', 1, '1589115205'),
('173.252.95.26', '2020-05-10', 1, '1589115206'),
('173.252.95.28', '2020-05-10', 1, '1589115206'),
('31.13.115.113', '2020-05-10', 1, '1589115220'),
('173.252.83.111', '2020-05-10', 1, '1589116089'),
('173.252.83.14', '2020-05-10', 1, '1589116089'),
('36.72.219.161', '2020-05-10', 2, '1589117291'),
('173.252.83.6', '2020-05-10', 1, '1589117489'),
('173.252.83.2', '2020-05-10', 1, '1589117490'),
('173.252.95.14', '2020-05-10', 2, '1589125478'),
('173.252.95.1', '2020-05-10', 1, '1589121221'),
('173.252.95.23', '2020-05-10', 1, '1589121221'),
('173.252.127.3', '2020-05-10', 1, '1589123064'),
('173.252.127.6', '2020-05-10', 1, '1589123567'),
('173.252.127.21', '2020-05-10', 1, '1589123654'),
('173.252.107.6', '2020-05-10', 1, '1589123901'),
('69.171.251.120', '2020-05-10', 1, '1589124183'),
('69.171.251.112', '2020-05-10', 1, '1589124253'),
('69.171.251.28', '2020-05-10', 1, '1589124484'),
('173.252.87.4', '2020-05-10', 1, '1589124967'),
('173.252.87.116', '2020-05-10', 1, '1589124967'),
('173.252.87.117', '2020-05-10', 1, '1589124967'),
('66.220.149.120', '2020-05-10', 2, '1589125276'),
('173.252.95.22', '2020-05-10', 1, '1589125476'),
('173.252.95.8', '2020-05-10', 1, '1589125478'),
('66.220.149.4', '2020-05-10', 1, '1589125500'),
('35.205.18.199', '2020-05-10', 1, '1589126890'),
('66.220.149.1', '2020-05-11', 2, '1589158193'),
('173.252.95.14', '2020-05-11', 1, '1589132976'),
('31.13.103.2', '2020-05-11', 1, '1589133161'),
('31.13.103.10', '2020-05-11', 2, '1589182567'),
('31.13.103.117', '2020-05-11', 2, '1589194147'),
('173.252.87.17', '2020-05-11', 1, '1589142397'),
('173.252.87.20', '2020-05-11', 1, '1589142397'),
('173.252.87.11', '2020-05-11', 1, '1589142397'),
('173.252.127.16', '2020-05-11', 1, '1589143474'),
('173.252.127.117', '2020-05-11', 2, '1589163911'),
('173.252.127.7', '2020-05-11', 1, '1589143474'),
('66.220.149.3', '2020-05-11', 2, '1589188796'),
('173.252.95.17', '2020-05-11', 1, '1589144638'),
('173.252.95.30', '2020-05-11', 1, '1589144638'),
('173.252.95.20', '2020-05-11', 1, '1589144638'),
('51.15.236.249', '2020-05-11', 1, '1589144763'),
('173.252.87.9', '2020-05-11', 1, '1589145906'),
('173.252.87.112', '2020-05-11', 1, '1589145907'),
('173.252.87.15', '2020-05-11', 1, '1589145907'),
('45.33.15.94', '2020-05-11', 1, '1589146282'),
('173.252.87.116', '2020-05-11', 1, '1589147099'),
('173.252.87.1', '2020-05-11', 3, '1589148122'),
('173.252.87.21', '2020-05-11', 1, '1589147100'),
('173.252.87.111', '2020-05-11', 1, '1589147145'),
('173.252.87.120', '2020-05-11', 1, '1589147145'),
('173.252.87.4', '2020-05-11', 1, '1589148123'),
('173.252.87.10', '2020-05-11', 1, '1589148124'),
('173.252.83.21', '2020-05-11', 2, '1589167303'),
('173.252.83.112', '2020-05-11', 1, '1589149106'),
('173.252.83.10', '2020-05-11', 2, '1589185248'),
('31.13.115.10', '2020-05-11', 1, '1589149120'),
('31.13.115.20', '2020-05-11', 1, '1589149120'),
('31.13.115.14', '2020-05-11', 1, '1589149153'),
('31.13.115.15', '2020-05-11', 1, '1589149154'),
('66.220.149.24', '2020-05-11', 3, '1589158194'),
('150.143.163.80', '2020-05-11', 2, '1589149860'),
('45.127.134.93', '2020-05-11', 2, '1589149860'),
('162.222.195.83', '2020-05-11', 2, '1589149861'),
('5.62.41.113', '2020-05-11', 1, '1589149860'),
('36.72.219.161', '2020-05-11', 17, '1589163889'),
('173.252.79.117', '2020-05-11', 1, '1589155803'),
('173.252.83.14', '2020-05-11', 1, '1589156158'),
('66.220.149.111', '2020-05-11', 1, '1589158269'),
('66.220.149.116', '2020-05-11', 1, '1589158269'),
('66.220.149.12', '2020-05-11', 1, '1589158270'),
('173.252.111.120', '2020-05-11', 1, '1589158800'),
('173.252.95.5', '2020-05-11', 1, '1589158803'),
('36.90.153.188', '2020-05-11', 5, '1589159994'),
('173.252.83.119', '2020-05-11', 1, '1589161155'),
('173.252.127.5', '2020-05-11', 1, '1589163910'),
('173.252.127.27', '2020-05-11', 2, '1589163911'),
('173.252.127.13', '2020-05-11', 1, '1589163911'),
('173.252.127.9', '2020-05-11', 2, '1589185124'),
('31.13.127.13', '2020-05-11', 1, '1589165491'),
('31.13.127.16', '2020-05-11', 1, '1589165491'),
('31.13.127.22', '2020-05-11', 1, '1589165491'),
('31.13.127.15', '2020-05-11', 2, '1589201559'),
('31.13.127.118', '2020-05-11', 1, '1589165496'),
('31.13.127.10', '2020-05-11', 1, '1589165496'),
('31.13.127.7', '2020-05-11', 1, '1589165512'),
('31.13.127.120', '2020-05-11', 1, '1589165513'),
('31.13.127.6', '2020-05-11', 1, '1589165513'),
('173.252.83.4', '2020-05-11', 2, '1589185251'),
('173.252.83.12', '2020-05-11', 1, '1589167149'),
('173.252.83.23', '2020-05-11', 1, '1589167303'),
('173.252.83.6', '2020-05-11', 1, '1589167303'),
('173.252.111.119', '2020-05-11', 3, '1589216218'),
('173.252.111.8', '2020-05-11', 2, '1589176859'),
('173.252.111.111', '2020-05-11', 1, '1589167851'),
('173.252.111.111', '2020-05-11', 1, '1589167851'),
('173.252.111.2', '2020-05-11', 2, '1589209105'),
('173.252.111.19', '2020-05-11', 1, '1589168085'),
('173.252.111.14', '2020-05-11', 1, '1589168085'),
('173.252.111.11', '2020-05-11', 1, '1589168085'),
('114.124.161.154', '2020-05-11', 1, '1589174153'),
('173.252.111.3', '2020-05-11', 1, '1589176859'),
('173.252.111.3', '2020-05-11', 1, '1589176859'),
('95.216.18.217', '2020-05-11', 2, '1589179674'),
('173.252.79.112', '2020-05-11', 1, '1589184740'),
('173.252.79.4', '2020-05-11', 1, '1589184740'),
('173.252.79.120', '2020-05-11', 1, '1589184740'),
('173.252.127.119', '2020-05-11', 1, '1589185123'),
('173.252.127.15', '2020-05-11', 1, '1589185124'),
('173.252.83.120', '2020-05-11', 1, '1589185248'),
('69.171.251.15', '2020-05-11', 1, '1589185450'),
('69.171.251.14', '2020-05-11', 1, '1589185708'),
('69.171.251.113', '2020-05-11', 2, '1589185907'),
('69.171.251.10', '2020-05-11', 1, '1589185709'),
('69.171.251.6', '2020-05-11', 2, '1589209929'),
('69.171.251.16', '2020-05-11', 1, '1589185722'),
('69.171.251.1', '2020-05-11', 1, '1589185722'),
('69.171.251.119', '2020-05-11', 1, '1589185831'),
('69.171.251.116', '2020-05-11', 1, '1589185831'),
('69.171.251.18', '2020-05-11', 1, '1589185907'),
('66.220.149.18', '2020-05-11', 1, '1589186260'),
('66.220.149.118', '2020-05-11', 1, '1589186260'),
('182.2.37.17', '2020-05-11', 1, '1589188828'),
('173.252.87.19', '2020-05-11', 1, '1589190590'),
('173.252.87.118', '2020-05-11', 1, '1589190591'),
('148.251.4.136', '2020-05-11', 2, '1589191128'),
('182.2.36.133', '2020-05-11', 1, '1589193019'),
('69.171.251.117', '2020-05-11', 1, '1589193379'),
('31.13.103.24', '2020-05-11', 1, '1589194147'),
('31.13.103.16', '2020-05-11', 1, '1589194147'),
('31.13.115.31', '2020-05-11', 1, '1589199154'),
('4.14.203.227', '2020-05-11', 1, '1589199795'),
('173.252.83.9', '2020-05-11', 1, '1589199806'),
('173.252.83.11', '2020-05-11', 1, '1589199806'),
('31.13.127.40', '2020-05-11', 1, '1589201559'),
('31.13.127.5', '2020-05-11', 1, '1589201559'),
('40.76.35.32', '2020-05-11', 2, '1589209425'),
('66.220.149.113', '2020-05-11', 1, '1589202708'),
('173.252.111.17', '2020-05-11', 1, '1589209006'),
('173.252.111.5', '2020-05-11', 1, '1589209012'),
('173.252.111.1', '2020-05-11', 2, '1589216306'),
('173.252.95.16', '2020-05-11', 1, '1589209210'),
('173.252.107.2', '2020-05-11', 1, '1589213365'),
('173.252.111.23', '2020-05-11', 1, '1589216306'),
('173.252.111.8', '2020-05-12', 1, '1589216572'),
('173.252.111.12', '2020-05-12', 1, '1589216573'),
('173.252.111.14', '2020-05-12', 4, '1589289738'),
('173.252.111.113', '2020-05-12', 1, '1589216980'),
('173.252.111.6', '2020-05-12', 1, '1589217069'),
('173.252.111.21', '2020-05-12', 2, '1589256898'),
('173.252.111.11', '2020-05-12', 1, '1589217069'),
('69.171.251.7', '2020-05-12', 1, '1589217292'),
('69.171.251.111', '2020-05-12', 1, '1589217296'),
('69.171.251.28', '2020-05-12', 1, '1589217297'),
('173.252.79.3', '2020-05-12', 1, '1589218174'),
('173.252.127.3', '2020-05-12', 2, '1589292880'),
('173.252.127.20', '2020-05-12', 3, '1589224832'),
('173.252.127.111', '2020-05-12', 3, '1589224828'),
('173.252.127.5', '2020-05-12', 1, '1589224827'),
('173.252.127.6', '2020-05-12', 1, '1589224827'),
('173.252.127.29', '2020-05-12', 2, '1589224833'),
('173.252.127.8', '2020-05-12', 1, '1589224828'),
('173.252.127.113', '2020-05-12', 2, '1589274764'),
('173.252.127.10', '2020-05-12', 2, '1589292860'),
('173.252.127.19', '2020-05-12', 2, '1589292860'),
('173.252.127.17', '2020-05-12', 2, '1589224834'),
('173.252.127.1', '2020-05-12', 2, '1589292861'),
('173.252.127.16', '2020-05-12', 1, '1589224834'),
('173.252.127.18', '2020-05-12', 1, '1589224834'),
('173.252.127.2', '2020-05-12', 2, '1589273646'),
('173.252.79.24', '2020-05-12', 1, '1589225124'),
('173.252.79.118', '2020-05-12', 3, '1589281036'),
('173.252.79.4', '2020-05-12', 1, '1589225124'),
('173.252.83.17', '2020-05-12', 2, '1589252521'),
('173.252.83.4', '2020-05-12', 2, '1589261507'),
('173.252.83.20', '2020-05-12', 2, '1589264879'),
('66.220.149.23', '2020-05-12', 1, '1589230907'),
('66.220.149.18', '2020-05-12', 1, '1589232355'),
('66.220.149.14', '2020-05-12', 2, '1589270785'),
('66.220.149.15', '2020-05-12', 2, '1589284348'),
('173.252.111.22', '2020-05-12', 4, '1589290115'),
('66.220.149.20', '2020-05-12', 1, '1589233137'),
('66.220.149.17', '2020-05-12', 1, '1589233137'),
('69.171.251.22', '2020-05-12', 1, '1589233458'),
('69.171.251.11', '2020-05-12', 1, '1589233458'),
('66.249.71.148', '2020-05-12', 3, '1589262464'),
('66.220.149.116', '2020-05-12', 1, '1589235834'),
('69.171.251.23', '2020-05-12', 1, '1589239764'),
('69.171.251.10', '2020-05-12', 1, '1589239767'),
('66.220.149.117', '2020-05-12', 1, '1589241225'),
('66.220.149.25', '2020-05-12', 1, '1589241234'),
('66.220.149.118', '2020-05-12', 1, '1589241242'),
('66.249.71.152', '2020-05-12', 1, '1589241310'),
('173.252.111.116', '2020-05-12', 2, '1589290116'),
('173.252.111.10', '2020-05-12', 2, '1589242788'),
('31.13.115.6', '2020-05-12', 2, '1589292880'),
('31.13.115.12', '2020-05-12', 1, '1589243949'),
('104.161.92.2', '2020-05-12', 5, '1589291808'),
('173.252.127.4', '2020-05-12', 1, '1589248657'),
('173.252.111.19', '2020-05-12', 1, '1589249461'),
('114.125.15.202', '2020-05-12', 8, '1589254424'),
('54.167.225.92', '2020-05-12', 2, '1589251800'),
('114.125.14.169', '2020-05-12', 1, '1589251853'),
('114.125.14.203', '2020-05-12', 9, '1589254046'),
('114.125.28.11', '2020-05-12', 2, '1589253087'),
('31.13.115.18', '2020-05-12', 2, '1589252226'),
('114.125.12.158', '2020-05-12', 2, '1589253852'),
('114.125.28.41', '2020-05-12', 4, '1589253294'),
('182.1.7.122', '2020-05-12', 1, '1589252442'),
('182.253.121.36', '2020-05-12', 1, '1589252478'),
('173.252.87.13', '2020-05-12', 1, '1589252486'),
('114.125.13.133', '2020-05-12', 3, '1589253542'),
('182.253.121.29', '2020-05-12', 96, '1589280275'),
('173.252.83.23', '2020-05-12', 2, '1589271150'),
('173.252.83.10', '2020-05-12', 1, '1589252549'),
('114.125.31.8', '2020-05-12', 2, '1589254211'),
('31.13.127.113', '2020-05-12', 1, '1589253366'),
('114.125.29.149', '2020-05-12', 1, '1589254229'),
('114.125.15.24', '2020-05-12', 4, '1589254397'),
('114.125.12.201', '2020-05-12', 1, '1589254823'),
('69.164.206.42', '2020-05-12', 1, '1589255429'),
('173.252.107.117', '2020-05-12', 1, '1589257497'),
('36.72.244.155', '2020-05-12', 1, '1589260701'),
('31.13.103.112', '2020-05-12', 1, '1589261061'),
('31.13.103.10', '2020-05-12', 1, '1589261061'),
('173.252.83.111', '2020-05-12', 2, '1589261262'),
('173.252.83.3', '2020-05-12', 1, '1589261173'),
('173.252.83.19', '2020-05-12', 1, '1589261262'),
('173.252.83.24', '2020-05-12', 2, '1589262203'),
('31.13.103.116', '2020-05-12', 1, '1589261768'),
('31.13.103.23', '2020-05-12', 1, '1589261774'),
('66.249.71.150', '2020-05-12', 1, '1589262446'),
('173.252.83.13', '2020-05-12', 1, '1589262449'),
('173.252.127.11', '2020-05-12', 1, '1589262494'),
('173.252.127.120', '2020-05-12', 2, '1589288397'),
('173.252.95.1', '2020-05-12', 1, '1589262586'),
('173.252.83.9', '2020-05-12', 1, '1589262630'),
('173.252.95.8', '2020-05-12', 2, '1589280128'),
('46.45.185.176', '2020-05-12', 1, '1589263998'),
('173.252.83.14', '2020-05-12', 1, '1589264876'),
('173.252.87.117', '2020-05-12', 1, '1589265074'),
('67.216.47.199', '2020-05-12', 1, '1589265788'),
('173.252.127.14', '2020-05-12', 2, '1589293372'),
('173.252.127.23', '2020-05-12', 1, '1589266538'),
('31.13.103.118', '2020-05-12', 1, '1589266999'),
('31.13.127.19', '2020-05-12', 1, '1589269450'),
('31.13.127.13', '2020-05-12', 1, '1589269956'),
('31.13.127.17', '2020-05-12', 1, '1589270695'),
('31.13.127.18', '2020-05-12', 1, '1589270695'),
('66.220.149.19', '2020-05-12', 2, '1589270776'),
('173.252.83.11', '2020-05-12', 1, '1589271154'),
('66.220.149.119', '2020-05-12', 1, '1589271899'),
('66.220.149.9', '2020-05-12', 1, '1589271935'),
('173.252.107.18', '2020-05-12', 1, '1589272822'),
('173.252.107.13', '2020-05-12', 1, '1589272836'),
('173.252.107.22', '2020-05-12', 1, '1589272836'),
('173.252.127.27', '2020-05-12', 1, '1589274053'),
('34.217.126.173', '2020-05-12', 1, '1589278888'),
('114.125.13.90', '2020-05-12', 1, '1589279044'),
('114.125.12.65', '2020-05-12', 2, '1589282134'),
('173.252.111.119', '2020-05-12', 1, '1589280119'),
('66.220.149.120', '2020-05-12', 1, '1589280155'),
('66.220.149.120', '2020-05-12', 1, '1589280155'),
('114.125.13.97', '2020-05-12', 1, '1589282094'),
('173.252.87.12', '2020-05-12', 1, '1589282627'),
('173.252.111.5', '2020-05-12', 1, '1589288245'),
('173.252.111.16', '2020-05-12', 2, '1589300969'),
('173.252.127.22', '2020-05-12', 1, '1589288397'),
('173.252.127.25', '2020-05-12', 1, '1589288401'),
('173.252.127.13', '2020-05-12', 1, '1589288401'),
('173.252.111.3', '2020-05-12', 1, '1589289738'),
('66.220.149.3', '2020-05-12', 1, '1589290330'),
('69.171.251.2', '2020-05-12', 1, '1589290637'),
('69.171.251.18', '2020-05-12', 1, '1589290637'),
('173.252.111.15', '2020-05-12', 2, '1589300969'),
('182.1.21.127', '2020-05-12', 2, '1589292258'),
('182.1.4.110', '2020-05-12', 1, '1589292243'),
('180.249.202.73', '2020-05-12', 5, '1589292905'),
('114.125.169.9', '2020-05-12', 1, '1589292652'),
('114.125.185.61', '2020-05-12', 1, '1589292722'),
('66.220.149.6', '2020-05-12', 1, '1589292728'),
('114.125.169.119', '2020-05-12', 1, '1589292741'),
('114.125.185.87', '2020-05-12', 1, '1589292749'),
('114.125.185.164', '2020-05-12', 1, '1589292804'),
('66.220.149.4', '2020-05-12', 1, '1589292852'),
('66.220.149.22', '2020-05-12', 1, '1589292855'),
('173.252.127.12', '2020-05-12', 1, '1589292858'),
('173.252.127.119', '2020-05-12', 1, '1589292860'),
('31.13.115.8', '2020-05-12', 1, '1589292861'),
('66.220.149.21', '2020-05-12', 1, '1589292873'),
('69.171.251.17', '2020-05-12', 2, '1589292882'),
('173.252.107.24', '2020-05-12', 1, '1589292882'),
('173.252.107.118', '2020-05-12', 1, '1589292882'),
('173.252.87.14', '2020-05-12', 1, '1589292894'),
('173.252.87.6', '2020-05-12', 1, '1589295101'),
('173.252.111.18', '2020-05-12', 1, '1589300971'),
('66.220.149.112', '2020-05-13', 1, '1589308203'),
('66.220.149.8', '2020-05-13', 1, '1589308203'),
('66.220.149.111', '2020-05-13', 1, '1589308593'),
('66.220.149.17', '2020-05-13', 1, '1589308593'),
('66.220.149.12', '2020-05-13', 1, '1589308593'),
('173.252.83.5', '2020-05-13', 1, '1589310306'),
('173.252.83.12', '2020-05-13', 2, '1589348222'),
('173.252.111.24', '2020-05-13', 1, '1589316968'),
('31.13.103.4', '2020-05-13', 1, '1589318197'),
('173.252.127.8', '2020-05-13', 3, '1589357593'),
('173.252.127.17', '2020-05-13', 1, '1589318342'),
('173.252.79.23', '2020-05-13', 1, '1589318670'),
('173.252.79.112', '2020-05-13', 1, '1589318670'),
('173.252.79.117', '2020-05-13', 3, '1589336085'),
('31.13.115.8', '2020-05-13', 1, '1589319243'),
('31.13.115.12', '2020-05-13', 1, '1589319243'),
('69.171.251.13', '2020-05-13', 3, '1589373080'),
('69.171.251.15', '2020-05-13', 1, '1589322726'),
('66.249.71.152', '2020-05-13', 1, '1589323928'),
('173.252.107.4', '2020-05-13', 1, '1589324629'),
('173.252.95.3', '2020-05-13', 1, '1589326606'),
('173.252.95.21', '2020-05-13', 1, '1589326611'),
('69.171.251.6', '2020-05-13', 3, '1589336892'),
('31.13.127.118', '2020-05-13', 1, '1589327874'),
('138.246.253.15', '2020-05-13', 1, '1589328355'),
('31.13.103.117', '2020-05-13', 1, '1589329912'),
('54.188.52.215', '2020-05-13', 1, '1589331083'),
('66.220.149.119', '2020-05-13', 2, '1589345171'),
('173.252.87.117', '2020-05-13', 1, '1589334060'),
('173.252.83.117', '2020-05-13', 2, '1589368887'),
('173.252.83.116', '2020-05-13', 2, '1589376793'),
('173.252.83.24', '2020-05-13', 2, '1589338168'),
('173.252.79.10', '2020-05-13', 2, '1589361751'),
('173.252.79.24', '2020-05-13', 2, '1589369322'),
('69.171.251.3', '2020-05-13', 1, '1589336892'),
('69.171.251.18', '2020-05-13', 1, '1589336925'),
('69.171.251.7', '2020-05-13', 2, '1589373082'),
('66.220.149.11', '2020-05-13', 1, '1589336947'),
('66.220.149.19', '2020-05-13', 1, '1589336947'),
('173.252.83.9', '2020-05-13', 2, '1589338283'),
('173.252.83.14', '2020-05-13', 1, '1589338978'),
('31.13.103.7', '2020-05-13', 1, '1589339212'),
('173.252.83.13', '2020-05-13', 1, '1589339212'),
('31.13.127.116', '2020-05-13', 1, '1589340216'),
('31.13.103.22', '2020-05-13', 1, '1589340905'),
('173.252.83.120', '2020-05-13', 1, '1589341095'),
('114.125.14.89', '2020-05-13', 1, '1589341334'),
('114.125.28.112', '2020-05-13', 1, '1589341335'),
('66.102.6.151', '2020-05-13', 1, '1589341356'),
('114.125.15.121', '2020-05-13', 1, '1589341404'),
('173.252.83.3', '2020-05-13', 1, '1589343300'),
('173.252.111.18', '2020-05-13', 1, '1589346185'),
('173.252.111.6', '2020-05-13', 1, '1589346188'),
('173.252.107.119', '2020-05-13', 2, '1589346330'),
('173.252.87.12', '2020-05-13', 1, '1589346343'),
('69.171.251.111', '2020-05-13', 1, '1589346343'),
('69.171.251.116', '2020-05-13', 2, '1589346347'),
('173.252.107.117', '2020-05-13', 1, '1589346343'),
('69.171.251.112', '2020-05-13', 1, '1589346344'),
('66.220.149.1', '2020-05-13', 1, '1589346344'),
('69.171.251.23', '2020-05-13', 1, '1589346344'),
('173.252.107.116', '2020-05-13', 1, '1589346345'),
('173.252.107.7', '2020-05-13', 1, '1589346346'),
('173.252.107.2', '2020-05-13', 1, '1589346346'),
('69.171.251.25', '2020-05-13', 1, '1589346347'),
('69.171.251.5', '2020-05-13', 1, '1589346348'),
('173.252.87.9', '2020-05-13', 1, '1589346348'),
('173.252.83.22', '2020-05-13', 2, '1589368906'),
('173.252.111.118', '2020-05-13', 1, '1589349221'),
('173.252.83.113', '2020-05-13', 1, '1589349357'),
('173.252.127.112', '2020-05-13', 1, '1589349398'),
('31.13.115.6', '2020-05-13', 1, '1589350264'),
('45.79.30.86', '2020-05-13', 1, '1589350447'),
('31.13.103.2', '2020-05-13', 1, '1589350719'),
('31.13.103.120', '2020-05-13', 1, '1589356932'),
('173.252.87.15', '2020-05-13', 1, '1589357434'),
('31.13.127.111', '2020-05-13', 1, '1589357475'),
('38.99.62.94', '2020-05-13', 1, '1589358224'),
('31.13.103.116', '2020-05-13', 2, '1589358421'),
('31.13.103.21', '2020-05-13', 1, '1589358421'),
('31.13.127.9', '2020-05-13', 1, '1589359109'),
('31.13.127.117', '2020-05-13', 1, '1589359110'),
('31.13.127.112', '2020-05-13', 2, '1589359112'),
('31.13.127.2', '2020-05-13', 1, '1589359111'),
('31.13.127.5', '2020-05-13', 2, '1589359116'),
('31.13.127.24', '2020-05-13', 1, '1589359114'),
('31.13.127.113', '2020-05-13', 1, '1589359123'),
('173.252.95.14', '2020-05-13', 1, '1589361137'),
('173.252.95.13', '2020-05-13', 1, '1589361137'),
('173.252.95.12', '2020-05-13', 1, '1589361141'),
('173.252.79.1', '2020-05-13', 1, '1589361751'),
('173.252.79.13', '2020-05-13', 2, '1589378632'),
('173.252.127.23', '2020-05-13', 1, '1589362941'),
('104.161.92.2', '2020-05-13', 2, '1589363984'),
('173.252.87.1', '2020-05-13', 1, '1589364670'),
('173.252.87.7', '2020-05-13', 1, '1589364670'),
('173.252.87.3', '2020-05-13', 1, '1589364672'),
('104.248.6.136', '2020-05-13', 1, '1589366918'),
('173.252.83.1', '2020-05-13', 1, '1589368373'),
('173.252.83.15', '2020-05-13', 1, '1589368887'),
('173.252.83.6', '2020-05-13', 1, '1589368887'),
('54.149.105.226', '2020-05-13', 1, '1589371498'),
('69.171.251.14', '2020-05-13', 1, '1589373078'),
('173.252.95.7', '2020-05-13', 1, '1589373212'),
('173.252.87.4', '2020-05-13', 1, '1589375808'),
('173.252.127.10', '2020-05-13', 1, '1589376356'),
('173.252.127.18', '2020-05-13', 1, '1589376356'),
('173.252.127.20', '2020-05-13', 1, '1589376356'),
('173.252.87.24', '2020-05-13', 1, '1589376793'),
('173.252.83.118', '2020-05-13', 1, '1589376793'),
('173.252.87.118', '2020-05-13', 1, '1589376817'),
('31.13.115.113', '2020-05-13', 1, '1589377711'),
('173.252.79.113', '2020-05-13', 1, '1589382225'),
('173.252.79.119', '2020-05-13', 1, '1589382295'),
('173.252.95.19', '2020-05-13', 1, '1589383795'),
('66.220.149.9', '2020-05-13', 1, '1589384356'),
('173.252.79.9', '2020-05-13', 1, '1589384592'),
('173.252.79.21', '2020-05-13', 1, '1589384592'),
('173.252.87.6', '2020-05-13', 1, '1589384973'),
('35.240.76.125', '2020-05-13', 1, '1589386064'),
('46.45.185.164', '2020-05-13', 1, '1589386288'),
('66.220.149.14', '2020-05-13', 1, '1589387374'),
('66.220.149.3', '2020-05-13', 1, '1589387374'),
('173.252.95.25', '2020-05-13', 1, '1589388722'),
('69.171.251.18', '2020-05-14', 1, '1589391949'),
('173.252.127.112', '2020-05-14', 1, '1589393593'),
('173.252.127.24', '2020-05-14', 1, '1589393593'),
('173.252.127.19', '2020-05-14', 2, '1589450566'),
('173.252.127.117', '2020-05-14', 1, '1589393722'),
('173.252.83.119', '2020-05-14', 1, '1589394083'),
('173.252.83.24', '2020-05-14', 2, '1589460887'),
('173.252.87.13', '2020-05-14', 1, '1589401106'),
('173.252.87.23', '2020-05-14', 2, '1589431663'),
('69.171.251.27', '2020-05-14', 1, '1589401969'),
('173.252.127.25', '2020-05-14', 1, '1589402156'),
('66.220.149.25', '2020-05-14', 1, '1589402418'),
('69.171.251.113', '2020-05-14', 1, '1589404072'),
('69.171.251.22', '2020-05-14', 2, '1589418288'),
('69.171.251.7', '2020-05-14', 2, '1589448132'),
('69.171.251.14', '2020-05-14', 1, '1589404074'),
('173.252.79.2', '2020-05-14', 1, '1589409963'),
('173.252.79.22', '2020-05-14', 1, '1589409964'),
('173.252.79.15', '2020-05-14', 1, '1589409964'),
('167.114.172.167', '2020-05-14', 1, '1589411822'),
('66.220.149.8', '2020-05-14', 1, '1589412460'),
('173.252.127.118', '2020-05-14', 1, '1589412659'),
('173.252.127.27', '2020-05-14', 1, '1589412659'),
('173.252.111.111', '2020-05-14', 1, '1589417278'),
('173.252.111.20', '2020-05-14', 1, '1589417279'),
('173.252.111.1', '2020-05-14', 1, '1589417387'),
('173.252.95.18', '2020-05-14', 1, '1589419790'),
('66.220.149.1', '2020-05-14', 1, '1589420546'),
('31.13.103.113', '2020-05-14', 1, '1589421164'),
('66.220.149.28', '2020-05-14', 1, '1589421284'),
('173.252.111.113', '2020-05-14', 1, '1589421315'),
('173.252.111.19', '2020-05-14', 1, '1589421315'),
('173.252.79.113', '2020-05-14', 2, '1589423436'),
('173.252.79.14', '2020-05-14', 1, '1589422123'),
('173.252.79.17', '2020-05-14', 1, '1589422130'),
('173.252.87.9', '2020-05-14', 1, '1589422877'),
('173.252.79.13', '2020-05-14', 2, '1589423437'),
('114.125.101.205', '2020-05-14', 1, '1589430744'),
('114.125.117.124', '2020-05-14', 1, '1589430804'),
('114.125.101.161', '2020-05-14', 3, '1589430863'),
('31.13.115.6', '2020-05-14', 1, '1589430910'),
('173.252.87.12', '2020-05-14', 1, '1589431662'),
('31.13.103.120', '2020-05-14', 1, '1589432172'),
('31.13.103.2', '2020-05-14', 2, '1589432172'),
('173.252.87.18', '2020-05-14', 1, '1589432855'),
('173.252.83.111', '2020-05-14', 2, '1589433350'),
('173.252.83.2', '2020-05-14', 1, '1589433348'),
('114.125.117.63', '2020-05-14', 1, '1589433366'),
('45.33.11.236', '2020-05-14', 1, '1589433540'),
('173.252.83.10', '2020-05-14', 2, '1589433663'),
('173.252.83.7', '2020-05-14', 1, '1589433663'),
('31.13.115.21', '2020-05-14', 2, '1589438370'),
('31.13.115.120', '2020-05-14', 1, '1589434555'),
('173.252.111.22', '2020-05-14', 1, '1589435126'),
('31.13.103.8', '2020-05-14', 1, '1589435368'),
('31.13.103.111', '2020-05-14', 2, '1589457751'),
('173.252.95.4', '2020-05-14', 1, '1589436612');
INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('156.210.159.209', '2020-05-14', 1, '1589438136'),
('31.13.127.24', '2020-05-14', 1, '1589438366'),
('31.13.115.17', '2020-05-14', 1, '1589438371'),
('65.154.226.109', '2020-05-14', 1, '1589439551'),
('66.220.149.116', '2020-05-14', 1, '1589441808'),
('180.249.200.115', '2020-05-14', 11, '1589442015'),
('66.220.149.23', '2020-05-14', 1, '1589441857'),
('66.220.149.119', '2020-05-14', 1, '1589441860'),
('101.203.171.68', '2020-05-14', 1, '1589441997'),
('173.252.127.22', '2020-05-14', 1, '1589442451'),
('69.171.251.25', '2020-05-14', 1, '1589443075'),
('69.171.251.11', '2020-05-14', 1, '1589443078'),
('173.252.127.6', '2020-05-14', 1, '1589443251'),
('173.252.107.7', '2020-05-14', 1, '1589444547'),
('173.252.79.16', '2020-05-14', 2, '1589446815'),
('173.252.79.20', '2020-05-14', 1, '1589446815'),
('173.252.111.117', '2020-05-14', 1, '1589446838'),
('173.252.111.116', '2020-05-14', 1, '1589446842'),
('173.252.111.13', '2020-05-14', 1, '1589446843'),
('69.171.251.19', '2020-05-14', 1, '1589448132'),
('69.171.251.29', '2020-05-14', 1, '1589448132'),
('173.252.107.111', '2020-05-14', 1, '1589448507'),
('173.252.107.11', '2020-05-14', 1, '1589448513'),
('173.252.107.20', '2020-05-14', 1, '1589448513'),
('173.252.127.113', '2020-05-14', 2, '1589466786'),
('173.252.127.4', '2020-05-14', 1, '1589449138'),
('83.169.1.71', '2020-05-14', 1, '1589450325'),
('173.252.95.10', '2020-05-14', 2, '1589450903'),
('173.252.87.17', '2020-05-14', 1, '1589451895'),
('173.252.107.116', '2020-05-14', 1, '1589455776'),
('173.252.127.26', '2020-05-14', 1, '1589456437'),
('173.252.127.5', '2020-05-14', 1, '1589456437'),
('31.13.127.5', '2020-05-14', 1, '1589458785'),
('31.13.127.4', '2020-05-14', 1, '1589458785'),
('173.252.83.118', '2020-05-14', 1, '1589460887'),
('36.83.128.169', '2020-05-14', 2, '1589461611'),
('114.125.185.165', '2020-05-14', 2, '1589461646'),
('173.252.127.3', '2020-05-14', 1, '1589462521'),
('46.45.185.177', '2020-05-14', 1, '1589465141'),
('173.252.95.36', '2020-05-14', 2, '1589466344'),
('103.228.117.204', '2020-05-14', 1, '1589467143'),
('69.171.251.119', '2020-05-14', 1, '1589468487'),
('23.254.36.12', '2020-05-14', 1, '1589472022'),
('34.77.76.77', '2020-05-14', 1, '1589473158'),
('34.107.21.245', '2020-05-14', 2, '1589473335'),
('173.252.87.16', '2020-05-14', 1, '1589474373'),
('173.252.87.4', '2020-05-14', 1, '1589474373'),
('173.252.87.116', '2020-05-14', 1, '1589474373'),
('31.13.115.14', '2020-05-15', 1, '1589475711'),
('31.13.127.13', '2020-05-15', 1, '1589476091'),
('69.171.251.6', '2020-05-15', 1, '1589478769'),
('69.171.251.5', '2020-05-15', 1, '1589478769'),
('156.213.44.198', '2020-05-15', 1, '1589482110'),
('31.13.115.12', '2020-05-15', 1, '1589483158'),
('31.13.115.23', '2020-05-15', 1, '1589483159'),
('31.13.127.112', '2020-05-15', 1, '1589483454'),
('31.13.127.24', '2020-05-15', 2, '1589541664'),
('173.252.79.20', '2020-05-15', 1, '1589483661'),
('173.252.87.13', '2020-05-15', 1, '1589484120'),
('173.252.79.117', '2020-05-15', 1, '1589484893'),
('31.13.103.17', '2020-05-15', 2, '1589517546'),
('66.220.149.7', '2020-05-15', 1, '1589488269'),
('66.220.149.26', '2020-05-15', 2, '1589558903'),
('173.252.83.119', '2020-05-15', 1, '1589491032'),
('173.252.83.22', '2020-05-15', 1, '1589491032'),
('35.202.165.193', '2020-05-15', 1, '1589491319'),
('173.252.79.9', '2020-05-15', 1, '1589491743'),
('173.252.79.15', '2020-05-15', 1, '1589491743'),
('173.252.83.10', '2020-05-15', 1, '1589492446'),
('173.252.83.12', '2020-05-15', 1, '1589492446'),
('173.252.83.112', '2020-05-15', 2, '1589495234'),
('173.252.83.14', '2020-05-15', 1, '1589492449'),
('173.252.83.118', '2020-05-15', 2, '1589527638'),
('173.252.83.21', '2020-05-15', 3, '1589528348'),
('66.249.79.156', '2020-05-15', 1, '1589493757'),
('66.249.71.150', '2020-05-15', 3, '1589548801'),
('173.252.83.9', '2020-05-15', 2, '1589550079'),
('173.252.83.13', '2020-05-15', 1, '1589495254'),
('66.220.149.24', '2020-05-15', 1, '1589499860'),
('66.220.149.117', '2020-05-15', 1, '1589499861'),
('66.220.149.15', '2020-05-15', 1, '1589499861'),
('31.13.127.18', '2020-05-15', 2, '1589499881'),
('31.13.127.8', '2020-05-15', 1, '1589499883'),
('66.249.71.148', '2020-05-15', 2, '1589538761'),
('173.252.95.16', '2020-05-15', 1, '1589500695'),
('173.252.95.5', '2020-05-15', 1, '1589500695'),
('31.13.115.9', '2020-05-15', 1, '1589507540'),
('31.13.115.116', '2020-05-15', 1, '1589507541'),
('31.13.115.20', '2020-05-15', 1, '1589507541'),
('69.171.251.20', '2020-05-15', 1, '1589507755'),
('69.171.251.24', '2020-05-15', 1, '1589507757'),
('173.252.95.2', '2020-05-15', 1, '1589508557'),
('173.252.95.13', '2020-05-15', 1, '1589508557'),
('66.220.149.9', '2020-05-15', 2, '1589509367'),
('69.171.251.12', '2020-05-15', 1, '1589510029'),
('104.245.35.26', '2020-05-15', 1, '1589511730'),
('182.1.46.223', '2020-05-15', 1, '1589511793'),
('182.1.44.19', '2020-05-15', 2, '1589511882'),
('31.13.103.119', '2020-05-15', 1, '1589515406'),
('173.252.127.28', '2020-05-15', 1, '1589516125'),
('173.252.79.116', '2020-05-15', 1, '1589516570'),
('31.13.103.11', '2020-05-15', 1, '1589516993'),
('31.13.103.22', '2020-05-15', 1, '1589517330'),
('31.13.103.116', '2020-05-15', 1, '1589517330'),
('31.13.103.2', '2020-05-15', 1, '1589517440'),
('31.13.103.4', '2020-05-15', 2, '1589551196'),
('31.13.103.9', '2020-05-15', 1, '1589517546'),
('31.13.103.20', '2020-05-15', 1, '1589517779'),
('31.13.103.12', '2020-05-15', 1, '1589517798'),
('173.252.79.19', '2020-05-15', 1, '1589517907'),
('173.252.127.5', '2020-05-15', 1, '1589517909'),
('173.252.127.23', '2020-05-15', 1, '1589517917'),
('173.252.79.119', '2020-05-15', 1, '1589517921'),
('173.252.111.18', '2020-05-15', 2, '1589527271'),
('173.252.111.111', '2020-05-15', 1, '1589518220'),
('173.252.87.4', '2020-05-15', 1, '1589520796'),
('173.252.111.119', '2020-05-15', 1, '1589524989'),
('173.252.79.11', '2020-05-15', 1, '1589525205'),
('173.252.83.120', '2020-05-15', 1, '1589525554'),
('173.252.83.113', '2020-05-15', 1, '1589525555'),
('173.252.87.2', '2020-05-15', 1, '1589526332'),
('173.252.87.112', '2020-05-15', 1, '1589526332'),
('173.252.111.15', '2020-05-15', 1, '1589526853'),
('173.252.111.24', '2020-05-15', 1, '1589526862'),
('173.252.87.111', '2020-05-15', 1, '1589527668'),
('173.252.83.116', '2020-05-15', 1, '1589527668'),
('69.171.251.111', '2020-05-15', 1, '1589530049'),
('31.13.115.10', '2020-05-15', 1, '1589534319'),
('31.13.115.17', '2020-05-15', 1, '1589534320'),
('31.13.115.21', '2020-05-15', 3, '1589534324'),
('31.13.115.5', '2020-05-15', 1, '1589534322'),
('66.249.71.152', '2020-05-15', 2, '1589544913'),
('66.220.149.27', '2020-05-15', 1, '1589535416'),
('66.220.149.30', '2020-05-15', 1, '1589535419'),
('167.71.163.7', '2020-05-15', 1, '1589536502'),
('173.252.127.8', '2020-05-15', 1, '1589537561'),
('173.252.127.26', '2020-05-15', 1, '1589537576'),
('31.13.127.6', '2020-05-15', 1, '1589541663'),
('31.13.115.19', '2020-05-15', 1, '1589546262'),
('31.13.103.112', '2020-05-15', 1, '1589546503'),
('69.171.251.15', '2020-05-15', 1, '1589546737'),
('173.252.83.5', '2020-05-15', 1, '1589550088'),
('31.13.127.119', '2020-05-15', 1, '1589556638'),
('173.252.87.22', '2020-05-15', 1, '1589558201'),
('34.250.9.32', '2020-05-15', 2, '1589559390'),
('3.80.26.90', '2020-05-15', 2, '1589559578'),
('173.252.87.5', '2020-05-16', 1, '1589563709'),
('173.252.87.2', '2020-05-16', 1, '1589563711'),
('173.252.79.19', '2020-05-16', 1, '1589564248'),
('173.252.79.7', '2020-05-16', 1, '1589566120'),
('173.252.79.120', '2020-05-16', 1, '1589566120'),
('31.13.127.111', '2020-05-16', 1, '1589567298'),
('173.252.127.26', '2020-05-16', 2, '1589599130'),
('173.252.107.119', '2020-05-16', 1, '1589567690'),
('173.252.107.117', '2020-05-16', 1, '1589567690'),
('31.13.115.24', '2020-05-16', 1, '1589567727'),
('173.252.95.15', '2020-05-16', 1, '1589569421'),
('173.252.87.11', '2020-05-16', 1, '1589572042'),
('173.252.83.19', '2020-05-16', 1, '1589573464'),
('13.52.177.50', '2020-05-16', 1, '1589573650'),
('173.252.87.7', '2020-05-16', 1, '1589574253'),
('173.252.87.9', '2020-05-16', 2, '1589632353'),
('173.252.127.21', '2020-05-16', 1, '1589575324'),
('173.252.127.118', '2020-05-16', 1, '1589577704'),
('173.252.107.118', '2020-05-16', 1, '1589579138'),
('173.252.83.18', '2020-05-16', 1, '1589580452'),
('173.252.127.8', '2020-05-16', 1, '1589580477'),
('69.171.251.21', '2020-05-16', 1, '1589582293'),
('69.171.251.116', '2020-05-16', 1, '1589586300'),
('114.5.214.104', '2020-05-16', 13, '1589591699'),
('173.252.95.6', '2020-05-16', 1, '1589588479'),
('173.252.95.28', '2020-05-16', 1, '1589588535'),
('173.252.95.118', '2020-05-16', 1, '1589588548'),
('173.252.95.19', '2020-05-16', 1, '1589588552'),
('173.252.127.6', '2020-05-16', 2, '1589612400'),
('173.252.107.12', '2020-05-16', 2, '1589599587'),
('173.252.127.4', '2020-05-16', 1, '1589589337'),
('173.252.111.5', '2020-05-16', 1, '1589589968'),
('173.252.111.113', '2020-05-16', 1, '1589590111'),
('114.125.40.173', '2020-05-16', 16, '1589591512'),
('104.161.92.2', '2020-05-16', 6, '1589620952'),
('173.252.111.120', '2020-05-16', 1, '1589590790'),
('114.125.56.73', '2020-05-16', 12, '1589599034'),
('173.252.111.17', '2020-05-16', 1, '1589591080'),
('173.252.95.34', '2020-05-16', 1, '1589591807'),
('173.252.95.5', '2020-05-16', 1, '1589595426'),
('173.252.79.16', '2020-05-16', 2, '1589599159'),
('173.252.127.28', '2020-05-16', 1, '1589599229'),
('36.85.223.76', '2020-05-16', 1, '1589601116'),
('173.252.79.4', '2020-05-16', 1, '1589602932'),
('111.94.40.118', '2020-05-16', 7, '1589627389'),
('173.252.95.3', '2020-05-16', 1, '1589604403'),
('114.125.210.89', '2020-05-16', 1, '1589605530'),
('66.220.149.112', '2020-05-16', 1, '1589606703'),
('66.220.149.10', '2020-05-16', 1, '1589606706'),
('66.220.149.17', '2020-05-16', 2, '1589615268'),
('66.220.149.5', '2020-05-16', 2, '1589615269'),
('66.220.149.1', '2020-05-16', 1, '1589607585'),
('66.220.149.120', '2020-05-16', 1, '1589607597'),
('173.252.111.118', '2020-05-16', 1, '1589611166'),
('173.252.111.119', '2020-05-16', 1, '1589612352'),
('173.252.111.23', '2020-05-16', 1, '1589612355'),
('173.252.83.21', '2020-05-16', 1, '1589613145'),
('173.252.83.113', '2020-05-16', 1, '1589613145'),
('114.125.41.251', '2020-05-16', 5, '1589625866'),
('114.125.41.237', '2020-05-16', 5, '1589625890'),
('66.220.149.20', '2020-05-16', 1, '1589615269'),
('66.220.149.116', '2020-05-16', 1, '1589615338'),
('66.220.149.27', '2020-05-16', 1, '1589615338'),
('66.220.149.9', '2020-05-16', 1, '1589615338'),
('66.220.149.29', '2020-05-16', 2, '1589615431'),
('66.220.149.19', '2020-05-16', 1, '1589615431'),
('173.252.95.119', '2020-05-16', 1, '1589622727'),
('173.252.95.20', '2020-05-16', 1, '1589622728'),
('69.171.251.26', '2020-05-16', 1, '1589622807'),
('173.252.87.16', '2020-05-16', 1, '1589622810'),
('66.220.149.3', '2020-05-16', 1, '1589622988'),
('31.13.127.21', '2020-05-16', 1, '1589625306'),
('147.92.137.162', '2020-05-16', 1, '1589627386'),
('147.92.137.184', '2020-05-16', 1, '1589627388'),
('50.116.16.218', '2020-05-16', 1, '1589632458'),
('103.130.164.92', '2020-05-16', 1, '1589632706'),
('66.220.149.2', '2020-05-16', 1, '1589632707'),
('173.252.111.24', '2020-05-16', 1, '1589632718'),
('173.252.111.4', '2020-05-16', 1, '1589632718'),
('31.13.115.9', '2020-05-16', 1, '1589641097'),
('31.13.115.8', '2020-05-16', 1, '1589641097'),
('185.210.218.100', '2020-05-16', 1, '1589643376'),
('173.252.127.113', '2020-05-17', 1, '1589649298'),
('114.124.161.154', '2020-05-17', 1, '1589657458'),
('66.220.149.4', '2020-05-17', 2, '1589658859'),
('173.252.95.117', '2020-05-17', 1, '1589658601'),
('173.252.111.118', '2020-05-17', 1, '1589658646'),
('66.220.149.27', '2020-05-17', 2, '1589658864'),
('66.220.149.26', '2020-05-17', 1, '1589658860'),
('69.171.251.1', '2020-05-17', 1, '1589659048'),
('173.252.107.1', '2020-05-17', 1, '1589659660'),
('173.252.95.11', '2020-05-17', 1, '1589667180'),
('31.13.115.116', '2020-05-17', 1, '1589671673'),
('114.125.40.157', '2020-05-17', 4, '1589677908'),
('114.125.40.245', '2020-05-17', 6, '1589678911'),
('104.161.92.2', '2020-05-17', 4, '1589683550'),
('114.125.40.177', '2020-05-17', 8, '1589677430'),
('173.252.83.17', '2020-05-17', 2, '1589687032'),
('66.220.149.7', '2020-05-17', 1, '1589674610'),
('173.252.83.13', '2020-05-17', 1, '1589674612'),
('185.210.218.100', '2020-05-17', 1, '1589674928'),
('46.45.185.165', '2020-05-17', 1, '1589675512'),
('114.125.40.65', '2020-05-17', 4, '1589678916'),
('114.125.40.137', '2020-05-17', 7, '1589678211'),
('173.252.83.112', '2020-05-17', 2, '1589677456'),
('173.252.83.9', '2020-05-17', 1, '1589677459'),
('173.252.83.3', '2020-05-17', 1, '1589677466'),
('114.125.56.193', '2020-05-17', 2, '1589677557'),
('173.252.107.14', '2020-05-17', 1, '1589679001'),
('114.125.41.147', '2020-05-17', 82, '1589714103'),
('66.220.149.1', '2020-05-17', 1, '1589684403'),
('66.220.149.25', '2020-05-17', 2, '1589687052'),
('66.220.149.116', '2020-05-17', 1, '1589684417'),
('66.220.149.119', '2020-05-17', 1, '1589684463'),
('66.220.149.111', '2020-05-17', 1, '1589684467'),
('202.67.42.8', '2020-05-17', 3, '1589687064'),
('66.220.149.10', '2020-05-17', 1, '1589687044'),
('31.13.115.14', '2020-05-17', 1, '1589687061'),
('66.220.149.15', '2020-05-17', 1, '1589689270'),
('173.252.127.22', '2020-05-17', 1, '1589689881'),
('165.227.51.34', '2020-05-17', 1, '1589690192'),
('147.92.137.164', '2020-05-17', 1, '1589691997'),
('147.92.137.176', '2020-05-17', 1, '1589691999'),
('45.33.20.249', '2020-05-17', 1, '1589693550'),
('173.252.107.21', '2020-05-17', 1, '1589697976'),
('111.94.40.118', '2020-05-17', 1, '1589698154'),
('202.67.42.21', '2020-05-17', 4, '1589701247'),
('173.252.127.4', '2020-05-17', 1, '1589705434'),
('31.13.127.19', '2020-05-17', 1, '1589705845'),
('66.249.71.148', '2020-05-17', 4, '1589725999'),
('66.249.71.152', '2020-05-17', 1, '1589710329'),
('66.249.71.150', '2020-05-17', 3, '1589722208'),
('66.249.79.130', '2020-05-17', 2, '1589729647'),
('173.252.87.16', '2020-05-17', 1, '1589715229'),
('147.92.137.147', '2020-05-17', 1, '1589718149'),
('147.92.137.146', '2020-05-17', 1, '1589718151'),
('173.252.87.14', '2020-05-17', 1, '1589719976'),
('173.252.79.113', '2020-05-17', 1, '1589722637'),
('173.252.83.20', '2020-05-17', 1, '1589722937'),
('173.252.127.111', '2020-05-17', 1, '1589731414'),
('31.13.127.111', '2020-05-17', 1, '1589732090'),
('31.13.127.116', '2020-05-17', 1, '1589732096'),
('66.220.149.117', '2020-05-18', 1, '1589739218'),
('66.249.71.150', '2020-05-18', 5, '1589816707'),
('173.252.95.117', '2020-05-18', 1, '1589741543'),
('31.13.103.22', '2020-05-18', 1, '1589748663'),
('66.249.71.148', '2020-05-18', 2, '1589800677'),
('66.220.149.119', '2020-05-18', 1, '1589753035'),
('173.252.107.112', '2020-05-18', 1, '1589759566'),
('66.249.79.130', '2020-05-18', 1, '1589759980'),
('66.249.79.128', '2020-05-18', 1, '1589762199'),
('182.1.21.230', '2020-05-18', 6, '1589791383'),
('147.92.137.188', '2020-05-18', 1, '1589766541'),
('147.92.137.176', '2020-05-18', 1, '1589766544'),
('202.67.42.15', '2020-05-18', 1, '1589767566'),
('173.252.95.21', '2020-05-18', 1, '1589768631'),
('139.195.73.63', '2020-05-18', 15, '1589797595'),
('66.102.8.163', '2020-05-18', 1, '1589770942'),
('66.102.8.167', '2020-05-18', 1, '1589771111'),
('173.252.87.2', '2020-05-18', 1, '1589771671'),
('104.161.92.2', '2020-05-18', 1, '1589772473'),
('46.45.185.177', '2020-05-18', 1, '1589772517'),
('69.171.251.22', '2020-05-18', 1, '1589779732'),
('180.249.200.208', '2020-05-18', 14, '1589784765'),
('66.220.149.14', '2020-05-18', 2, '1589784448'),
('173.252.87.22', '2020-05-18', 1, '1589784452'),
('66.220.149.28', '2020-05-18', 2, '1589784478'),
('66.220.149.120', '2020-05-18', 1, '1589784508'),
('66.220.149.112', '2020-05-18', 1, '1589784511'),
('173.252.111.18', '2020-05-18', 1, '1589786977'),
('66.220.149.19', '2020-05-18', 1, '1589787423'),
('66.220.149.18', '2020-05-18', 1, '1589787426'),
('115.178.250.242', '2020-05-18', 1, '1589792259'),
('173.252.111.15', '2020-05-18', 1, '1589794607'),
('69.171.251.2', '2020-05-18', 1, '1589795654'),
('66.249.71.152', '2020-05-18', 3, '1589815993'),
('173.252.127.17', '2020-05-18', 1, '1589803413'),
('31.13.103.119', '2020-05-18', 1, '1589803613'),
('173.252.95.33', '2020-05-18', 1, '1589811677'),
('173.252.87.120', '2020-05-18', 1, '1589812413'),
('173.252.107.117', '2020-05-18', 2, '1589819652'),
('38.99.62.94', '2020-05-18', 1, '1589819998'),
('45.79.38.68', '2020-05-18', 1, '1589820459'),
('103.51.103.3', '2020-05-19', 1, '1589824103'),
('173.252.79.13', '2020-05-19', 1, '1589827310'),
('68.183.241.134', '2020-05-19', 2, '1589828264'),
('194.72.238.97', '2020-05-19', 3, '1589828313'),
('198.55.125.219', '2020-05-19', 2, '1589828265'),
('5.62.20.21', '2020-05-19', 1, '1589828267'),
('66.249.71.152', '2020-05-19', 1, '1589834223'),
('66.249.71.150', '2020-05-19', 1, '1589834225'),
('66.249.75.15', '2020-05-19', 1, '1589834228'),
('66.249.71.148', '2020-05-19', 3, '1589867525'),
('173.252.111.22', '2020-05-19', 1, '1589834666'),
('31.13.127.116', '2020-05-19', 1, '1589843990'),
('173.252.95.25', '2020-05-19', 1, '1589848976'),
('173.252.95.32', '2020-05-19', 1, '1589848976'),
('31.13.127.12', '2020-05-19', 1, '1589853691'),
('95.217.104.173', '2020-05-19', 1, '1589854697'),
('66.249.71.15', '2020-05-19', 4, '1589856475'),
('66.249.71.16', '2020-05-19', 2, '1589856075'),
('66.249.75.13', '2020-05-19', 2, '1589856234'),
('66.249.71.14', '2020-05-19', 1, '1589856385'),
('173.252.111.116', '2020-05-19', 1, '1589863366'),
('45.79.38.68', '2020-05-19', 1, '1589863515'),
('69.171.251.3', '2020-05-19', 1, '1589863789'),
('66.220.149.8', '2020-05-19', 1, '1589863789'),
('66.220.149.111', '2020-05-19', 1, '1589863790'),
('66.220.149.14', '2020-05-19', 2, '1589890827'),
('66.220.149.3', '2020-05-19', 1, '1589863790'),
('173.252.127.6', '2020-05-19', 1, '1589864747'),
('173.252.95.29', '2020-05-19', 2, '1589873360'),
('46.45.185.177', '2020-05-19', 1, '1589870773'),
('66.220.149.13', '2020-05-19', 1, '1589872914'),
('66.220.149.18', '2020-05-19', 3, '1589872916'),
('66.220.149.2', '2020-05-19', 1, '1589872914'),
('66.220.149.26', '2020-05-19', 2, '1589872916'),
('66.220.149.9', '2020-05-19', 1, '1589872916'),
('173.252.107.6', '2020-05-19', 1, '1589872916'),
('66.220.149.116', '2020-05-19', 2, '1589906031'),
('173.252.95.13', '2020-05-19', 1, '1589872916'),
('66.220.149.120', '2020-05-19', 1, '1589872917'),
('173.252.83.112', '2020-05-19', 1, '1589872917'),
('173.252.95.30', '2020-05-19', 1, '1589873356'),
('66.220.149.4', '2020-05-19', 1, '1589880129'),
('173.252.127.17', '2020-05-19', 1, '1589880280'),
('173.252.127.19', '2020-05-19', 1, '1589880284'),
('182.1.62.78', '2020-05-19', 13, '1589885753'),
('173.252.127.111', '2020-05-19', 1, '1589882611'),
('182.253.121.10', '2020-05-19', 17, '1589884033'),
('104.161.92.2', '2020-05-19', 3, '1589882746'),
('173.252.83.111', '2020-05-19', 1, '1589883913'),
('173.252.83.15', '2020-05-19', 1, '1589883916'),
('173.252.83.4', '2020-05-19', 1, '1589883923'),
('173.252.83.20', '2020-05-19', 1, '1589884020'),
('31.13.127.15', '2020-05-19', 1, '1589887598'),
('173.252.127.25', '2020-05-19', 1, '1589893256'),
('173.252.127.113', '2020-05-19', 2, '1589893676'),
('173.252.95.17', '2020-05-19', 1, '1589898132'),
('173.252.111.4', '2020-05-19', 1, '1589898149'),
('173.252.95.24', '2020-05-19', 1, '1589903610'),
('173.252.83.113', '2020-05-19', 1, '1589905843'),
('13.52.177.50', '2020-05-20', 1, '1589910467'),
('173.252.87.9', '2020-05-20', 1, '1589913274'),
('66.249.75.16', '2020-05-20', 1, '1589915873'),
('66.249.75.15', '2020-05-20', 2, '1589945865'),
('69.171.251.28', '2020-05-20', 1, '1589919068'),
('173.252.79.9', '2020-05-20', 1, '1589922340'),
('66.220.149.6', '2020-05-20', 1, '1589924209'),
('173.252.83.6', '2020-05-20', 2, '1589968015'),
('173.252.111.113', '2020-05-20', 1, '1589927205'),
('178.16.129.27', '2020-05-20', 1, '1589932894'),
('66.220.149.17', '2020-05-20', 1, '1589934551'),
('66.220.149.12', '2020-05-20', 1, '1589934618'),
('173.252.107.5', '2020-05-20', 1, '1589941869'),
('139.195.74.142', '2020-05-20', 89, '1589968875'),
('66.249.75.13', '2020-05-20', 1, '1589945868'),
('66.220.149.4', '2020-05-20', 1, '1589947826'),
('66.220.149.3', '2020-05-20', 1, '1589947834'),
('66.220.149.1', '2020-05-20', 1, '1589947849'),
('173.252.95.22', '2020-05-20', 1, '1589948432'),
('173.252.83.7', '2020-05-20', 2, '1589975225'),
('66.249.71.150', '2020-05-20', 3, '1589948866'),
('66.220.149.9', '2020-05-20', 1, '1589949100'),
('66.220.149.32', '2020-05-20', 1, '1589949103'),
('173.252.107.8', '2020-05-20', 1, '1589949430'),
('103.134.93.50', '2020-05-20', 5, '1589950703'),
('66.102.8.167', '2020-05-20', 1, '1589949785'),
('203.144.68.164', '2020-05-20', 1, '1589950706'),
('66.249.71.148', '2020-05-20', 1, '1589950970'),
('173.252.83.116', '2020-05-20', 1, '1589951344'),
('173.252.127.6', '2020-05-20', 1, '1589957147'),
('173.252.127.16', '2020-05-20', 1, '1589958049'),
('173.252.79.14', '2020-05-20', 1, '1589961719'),
('182.1.27.151', '2020-05-20', 7, '1589962852'),
('104.161.92.2', '2020-05-20', 2, '1589962634'),
('69.171.251.13', '2020-05-20', 1, '1589962695'),
('66.220.149.14', '2020-05-20', 1, '1589963664'),
('66.220.149.19', '2020-05-20', 1, '1589963666'),
('66.220.149.5', '2020-05-20', 1, '1589964130'),
('66.220.149.18', '2020-05-20', 1, '1589964160'),
('66.220.149.15', '2020-05-20', 1, '1589964163'),
('66.220.149.24', '2020-05-20', 1, '1589965330'),
('66.220.149.16', '2020-05-20', 1, '1589966367'),
('173.252.95.32', '2020-05-20', 1, '1589968040'),
('173.252.83.3', '2020-05-20', 1, '1589971312'),
('173.252.83.8', '2020-05-20', 1, '1589977017'),
('173.252.83.117', '2020-05-20', 1, '1589977043'),
('34.250.9.32', '2020-05-20', 1, '1589980932'),
('34.250.9.32', '2020-05-20', 1, '1589980932'),
('173.252.87.16', '2020-05-20', 1, '1589984529'),
('173.252.87.7', '2020-05-20', 1, '1589984531'),
('69.171.251.7', '2020-05-20', 1, '1589987643'),
('31.13.103.20', '2020-05-21', 1, '1589994346'),
('69.171.251.18', '2020-05-21', 1, '1590006121'),
('103.134.93.50', '2020-05-21', 19, '1590007997'),
('66.220.149.13', '2020-05-21', 1, '1590007665'),
('66.220.149.9', '2020-05-21', 1, '1590007668'),
('66.249.71.15', '2020-05-21', 1, '1590012237'),
('66.249.75.13', '2020-05-21', 1, '1590012239'),
('66.220.149.6', '2020-05-21', 1, '1590012696'),
('173.252.83.21', '2020-05-21', 1, '1590014491'),
('173.252.83.112', '2020-05-21', 1, '1590014494'),
('173.252.83.12', '2020-05-21', 1, '1590014553'),
('173.252.83.24', '2020-05-21', 1, '1590014560'),
('66.249.71.148', '2020-05-21', 2, '1590070588'),
('1.179.245.16', '2020-05-21', 1, '1590017617'),
('66.102.6.144', '2020-05-21', 1, '1590022470'),
('69.171.251.19', '2020-05-21', 1, '1590025022'),
('173.252.79.116', '2020-05-21', 1, '1590026677'),
('173.252.79.5', '2020-05-21', 1, '1590027318'),
('173.252.83.13', '2020-05-21', 1, '1590033545'),
('31.13.103.5', '2020-05-21', 1, '1590033556'),
('46.45.185.176', '2020-05-21', 1, '1590033980'),
('36.90.153.119', '2020-05-21', 2, '1590034758'),
('31.13.127.1', '2020-05-21', 1, '1590041082'),
('69.171.251.24', '2020-05-21', 1, '1590042983'),
('167.99.102.248', '2020-05-21', 1, '1590045456'),
('173.252.95.20', '2020-05-21', 1, '1590046857'),
('173.252.95.33', '2020-05-21', 1, '1590046858'),
('167.172.32.151', '2020-05-21', 1, '1590047273'),
('69.171.251.120', '2020-05-21', 1, '1590050713'),
('222.254.28.175', '2020-05-21', 1, '1590050832'),
('173.252.95.117', '2020-05-21', 1, '1590054559'),
('173.252.79.10', '2020-05-21', 1, '1590058193'),
('69.171.251.6', '2020-05-21', 1, '1590058273'),
('69.171.251.112', '2020-05-21', 1, '1590059134'),
('173.252.83.116', '2020-05-21', 1, '1590066919'),
('31.13.127.22', '2020-05-21', 1, '1590067135'),
('66.249.71.150', '2020-05-21', 1, '1590070638'),
('66.249.75.15', '2020-05-21', 1, '1590070693'),
('115.79.196.17', '2020-05-21', 1, '1590071537'),
('14.207.201.6', '2020-05-21', 1, '1590071551'),
('110.77.171.155', '2020-05-21', 1, '1590071569'),
('173.252.83.19', '2020-05-21', 1, '1590072563'),
('173.252.111.111', '2020-05-21', 1, '1590074211'),
('173.252.83.23', '2020-05-21', 1, '1590077574'),
('173.252.79.19', '2020-05-21', 1, '1590079534'),
('173.252.127.20', '2020-05-21', 1, '1590079536'),
('69.171.251.15', '2020-05-21', 1, '1590080212'),
('69.171.251.13', '2020-05-21', 1, '1590080212'),
('46.45.185.163', '2020-05-22', 1, '1590080800'),
('173.252.87.13', '2020-05-22', 1, '1590084610'),
('173.252.83.112', '2020-05-22', 1, '1590087595'),
('66.220.149.32', '2020-05-22', 1, '1590091538'),
('66.220.149.25', '2020-05-22', 1, '1590091540'),
('31.13.127.4', '2020-05-22', 1, '1590094876'),
('66.249.71.148', '2020-05-22', 2, '1590101425'),
('69.171.251.33', '2020-05-22', 1, '1590095706'),
('31.13.127.111', '2020-05-22', 1, '1590096339'),
('31.13.127.23', '2020-05-22', 2, '1590098217'),
('66.249.71.152', '2020-05-22', 1, '1590101424'),
('173.252.95.20', '2020-05-22', 1, '1590102736'),
('173.252.95.25', '2020-05-22', 1, '1590102736'),
('69.171.251.15', '2020-05-22', 1, '1590106555'),
('173.252.87.22', '2020-05-22', 1, '1590108699'),
('173.252.107.112', '2020-05-22', 1, '1590110460'),
('173.252.127.1', '2020-05-22', 1, '1590111178'),
('173.252.87.111', '2020-05-22', 1, '1590111573'),
('173.252.87.18', '2020-05-22', 2, '1590115541'),
('173.252.87.9', '2020-05-22', 1, '1590115542'),
('31.13.103.14', '2020-05-22', 1, '1590115583'),
('116.206.15.25', '2020-05-22', 1, '1590116730'),
('173.252.83.6', '2020-05-22', 1, '1590123265'),
('66.220.149.26', '2020-05-22', 1, '1590124947'),
('161.35.216.192', '2020-05-22', 1, '1590130572'),
('66.220.149.14', '2020-05-22', 1, '1590131864'),
('66.220.149.4', '2020-05-22', 1, '1590131871'),
('31.13.127.20', '2020-05-22', 1, '1590134339'),
('31.13.127.12', '2020-05-22', 1, '1590134339'),
('31.13.127.18', '2020-05-22', 1, '1590134339'),
('31.13.127.14', '2020-05-22', 1, '1590134339'),
('31.13.115.17', '2020-05-22', 1, '1590140601'),
('66.220.149.13', '2020-05-22', 2, '1590152456'),
('173.252.111.5', '2020-05-22', 1, '1590148447'),
('66.220.149.117', '2020-05-22', 1, '1590152569'),
('173.252.95.2', '2020-05-22', 1, '1590154010'),
('173.252.87.119', '2020-05-22', 1, '1590156155'),
('173.252.87.3', '2020-05-22', 1, '1590162941'),
('173.252.87.118', '2020-05-22', 1, '1590162942'),
('31.13.115.20', '2020-05-22', 1, '1590164928'),
('31.13.115.17', '2020-05-23', 1, '1590169712'),
('52.42.44.14', '2020-05-23', 1, '1590177130'),
('52.42.44.14', '2020-05-23', 1, '1590177130'),
('173.252.87.24', '2020-05-23', 1, '1590177938'),
('66.220.149.11', '2020-05-23', 1, '1590179733'),
('66.220.149.30', '2020-05-23', 1, '1590179733'),
('66.249.71.150', '2020-05-23', 3, '1590189182'),
('66.249.71.148', '2020-05-23', 2, '1590198464'),
('69.171.251.17', '2020-05-23', 1, '1590191534'),
('104.161.92.2', '2020-05-23', 5, '1590196025'),
('31.13.127.16', '2020-05-23', 1, '1590192612'),
('173.252.79.21', '2020-05-23', 1, '1590193834'),
('182.1.61.28', '2020-05-23', 4, '1590210585'),
('31.13.103.21', '2020-05-23', 1, '1590204597'),
('118.99.83.57', '2020-05-23', 2, '1590206649'),
('173.252.87.5', '2020-05-23', 1, '1590210118'),
('173.252.87.111', '2020-05-23', 1, '1590210121'),
('114.5.111.99', '2020-05-23', 9, '1590210851'),
('173.252.83.13', '2020-05-23', 1, '1590210528'),
('173.252.83.18', '2020-05-23', 1, '1590210531'),
('173.252.83.21', '2020-05-23', 1, '1590210536'),
('31.13.127.111', '2020-05-23', 1, '1590211329'),
('139.195.74.142', '2020-05-23', 1, '1590216419'),
('115.178.254.227', '2020-05-23', 8, '1590220147'),
('173.252.83.17', '2020-05-23', 1, '1590219294'),
('173.252.83.119', '2020-05-23', 1, '1590219356'),
('173.252.83.116', '2020-05-23', 1, '1590219359'),
('173.252.83.118', '2020-05-23', 1, '1590219970'),
('173.252.79.16', '2020-05-23', 1, '1590226552'),
('66.220.149.14', '2020-05-23', 1, '1590233018'),
('31.13.103.7', '2020-05-23', 1, '1590238031'),
('31.13.115.14', '2020-05-23', 1, '1590239876'),
('173.252.87.113', '2020-05-23', 1, '1590242671'),
('46.45.185.187', '2020-05-23', 1, '1590244283'),
('66.220.149.2', '2020-05-23', 1, '1590246141'),
('66.249.75.16', '2020-05-23', 1, '1590247194'),
('66.220.149.120', '2020-05-23', 1, '1590249600'),
('182.253.121.6', '2020-05-23', 1, '1590250224'),
('141.0.9.61', '2020-05-23', 3, '1590250371'),
('125.166.149.144', '2020-05-23', 3, '1590250861'),
('66.220.149.28', '2020-05-23', 1, '1590252868'),
('185.123.102.57', '2020-05-24', 3, '1590256354'),
('180.249.201.200', '2020-05-24', 33, '1590256203'),
('66.220.149.28', '2020-05-24', 1, '1590255291'),
('66.220.149.25', '2020-05-24', 1, '1590255295'),
('31.13.103.14', '2020-05-24', 1, '1590257054'),
('66.249.71.152', '2020-05-24', 6, '1590334345'),
('66.249.71.148', '2020-05-24', 7, '1590334360'),
('173.252.87.12', '2020-05-24', 1, '1590260754'),
('173.252.83.7', '2020-05-24', 1, '1590262548'),
('173.252.111.113', '2020-05-24', 1, '1590264788'),
('66.249.71.150', '2020-05-24', 2, '1590294051'),
('125.166.149.144', '2020-05-24', 1, '1590278956'),
('52.89.139.250', '2020-05-24', 1, '1590280657'),
('173.252.95.8', '2020-05-24', 1, '1590284692'),
('173.252.95.118', '2020-05-24', 1, '1590284694'),
('46.45.185.165', '2020-05-24', 1, '1590285032'),
('66.249.75.15', '2020-05-24', 1, '1590286356'),
('31.13.115.11', '2020-05-24', 1, '1590287752'),
('66.220.149.2', '2020-05-24', 1, '1590299088'),
('66.220.149.7', '2020-05-24', 1, '1590299088'),
('54.202.16.233', '2020-05-24', 1, '1590306578'),
('69.171.251.10', '2020-05-24', 1, '1590307269'),
('173.252.95.6', '2020-05-24', 1, '1590307272'),
('69.171.251.16', '2020-05-24', 1, '1590307283'),
('173.252.87.112', '2020-05-24', 1, '1590312594'),
('173.252.87.13', '2020-05-24', 1, '1590312594'),
('173.252.79.21', '2020-05-24', 1, '1590312595'),
('173.252.79.11', '2020-05-24', 1, '1590312596'),
('38.99.62.94', '2020-05-24', 1, '1590313958'),
('31.13.127.4', '2020-05-24', 1, '1590314471'),
('31.13.127.10', '2020-05-24', 1, '1590327370'),
('34.250.9.32', '2020-05-24', 2, '1590334889'),
('65.155.30.101', '2020-05-25', 1, '1590342220'),
('31.13.127.13', '2020-05-25', 1, '1590342794'),
('31.13.127.2', '2020-05-25', 1, '1590351057'),
('66.249.75.16', '2020-05-25', 1, '1590367467'),
('66.249.71.150', '2020-05-25', 2, '1590413252'),
('173.252.79.23', '2020-05-25', 1, '1590370624'),
('66.102.6.141', '2020-05-25', 1, '1590377203'),
('66.220.149.24', '2020-05-25', 1, '1590380019'),
('104.161.92.2', '2020-05-25', 1, '1590382158'),
('173.252.95.24', '2020-05-25', 1, '1590383347'),
('46.45.185.179', '2020-05-25', 1, '1590383499'),
('66.220.149.1', '2020-05-25', 2, '1590400299'),
('173.252.95.6', '2020-05-25', 1, '1590388113'),
('173.252.95.21', '2020-05-25', 1, '1590388117'),
('31.13.103.14', '2020-05-25', 1, '1590390853'),
('31.13.127.3', '2020-05-25', 1, '1590391180'),
('31.13.127.112', '2020-05-25', 1, '1590392895'),
('182.1.34.132', '2020-05-25', 2, '1590399912'),
('66.220.149.113', '2020-05-25', 1, '1590400299'),
('173.252.87.120', '2020-05-25', 1, '1590404842'),
('173.252.95.8', '2020-05-25', 1, '1590405176'),
('173.252.95.14', '2020-05-25', 1, '1590405177'),
('173.252.95.119', '2020-05-25', 1, '1590405185'),
('173.252.95.120', '2020-05-25', 1, '1590405185'),
('66.220.149.117', '2020-05-25', 1, '1590407950'),
('66.220.149.4', '2020-05-25', 1, '1590407953'),
('69.171.251.9', '2020-05-25', 1, '1590413392'),
('173.252.111.12', '2020-05-25', 1, '1590413394'),
('125.166.149.144', '2020-05-25', 2, '1590419737'),
('139.195.85.165', '2020-05-25', 5, '1590419992'),
('31.13.127.116', '2020-05-25', 1, '1590424823'),
('34.220.140.46', '2020-05-25', 2, '1590425227'),
('31.13.127.111', '2020-05-26', 1, '1590442316'),
('173.252.83.5', '2020-05-26', 1, '1590442961'),
('173.252.111.9', '2020-05-26', 1, '1590444052'),
('66.220.149.119', '2020-05-26', 1, '1590452139'),
('66.220.149.112', '2020-05-26', 1, '1590452139'),
('31.13.127.6', '2020-05-26', 1, '1590452168'),
('66.249.71.150', '2020-05-26', 3, '1590511659'),
('66.249.71.148', '2020-05-26', 10, '1590467318'),
('139.195.85.165', '2020-05-26', 5, '1590462996'),
('66.249.71.152', '2020-05-26', 1, '1590462544'),
('66.249.75.13', '2020-05-26', 1, '1590462567'),
('125.166.149.144', '2020-05-26', 1, '1590465009'),
('66.220.149.116', '2020-05-26', 1, '1590467714'),
('69.171.251.117', '2020-05-26', 1, '1590477709'),
('69.171.251.2', '2020-05-26', 1, '1590477709'),
('173.252.111.113', '2020-05-26', 1, '1590479835'),
('46.45.185.170', '2020-05-26', 1, '1590482290'),
('66.220.149.7', '2020-05-26', 1, '1590488087'),
('31.13.127.11', '2020-05-26', 1, '1590492448'),
('173.252.79.119', '2020-05-26', 1, '1590493567'),
('66.220.149.4', '2020-05-26', 1, '1590495289'),
('173.252.87.116', '2020-05-26', 1, '1590496527'),
('173.252.87.22', '2020-05-26', 1, '1590496528'),
('65.155.30.101', '2020-05-26', 1, '1590498619'),
('34.220.118.133', '2020-05-26', 2, '1590500759'),
('69.171.251.14', '2020-05-26', 1, '1590508442'),
('69.171.251.18', '2020-05-26', 1, '1590508447'),
('31.13.127.15', '2020-05-26', 1, '1590509587'),
('188.166.68.57', '2020-05-27', 141, '1590513649'),
('173.252.87.8', '2020-05-27', 1, '1590521581'),
('173.252.87.18', '2020-05-27', 1, '1590522618'),
('173.252.83.1', '2020-05-27', 1, '1590534733'),
('173.252.83.2', '2020-05-27', 1, '1590534734'),
('173.252.79.13', '2020-05-27', 1, '1590534734'),
('173.252.79.9', '2020-05-27', 1, '1590534734'),
('104.161.92.2', '2020-05-27', 4, '1590538416'),
('114.125.27.37', '2020-05-27', 8, '1590540044'),
('112.215.240.204', '2020-05-27', 5, '1590543450'),
('66.220.149.18', '2020-05-27', 1, '1590543368'),
('66.220.149.31', '2020-05-27', 2, '1590562870'),
('173.252.95.112', '2020-05-27', 1, '1590543384'),
('173.252.87.20', '2020-05-27', 1, '1590547718'),
('202.67.42.29', '2020-05-27', 1, '1590552812'),
('139.195.85.165', '2020-05-27', 6, '1590563479'),
('173.252.87.4', '2020-05-27', 1, '1590561987'),
('173.252.87.2', '2020-05-27', 1, '1590561987'),
('66.220.149.2', '2020-05-27', 1, '1590562840'),
('66.220.149.117', '2020-05-27', 1, '1590562862'),
('66.220.149.11', '2020-05-27', 1, '1590562864'),
('66.220.149.12', '2020-05-27', 2, '1590563432'),
('66.220.149.10', '2020-05-27', 1, '1590563425'),
('31.13.127.2', '2020-05-27', 1, '1590564607'),
('69.171.251.25', '2020-05-27', 1, '1590568809'),
('31.13.103.18', '2020-05-27', 1, '1590572343'),
('34.223.91.243', '2020-05-27', 1, '1590573944'),
('173.252.95.6', '2020-05-27', 1, '1590575309'),
('173.252.95.22', '2020-05-27', 1, '1590575310'),
('114.125.41.76', '2020-05-27', 4, '1590582924'),
('36.80.208.188', '2020-05-27', 1, '1590581522'),
('31.13.127.120', '2020-05-27', 1, '1590581818'),
('31.13.127.19', '2020-05-27', 1, '1590582782'),
('31.13.127.6', '2020-05-27', 1, '1590582821'),
('31.13.127.16', '2020-05-27', 1, '1590582824'),
('173.252.111.11', '2020-05-27', 1, '1590583666'),
('31.13.115.113', '2020-05-27', 1, '1590584420'),
('46.45.185.183', '2020-05-27', 1, '1590585092'),
('173.252.127.9', '2020-05-27', 1, '1590585680'),
('173.252.87.10', '2020-05-28', 1, '1590603519'),
('173.252.95.26', '2020-05-28', 1, '1590603545'),
('173.252.95.16', '2020-05-28', 1, '1590603548'),
('95.217.104.173', '2020-05-28', 1, '1590608052'),
('114.125.12.228', '2020-05-28', 7, '1590628653'),
('104.161.92.2', '2020-05-28', 1, '1590627866'),
('31.13.127.120', '2020-05-28', 1, '1590635516'),
('23.250.23.227', '2020-05-28', 1, '1590641815'),
('66.220.149.9', '2020-05-28', 1, '1590648579'),
('173.252.87.113', '2020-05-28', 1, '1590653544'),
('66.220.149.31', '2020-05-28', 1, '1590653584'),
('173.252.111.119', '2020-05-28', 1, '1590657839'),
('104.219.54.207', '2020-05-28', 1, '1590660684'),
('115.178.251.81', '2020-05-28', 1, '1590672146'),
('173.252.79.18', '2020-05-28', 1, '1590675456'),
('46.45.185.175', '2020-05-28', 1, '1590680079'),
('66.220.149.22', '2020-05-28', 1, '1590682837'),
('173.252.95.20', '2020-05-29', 1, '1590688983'),
('66.220.149.29', '2020-05-29', 1, '1590690697'),
('104.161.92.2', '2020-05-29', 2, '1590710176'),
('114.125.24.31', '2020-05-29', 1, '1590710156'),
('::1', '2020-05-29', 76, '1590751556'),
('::1', '2020-05-30', 589, '1590832961'),
('127.0.0.1', '2020-05-30', 5, '1590799481'),
('114.125.20.178', '2020-05-30', 5, '1590833934'),
('114.125.7.82', '2020-05-30', 1, '1590833853'),
('66.249.79.193', '2020-05-30', 2, '1590850149'),
('139.195.85.165', '2020-05-30', 30, '1590855246'),
('66.220.149.10', '2020-05-30', 1, '1590838024'),
('66.220.149.23', '2020-05-30', 1, '1590838026'),
('66.220.149.13', '2020-05-30', 2, '1590838032'),
('66.220.149.29', '2020-05-30', 1, '1590838032'),
('66.220.149.112', '2020-05-30', 1, '1590838032'),
('66.249.79.199', '2020-05-30', 3, '1590856385'),
('66.249.79.215', '2020-05-30', 4, '1590846737'),
('66.249.79.217', '2020-05-30', 1, '1590841571'),
('66.249.79.196', '2020-05-30', 3, '1590854601'),
('80.211.174.81', '2020-05-30', 1, '1590847832'),
('212.252.83.166', '2020-05-30', 1, '1590848364'),
('139.59.136.64', '2020-05-30', 2, '1590850878'),
('68.183.82.201', '2020-05-30', 1, '1590848767'),
('114.79.19.161', '2020-05-30', 9, '1590849557'),
('173.252.79.21', '2020-05-30', 1, '1590849527'),
('173.252.79.18', '2020-05-30', 1, '1590849529'),
('173.252.79.116', '2020-05-30', 1, '1590849537'),
('66.220.149.5', '2020-05-30', 1, '1590849543'),
('35.211.35.136', '2020-05-30', 1, '1590851153'),
('23.237.4.26', '2020-05-30', 1, '1590851924'),
('66.249.79.196', '2020-05-31', 5, '1590890490'),
('34.223.103.226', '2020-05-31', 1, '1590858510'),
('165.22.206.82', '2020-05-31', 1, '1590858528'),
('197.210.227.88', '2020-05-31', 1, '1590859103'),
('66.220.149.1', '2020-05-31', 1, '1590859561'),
('51.218.122.115', '2020-05-31', 1, '1590860484'),
('66.249.79.193', '2020-05-31', 9, '1590921230'),
('66.249.79.199', '2020-05-31', 3, '1590912755'),
('67.23.166.213', '2020-05-31', 1, '1590870214'),
('182.1.54.114', '2020-05-31', 1, '1590877278'),
('182.1.33.219', '2020-05-31', 1, '1590877305'),
('194.187.251.175', '2020-05-31', 1, '1590878613'),
('103.139.113.34', '2020-05-31', 1, '1590883459'),
('81.4.216.64', '2020-05-31', 1, '1590884398'),
('23.237.4.26', '2020-05-31', 10, '1590931935'),
('216.244.66.199', '2020-05-31', 9, '1590932364'),
('112.215.172.245', '2020-05-31', 5, '1590898106'),
('139.195.85.165', '2020-05-31', 22, '1590933059'),
('72.13.62.43', '2020-05-31', 4, '1590899647'),
('131.220.6.152', '2020-05-31', 1, '1590904361'),
('2.95.159.157', '2020-05-31', 2, '1590911308'),
('144.202.4.59', '2020-05-31', 1, '1590919335'),
('36.81.215.103', '2020-05-31', 7, '1590920138'),
('173.252.95.12', '2020-05-31', 1, '1590919967'),
('173.252.95.13', '2020-05-31', 1, '1590919970'),
('173.252.95.9', '2020-05-31', 1, '1590919974'),
('207.46.13.144', '2020-05-31', 1, '1590921466'),
('157.55.39.33', '2020-05-31', 2, '1590921476'),
('157.55.39.176', '2020-05-31', 1, '1590921475'),
('66.249.65.225', '2020-05-31', 2, '1590940018'),
('66.249.66.135', '2020-05-31', 3, '1590944141'),
('68.183.146.249', '2020-06-01', 1, '1590945166'),
('103.139.113.34', '2020-06-01', 2, '1591011070'),
('137.226.113.28', '2020-06-01', 1, '1590948249'),
('137.226.113.26', '2020-06-01', 1, '1590948249'),
('66.249.66.139', '2020-06-01', 6, '1591018890'),
('66.249.66.137', '2020-06-01', 8, '1591010938'),
('66.249.66.135', '2020-06-01', 6, '1591002986'),
('18.220.101.6', '2020-06-01', 5, '1590961813'),
('18.220.101.6', '2020-06-01', 5, '1590961813'),
('37.58.59.83', '2020-06-01', 1, '1590971778'),
('23.237.4.26', '2020-06-01', 2, '1591016496'),
('139.195.85.165', '2020-06-01', 80, '1591020004'),
('223.255.229.22', '2020-06-01', 1, '1590978825'),
('112.215.154.71', '2020-06-01', 3, '1590979452'),
('66.220.149.27', '2020-06-01', 1, '1590988706'),
('66.220.149.21', '2020-06-01', 1, '1590988708'),
('66.220.149.14', '2020-06-01', 1, '1590990494'),
('131.220.6.152', '2020-06-01', 1, '1590990504'),
('36.76.115.243', '2020-06-01', 6, '1591003336'),
('66.220.149.30', '2020-06-01', 1, '1590998623'),
('13.82.7.68', '2020-06-01', 1, '1591006680'),
('185.192.69.81', '2020-06-01', 2, '1591011663'),
('173.252.127.28', '2020-06-01', 1, '1591015871'),
('173.252.87.119', '2020-06-01', 1, '1591016399');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(22, 'Hiburan', '', 'hiburan', 19),
(28, 'Teknologi', '', 'teknologi', 12),
(27, 'Metropolitan', '', 'metropolitan', 32),
(26, 'Nasional', '', 'nasional', 42),
(25, 'Kesehatan', '', 'kesehatan', 16),
(24, 'Olahraga', '', 'olahraga', 11),
(34, 'Wisata', '', 'wisata', 4),
(36, 'Hukum', '', 'hukum', 16),
(37, 'Film', '', 'film', 25),
(40, 'Internasional', '', 'internasional', 28),
(41, 'Bola', '', 'bola', 21),
(43, 'Selebritis', '', 'selebritis', 9),
(49, 'Palestina', 'admin', 'palestina', 6),
(50, 'Israel', 'admin', 'israel', 3),
(51, 'Yahudi', 'admin', 'yahudi', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tagpro`
--

CREATE TABLE `tagpro` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tagpro`
--

INSERT INTO `tagpro` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(1, 'Pria', 'admin', 'pria', 0),
(2, 'Wanita', 'admin', 'wanita', 0),
(3, 'Kaos', 'admin', 'kaos', 0),
(4, 'Kemeja', 'admin', 'kemeja', 0),
(5, 'Sepatu', 'admin', 'sepatu', 0),
(6, 'Jam Tangan', 'admin', 'jam-tangan', 0),
(7, 'Makanan', 'admin', 'makanan', 0),
(8, 'Minuman', 'admin', 'minuman', 0),
(9, 'Elektronik', 'admin', 'elektronik', 0),
(10, 'Laptop', 'admin', 'laptop', 0),
(11, 'Komputer', 'admin', 'komputer', 0),
(12, 'Tas Jinjing', 'admin', 'tas-jinjing', 0),
(13, 'Hardware', 'admin', 'hardware', 0),
(14, 'Software', 'admin', 'software', 0),
(15, 'Jeans', 'admin', 'jeans', 0),
(16, 'Muslimah', 'admin', 'muslimah', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tagvid`
--

INSERT INTO `tagvid` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(34, 'perang', 'admin', 'perang', 2),
(35, 'Teknologi', 'admin', 'teknologi', 0),
(36, 'Nasional', 'admin', 'nasional', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_komentar`, `reply`, `nama_lengkap`, `alamat_email`, `isi_pesan`, `tanggal_komentar`, `jam_komentar`) VALUES
(1, 0, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman, membuat perlunya dilakukan perubahan secara komprehensif mengenai Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan Kehakiman.								', '2014-11-19', '00:00:00'),
(2, 1, 'si anu', 'anu@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-19', '00:00:00'),
(3, 0, 'Rio Saputra', 'rio.saputra@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut. Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman.								', '2014-11-21', '00:00:00'),
(4, 1, 'Anggun Pratiwi', 'angun@gmail.com', 'itu benar bro, kalau ndak pacayo tanyo lah ka baruak.Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(5, 3, 'Dewi Safitri', 'dewi.safitri@gmail.com', 'Oii, ang kareh bana mah, den ambuang ang ka lauik beko,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(6, 0, 'Ahmad Hunaldi', 'ahmad@gmail.com', 'badan-badan peradilan penyelenggara kekuasaan kehakiman, asas-asas penyelengaraan kekuasaan kehakiman Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.								', '2014-11-21', '00:00:00'),
(7, 6, 'Prasmana Enru', 'prasmana@gmail.com', 'Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan	Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(9, 3, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Untuk itulah penulis memberikan solusi menggunakan program Dreamweaver,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-01-22', '00:00:00'),
(14, 0, 'Udin Sedunia', 'udin.sedubia@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:54:31'),
(15, 6, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:59:50'),
(23, 20, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'I spent almost a day searching for this. And found &#039;CSS3 Thumbnail Slider&#039; on this site. Thanks a lot. If the slideIndex is higher than the number of elements (x.length), the slideIndex is set to zero.', '2017-01-24', '16:31:47'),
(24, 14, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut', '2017-04-09', '11:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(24, 'PHPMU Marketpro : Swarakalibata Ci Marketplace Premium Template', 'admin', 'Robby Prihandaya', 'phpmu-marketpro', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `id_konsumen` int(11) NOT NULL,
  `isi_testimoni` text NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `waktu_testimoni` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `id_konsumen`, `isi_testimoni`, `aktif`, `waktu_testimoni`) VALUES
(1, 1, 'Saya berusaha mencoba memaklumi mereka tentang kesan menjadi entrepreneur instan ini dengan menjadi seorang MLM-ers, dengan menanyakan penyebab bisa memunculkan kesan instan tersebut. Mereka memberikan jawaban beragam berkaitan dengan proses instan seorang entrepreneur ini. ', 'Y', '2019-12-11 03:25:21'),
(2, 3, '<p>Menjadi seorang sukses dengan cara instan memang impian banyak orang dan saya yakin anda pun akan menyetujuinya. Namun, kembali lagi kepada diri anda sendiri apakah anda benar-benar memahami makna menjadi seorang entrepreneur sesungguhnya atau hanya memaknai seperti halnya membuat mie instan.</p>\n', 'Y', '2016-09-12 07:09:16'),
(5, 2, '<p>Saya berusaha mencoba memaklumi mereka tentang kesan menjadi entrepreneur instan ini dengan menjadi seorang MLM-ers, dengan menanyakan penyebab bisa memunculkan kesan instan tersebut. Mereka memberikan jawaban beragam berkaitan dengan proses instan seorang entrepreneur ini.</p>\r\n', 'Y', '2020-02-12 14:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', '84c9295db1f31868a78f9f3138f39bed46c5fc5c06ec69f57c2769cd4f32a57bf1a75645193d3128d2d3fb42fd6a1e5468ffe52e5ec5c3fef60591414d1fa74c', 'Bukhori Muslim', 'bukhori.06051989@gmail.com', '082172902800', 'avatar1.png', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('dewi', '82712d6185313c5cab37780e6aa1bb571b2283efa92fd7153a28bbb3e34b0489dcc5a943ae7f61c5380184fea2ee750c40718a1601d9e7748427a767bdc3f64b', 'Dewiiit Safitri', 'dewi.safitri@gmail.com', '081267778899', '', 'user', 'N', 'ed1d859c50262701d92e5cbf39652792-20170120090507'),
('arsen', 'dac396a174a4a2aa2526bf23c05f0adbe6139f53047c273fd65e1fb813a05ce42a82d8e9b997972937a87238702dab4e981b184083d5d83b6542f79f29f8bde0', 'Muhammad Arsenio', 'muhammad.arsenio@gmail.com', '081267773333', '', 'user', 'N', 'f76ad5ee772ac196cbc09824e24859ee');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, 'cfcd208495d565ef66e7dff9f98764da-20180421112213', 18);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT 1,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(160, 56, 'admin', 'Selamatkan Hutan di Indonesia', 'selamatkan-hutan-di-indonesia', 'Pengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.\r\n\r\nMenurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. \"Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,\" kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.\r\n\r\nKarena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. \"Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,\" katanya.', '', '', 'http://www.youtube.com/embed/hkzpLJjZQbA', 31, 'Rabu', '2014-07-02', '07:30:12', ''),
(161, 56, 'admin', 'Hutan Hujan Tropis Indonesia', 'hutan-hujan-tropis-indonesia', 'Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.\r\n\r\nSementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.\r\n\r\n\"Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,\" ucap pihak Konservatif.\r\n\r\nIni bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.', '', '', 'http://www.youtube.com/embed/5biK_PcT7S0', 24, 'Rabu', '2014-07-02', '07:31:23', ''),
(162, 57, 'admin', 'Perang Sengit Pasukan Darat Israel Vs Hamas', 'perang-sengit-pasukan-darat-israel-vs-hamas', 'Israel makin gencar melakukan serangan ke Gaza, baik melalui udara maupun darat. Masjid menjadi salah satu target serangan dari Negara Yahudi itu.\r\n\r\nSekira 15 warga Palestina dilaporkan tewas dan 20 lainnya dalam serangan udara Isarel ke sebuah masjid di Kota Gaza pada Sabtu 19 Juli 2014 lalu. Masjid itu terletak tidak jauh dari rumah milik Komandan Polisi Gaza.\r\n\r\nRudal-rudal dari Israel menghancurkan sebagian dari bangunan masjid. Alquran yang berada di dalam masjid pun tampak rusak akibat serangan. Demikian diberitakan Associated Press, Rabu (23/7/2014).\r\n\r\nSelain itu, serangan Israel juga diarahkan ke rumah sakit yang berada di Gaza. Blokade yang dilakukan oleh Israel makin membuat rumah sakit sulit untuk beroperasi.', '', '', 'https://www.youtube.com/watch?v=CeNjeD8yknI', 16, 'Rabu', '2014-07-23', '15:23:10', ''),
(163, 57, 'admin', 'Isael dan Palestina Memanas', 'isael-dan-palestina-memanas', 'Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.\r\n\r\nKomentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.\r\n\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.', '', '', 'https://www.youtube.com/watch?v=oaJpxuDh5Ds', 31, 'Rabu', '2014-07-23', '15:24:30', ''),
(164, 57, 'admin', 'Israel Tembak Mati Warga Palestina Saat Gencatan', 'israel-tembak-mati-warga-palestina-saat-gencatan', 'Seorang tentara Israel dilaporkan menghilang di Jalur Gaza. Hal ini terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.\r\n\r\nMelansir Boston Herald, Selasa (22/7/2014), pejabat pertahanan Israel mengatakan, tentaranya hilang usai pertempuran mematikan di Gaza terjadi pada pekan lalu. Namun, tidak jelas apakah tentara tersebut masih hidup atau sudah tewas.\r\n\r\nKonflik yang terjadi antara Israel dan Hamas sejauh ini sudah menyebabkan sekira 25 tentara Israel tewas dan ratusan warga Palestina. Sebagian besar korban warga Palestina adalah anak-anak.\r\n\r\nMemanasnya situasi itu membuat sejumlah desakan gencatan berdatangan dari sejumlah negara dan organisasi internasional.\r\n\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.', '', '', 'https://www.youtube.com/watch?v=L6R-5XUcDSY', 44, 'Rabu', '2014-07-23', '15:29:41', ''),
(165, 57, 'admin', 'Gaza conflict: Israel & Hamas face allegations of war crimes', 'gaza-conflict-israel--hamas-face-allegations-of-war-crimes', '<p>Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas.</p>\r\n', '', '', 'http://www.youtube.com/embed/aqI4DOilySg', 24, 'Minggu', '2014-08-17', '16:49:33', ''),
(166, 57, 'admin', 'Chomsky: Calling for change on US support for Israelll', 'chomsky-calling-for-change-on-us-support-for-israelll', '<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. \"Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,\" sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n\r\n<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat, sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n', '', '', 'http://www.youtube.com/embed/gQRJEnoxr2A', 122, 'Minggu', '2014-08-17', '16:51:04', 'perang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indexes for table `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indexes for table `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_banner`
--
ALTER TABLE `kategori_banner`
  ADD PRIMARY KEY (`id_kategori_banner`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indexes for table `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indexes for table `rb_bonus`
--
ALTER TABLE `rb_bonus`
  ADD PRIMARY KEY (`id_bonus`);

--
-- Indexes for table `rb_donasi`
--
ALTER TABLE `rb_donasi`
  ADD PRIMARY KEY (`id_donasi`);

--
-- Indexes for table `rb_kategori_produk`
--
ALTER TABLE `rb_kategori_produk`
  ADD PRIMARY KEY (`id_kategori_produk`);

--
-- Indexes for table `rb_kategori_produk_sub`
--
ALTER TABLE `rb_kategori_produk_sub`
  ADD PRIMARY KEY (`id_kategori_produk_sub`);

--
-- Indexes for table `rb_keterangan`
--
ALTER TABLE `rb_keterangan`
  ADD PRIMARY KEY (`id_keterangan`);

--
-- Indexes for table `rb_konfirmasi_pembayaran`
--
ALTER TABLE `rb_konfirmasi_pembayaran`
  ADD PRIMARY KEY (`id_konfirmasi_pembayaran`);

--
-- Indexes for table `rb_konfirmasi_pembayaran_konsumen`
--
ALTER TABLE `rb_konfirmasi_pembayaran_konsumen`
  ADD PRIMARY KEY (`id_konfirmasi_pembayaran`);

--
-- Indexes for table `rb_konsumen`
--
ALTER TABLE `rb_konsumen`
  ADD PRIMARY KEY (`id_konsumen`);

--
-- Indexes for table `rb_konsumen_alamat`
--
ALTER TABLE `rb_konsumen_alamat`
  ADD PRIMARY KEY (`id_konsumen_alamat`);

--
-- Indexes for table `rb_konsumen_detail`
--
ALTER TABLE `rb_konsumen_detail`
  ADD PRIMARY KEY (`id_konsumen_detail`);

--
-- Indexes for table `rb_konsumen_simpan`
--
ALTER TABLE `rb_konsumen_simpan`
  ADD PRIMARY KEY (`id_konsumen_simpan`);

--
-- Indexes for table `rb_kota`
--
ALTER TABLE `rb_kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `rb_paket`
--
ALTER TABLE `rb_paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `rb_pembayaran_bonus`
--
ALTER TABLE `rb_pembayaran_bonus`
  ADD PRIMARY KEY (`id_pembayaran_bonus`);

--
-- Indexes for table `rb_pembelian`
--
ALTER TABLE `rb_pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `rb_pembelian_detail`
--
ALTER TABLE `rb_pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indexes for table `rb_pencairan_bonus`
--
ALTER TABLE `rb_pencairan_bonus`
  ADD PRIMARY KEY (`id_pencairan_bonus`);

--
-- Indexes for table `rb_pencairan_reward`
--
ALTER TABLE `rb_pencairan_reward`
  ADD PRIMARY KEY (`id_pencairan_reward`);

--
-- Indexes for table `rb_penjualan`
--
ALTER TABLE `rb_penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `rb_penjualan_detail`
--
ALTER TABLE `rb_penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indexes for table `rb_penjualan_otomatis`
--
ALTER TABLE `rb_penjualan_otomatis`
  ADD PRIMARY KEY (`id_penjualan_otomatis`);

--
-- Indexes for table `rb_penjualan_temp`
--
ALTER TABLE `rb_penjualan_temp`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indexes for table `rb_produk`
--
ALTER TABLE `rb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `rb_produk_diskon`
--
ALTER TABLE `rb_produk_diskon`
  ADD PRIMARY KEY (`id_produk_diskon`);

--
-- Indexes for table `rb_produk_penawaran`
--
ALTER TABLE `rb_produk_penawaran`
  ADD PRIMARY KEY (`id_produk_penawaran`);

--
-- Indexes for table `rb_produk_ulasan`
--
ALTER TABLE `rb_produk_ulasan`
  ADD PRIMARY KEY (`id_ulasan`);

--
-- Indexes for table `rb_provinsi`
--
ALTER TABLE `rb_provinsi`
  ADD PRIMARY KEY (`provinsi_id`);

--
-- Indexes for table `rb_rekening`
--
ALTER TABLE `rb_rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `rb_rekening_reseller`
--
ALTER TABLE `rb_rekening_reseller`
  ADD PRIMARY KEY (`id_rekening_reseller`);

--
-- Indexes for table `rb_reseller`
--
ALTER TABLE `rb_reseller`
  ADD PRIMARY KEY (`id_reseller`);

--
-- Indexes for table `rb_reseller_cod`
--
ALTER TABLE `rb_reseller_cod`
  ADD PRIMARY KEY (`id_cod`);

--
-- Indexes for table `rb_reseller_paket`
--
ALTER TABLE `rb_reseller_paket`
  ADD PRIMARY KEY (`id_reseller_paket`);

--
-- Indexes for table `rb_reward`
--
ALTER TABLE `rb_reward`
  ADD PRIMARY KEY (`id_reward`);

--
-- Indexes for table `rb_setting`
--
ALTER TABLE `rb_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `rb_subscribe`
--
ALTER TABLE `rb_subscribe`
  ADD PRIMARY KEY (`id_subscribe`);

--
-- Indexes for table `rb_supplier`
--
ALTER TABLE `rb_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `rb_withdraw`
--
ALTER TABLE `rb_withdraw`
  ADD PRIMARY KEY (`id_withdraw`);

--
-- Indexes for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tagpro`
--
ALTER TABLE `tagpro`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=686;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `kategori_banner`
--
ALTER TABLE `kategori_banner`
  MODIFY `id_kategori_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `rb_bonus`
--
ALTER TABLE `rb_bonus`
  MODIFY `id_bonus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rb_donasi`
--
ALTER TABLE `rb_donasi`
  MODIFY `id_donasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rb_kategori_produk`
--
ALTER TABLE `rb_kategori_produk`
  MODIFY `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rb_kategori_produk_sub`
--
ALTER TABLE `rb_kategori_produk_sub`
  MODIFY `id_kategori_produk_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `rb_keterangan`
--
ALTER TABLE `rb_keterangan`
  MODIFY `id_keterangan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rb_konfirmasi_pembayaran`
--
ALTER TABLE `rb_konfirmasi_pembayaran`
  MODIFY `id_konfirmasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rb_konfirmasi_pembayaran_konsumen`
--
ALTER TABLE `rb_konfirmasi_pembayaran_konsumen`
  MODIFY `id_konfirmasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rb_konsumen`
--
ALTER TABLE `rb_konsumen`
  MODIFY `id_konsumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `rb_konsumen_alamat`
--
ALTER TABLE `rb_konsumen_alamat`
  MODIFY `id_konsumen_alamat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rb_konsumen_detail`
--
ALTER TABLE `rb_konsumen_detail`
  MODIFY `id_konsumen_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rb_konsumen_simpan`
--
ALTER TABLE `rb_konsumen_simpan`
  MODIFY `id_konsumen_simpan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rb_kota`
--
ALTER TABLE `rb_kota`
  MODIFY `kota_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `rb_paket`
--
ALTER TABLE `rb_paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rb_pembayaran_bonus`
--
ALTER TABLE `rb_pembayaran_bonus`
  MODIFY `id_pembayaran_bonus` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rb_pembelian`
--
ALTER TABLE `rb_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rb_pembelian_detail`
--
ALTER TABLE `rb_pembelian_detail`
  MODIFY `id_pembelian_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `rb_pencairan_bonus`
--
ALTER TABLE `rb_pencairan_bonus`
  MODIFY `id_pencairan_bonus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rb_pencairan_reward`
--
ALTER TABLE `rb_pencairan_reward`
  MODIFY `id_pencairan_reward` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rb_penjualan`
--
ALTER TABLE `rb_penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `rb_penjualan_detail`
--
ALTER TABLE `rb_penjualan_detail`
  MODIFY `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `rb_penjualan_otomatis`
--
ALTER TABLE `rb_penjualan_otomatis`
  MODIFY `id_penjualan_otomatis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `rb_penjualan_temp`
--
ALTER TABLE `rb_penjualan_temp`
  MODIFY `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `rb_produk`
--
ALTER TABLE `rb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `rb_produk_diskon`
--
ALTER TABLE `rb_produk_diskon`
  MODIFY `id_produk_diskon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `rb_produk_penawaran`
--
ALTER TABLE `rb_produk_penawaran`
  MODIFY `id_produk_penawaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rb_produk_ulasan`
--
ALTER TABLE `rb_produk_ulasan`
  MODIFY `id_ulasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rb_provinsi`
--
ALTER TABLE `rb_provinsi`
  MODIFY `provinsi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `rb_rekening`
--
ALTER TABLE `rb_rekening`
  MODIFY `id_rekening` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rb_rekening_reseller`
--
ALTER TABLE `rb_rekening_reseller`
  MODIFY `id_rekening_reseller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rb_reseller`
--
ALTER TABLE `rb_reseller`
  MODIFY `id_reseller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `rb_reseller_cod`
--
ALTER TABLE `rb_reseller_cod`
  MODIFY `id_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rb_reseller_paket`
--
ALTER TABLE `rb_reseller_paket`
  MODIFY `id_reseller_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rb_reward`
--
ALTER TABLE `rb_reward`
  MODIFY `id_reward` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rb_setting`
--
ALTER TABLE `rb_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rb_subscribe`
--
ALTER TABLE `rb_subscribe`
  MODIFY `id_subscribe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rb_supplier`
--
ALTER TABLE `rb_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rb_withdraw`
--
ALTER TABLE `rb_withdraw`
  MODIFY `id_withdraw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tagpro`
--
ALTER TABLE `tagpro`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
