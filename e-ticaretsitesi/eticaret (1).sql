-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 Haz 2023, 18:45:31
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--
CREATE DATABASE IF NOT EXISTS `eticaret` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `eticaret`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_baslik` varchar(100) NOT NULL,
  `ayar_description` varchar(255) NOT NULL,
  `ayar_keywords` varchar(255) NOT NULL,
  `ayar_facebook` varchar(150) NOT NULL,
  `ayar_twitter` varchar(150) NOT NULL,
  `ayar_instagram` varchar(150) NOT NULL,
  `ayar_youtube` varchar(150) NOT NULL,
  `ayar_msunucu` varchar(100) NOT NULL,
  `ayar_mport` int(4) NOT NULL,
  `ayar_mkadi` varchar(100) NOT NULL,
  `ayar_msifre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_baslik`, `ayar_description`, `ayar_keywords`, `ayar_facebook`, `ayar_twitter`, `ayar_instagram`, `ayar_youtube`, `ayar_msunucu`, `ayar_mport`, `ayar_mkadi`, `ayar_msifre`) VALUES
(1, 'E Ticaret Sitesi Çalışması', 'E ticaret site çalışması üzerine kodlanmış sayfadır.', 'php, mysql, html, eticaret', 'http://facebook.com', '', '', '', 'smtp.gmail.com', 123, 'deneme@abc.com', '1234');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_mail` varchar(150) NOT NULL,
  `kullanici_sifre` varchar(20) NOT NULL,
  `kullanici_sifreunuttum` varchar(20) NOT NULL,
  `kullanici_adsoyad` varchar(100) NOT NULL,
  `kullanici_tc` varchar(11) NOT NULL,
  `kullanici_adres` text NOT NULL,
  `kullanici_tel` varchar(15) NOT NULL,
  `kullanici_yetki` int(1) NOT NULL,
  `kullanici_kayit` timestamp NOT NULL DEFAULT current_timestamp(),
  `kullanici_songiris` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_mail`, `kullanici_sifre`, `kullanici_sifreunuttum`, `kullanici_adsoyad`, `kullanici_tc`, `kullanici_adres`, `kullanici_tel`, `kullanici_yetki`, `kullanici_kayit`, `kullanici_songiris`) VALUES
(1, 'admin@abc.com', '1234', '', 'Abdülkadir Santalu', '', '', '', 1, '2023-06-21 13:09:16', '2023-06-21 15:50:35');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `urun_adi` varchar(150) DEFAULT NULL,
  `urun_aciklama` text DEFAULT NULL,
  `urun_fiyat` double DEFAULT NULL,
  `urun_indirim` int(11) DEFAULT NULL,
  `urun_stok` int(11) DEFAULT NULL,
  `urun_vitrin` tinyint(1) DEFAULT NULL,
  `urun_eklenmetarihi` timestamp NULL DEFAULT current_timestamp(),
  `urun_kategori_id` int(11) DEFAULT NULL,
  `urun_renk` varchar(200) DEFAULT NULL,
  `urun_beden` varchar(200) DEFAULT NULL,
  `urun_marka` varchar(50) DEFAULT NULL,
  `urun_gosterilme` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `urun_adi`, `urun_aciklama`, `urun_fiyat`, `urun_indirim`, `urun_stok`, `urun_vitrin`, `urun_eklenmetarihi`, `urun_kategori_id`, `urun_renk`, `urun_beden`, `urun_marka`, `urun_gosterilme`) VALUES
(2, 'Deneme 2', 'Deneme Açıklama', 20, 0, 100, 0, '2019-10-14 05:31:35', 1, 'mavi,siyah', '50,52', 'abc', 0),
(3, 'Deneme 3', 'Deneme Açıklama', 140, 0, 100, 0, '2019-10-14 05:31:35', 1, 'mavi,siyah', '50,52', 'abc', 0),
(4, 'Deneme 4', 'Deneme Açıklama', 110, 0, 100, 0, '2019-10-14 05:31:35', 1, 'mavi,siyah', '50,52', 'abc', 0),
(5, 'Deneme 5', 'Deneme Açıklama', 150, 0, 100, 1, '2019-10-14 05:31:35', 1, 'mavi,siyah', '50,52', 'abc', 0),
(6, 'Deneme 6', 'Deneme Açıklama', 150, 20, 100, 0, '2019-10-14 05:31:35', 1, 'mavi,siyah', '50,52', 'abc', 0),
(7, 'Deneme 7', 'Deneme Açıklama', 120, 0, 100, 1, '2019-10-14 05:31:35', 1, 'mavi,siyah', '50,52', 'abc', 0),
(8, 'Deneme 8', 'Deneme Açıklama', 310, 0, 100, 1, '2019-10-14 05:31:35', 1, 'mavi,siyah', '50,52', 'abc', 0),
(9, 'Deneme 9', 'Deneme Açıklama', 510, 50, 100, 0, '2019-10-14 05:31:35', 1, 'mavi,siyah', '50,52', 'abc', 1),
(11, 'Deneme 11', 'Deneme Açıklama', 3100000, 0, 100, 1, '2019-10-14 05:31:35', 1, 'mavi,siyah', '50,52', 'abc', 4),
(12, 'Deneme 12', 'Deneme Açıklama', 110, 0, 100, 1, '2019-10-14 05:31:35', 1, 'mavi,siyah', '50,52', 'abc', 11),
(13, 'Deneme 13', 'Deneme Açıklama', 22310, 0, 100, 1, '2019-10-14 05:31:35', 1, 'mavi,siyah', '50,52', 'abc', 2),
(14, 'Deneme 14', 'Deneme Açıklama', 410, 0, 100, 1, '2019-10-14 05:31:35', 1, 'mavi,siyah', '50,52', 'abc', 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayar`
--
ALTER TABLE `ayar`
  MODIFY `ayar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
