-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 01 May 2020, 14:48:16
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `tez`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anasayfa`
--

CREATE TABLE `anasayfa` (
  `ana_id` int(11) NOT NULL,
  `ana_duyuru` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ana_res1` text NOT NULL,
  `ana_res2` text NOT NULL,
  `ana_res3` text NOT NULL,
  `ana_about` text NOT NULL,
  `ana_contact` text NOT NULL,
  `ana_hours` text NOT NULL,
  `ana_public` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `anasayfa`
--

INSERT INTO `anasayfa` (`ana_id`, `ana_duyuru`, `ana_res1`, `ana_res2`, `ana_res3`, `ana_about`, `ana_contact`, `ana_hours`, `ana_public`) VALUES
(0, '<p>-<strong>BU HAFTA N&Uuml;MERİK DERSİ YOK &nbsp;</strong></p>\r\n\r\n<p>-Staj Defterlerinizi Danışmana Bırakabilirsiniz ! 02.05.2020</p>\r\n\r\n<p>-deneme</p>\r\n\r\n<p>-duyurular</p>\r\n\r\n<p>5000char değeri kadar duyuru imkanı</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>- Konuşma Analizi ve İşleme Teknikleri&nbsp;</p>\r\n\r\n<p>- Sinyal İşleme</p>\r\n\r\n<p>- Sinyal İşleme Kuramı ve Metotları</p>\r\n', '<p>&nbsp;M&uuml;hendislik Temel Alanı</p>\r\n\r\n<p>- Elektrik-Elektronik M&uuml;hendisliği</p>\r\n\r\n<p>- İşaret İşleme</p>\r\n\r\n<p>- İstatistiksel Analiz</p>\r\n', '<p>Engineering, Electrical &amp; Electronic</p>\r\n\r\n<p>Computer Science, Artificial Intelligence</p>\r\n\r\n<p>Statistics &amp; Probability</p>\r\n', '<p>&nbsp; &nbsp; &nbsp; &nbsp;I&#39;m an Associate Professor at the Department of Computer Engineering in&nbsp;&Ccedil;ukurova University.&nbsp;Our department is located in Adana, Turkey. My primary research focus is on high dynamic range (HDR) imaging with an emphasis on color and perception.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; I graduated from the Department of Electric&amp;Elecronical Engineering at Hacettepe in <strong>1987</strong>. I obtained my Ph.D. in electrical engineering from the University of Clemson. I worked as a member of the OpenGL driver development team at Advanced Micro Devices for three years.</p>\r\n', '<h3><strong>Mail :&nbsp;</strong>ztufekci@cu.edu.tr</h3>\r\n\r\n<h3><strong>Web :&nbsp;</strong><a href=\"http://aves.cu.edu.tr/ztufekci/\">http://aves.cu.edu.tr/ztufekci/</a></h3>\r\n\r\n<h3><strong>Phone :&nbsp;</strong><a href=\"tel:+90 322 3387101\">+90 322 3387101</a>&nbsp;<strong>Internal :</strong>&nbsp;2663</h3>\r\n\r\n<h3><strong>Office :&nbsp;</strong>Computer Engineering Department</h3>\r\n\r\n<h3><strong>Address :&nbsp;</strong>Computer Engineering Departments</h3>\r\n', '- Available Office Hours Are Wed 1-3 And Fri 11-13 ', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `circuitders`
--

CREATE TABLE `circuitders` (
  `circuitders_id` int(11) NOT NULL,
  `circuitders_hafta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `circuitders`
--

INSERT INTO `circuitders` (`circuitders_id`, `circuitders_hafta`) VALUES
(1, 'weeeeek'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, 'MIDTERM'),
(9, '9'),
(10, '10'),
(11, '11'),
(12, '12'),
(13, '13'),
(14, '14'),
(15, '15'),
(16, 'FINAL');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `circuitdersfoto`
--

CREATE TABLE `circuitdersfoto` (
  `circuitdersfoto_id` int(11) NOT NULL,
  `circuitders_pdf` varchar(250) NOT NULL,
  `circuitders_id` int(11) NOT NULL,
  `circuitdersfoto_dosyayol` varchar(650) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `circuitdersfoto`
--

INSERT INTO `circuitdersfoto` (`circuitdersfoto_id`, `circuitders_pdf`, `circuitders_id`, `circuitdersfoto_dosyayol`) VALUES
(2, 'task.pdf', 1, 'dimg/dosya/21867207982951924566task.pdf');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersler`
--

CREATE TABLE `dersler` (
  `oop_id` int(11) NOT NULL,
  `oop_details` text NOT NULL,
  `oop_book` text NOT NULL,
  `oop_asses` varchar(250) NOT NULL,
  `numeric_details` text NOT NULL,
  `numeric_book` text NOT NULL,
  `numeric_asses` text NOT NULL,
  `paralel_details` text NOT NULL,
  `paralel_book` text NOT NULL,
  `paralel_asses` text NOT NULL,
  `circuit_details` text NOT NULL,
  `circuit_book` text NOT NULL,
  `circuit_asses` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `dersler`
--

INSERT INTO `dersler` (`oop_id`, `oop_details`, `oop_book`, `oop_asses`, `numeric_details`, `numeric_book`, `numeric_asses`, `paralel_details`, `paralel_book`, `paralel_asses`, `circuit_details`, `circuit_book`, `circuit_asses`) VALUES
(0, '<p>In this course, the main goal is to define the methods and approaches used in OOP.</p>\r\n', '<p>Daniel Jurafsky and James H. Martin, Speech and language processing an introduction to natural language processing, computational linguistics, and speech, 2000.</p>\r\n', '<p>40% Midterm exam + 60% Final exam (and an extra point project)</p>\r\n', '<p>In this course, the main goal is to define the methods and approaches used in Numeric.</p>\r\n', '<p>Daniel Jurafsky and James H. Martin, Speech and language processing an introduction to natural language processing, computational linguistics, and speech, 2000.</p>\r\n', '<p>40% Midterm exam + 60% Final exam (and an extra point project)</p>\r\n', '<p>In this course, the main goal is to define the methods and approaches used in Paralel.</p>\r\n', '<p>Daniel Jurafsky and James H. Martin, Speech and language processing an introduction to natural language processing, computational linguistics, and speech, 2000.</p>\r\n', '<p>40% Midterm exam + 60% Final exam (and an extra point project)</p>\r\n', '<p>In this course, the main goal is to define the methods and approaches used in Circuit.</p>\r\n', '<p>Daniel Jurafsky and James H. Martin, Speech and language processing an introduction to natural language processing, computational linguistics, and speech, 2000.</p>\r\n', '<p>40% Midterm exam + 60% Final exam (and an extra point project)</p>\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `duyuru_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`duyuru_zaman`, `hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
('2020-04-18 20:42:37', 0, 'Ems Elektronik Shopping', '<p><em><strong>BU HAFTA N&Uuml;MERİK DERSİ YOK 02.05.2020</strong></em></p>\r\n', 'iTz2_vOFdII', 'emselektronik vizyon', 'emselektronik misyon');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_resim` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tc` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ad` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_mail` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gsm` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adres` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_il` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ilce` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_unvan` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`) VALUES
(1, '2019-08-01 16:17:22', '', '159951753224', 'özgün', 'ozgungizlenci@gmail.com', '5366437052', '6221635', 'Özgün Gizlenci', '', '', '', '', '5', 1),
(12, '2020-04-25 19:15:19', '', '00000', '', 'ztufekci@cu.edu.tr', '000', '159159', 'Zekeriya Tüfekçi', '0000', 'adana', 'sarıçam', '', '5', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makale`
--

CREATE TABLE `makale` (
  `makale_id` int(11) NOT NULL,
  `makale_icerik` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `makale`
--

INSERT INTO `makale` (`makale_id`, `makale_icerik`) VALUES
(15, '<p>T&uuml;fekci Z., &quot;Convolutional Bias Removal Based On Normalizing The-Filterbank Spectral Magnitude&quot;, IEEE SIGNAL PROCESSING LETTERS, vol.14, pp.485-488, 2007</p>\r\n'),
(16, '<p>T&uuml;fekci Z., Gowdy J.N., Gurbuz S., Patterson E., &quot; Applied Mel-Frequency Discrete Wavelet Coefficients And Parallel Model Compensation For Noise-Robust Speech Recognition &quot;, Speech Communication, vol.48, pp.1294-1307, 2006&nbsp;</p>\r\n'),
(17, '<p>Patterson E., Gurbuz S., T&uuml;fekci Z., Gowdy J., &quot;Moving-Talker, Speaker-Independent Feature Study, And Baseline Results Using The Wave Multimodal Speech Corpus&quot;, EURASIP JOURNAL ON APPLIED SIGNAL PROCESSING, pp.1189-1201, 2002&nbsp;</p>\r\n'),
(18, '<p>Gurbuz S., Patterson E., T&uuml;fekci Z., Gowdy J., &quot; Affine-Invariant Visual Features Contain Supplementary Information To Enhance Speech Recognition &quot;, LECTURE NOTES IN COMPUTER SCIENCE, vol.2091, pp.175-181, 2002</p>\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makale2`
--

CREATE TABLE `makale2` (
  `makale2_id` int(11) NOT NULL,
  `makale2_icerik` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `makale2`
--

INSERT INTO `makale2` (`makale2_id`, `makale2_icerik`) VALUES
(5, '<p>T&uuml;fekci Z., Gowdy J., &quot;Subband Feature Extraction Using Lapped Orthogonal Transform For Speech Recognition&quot;, IEEE International Conference on Acoustics, Speech, and Signal Processing, Salt Lake City, ABD, 7-11 Mayıs 2011, vol.1, pp.149-152</p>\r\n'),
(6, '<p>Gurbuz S., T&uuml;fekci Z., Patterson E., Gowdy J., &quot;Application Of Affine-Invariant Fourier Descriptors To Lipreading For Audio-Visual Speech Recognition&quot;, IEEE International Conference on Acoustics, Speech, and Signal Processing, Salt Lake City, ABD, 7-11 Mayıs 2011, vol.1, pp.177-180&nbsp;(Abstract)</p>\r\n'),
(7, '<p>T&uuml;fekci Z., Gowdy J., Gurbuz S., Patterson E., &quot;Applying Parallel Model Compensation With Mel-Frequency Discrete Wavelet Coefficients For Noise-Robust Speech Recognition&quot;, European Conference on Speech Communication and Technology, Aalborg, DANIMARKA, 3-7 Eyl&uuml;l 2001, vol.1, pp.120-123&nbsp;(Abstract)</p>\r\n'),
(8, '<p>Gurbuz S., Patterson E., T&uuml;fekci Z., Gowdy J., &quot;Lip-Reading From Parametric Lip Contours For Audio-Visual Speech Recognition&quot;, European Conference on Speech Communication and Technology, Aalborg, DANIMARKA, 3-7 Eyl&uuml;l 2001, vol.1, pp.140-143&nbsp;(Abstract)</p>\r\n'),
(9, '<p>Gurbuz S., Gowdy J., T&uuml;fekci Z., &quot;Speech Spectrogram Based Model Adaptation For Speaker Identification &quot;, Southeastcon 2000, Nashville, ABD, 7-9 Nisan 2000, vol.1, pp.110-115</p>\r\n'),
(10, '<p>T&uuml;fekci Z., Gowdy J., &quot;Feature Extraction Using Discrete Wavelet Transform For Speech Recognition &quot;, Southeastcon 2000. , Nashville, ABD, 7-9 Nisan 2000, vol.1, pp.116-123&nbsp;(Abstract)</p>\r\n'),
(11, '<p>Gowdy J., T&uuml;fekci Z., &quot;Mel-Scaled Discrete Wavelet Coefficients For Speech Recognition&quot;, 2000 IEEE INTERNATIONAL CONFERENCE ON ACOUSTICS, SPEECH, AND SIGNAL PROCESSING, İSTANBUL, T&Uuml;RKIYE, 5-9 Haziran 2000, vol.5, pp.1351-1354&nbsp;(Abstract)</p>\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `numericders`
--

CREATE TABLE `numericders` (
  `numericders_id` int(11) NOT NULL,
  `numericders_hafta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `numericders`
--

INSERT INTO `numericders` (`numericders_id`, `numericders_hafta`) VALUES
(1, 'WEEK1'),
(2, '2. hafta konusu'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, 'MIDTERM'),
(9, '9'),
(10, '10'),
(11, '11'),
(12, '12'),
(13, '13'),
(14, '14'),
(15, '15'),
(16, '16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `numericdersfoto`
--

CREATE TABLE `numericdersfoto` (
  `numericdersfoto_id` int(11) NOT NULL,
  `numericders_pdf` varchar(250) NOT NULL,
  `numericders_id` int(11) NOT NULL,
  `numericdersfoto_dosyayol` varchar(650) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `numericdersfoto`
--

INSERT INTO `numericdersfoto` (`numericdersfoto_id`, `numericders_pdf`, `numericders_id`, `numericdersfoto_dosyayol`) VALUES
(2, 'task.pdf', 1, 'dimg/dosya/20325226302592029358task.pdf');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oopders`
--

CREATE TABLE `oopders` (
  `oopders_id` int(11) NOT NULL,
  `oopders_hafta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `oopders`
--

INSERT INTO `oopders` (`oopders_id`, `oopders_hafta`) VALUES
(1, 'Discrete Mathematical Structures reviews'),
(2, 'Deterministic Finite Automata (DFA) and Non-Deterministic Finite Automata (NFA)'),
(3, 'WEEK3'),
(4, 'WEEK4'),
(5, 'WEEK5'),
(6, 'WEEK6'),
(7, 'WEEK7'),
(8, 'MIDTERM EXAM'),
(9, 'WEEK9'),
(10, 'WEEK10'),
(11, 'WEEK11'),
(12, 'WEEK12'),
(13, 'WEEK13'),
(14, 'WEEK14'),
(15, 'WEEK15'),
(16, 'FINAL');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oopdersfoto`
--

CREATE TABLE `oopdersfoto` (
  `oopdersfoto_id` int(11) NOT NULL,
  `oopders_pdf` varchar(250) NOT NULL,
  `oopders_id` int(11) NOT NULL,
  `oopdersfoto_dosyayol` varchar(650) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `oopdersfoto`
--

INSERT INTO `oopdersfoto` (`oopdersfoto_id`, `oopders_pdf`, `oopders_id`, `oopdersfoto_dosyayol`) VALUES
(25, 'task.pdf', 1, 'dimg/dosya/23062282742310830981task.pdf');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `paralelders`
--

CREATE TABLE `paralelders` (
  `paralelders_id` int(11) NOT NULL,
  `paralelders_hafta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `paralelders`
--

INSERT INTO `paralelders` (`paralelders_id`, `paralelders_hafta`) VALUES
(1, 'Birinci hafta konusu'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, 'MIDTERM'),
(9, '9'),
(10, '10'),
(11, '11'),
(12, '12'),
(13, '13'),
(14, '14'),
(15, '15'),
(16, '16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `paraleldersfoto`
--

CREATE TABLE `paraleldersfoto` (
  `paraleldersfoto_id` int(11) NOT NULL,
  `paralelders_pdf` varchar(250) NOT NULL,
  `paralelders_id` int(11) NOT NULL,
  `paraleldersfoto_dosyayol` varchar(650) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `paraleldersfoto`
--

INSERT INTO `paraleldersfoto` (`paraleldersfoto_id`, `paralelders_pdf`, `paralelders_id`, `paraleldersfoto_dosyayol`) VALUES
(2, 'teklif_317663365.pdf', 1, 'dimg/dosya/24352272372862725872teklif_317663365.pdf');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `circuitders`
--
ALTER TABLE `circuitders`
  ADD PRIMARY KEY (`circuitders_id`);

--
-- Tablo için indeksler `circuitdersfoto`
--
ALTER TABLE `circuitdersfoto`
  ADD PRIMARY KEY (`circuitdersfoto_id`);

--
-- Tablo için indeksler `dersler`
--
ALTER TABLE `dersler`
  ADD PRIMARY KEY (`oop_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `makale`
--
ALTER TABLE `makale`
  ADD PRIMARY KEY (`makale_id`);

--
-- Tablo için indeksler `makale2`
--
ALTER TABLE `makale2`
  ADD PRIMARY KEY (`makale2_id`);

--
-- Tablo için indeksler `numericders`
--
ALTER TABLE `numericders`
  ADD PRIMARY KEY (`numericders_id`);

--
-- Tablo için indeksler `numericdersfoto`
--
ALTER TABLE `numericdersfoto`
  ADD PRIMARY KEY (`numericdersfoto_id`);

--
-- Tablo için indeksler `oopders`
--
ALTER TABLE `oopders`
  ADD PRIMARY KEY (`oopders_id`);

--
-- Tablo için indeksler `oopdersfoto`
--
ALTER TABLE `oopdersfoto`
  ADD PRIMARY KEY (`oopdersfoto_id`);

--
-- Tablo için indeksler `paralelders`
--
ALTER TABLE `paralelders`
  ADD PRIMARY KEY (`paralelders_id`);

--
-- Tablo için indeksler `paraleldersfoto`
--
ALTER TABLE `paraleldersfoto`
  ADD PRIMARY KEY (`paraleldersfoto_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `circuitders`
--
ALTER TABLE `circuitders`
  MODIFY `circuitders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `circuitdersfoto`
--
ALTER TABLE `circuitdersfoto`
  MODIFY `circuitdersfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `dersler`
--
ALTER TABLE `dersler`
  MODIFY `oop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `makale`
--
ALTER TABLE `makale`
  MODIFY `makale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `makale2`
--
ALTER TABLE `makale2`
  MODIFY `makale2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `numericders`
--
ALTER TABLE `numericders`
  MODIFY `numericders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `numericdersfoto`
--
ALTER TABLE `numericdersfoto`
  MODIFY `numericdersfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `oopders`
--
ALTER TABLE `oopders`
  MODIFY `oopders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `oopdersfoto`
--
ALTER TABLE `oopdersfoto`
  MODIFY `oopdersfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `paralelders`
--
ALTER TABLE `paralelders`
  MODIFY `paralelders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `paraleldersfoto`
--
ALTER TABLE `paraleldersfoto`
  MODIFY `paraleldersfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
