-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 01:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `idAcc` int(100) NOT NULL,
  `Acc` varchar(100) NOT NULL,
  `Pass` int(11) NOT NULL,
  `Access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`idAcc`, `Acc`, `Pass`, `Access`) VALUES
(1, 'admin', 123, 1),
(2, 'khoa', 123, 0),
(38, 'user1', 123, 0),
(39, 'hoangmy0401', 1234, 0),
(41, 'myhoang123', 123, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `idDH` int(100) NOT NULL,
  `tenKH` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdtKH` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachiKH` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tonggia` int(11) NOT NULL,
  `Acc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`idDH`, `tenKH`, `sdtKH`, `diachiKH`, `tonggia`, `Acc`) VALUES
(15, 'Trần Hoàng Mỹ', '0123456789', 'Ở đâu kệ tao', 16370000, 'hoangmy0401');

-- --------------------------------------------------------

--
-- Table structure for table `ctbill`
--

CREATE TABLE `ctbill` (
  `idDHCT` int(100) NOT NULL,
  `soLuong` varchar(100) NOT NULL,
  `giaSP` varchar(100) NOT NULL,
  `tenSP` varchar(100) NOT NULL,
  `Acc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TongSL` int(100) NOT NULL,
  `TongGia` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ctbill`
--

INSERT INTO `ctbill` (`idDHCT`, `soLuong`, `giaSP`, `tenSP`, `Acc`, `TongSL`, `TongGia`) VALUES
(46, ' 2\r 4', '4390000', ' Giày Nike Air Force 1 Low\r Giày Nike Jordan One Take 4 PF', 'khoa', 6, 8680000),
(49, ' 1\r 1\r 3', ' 4290000\r 4390000\r 7690000', ' Giày Nike Jordan One Take 4 PF\r Giày Nike Air Force 1 Low\r Giày Nike Air Jordan 6 Retro', 'hoangmy0401', 5, 16370000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `idSP` int(11) NOT NULL,
  `tenSP` varchar(100) NOT NULL,
  `giaSP` int(100) NOT NULL,
  `hinhSP` varchar(100) NOT NULL,
  `tsSP` varchar(100) NOT NULL,
  `idNhom` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`idSP`, `tenSP`, `giaSP`, `hinhSP`, `tsSP`, `idNhom`) VALUES
(25, 'Giày Nike Air Force 1 Low', 4390000, 'nike4.jpg', 'Mô tả ', 1),
(27, 'Giày Nike Air Jordan 6 Retro', 7690000, 'nike6.jpg', 'Mô tả ', 1),
(28, 'Giày Nike Air Force 1 Low White Black', 4290000, 'nike7.jpg', 'Mô tả ', 1),
(29, 'Giày Nike Air Trainer 1', 4690000, 'nike8.jpg', 'Mô tả ', 1),
(30, 'Giày Nike Jordan One Take 4 PF', 4290000, 'nike9.jpg', 'Mô tả ', 1),
(31, 'Giày Nike Jordan One Take 4 PF', 4290000, 'nike11.jpg', 'Mô tả ', 1),
(32, 'Giày Nike Air Flight 89', 3290000, 'nike12.jpg', 'Mô tả ', 1),
(33, 'Giày Nike Court Legacy Lift Low', 3690000, 'nike13.jpg', 'Mô tả ', 1),
(34, 'Giày Nike Court Borough Low 2020 GS', 1890000, 'nike14.jpg', 'Mô tả ', 1),
(35, 'Giày Nike Air Jordan 1 Mid ‘Dark Iris', 3690000, 'nike15.jpg', 'Mô tả ', 1),
(36, 'Giày Nike Dunk High GS ‘Cargo Khaki', 4890000, 'nike16.jpg', 'Mô tả ', 1),
(37, 'Giày Golf Nike React Vapor 2', 4890000, 'nike17.jpg', 'mô tả ', 1),
(38, 'GIÀY ADIDAS CỔ THẤP FORUM', 2500000, 'adidas1.jpg', 'Mô tả ', 2),
(39, 'GIÀY ADIDAS SUPERSTAR 1', 2600000, 'adidas2.jpg', 'Mô tả ', 2),
(40, 'GIÀY ADIDAS  SUPERSTAR 2', 2600000, 'adidas3.jpg', 'Mô tả ', 2),
(41, 'GIÀY NMD_S1', 5000000, 'adidas4.jpg', 'Mô tả ', 2),
(42, 'GIÀY NIZZA', 1700000, 'adidas5.jpg', 'Mô tả ', 2),
(43, 'GIÀY CỔ THẤP FORUM', 2500000, 'adidas6.jpg', 'Mô tả ', 2),
(44, 'GIÀY NMD_R1 PRIMEBLUE', 3900000, 'adidas7.jpg', 'Mô tả ', 2),
(45, 'GIÀY DURAMO SL 2.0', 1900000, 'adidas8.jpg', 'Mô tả ', 2),
(46, 'GIÀY  DURAMO SL 2.0', 1900000, 'adidas9.jpg', 'Mô tả ', 2),
(47, 'Giày fake', 122222222, 'nike2.jpg', 'hehehhee', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `idTin` int(100) NOT NULL,
  `tenTin` varchar(100) NOT NULL,
  `ndTin` varchar(100) NOT NULL,
  `hinhTin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`idTin`, `tenTin`, `ndTin`, `hinhTin`) VALUES
(3, 'Nike triển khai chương trình sale lớn nhất năm !!', 'Nike triển khai chương trình sale lớn nhất năm Chương trình sale của Nile sẽ diễn ra từ ngày 27/11 đ', 'tintuc1.jpg'),
(4, 'Adidas giảm tới 50% giá và hỗ trợ phí vận chuyển', 'Dép và các loại giày chạy bộ của thương hiệu Adidas đang được giảm giá tới 50% khi mua qua hệ thống ', 'tintuc2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `idNhom` int(100) NOT NULL,
  `tenNhom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`idNhom`, `tenNhom`) VALUES
(1, 'Nike'),
(2, 'Adidas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`idAcc`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`idDH`),
  ADD KEY `idBill` (`Acc`);

--
-- Indexes for table `ctbill`
--
ALTER TABLE `ctbill`
  ADD PRIMARY KEY (`idDHCT`),
  ADD KEY `Acc` (`Acc`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idSP`),
  ADD KEY `idNhom` (`idNhom`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idTin`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`idNhom`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `idAcc` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `idDH` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ctbill`
--
ALTER TABLE `ctbill`
  MODIFY `idDHCT` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `idSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `idTin` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `idNhom` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`idNhom`) REFERENCES `type` (`idNhom`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
