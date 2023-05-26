-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 30 Nis 2023, 14:18:22
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
-- Veritabanı: `depotakip`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `id` int(11) NOT NULL,
  `kullanici_adi` varchar(20) NOT NULL,
  `sifre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`id`, `kullanici_adi`, `sifre`) VALUES
(1, 'ishak', '123'),
(2, 'mehmet', '123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_takip`
--

CREATE TABLE `urun_takip` (
  `urun_id` int(11) NOT NULL,
  `urun_adi` varchar(25) NOT NULL,
  `urun_ozelligi` varchar(25) NOT NULL,
  `urun_adet` varchar(25) NOT NULL,
  `urun_tarih` datetime NOT NULL DEFAULT current_timestamp(),
  `bulundugu_depo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `urun_takip`
--

INSERT INTO `urun_takip` (`urun_id`, `urun_adi`, `urun_ozelligi`, `urun_adet`, `urun_tarih`, `bulundugu_depo`) VALUES
(2, 'toprak', 'bakterili', '1000 kg', '2023-04-11 00:00:00', '5'),
(16, 'patlican', 'kemer patlican', '10000 kg', '2023-04-29 18:27:45', '4 depo soğutma odası'),
(17, 'kömür', 'odun kömürü', '20000 kg ', '2023-04-29 18:28:15', '4'),
(19, 'iplik', 'siyah 442/Gb', '1450 kg', '2023-04-30 14:34:56', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_takip`
--
ALTER TABLE `urun_takip`
  ADD PRIMARY KEY (`urun_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `urun_takip`
--
ALTER TABLE `urun_takip`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
