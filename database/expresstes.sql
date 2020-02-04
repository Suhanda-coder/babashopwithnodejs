-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 04. Februari 2020 jam 12:36
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `expresstes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_tbl`
--

CREATE TABLE IF NOT EXISTS `admin_tbl` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `admin_level` varchar(20) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `admin_tbl`
--

INSERT INTO `admin_tbl` (`id_admin`, `username`, `password`, `name`, `address`, `admin_level`, `datetime`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Aries Dimas Yudhistira', 'jl. warakas 4 GG q7 no. 32', 'Super Admin', '2014-03-30 15:27:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `brand_tbl`
--

CREATE TABLE IF NOT EXISTS `brand_tbl` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_input` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data untuk tabel `brand_tbl`
--

INSERT INTO `brand_tbl` (`brand_id`, `date_input`, `name`) VALUES
(2, 'sun jan 2020', 'Mikoto Bag'),
(3, 'wed Jan 2020', 'Paparazzi Jeans'),
(4, 'sun jan 2020', 'Mikoto Bag'),
(5, 'wed Jan 2020', 'Paparazzi Jeans'),
(6, 'sun jan 2020', 'Mikoto Bag'),
(9, 'wed Jan 2020', 'Paparazzi Jeans b '),
(10, 'wed Jan 2020', 'Paparazzi Jeans m'),
(11, 'wed Jan 2020', 'Paparazzi Jeansa'),
(12, 'wed Jan 2020', 'Paparazzi Jeanss'),
(14, 'wed Jan 2020', 'Paparazzi JeansFG'),
(16, 'wed Jan 2020', 'Paparazzi Jeans m'),
(17, 'wed Jan 2020', 'Paparazzi Jeansaa'),
(18, 'wed Jan 2020', 'Paparazzi Jeansggg'),
(20, 'sun jan 2020', 'Mikoto Bag gilang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id_contact` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(25) NOT NULL,
  `email` varchar(56) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `pesan` text NOT NULL,
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id_contact`, `nama`, `email`, `no_hp`, `pesan`) VALUES
(1, 'fdsfdsfds', 'dsfdsfds@gmail.com', '33', 'ddddddd'),
(2, 'dfgdfgdf', 'sulistiono.widi@gmail.com', '2345678', 'dfgdfgdfgdf'),
(3, 'fxdsfdsfds', 'dfdsfdsf@gmail.com', '5345345345', 'dfgfgdfgdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news_tbl`
--

CREATE TABLE IF NOT EXISTS `news_tbl` (
  `id_news` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `images` varchar(50) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data untuk tabel `news_tbl`
--

INSERT INTO `news_tbl` (`id_news`, `title`, `description`, `images`, `createdate`) VALUES
(1, 'Bukan PDIP, Siapa Pemilik Domain Internet "Jokowi.id"?', 'JAKARTA, KOMPAS.com — Nama domain internet "Jokowi.id" ternyata telah didaftarkan dan dibeli. Siapakah pemiliknya dan akan digunakan untuk apa?\r\n\r\nPengelola Nama Domain Internet Indonesia (Pandi) mengakui bahwa alamat situs "Jokowi.id" telah didaftarkan pada Senin (24/3/2014). Namun, Pandi enggan mengungkap siapa pihak yang mendaftarkan nama domain tersebut.\r\n\r\n"Kami harus menjaga kerahasiaan. Kami tidak bisa memberitahukan siapa pendaftarnya. Yang jelas, kami menjamin pendaftaran bahwa nama domain ini sudah sesuai dengan semua aturan pendaftaran nama domain ''Apapun.id'' pada periode Sunrise," kata Ketua Pandi Sigit Widodo saat dihubungi KompasTekno.\r\n\r\nPeriode Sunrise merupakan tahap pertama pendaftaran nama domain internet "Apapun.id" atau populer disebut "Anything.id". Pendaftaran dan penjualan nama domain ".id" di tahap ini secara eksklusif diperuntukkan bagi para pemegang merek, sejak 20 Januari sampai 17 April 2014. Hingga kini, sebanyak 285 nama domain internet ".id" telah dibeli oleh para pemegang merek.\r\n\r\nKompasTekno melakukan penelusuran tentang pemilik nama domain internet "Jokowi.id". Ternyata, alamat tersebut bukan dibeli oleh partai pengusung Joko Widodo, PDI Perjuangan (PDI-P), melainkan oleh Sekretariat Nasional Jaringan Organisasi dan Komunitas Warga Indonesia (Seknas Jokowi), sebuah organisasi masyarakat pendukung Jokowi.\r\n\r\nSalah seorang Presidium Seknas Jokowi, Sammy Pangerapan, mengakui bahwa pihaknya telah membeli domain "Jokowi.id" dan diberi amanat secara resmi oleh Jokowi untuk mengelola situs tersebut.\r\n\r\nPihaknya bisa membeli nama domain itu karena telah mematenkan nama organisasi "Sekretariat Nasional Jaringan Organisasi dan Komunitas Warga Indonesia." Singkatan "Seknas Jokowi" juga telah dipatenkan di Kementerian Hukum dan Hak Asasi Manusia.\r\n\r\n"Nama domain tersebut akan kami gunakan untuk kepentingan Joko Widodo dalam pemilu dan kampanye lain setelah pemilu," kata Sammy. Situs "Jokowi.id" dijadwalkan mulai aktif setelah tanggal 17 April 2014.\r\n\r\nPandi, pengelola nama domain internet Indonesia, berharap bakal calon presiden lainnya dapat memanfaatkan nama domain dengan akhiran ".id" sebagai situs resmi. "Domain ''.id'' ini merupakan domain tepercaya. Jika menggunakan nama domain selain ''.id'', bisa saja lawan capres membuat situs palsu untuk menyebarkan informasi yang tidak benar dan merugikan capres yang bersangkutan," lanjut Sigit.\r\n\r\nPandi mempersilakan "Jokowi.id" untuk mulai diaktifkan setelah 17 April 2014 karena tanggal tersebut merupakan batas akhir pendaftaran domain internet ".id" bagi pemegang merek. ', 'g1.jpg', '2014-03-25 11:20:09'),
(2, 'Kisah Mereka yang Hilang Bersama Malaysia Airlines', '\r\n\r\nKOMPAS.com — Perdana Menteri Malaysia Najib Razak mengumumkan, Senin (24/3/2014), penerbangan Malaysia Airlines MH370 berakhir di wilayah selatan Samudra Hindia.\r\n\r\nPihak Malaysia Airlines dikabarkan telah menghubungi keluarga penumpang dan menyatakan bahwa 239 orang di pesawat itu tidak ada yang selamat.\r\n\r\nNamun, penumpang pesawat itu bukan sekadar angka. Tiap-tiap dari mereka adalah pribadi yang unik. Mereka adalah manusia yang kisahnya menggerakkan rasa kemanusiaan dunia yang bersatu dalam misi pencarian selama lebih dari dua minggu.\r\n\r\nDi antara mereka ada insinyur, artis, pemeran pengganti, peziarah, dan wisatawan. Penumpang termuda berusia 2 tahun, yang tertua 76 tahun. Lima penumpang tidak sempat merayakan ulang tahun mereka yang kelima.\r\n\r\nMereka adalah orang-orang yang dicintai dan ditunggu kabarnya dengan penuh rindu oleh keluarga mereka. Mereka adalah segalanya bagi keluarga mereka. \r\n\r\nDan, ini lebih dari sekadar angka.\r\n\r\nSiapa saja mereka? Dikutip dari CNN, berikut ini sedikit kisah tentang mereka:\r\n\r\nMoheng Wang, Rui Wang, dan Weiwei Jiao\r\n\r\nMoheng adalah penumpang termuda di pesawat itu. Usianya baru dua tahun. Ia terbang bersama orangtuanya, Rui Wang dan Weiwei Jiao (30-an). Mereka kembali ke Beijing setelah menghabiskan liburan di Malaysia.\r\n\r\nSeminggu sebelum berangkat, Rui mengirim surat elektronik kepada teman-teman sekelasnya. Ia bercerita tentang pengalaman liburannya di Malaysia. Ia berbagi cerita dan foto secara rutin kepada teman-temannya itu. Di Beijing, sebuah proyek tengah menunggu Rui untuk diselesaikan.\r\n\r\n"Foto-foto yang ia kirimkan melalui e-mail sungguh fantastis," kata Saleel Limaye, salah seorang temannya.\r\n\r\nWeiwei juga meninggalkan kesan mendalam bagi sahabat-sahabatnya. "Ia orang yang hangat, baik, dan penuh perhatian. Saya dan Weiwei langsung ''klik'' saat kali pertama bertemu. Kami bersahabat erat, pergi ke mana-mana berdua," tutur Weina Shi, sahabat Weiwei.\r\n\r\nMenurut Weina Shi, Weiwei adalah seorang istri yang baik. Weiwei selalu meninggalkan pesan dalam secarik kertas kepada Rui, setiap kali dia pergi ke luar rumah.\r\n\r\nDai Shuling dan Jiao Wenxue\r\n\r\nDai dan Jiao adalah orangtua Weiwei, kakek dan nenek Moheng. Mereka bergabung dalam liburan ke Malaysia. Keduanya berumur 58 tahun.\r\n\r\nPaul Weeks\r\n\r\nWeeks meninggalkan cincin kawin dan jam tangannya di rumah saat ia pergi ke Mongolia untuk bekerja pada sebuah perusahaan tambang. Mungkin itu bukan kebetulan. Mungkin itu kenang-kenangan terakhir.\r\n\r\nDanica, istri Weeks, tak kuasa menahan isak. Sambil mencengkeram cincin kawin Weeks, ia mengatakan kepada CNN, Weeks berada di pesawat Malaysia Airlines MH370 dalam perjalanan menuju Mongolia.\r\n\r\nBagi Danica, Weeks adalah suami dan ayah yang hebat. Ia mengatakan, hal yang paling berat dalam peristiwa ini adalah ia tidak tahu apa yang terjadi dengan pesawat yang ditumpangi suaminya.\r\n\r\n"Ia adalah lelaki yang kuat dan berkarakter. Ia adalah sahabat sekaligus kekasih hati saya. Saya tak sabar menunggunya pulang. Saya berharap. Saya berharap," ujar Danica.\r\n\r\nPouria Nourmohammadi dan Delavar Seyed Mohammad Reza\r\n\r\nDua warga negara Iran ini dicurigai sebab mereka menggunakan paspor curian: paspor Austria dan Italia. Otoritas Malaysia sempat membuka kemungkinan terjadi aksi pembajakan terkait dua orang ini. Namun, Interpol meyakini, keduanya lebih dekat dengan kemungkinan penyelundupan manusia.\r\n\r\nNourmohammadi berusia 18 tahun. Pada 4 Maret, ia mengunggah fotonya di depan Petronas Tower di Kuala Lumpur disertai ekspresi "feeling excited". Beberapa hari sebelumnya, saat mendarat di Kuala Lumpur, ia juga sempat mengisi status laman Facebook-nya. "Kepada semua yang telah berdoa untuk saya, terima kasih banyak. Saya baik-baik saja," tulisnya.\r\n\r\nPolisi Malaysia percaya, Nourmohammadi tengah berusaha masuk ke Jerman secara ilegal dengan paspor curian milik warga negara Austria. Bersama Reza (29), Nourmohammadi masuk ke Malaysia pada 29 Februari menggunakan paspor Iran, paspor asli mereka.\r\n\r\nMohammed Mallaeibasir (18) mengirim laporan kepada CNN bahwa ia mengenal Nourmohammadi sejak sekolah setara SMA. Mallaeibasir mengaku bertemu dengan Nourmohammadi beberapa tahun lalu. Saat itu, Nourmohammadi memberi tahu bahwa ibunya tinggal di Frankfurt, Jerman.\r\n\r\nMallaeibasir bertemua dengan Nourmohammadi sehari sebelum sahabatnya itu pergi. Mereka sempat makan malam bersama. Mallaeibasir bahkan mengantar sahabatnya ke bandara. Malam itu adalah perjumpaan terakhir mereka.\r\n\r\nMuktesh Mukherjee dan Xiaomo Bai\r\n\r\nPasangan suami istri ini adalah warga negara Kanada. Mukherjee (42) adalah wakil presiden di sebuah perusahaan tambang yang beroperasi di China, Xcoal Energy & Resources. Istrinya, Xiaomo Bai (37), bekerja di CTV. Mereka meninggalkan dua anak mereka di Beijing bersama neneknya, ibu Bai. Status Facebook Bai mengungkap, ia bersama suaminya tengah berlibur ke Vietnam.\r\n\r\n"Mukherjee sangat mencintai Bai. Sebagai orangtua, tak ada yang lebih penting bagi mereka selain kedua anak mereka," ungkap Matthew McConkey, seorang sahabat keduanya, saat memberi kesaksian.', 'g2.jpg', '2014-03-25 11:21:42'),
(3, 'Macet di Jakarta Sebabkan RI Tak Bisa Bersaing dengan Negara Lain', 'JAKARTA, KOMPAS.com – Presiden Direktur PT. Toyota Motor Manufakturing Indonesia, Masahiro Nanomi, menyayangkan kemacetan yang terjadi di Jakarta dan sekitarnya. Menurutnya hal tersebut menjadi salah satu faktor mengapa industri Indonesia belum bisa bersaing dengan negara lain.\r\n\r\n“Kalau dari Karawang kami kirim ke Tanjung Priok membuthkan waktu 4 jam sampai 5 jam, bagaimana kita mau bersaing dengan negara lain,” ujar Masahiro Manomi saat Konferensi Pers setelah peluncuran ekpor perdana sedan Vios di Karawang, Jawa Barat, Rabu (26/3/2014).\r\n\r\nPernyataan Manomi tersebut merupakan kritikan bagi pemerintah agar segera membenahi insfratuktur terutama jalan agar mendukung perkembangan industri Indonesia. Menurutnya, perbaikan infrastruktur bukan hanya kepentingan Toyota semata, tetapi juga kepentingan semua.\r\n\r\n“Jadi infrastruktur agar segera diperbaiki agar daya saing kita bisa meningkat,” tandasnya.\r\n\r\nSebelumnya, Toyota telah meluncurkan ekspor perdana sedan Vios di Pabrik Toyota Manufacturing Indonesia Karawang II. Acara tersebut dihadiri oleh M.S Hidayat selaku Meneteri Perindustrian, Muhammad Lutfi selaku Menteri Perdagangan.\r\n\r\nPada acara tersebut juga hadir Yoshinori Katori selaku Duta Besar Jepang untuk Indonesia, sepuluh Duta Besar Negara-negara Timur Tangah, Hiroyuki Fukui selaku Managing Officer Toyota Motor Corporation Jepang, Johny Darmawan selaku Presiden Direktur PT Toyota-Astra Motor dan Masahiro Nanomi selaku Presiden Direktur PT Toyota Motor Manufacturing.', 'g3.jpg', '2014-03-26 20:21:05'),
(5, 'Dokter: Kondisi Iqbal Alami Kemajuan 50 Persen', 'JAKARTA, KOMPAS.com - Kondisi Iqbal Saputra (3,5), korban penculikan dan penganiayaan, berangsur membaik dibandingkan seminggu yang lalu.\r\n\r\n"Dibandingkan dengan seminggu lalu sudah ada kemajuan, sekarang kemajuannya sudah lebih dari 50 persen," ujar Direktur Utama Rumah Sakit Umum Daerah (RSUD) Koja, Jakarta Utara, Togi Asman Sinaga di RSUD Koja, Jakarta Utara, Rabu (26/3/2014).\r\n\r\nMenurut Togi saat ini Iqbal sudah bisa tersenyum dan tertawa walaupun dari pandangan matanya masih kosong. Hal tersebut berkaitan dengan otak Iqbal yang kekurangan oksigen, kata Togi.\r\n\r\nBerdasarkan hal tersebut pemulihan terhadap Iqbal masih belum bisa dilakukan karena masih belum ada interaksi yang berarti dari bocah Iqbal.\r\n\r\nSementara itu, Menteri Pemberdayaan Perempuan dan Perlindungan Anak (PP-PA), Linda Amalia Sari Gumelar yang menjenguk Iqbal mengatakan, dia merasa senang saat ini kondisi Iqbal sudah mulai membaik.\r\n\r\n"Iqbal sudah bisa mendengarkan, artinya kita bicara dia bisa senyum pegang mainan. Kita tanya dia dengan matanya atau gerakannya dia paham, tapi memang melihat dari kondisi mata ke mata itu kayaknya belum mungkin ini karena stres yang berat atau ada hal lain itu yang harus ditindaklanjuti secara kesehatan," katanya.\r\n\r\nSeperti diberitakan, Iqbal diculik dan dianiaya teman ibunya, Dadang Supriatna (29), sejak Desember 2013 lalu. Penganiayaan yang dialami Iqbal cukup berat sampai-sampai bocah itu mengalami cedera otak akibat benturan.\r\n\r\nSementara itu, ibu Iqbal, Iis Novianto (29), pun tidak ketahuan rimbanya. Dia hilang sejak beberapa pekan lalu.', 'g5.jpg', '2014-03-26 00:00:00'),
(6, 'Surat Basuki untuk Plt Sekda: Bus-bus Pakai Solar Buang ke Laut Saja!', 'JAKARTA, KOMPAS.com — Lagi-lagi sumbangan bus perusahaan terhambat oleh rumitnya birokrasi Pemprov DKI Jakarta. Akibat itu pula, Wakil Gubernur DKI Jakarta Basuki Tjahaja Purnama kembali kesal dengan aturan birokrasi yang diterapkan anak buahnya tersebut.\r\n\r\nJika sebelumnya kekesalannya dituangkan kepada Kepala Badan Pengelolaan Keuangan Daerah (BPKD) Endang Widjajanti, kini emosinya meluap karena Pelaksana Tugas (Plt) Sekda DKI Wiriyatmoko. Di dalam nota dinas, Wiriyatmoko menyampaikan tindak lanjut kesepakatan bersama penyediaan unit bus transjakarta oleh pihak ketiga (perusahaan swasta).\r\n\r\nAda beberapa hal yang membuat Basuki kembali naik pitam mengetahui satuan kerja perangkat daerah (SKPD) kembali mempersulit sumbangan bus. Pertama, terkait pengenaan pajak reklame di bus. Berdasarkan Peraturan Daerah (Perda) Nomor 12 Tahun 2011 tentang pajak reklame dan Pasal 7 huruf C Peraturan Gubernur (Pergub) Nomor 27 Tahun 2014 tentang penetapan nilai sewa reklame sebagai dasar pengenaan pajak reklame, khusus untuk reklame berjalan atau kendaraan ditetapkan Rp 50.000 per meter persegi per hari.\r\n\r\nDi dalam nota dinas diperkirakan pengenaan pajak reklame mencapai Rp 346.750.000 per tahun. Dengan rincian, luas reklame bagian luar badan bus 12 meter x 2 meter x 2 muka = 48 meter persegi, 48 meter persegi x 365 hari x Rp 50.000 x 25 persen = Rp 219.000.000. Kemudian, luas reklame bagian dalam bus 48 meter persegi x 365 hari x Rp 50.000 x 50 persen x 25 persen = Rp 109.500.000.\r\n\r\nSelanjutnya, luas reklame bagian belakang bus 4 meter x 365 hari x Rp 50.000 x 25 persen = Rp 18.250.000. Jika dijumlahkan semua, pajak reklame yang harus dibayar perusahaan mencapai Rp 346.750.000 per tahun.\r\n\r\nBasuki tampak terkejut melihat nilai pajak yang fantastis dikenakan pada tiga perusahaan penyumbang bus, PT Telekomunikasi Indonesia, PT Rodamas, dan PT Ti-Phone Mobile Indonesia. Menurut dia, perusahaan penyumbang seharusnya tidak dikenakan pajak reklame. Sebab, mereka sudah membantu ketersediaan transportasi massal di Jakarta sehingga "penghargaan" yang diberikan kepada perusahaan adalah diizinkan memasang iklan berjalan di badan maupun di dalam bus.\r\n\r\n"Ada enggak orang yang bayar sewa iklan di bus sampai Rp 300-an juta tiap tahunnya? Mau enggak Kopaja, Kopami, bayar sampai segitu besar pajaknya? Tapi, untuk para penyumbang ini, pajaknya besar segitu, gila ini," kata Basuki, di Balaikota Jakarta, Selasa (25/3/2014).\r\n\r\nPada poin berikutnya, berkenaan dengan perhitungan pajak reklame tersebut, ditulis Pemprov DKI memerlukan pendapat teknis pengadministrasian keuangan dari Badan Pengawasan Keuangan dan Pembangunan (BPKP) dan Kementerian Dalam Negeri selaku pembina keuangan daerah. Basuki tak habis pikir, mengapa untuk menerima bus sumbangan saja memerlukan pendapat Kemendagri dan BPKP. Padahal, pada pertemuan beberapa waktu lalu, Basuki turut mengundang pihak BPKP untuk memproses penerimaan sumbangan 30 bus dari tiga perusahaan itu.\r\n\r\nEmosinya semakin meluap mengetahui Plt Sekda sedang memproses surat verbal kepada Kemendagri. Ia mengatakan, proses yang rumit itu mempersulit dan memperpanjang waktu bus sumbangan diterima oleh Pemprov DKI. Menurut Basuki, banyak "jebakan batman" dalam nota dinas yang diberikan Plt Sekda kepadanya. Dengan adanya peraturan baru terkait rekomendasi dari Kemendagri dan BPKP, pihaknya tidak bisa menerima bus sumbangan itu. Jika belum mendapat rekomendasi, tetapi DKI telah menerima bus, DKI akan melanggar peraturan yang berlaku.\r\n\r\n"Benar-benar gila, dia (Plt Sekda) kalau ngomong sama saya sih sopan, tapi banyak ''jebakan batmannya''. Mereka memang maunya Jakarta kekurangan bus, terus beli lagi, lelang tender, bus China dibeli dan berkarat lagi," kata Basuki menumpahkan kekesalannya.\r\n\r\nPoin berikutnya yang membuatnya kesal adalah bus sumbangan harus berbahan bakar gas (BBG). Sementara bahan bakar yang digunakan di bus sumbangan itu adalah solar. Perda yang digunakan untuk sumbangan bus transjakarta adalah Pasal 20 (1) Peraturan Daerah (Perda) Nomor 2 Tahun 2005 tentang pengendalian pencemaran udara.\r\n\r\nDalam aturan itu, diatur bahwa angkutan umum dan kendaraan operasional Pemprov DKI wajib menggunakan bahan bakar gas sebagai upaya pengendalian emisi gas buang kendaraan bermotor. Atas dasar itu, Basuki mempertanyakan, seharusnya kendaraan operasionalnya juga dilarang beroperasi karena menggunakan solar sebagai bahan bakar. Seharusnya, sumbangan bus berbahan bakar solar itu langsung diterima karena DKI tidak memiliki unit bus transjakarta yang cukup memenuhi kebutuhan masyarakat Jakarta.\r\n\r\nMenurut Basuki, masyarakat Jakarta tidak akan keberatan untuk menggunakan bus berbahan bakar solar hingga ketersediaan stasiun pengisian bahan bakar gas (SPBG) tercukupi. Basuki dapat memaklumi adanya peraturan Pemprov DKI tidak bisa membeli transjakarta dan kendaraan operasional berbahan bakar solar. Maka, ia memilih untuk menerima sumbangan bus dari berbagai perusahaan swasta.\r\n\r\nBasuki mengatakan, Wiriyatmoko meminta bus sumbangan itu dioperasikan pada koridor yang belum  tersedia fasilitas SPBG dan memasang converter kit pada bus sumbangan tersebut. Selanjutnya, Badan Pengelola Keuangan Daerah (BPKD) menganggarkan dalam anggaran pendapatan belanja daerah perubahan (APBD-P). Basuki pun menuliskan memo di surat Plt\r\nSekda itu.\r\n\r\n"Kepada saudara Plt Sekda, kalau begitu tegakkan seluruh Perda. Bus-bus di Jakarta yang pakai solar buang ke laut saja."\r\n\r\nBasuki menjelaskan, spesifikasi bus sumbangan itu bermesin Euro 3, yang emisinya lebih baik dari gas. Masyarakat Jakarta juga lebih memilih unit bus transjakarta yang tercukupi dan tidak akan mempertimbangkan apakah bus itu menggunakan solar atau gas. Hingga ketersediaan stasiun pengisian bahan bakar gas (SPBG) mencukupi, seharusnya penggunaan solar di transportasi massal diperbolehkan.\r\n\r\n"Ini namanya sabotase, padahal kita tahu untuk mengatasi kemacetan ini, kuncinya di mana? Pindahkan orang ke bus. Kalau busnya datang tiap satu menit, orang-orang pasti mau pindah ke bus," kata Basuki.', 'g6.jpg', '2014-03-26 00:00:00'),
(7, 'Pemprov DKI Akan Bentuk Satgas Anti Kekerasan Terhadap Anak', 'Wakil Gubernur DKI Jakarta, Basuki Tjahaja Purnama (Ahok) menjawab pertanyaan awak media menanggapi soal pemberian mandat kepada Gubenur DKI Jakarta, Joko Widodo (Jokowi) sebagai capres dari Partai Demokrasi Indonesia Perjuangan (PDIP), di kantornya, Balai Kota DKI Jakarta, Jalan Medan Merdeka Selatan, Jakarta Pusat, Jumat (14/3/2014). Warta Kota/Henry Lopulalan\r\n\r\nJAKARTA, KOMPAS.com - Wakil Gubernur DKI Jakarta Basuki Tjahaja Purnama mengatakan bahwa Pemerintah Provinsi DKI Jakarta berencana akan membentuk satuan petugas (Satgas) khusus yang menangani masalah kekerasan terhadap anak.\r\n\r\nMenurut Basuki, upaya tersebut dilakukan menyusul tingginya angka kekerasan terhadap anak di Jakarta pada 2013, yang mencapai angka 468 korban. Angka tersebut meningkat dari tahun sebelumnya yang mencapai 325 korban.\r\n\r\nSehubungan dengan rencana pengoperasian Satgas itu, Basuki akan menyeleksi anggota dengan melakukan pelelangan jabatan di tingkat eselon III dan IV. "Makanya kami mau tes eselon III dan IV, kami mau cari di eselon tersebut agar pekerjaan tersebut sesuai dengan bidang kemampuannya," kata Basuki di Balaikota Jakarta, Rabu (26/3/2014).\r\n\r\nSementara terkait dengan tingginya angka kekerasan terhadap anak, Basuki menilai banyak anak-anak yang dieksploitasi oleh keluarganya sendiri. Karena itu, ia berharap agar Satgas Anti Kekerasan terhadap Anak dapat bekerja dengan maksimal dan segera menindaklanjuti laporan atau pun bukti mengenai pihak-pihak yang terbukti memperjualbelikan anak.\r\n\r\n"Harus terus dimonitor dan jangan sampai ada oknum yang nego-nego. Itu orang-orang yang mempekerjalan anak harus dilaporkan ke polisi dan dipenjarakan," tegas pria yang akrab disapa Ahok itu.\r\n\r\nBerdasarkan data Pusat Pelayanan Terpadu Pemberdayaan Perempuan dan Anak (P2TP2A) DKI, kekerasan terhadap anak didominasi kasus kekerasan seksual yang jumlahnya mencapai 53 persen, yakni kasus pencabulan 28 persen, kasus pemerkosaan 14 persen, dan lima persen untuk kasus pelecehan seksual. ', 'te1.jpg', '2014-03-26 20:15:54'),
(8, 'Facebook dan Google Kuasai Pasar Iklan "Mobile" ', 'KOMPAS.com — Belanja iklan di platform mobile tahun ini diprediksi akan mencapai 31,45 miliar dollar AS, meningkat 75,1 persen dibanding tahun lalu. Angka tersebut nyaris seperempat dari total belanja iklan secara keseluruhan pada 2014.\r\n\r\nDua perusahaan raksasa TI, Facebook dan Google, disebut sebagai pemacu utama meningkatnya iklan di perangkat genggam ini.\r\n\r\nHal tersebut terungkap dari data yang dirilis oleh situs eMarketer pada Rabu (19/3/2014). Bahkan, jika digabungkan, pendapatan Google dan Facebook dari iklan mobile pada 2013 mencapai 6,92 miliar dollar AS.\r\n\r\nKontribusi kedua raksasa TI tersebut mencapai 75 persen dari total pendapatan iklan mobile yang sebesar 9,2 persen. Dengan demikian, Facebook dan Google menguasai dua pertiga pangsa pasar iklan mobile di seluruh dunia.\r\n\r\nFacebook disebut eMarketer menjadi perusahaan yang pangsa pasarnya melesat. Pada 2012 lalu, jejaring sosial ini hanya menguasai 5,4 persen pasar iklan global. Namun, pada 2013, angkanya melejit menjadi 17,5 persen. eMarketer sendiri memprediksi pangsa pasar Facebook tahun ini akan mencapai 21,7 persen.\r\n\r\nSementara itu, Google masih menjadi perusahaan yang mendominasi pasar iklan mobile di seluruh dunia. Tahun 2013 lalu, Google menguasai 50 persen pangsa pasar iklan di segmen mobile. Untuk tahun ini, eMarketer memprediksi pangsa pasar Google justru akan menurun karena faktor pesatnya pertumbuhan iklan di Facebook.\r\n\r\nPasar iklan mobile sendiri akan terus tumbuh pada masa-masa mendatang. Semakin besarnya pendapatan iklan Facebook dari iklan mobile juga menjadi indikasi bahwa ke depannya Facebook akan lebih serius di segmen mobile.\r\n\r\nPada 2012 lalu, pendapatan iklan Facebook dari iklan di perangkat mobile hanya sebesar 11 persen dari total pendapatan perusahaan. Namun, pada 2013, iklan mobile Facebook menyumbang keuntungan hingga 45,1 persen.\r\n\r\nKini pada 2014, eMarketer memprediksi segmen mobile akan menyumbang 63,4 persen dari total keuntungan iklan Facebook. Sementara untuk Google, tahun ini pendapatan dari iklan mobile akan meningkat menjadi 33,8 persen dibanding tahun lalu sebesar 23,1 persen.', 'IMG_20180802_233046_553.jpg', '2019-05-29 14:08:16'),
(9, 'Empat Pemain Diberi Kesempatan Bergabung di Timnas U-19', 'YOGYAKARTA, KOMPAS.com - Selama 10 laga uji coba tour nusantara yang dijalani timnas U-19, setidaknya ada empat pemain dari beberapa klub yang layak bergabung di TC bersama Evan Dimas dkk. Hal itu diungkapkan pelatih Timnas U-23, Indra Sjafri, Rabu (5/3/2014).\r\n\r\nMeski sudah dipanggil untuk bergabung dalam TC, tetapi 4 pemain baru tetap harus menjalani tes sesuai dengan standar yang ditentukan, salah satunya tes fisik.\r\n\r\nTes fisik, lanjutnya akan digelar pada tanggal 6 Maret 2014. Dalam tes fisik ada 11 model yang harus di jalani oleh 4 pemain baru.\r\n\r\n"Jika lolos maka mereka akan bergabung dalam tim," ujar Indra.\r\n\r\nTerkait persiapan menghadapi tur nusantara ke pulau Kalimantan, Indra memaparkan masih akan menitikberatkan soal taktik dan teknik seperti yang sudah dilakukan di tour Jawa.', 'test1.jpg', '2019-05-29 14:08:05'),
(15, 'Highcharts Demo', 'xvxvxc', 'images.jpg', '2019-05-29 13:07:11'),
(16, 'baba', 'sdfsfsdf', 'azzMBXT7_400x400.jpg', '2019-05-29 13:07:26'),
(17, 'Highcharts Demo', 'sssssssssssssssssssssssssss', 'images.jpg', '2019-05-29 14:21:16'),
(18, 'dddsgsd', 'dsfdgdfgdfgdfg', 'tambah fitur.jpg', '2019-06-15 13:36:13'),
(19, 'ssssss', 'ssssssss', 'tambah fitur.jpg', '2019-06-15 13:36:33'),
(20, 'dddsgsd', 'sssssssssss', 'lapor.jpg', '2019-06-16 13:07:56'),
(21, 'dddsgsd', 'dddddddddddd', 'lapor.jpg', '2019-06-16 13:15:08'),
(23, 'ssssss', 'e', 'download-1-300x202.jpg', '2019-10-09 15:49:04'),
(25, 'test', 'sssssss', '_99322324_043695299-1.jpg', '2019-10-10 19:26:33'),
(26, 'baru', 'sfsfdsfdsfds', 'asuran.jpg', '2019-10-12 14:07:40'),
(27, 'jarwof', 'wesasasdas', 'img2.jpg', '2019-12-03 14:57:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_tbl`
--

CREATE TABLE IF NOT EXISTS `product_tbl` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `name_product` varchar(250) NOT NULL,
  `kategori` text NOT NULL,
  `gambar_product` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `detail` varchar(10000) NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `product_tbl`
--

INSERT INTO `product_tbl` (`id_product`, `name_product`, `kategori`, `gambar_product`, `price`, `discount`, `detail`) VALUES
(7, 'Celana Jemuran', 'Celana Pasang', 'big-04.jpg', 200000, 20000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae condimentum erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed posuere, purus at efficitur hendrerit, augue elit lacinia arcu, a eleifend sem elit et nunc. Sed rutrum vestibulum est, sit amet cursus dolor fermentum vel. Suspendisse mi nibh, congue et ante et, commodo mattis lacus. Duis varius finibus purus sed venenatis. Vivamus varius metus quam, id dapibus velit mattis eu. Praesent et semper risus. Vestibulum erat erat, condimentum at elit at, bibendum placerat orci. Nullam gravida velit mauris, in pellentesque urna pellentesque viverra. Nullam non pellentesque justo, et ultricies neque. Praesent vel metus rutrum, tempus erat a, rutrum ante. Quisque interdum efficitur nunc vitae consectetur. Suspendisse venenatis, tortor non convallis interdum, urna mi molestie eros, vel tempor justo lacus ac justo. Fusce id enim a erat fringilla sollicitudin ultrices vel metus. '),
(8, 'Tas Belum Laku Sama Sekali', 'Celana Wanita dan Pria', 'item-04.jpg', 1000000, 25000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae condimentum erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed posuere, purus at efficitur hendrerit, augue elit lacinia arcu, a eleifend sem elit et nunc. Sed rutrum vestibulum est, sit amet cursus dolor fermentum vel. Suspendisse mi nibh, congue et ante et, commodo mattis lacus. Duis varius finibus purus sed venenatis. Vivamus varius metus quam, id dapibus velit mattis eu. Praesent et semper risus. Vestibulum erat erat, condimentum at elit at, bibendum placerat orci. Nullam gravida velit mauris, in pellentesque urna pellentesque viverra. Nullam non pellentesque justo, et ultricies neque. Praesent vel metus rutrum, tempus erat a, rutrum ante. Quisque interdum efficitur nunc vitae consectetur. Suspendisse venenatis, tortor non convallis interdum, urna mi molestie eros, vel tempor justo lacus ac justo. Fusce id enim a erat fringilla sollicitudin ultrices vel metus. '),
(9, 'Tas Tahun Lalu', 'Tas Unik', 'item-05.jpg', 1000000, 25000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae condimentum erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed posuere, purus at efficitur hendrerit, augue elit lacinia arcu, a eleifend sem elit et nunc. Sed rutrum vestibulum est, sit amet cursus dolor fermentum vel. Suspendisse mi nibh, congue et ante et, commodo mattis lacus. Duis varius finibus purus sed venenatis. Vivamus varius metus quam, id dapibus velit mattis eu. Praesent et semper risus. Vestibulum erat erat, condimentum at elit at, bibendum placerat orci. Nullam gravida velit mauris, in pellentesque urna pellentesque viverra. Nullam non pellentesque justo, et ultricies neque. Praesent vel metus rutrum, tempus erat a, rutrum ante. Quisque interdum efficitur nunc vitae consectetur. Suspendisse venenatis, tortor non convallis interdum, urna mi molestie eros, vel tempor justo lacus ac justo. Fusce id enim a erat fringilla sollicitudin ultrices vel metus. '),
(10, 'Sepatu Sumpit', 'Sepatu Unik', 'item-06.jpg', 1000000, 75000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae condimentum erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed posuere, purus at efficitur hendrerit, augue elit lacinia arcu, a eleifend sem elit et nunc. Sed rutrum vestibulum est, sit amet cursus dolor fermentum vel. Suspendisse mi nibh, congue et ante et, commodo mattis lacus. Duis varius finibus purus sed venenatis. Vivamus varius metus quam, id dapibus velit mattis eu. Praesent et semper risus. Vestibulum erat erat, condimentum at elit at, bibendum placerat orci. Nullam gravida velit mauris, in pellentesque urna pellentesque viverra. Nullam non pellentesque justo, et ultricies neque. Praesent vel metus rutrum, tempus erat a, rutrum ante. Quisque interdum efficitur nunc vitae consectetur. Suspendisse venenatis, tortor non convallis interdum, urna mi molestie eros, vel tempor justo lacus ac justo. Fusce id enim a erat fringilla sollicitudin ultrices vel metus. '),
(11, 'Sepatu Sebelah', 'Sepatu Unik', 'prod-5.jpg', 1000000, 85000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae condimentum erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed posuere, purus at efficitur hendrerit, augue elit lacinia arcu, a eleifend sem elit et nunc. Sed rutrum vestibulum est, sit amet cursus dolor fermentum vel. Suspendisse mi nibh, congue et ante et, commodo mattis lacus. Duis varius finibus purus sed venenatis. Vivamus varius metus quam, id dapibus velit mattis eu. Praesent et semper risus. Vestibulum erat erat, condimentum at elit at, bibendum placerat orci. Nullam gravida velit mauris, in pellentesque urna pellentesque viverra. Nullam non pellentesque justo, et ultricies neque. Praesent vel metus rutrum, tempus erat a, rutrum ante. Quisque interdum efficitur nunc vitae consectetur. Suspendisse venenatis, tortor non convallis interdum, urna mi molestie eros, vel tempor justo lacus ac justo. Fusce id enim a erat fringilla sollicitudin ultrices vel metus. '),
(12, 'Sepatu Hanya Alas', 'Sepatu Unik', 'prod-3.jpg', 1000000, 45000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae condimentum erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed posuere, purus at efficitur hendrerit, augue elit lacinia arcu, a eleifend sem elit et nunc. Sed rutrum vestibulum est, sit amet cursus dolor fermentum vel. Suspendisse mi nibh, congue et ante et, commodo mattis lacus. Duis varius finibus purus sed venenatis. Vivamus varius metus quam, id dapibus velit mattis eu. Praesent et semper risus. Vestibulum erat erat, condimentum at elit at, bibendum placerat orci. Nullam gravida velit mauris, in pellentesque urna pellentesque viverra. Nullam non pellentesque justo, et ultricies neque. Praesent vel metus rutrum, tempus erat a, rutrum ante. Quisque interdum efficitur nunc vitae consectetur. Suspendisse venenatis, tortor non convallis interdum, urna mi molestie eros, vel tempor justo lacus ac justo. Fusce id enim a erat fringilla sollicitudin ultrices vel metus. ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_tbl`
--

CREATE TABLE IF NOT EXISTS `user_tbl` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(300) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL,
  `user` varchar(200) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `user_tbl`
--

INSERT INTO `user_tbl` (`user_id`, `address`, `gender`, `phone`, `user`) VALUES
(1, 'jJl. Bambu Larangan Rt 04 rw 02', 'Laki-laki', 812121212, 'Erwin Nurhadi'),
(2, 'Jl. Panjang Gapen Dhek Rt 06 Rw 07', 'Perempuan', 856898989, 'Yuzuka');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
