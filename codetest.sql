-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2020 at 12:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codetest`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `enquired_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `email`, `address`, `message`, `enquired_at`) VALUES
(1, 'Ramakanth Rapaka', 'ramakanth.rapaka1@gmail.com', 'Plot No 7 Adithya Nagar Fathulla Guda,BandlaGuda, Nagole Hyderabad Nagole Hyderabad United States California 500068', 'Message', '2020-05-20 16:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`) VALUES
(1, 'Bath Towel', 'data:image/jpeg;base64,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'),
(2, 'Terry Cotton Bath Towel', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSSQQdQ2tlt6VyNIeUWcWiEcdMHpuBZqaJ5DcIUeL6I8N_wsg1g&usqp=CAU'),
(3, 'Baby Towel', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQR_upxQslxlr-MwJqGbVkBO6k8KFN_PqkD0t3-ZCVLDVW11wG5&usqp=CAU'),
(4, 'Water Proof Dry Sheets', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRdUTkdTmppTJjs86ucv__VAJa9arWsRXHbFv_MvoaV1JWQ0V3m&usqp=CAU'),
(5, 'Printed Baby Towel', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ3UYqJ0gVc_6CEM78x8QT20hJp0Hfdy_C3pdj6w5DvfnUof_xW&usqp=CAU');

-- --------------------------------------------------------

--
-- Table structure for table `timings`
--

CREATE TABLE `timings` (
  `id` int(11) NOT NULL,
  `days` varchar(50) NOT NULL,
  `opening_hours` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timings`
--

INSERT INTO `timings` (`id`, `days`, `opening_hours`) VALUES
(1, 'Mon', '09:00 - 17:00'),
(2, 'Tue', '09:00 - 14:00'),
(3, 'Wed', 'Closed'),
(4, 'Thu', '09:00 - 17:00'),
(5, 'Fri', '10:00 - 13:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timings`
--
ALTER TABLE `timings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `timings`
--
ALTER TABLE `timings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
