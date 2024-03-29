-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2019 at 04:10 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `level`) VALUES
('admin', '123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

CREATE TABLE `mhs` (
  `nim` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mhs`
--

INSERT INTO `mhs` (`nim`, `nama`, `alamat`) VALUES
('1645038082', '1111', '2222'),
('21857734504', '52400063660', '31790386172'),
('24827825683', '25289798040', '70784220565'),
('28141150904', '18809539926', '20917276182'),
('29340715720', '37902843751', '907315699'),
('31991702861', '76118685063', '37298521969'),
('32014971611', '18702790137', '75989255150'),
('32166458387', '1756719343', '68027829750'),
('32905548972', '63913698808', '3572356632'),
('36233283761', '72853590864', '95964325401'),
('36875330854', '14176116326', '42861343527'),
('37714769518', '48803921700', '97987102280'),
('44102032583', '29761642442', '59231479999'),
('45149362653', '79990220077', '48887154573'),
('4604827176', '30293792709', '34843017135'),
('46645950898', '61877742335', '78532375396'),
('48146866952', '32371941117', '10358443255'),
('49360874376', '75641108533', '30389332128'),
('50498659690', '3145844315', '98909204661'),
('52953039334', '15886302919', '34121024258'),
('53399971468', '90747473048', '13330724964'),
('57003457297', '17400271115', '69225001908'),
('5836412033', '60690425254', '28406487269'),
('60619754323', '7441876133', '57344735922'),
('65405158088', '46715836496', '72051518062'),
('65819329141', '58022507090', '66831166663'),
('65951416973', '76586571126', '96582384201'),
('72242202824', '32670875200', '53879194088'),
('72589199719', '46958810526', '35960741244'),
('73051015823', '41445643722', '34115547235'),
('8196510733', '8907436833', '92149125495'),
('82406967171', '41713385801', '71883964548'),
('82846937374', '34384477930', '84148172823'),
('83513528081', '17833589822', '16911254224'),
('83742502883', '92369157593', '23568535142'),
('85279421043', '89314915150', '82474634288'),
('8650099033', '46510811696', '52585243045'),
('89083267259', '74200831325', '58994219404'),
('92594568948', '95513151739', '1548315328'),
('94860376848', '74027751057', '47939100391');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
