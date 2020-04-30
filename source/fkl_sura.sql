-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2020 at 09:43 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fklavyenet`
--

-- --------------------------------------------------------

--
-- Table structure for table `fkl_sura`
--

CREATE TABLE `fkl_sura` (
  `id` int(11) NOT NULL,
  `verses` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `eng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `basmala` tinyint(4) NOT NULL DEFAULT '1',
  `sajdah` tinyint(1) DEFAULT NULL,
  `shortcut` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fkl_sura`
--

INSERT INTO `fkl_sura` (`id`, `verses`, `name`, `en`, `eng`, `tr`, `basmala`, `sajdah`, `shortcut`) VALUES
(1, 7, 'الفاتحة', 'Al-Fatihah', 'The Opening', 'Fâtiha', 0, NULL, NULL),
(2, 286, 'البقرة', 'Al-Baqarah', 'The Heifer', 'Bakara', 1, NULL, NULL),
(3, 200, 'آل عمران', 'Aal-Imran', 'Family of Imran', 'Âl-i İmrân', 1, NULL, NULL),
(4, 176, 'النساء', 'An-Nisa', 'Women', 'Nisâ', 1, NULL, NULL),
(5, 120, 'المائدة', 'Al-Maidah', 'The Table', 'Mâide', 1, NULL, NULL),
(6, 165, 'الأنعام', 'Al-An’am', 'Livestock', 'En’âm', 1, NULL, NULL),
(7, 206, 'الأعراف', 'Al-A’raf', 'The Elevations', 'A’râf', 1, 1, NULL),
(8, 75, 'الأنفال', 'Al-Anfal', 'The Spoils', 'Enfâl', 1, NULL, NULL),
(9, 129, 'التوبة', 'At-Taubah', 'Repentance', 'Tevbe', 0, NULL, NULL),
(10, 109, 'يونس', 'Yunus', 'Jonah', 'Yunus', 1, NULL, NULL),
(11, 123, 'هود', 'Hud', 'Hud', 'Hûd', 1, NULL, NULL),
(12, 111, 'يوسف', 'Yusuf', 'Joseph', 'Yusuf', 1, NULL, NULL),
(13, 43, 'الرعد', 'Ar-Ra’d', 'Thunder', 'Ra’d', 1, 1, NULL),
(14, 52, 'إبراهيم', 'Ibrahim', 'Abraham', 'İbrahim', 1, NULL, NULL),
(15, 99, 'الحجر', 'Al-Hijr', 'The Rock', 'Hicr', 1, NULL, NULL),
(16, 128, 'النحل', 'An-Nahl', 'The Bee', 'Nahl', 1, 1, NULL),
(17, 111, 'بني إسرائيل', 'Al-Isra', 'Children of Israel', 'İsrâ', 1, 1, NULL),
(18, 110, 'الكهف', 'Al-Kahf', 'The Cave', 'Kehf', 1, NULL, NULL),
(19, 98, 'مريم', 'Maryam', 'Mary', 'Meryem', 1, 1, NULL),
(20, 135, 'طه', 'Taha', 'Ta-Ha', 'Tâ-Hâ', 1, NULL, NULL),
(21, 112, 'الأنبياء', 'Al-Anbiya', 'The Prophets', 'Enbiyâ', 1, NULL, NULL),
(22, 78, 'الحج', 'Al-Hajj', 'The Pilgrimage', 'Hac', 1, 1, NULL),
(23, 118, 'المؤمنون', 'Al-Mu’minoon', 'The Believers', 'Mü’minûn', 1, NULL, NULL),
(24, 64, 'النور', 'An-Noor', 'The Light', 'Nûr', 1, NULL, NULL),
(25, 77, 'الفرقان', 'Al-Furqan', 'The Criterion', 'Furkan', 1, 1, NULL),
(26, 227, 'الشعراء', 'Ash-Shuara', 'The Poets', 'Şuarâ', 1, NULL, NULL),
(27, 93, 'النمل', 'An-Naml', 'The Ant', 'Neml', 1, 1, NULL),
(28, 88, 'القصص', 'Al-Qasas', 'History', 'Kasas', 1, NULL, NULL),
(29, 69, 'العنكبوت', 'Al-Ankaboot', 'The Spider', 'Ankebût', 1, NULL, NULL),
(30, 60, 'الروم', 'Ar-Room', 'The Romans', 'Rûm', 1, NULL, NULL),
(31, 34, 'لقمان', 'Luqman', 'Luqman', 'Lokman', 1, NULL, NULL),
(32, 30, 'السجدة', 'As-Sajdah', 'Prostration', 'Secde', 1, 1, NULL),
(33, 73, 'الأحزاب', 'Al-Ahzab', 'The Confederates', 'Ahzâb', 1, NULL, NULL),
(34, 54, 'سبإ', 'Saba', 'Sheba', 'Sebe’', 1, NULL, NULL),
(35, 45, 'فاطر', 'Fatir', 'Originator', 'Fâtır', 1, NULL, NULL),
(36, 83, 'يس', 'Ya-seen', 'Ya-Seen', 'Yâsin', 1, NULL, 1),
(37, 182, 'الصافات', 'As-Saaffat', 'The Aligners', 'Sâffât', 1, NULL, NULL),
(38, 88, 'ص', 'Sad', 'Saad', 'Sâd', 1, 1, NULL),
(39, 75, 'الزمر', 'Az-Zumar', 'The Crowds', 'Zümer', 1, NULL, NULL),
(40, 85, 'غافر', 'Ghafir', 'Forgiver', 'Mü’min', 1, NULL, NULL),
(41, 54, 'فصلت', 'Fussilat', 'Detailed', 'Fussilet', 1, 1, NULL),
(42, 53, 'الشورى', 'Ash-Shura', 'Consultation', 'Şûrâ', 1, NULL, NULL),
(43, 89, 'الزخرف', 'Az-Zukhruf', 'Decorations', 'Zuhruf', 1, NULL, NULL),
(44, 59, 'الدخان', 'Ad-Dukhan', 'Smoke', 'Duhân', 1, NULL, 1),
(45, 37, 'الجاثية', 'Al-Jathiya', 'Kneeling', 'Câsiye', 1, NULL, NULL),
(46, 35, 'الأحقاف', 'Al-Ahqaf', 'The Dunes', 'Ahkaf', 1, NULL, NULL),
(47, 38, 'محمـد', 'Muhammad', 'Muhammad', 'Muhammed', 1, NULL, NULL),
(48, 29, 'الفتح', 'Al-Fath', 'Victory', 'Fetih', 1, NULL, 1),
(49, 18, 'الحـجـرات', 'Al-Hujurat', 'The Chambers', 'Hucurât', 1, NULL, NULL),
(50, 45, 'ق', 'Qaf', 'Qaf', 'Kaf', 1, NULL, NULL),
(51, 60, 'الذاريات', 'Adh-Dhariyat', 'The Spreaders', 'Zâriyât', 1, NULL, NULL),
(52, 49, 'الـطور', 'At-Tur', 'The Mount', 'Tûr', 1, NULL, NULL),
(53, 62, 'الـنجـم', 'An-Najm', 'The Star', 'Necm', 1, 1, NULL),
(54, 55, 'الـقمـر', 'Al-Qamar', 'The Moon', 'Kamer', 1, NULL, NULL),
(55, 78, 'الـرحـمـن', 'Ar-Rahman', 'The Compassionate', 'Rahmân', 1, NULL, 1),
(56, 96, 'الواقعـة', 'Al-Waqi’ah', 'The Inevitable', 'Vâkıa', 1, NULL, 1),
(57, 29, 'الحـديد', 'Al-Hadid', 'Iron', 'Hadid', 1, NULL, NULL),
(58, 22, 'الـمجادلـة', 'Al-Mujadilah', 'The Argument', 'Mücâdele', 1, NULL, NULL),
(59, 24, 'الـحـشـر', 'Al-Hashr', 'The Mobilization', 'Haşr', 1, NULL, NULL),
(60, 13, 'الـمـمـتـحنة', 'Al-Mumtahanah', 'She who is Tested', 'Mümtehine', 1, NULL, NULL),
(61, 14, 'الـصـف', 'As-Saff', 'Column', 'Saf', 1, NULL, NULL),
(62, 11, 'الـجـمـعـة', 'Al-Jumu’ah', 'Friday', 'Cum’a', 1, NULL, 1),
(63, 11, 'الـمنافقون', 'Al-Munafiqoon', 'The Hypocrites', 'Münâfikûn', 1, NULL, NULL),
(64, 18, 'الـتغابن', 'At-Taghabun', 'Gathering', 'Teğabün', 1, NULL, NULL),
(65, 12, 'الـطلاق', 'At-Talaq', 'Divorce', 'Talâk', 1, NULL, NULL),
(66, 12, 'الـتحريم', 'At-Tahrim', 'Prohibition', 'Tahrim', 1, NULL, NULL),
(67, 30, 'الـملك', 'Al-Mulk', 'Sovereignty', 'Mülk', 1, NULL, 1),
(68, 52, 'الـقـلـم', 'Al-Qalam', 'The Pen', 'Kalem', 1, NULL, NULL),
(69, 52, 'الـحاقـة', 'Al-Haaqqah', 'The Reality', 'Hâkka', 1, NULL, NULL),
(70, 44, 'الـمعارج', 'Al-Ma’arij', 'Ways of Ascent', 'Meâric', 1, NULL, NULL),
(71, 28, 'نوح', 'Nooh', 'Noah', 'Nuh', 1, NULL, NULL),
(72, 28, 'الجن', 'Al-Jinn', 'The Jinn', 'Cin', 1, NULL, NULL),
(73, 20, 'الـمـزمـل', 'Al-Muzzammil', 'The Enwrapped', 'Müzzemmil', 1, NULL, NULL),
(74, 56, 'الـمـدثـر', 'Al-Muddaththir', 'The Enrobed', 'Müddessir', 1, NULL, NULL),
(75, 40, 'الـقـيامـة', 'Al-Qiyamah', 'Resurrection', 'Kıyamet', 1, NULL, 1),
(76, 31, 'الإنسان', 'Al-Insan', 'Man', 'İnsan', 1, NULL, NULL),
(77, 50, 'الـمرسلات', 'Al-Mursalat', 'The Unleashed', 'Mürselât', 1, NULL, NULL),
(78, 40, 'الـنبإ', 'An-Naba’', 'The Great News', 'Nebe’', 1, NULL, 1),
(79, 46, 'الـنازعات', 'An-Nazi’at', 'The Snatchers', 'Nâziât', 1, NULL, NULL),
(80, 42, 'عبس', 'Abasa', 'He Frowned', 'Abese', 1, NULL, NULL),
(81, 29, 'التكوير', 'At-Takwir', 'The Rolling', 'Tekvir', 1, NULL, NULL),
(82, 19, 'الانفطار', 'Al-Infitar', 'The Shattering', 'İnfitâr', 1, NULL, NULL),
(83, 36, 'المطـفـفين', 'Al-Mutaffifin', 'The Defrauders', 'Mutaffifin', 1, NULL, NULL),
(84, 25, 'الانشقاق', 'Al-Inshiqaq', 'The Rupture', 'İnşikak', 1, 1, NULL),
(85, 22, 'البروج', 'Al-Burooj', 'The Constellations', 'Bürûc', 1, NULL, NULL),
(86, 17, 'الـطارق', 'At-Tariq', 'The Pulsar', 'Târık', 1, NULL, NULL),
(87, 19, 'الأعـلى', 'Al-A’la', 'The Most High', 'A’lâ', 1, NULL, NULL),
(88, 26, 'الغاشـيـة', 'Al-Ghashiya', 'The Overwhelming', 'Gâşiye', 1, NULL, NULL),
(89, 30, 'الفجر', 'Al-Fajr', 'The Dawn', 'Fecr', 1, NULL, NULL),
(90, 20, 'الـبلد', 'Al-Balad', 'The Land', 'Beled', 1, NULL, NULL),
(91, 15, 'الـشـمـس', 'Ash-Shams', 'The Sun', 'Şems', 1, NULL, NULL),
(92, 21, 'اللـيـل', 'Al-Layl', 'The Night', 'Leyl', 1, NULL, NULL),
(93, 11, 'الضـحى', 'Ad-Dhuha', 'Morning Brighness', 'Duhâ', 1, NULL, NULL),
(94, 8, 'الـشرح', 'Al-Inshirah', 'The Soothing', 'İnşirâh', 1, NULL, NULL),
(95, 8, 'الـتين', 'At-Tin', 'The Fig', 'Tin', 1, NULL, NULL),
(96, 19, 'الـعلق', 'Al-Alaq', 'Clot', 'Alak', 1, 1, NULL),
(97, 5, 'الـقدر', 'Al-Qadr', 'Destiny', 'Kadir', 1, NULL, NULL),
(98, 8, 'الـبينة', 'Al-Bayyinah', 'Clear Evidence', 'Beyyine', 1, NULL, 1),
(99, 8, 'الـزلزلة', 'Az-Zalzalah', 'The Quake', 'Zilzâl', 1, NULL, NULL),
(100, 11, 'الـعاديات', 'Al-Adiyat', 'The Racers', 'Âdiyât', 1, NULL, NULL),
(101, 11, 'الـقارعـة', 'Al-Qari’ah', 'The Shocker', 'Kâria', 1, NULL, NULL),
(102, 8, 'الـتكاثر', 'At-Takathur', 'Abundance', 'Tekâsür', 1, NULL, NULL),
(103, 3, 'الـعصر', 'Al-Asr', 'Time', 'Asr', 1, NULL, NULL),
(104, 9, 'الـهمزة', 'Al-Humazah', 'The Backbiter', 'Hümeze', 1, NULL, NULL),
(105, 5, 'الـفيل', 'Al-Fil', 'The Elephant', 'Fil', 1, NULL, NULL),
(106, 4, 'قريش', 'Quraish', 'Quraish', 'Kureyş', 1, NULL, NULL),
(107, 7, 'المـاعون', 'Al-Ma’un', 'Assistance', 'Mâûn', 1, NULL, NULL),
(108, 3, 'الـكوثر', 'Al-Kauther', 'Plenty', 'Kevser', 1, NULL, NULL),
(109, 6, 'الـكافرون', 'Al-Kafiroon', 'The Disbelievers', 'Kâfirûn', 1, NULL, NULL),
(110, 3, 'الـنصر', 'An-Nasr', 'The Help', 'Nasr', 1, NULL, NULL),
(111, 5, 'الـمسد', 'Al-Masad', 'Thorns', 'Tebbet', 1, NULL, NULL),
(112, 4, 'الإخلاص', 'Al-Ikhlas', 'Sincerity', 'İhlâs', 1, NULL, NULL),
(113, 5, 'الـفلق', 'Al-Falaq', 'Daybreak', 'Felâk', 1, NULL, NULL),
(114, 6, 'الـناس', 'An-Nas', 'Humankind', 'Nâs', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fkl_sura`
--
ALTER TABLE `fkl_sura`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fkl_sura`
--
ALTER TABLE `fkl_sura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
