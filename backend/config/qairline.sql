-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 03:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qairline`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `name`, `email`, `phone`, `password_hash`, `createdAt`, `updatedAt`) VALUES
(1, 'Le Tuan Kiet', 'kiet@admin.com', '123456789', '$2b$10$zWog8HlfxHRr3n7pO/YpAObHvrKoOT46ij9hrgIKB.WSnEdXJvI2u', '2024-12-04 14:45:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `airplanes`
--

CREATE TABLE `airplanes` (
  `airplane_id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `total_seats` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airplanes`
--

INSERT INTO `airplanes` (`airplane_id`, `model`, `manufacturer`, `total_seats`, `createdAt`, `updatedAt`) VALUES
(1, 'Boeing 737-800', 'Boeing', 189, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(2, 'Airbus A320', 'Airbus', 180, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(3, 'Boeing 777-300ER', 'Boeing', 396, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(4, 'Airbus A350-900', 'Airbus', 325, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(5, 'Boeing 787-9 Dreamliner', 'Boeing', 290, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(6, 'Embraer E190', 'Embraer', 100, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(7, 'Bombardier CRJ900', 'Bombardier', 76, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(8, 'Airbus A330-300', 'Airbus', 177, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(9, 'Boeing 747-8', 'Boeing', 167, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(10, 'Airbus A380', 'Airbus', 153, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(11, 'Boeing 757-200', 'Boeing', 200, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(12, 'Airbus A321', 'Airbus', 120, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(13, 'Boeing 767-300ER', 'Boeing', 118, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(14, 'Airbus A319', 'Airbus', 160, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(15, 'Boeing 737 MAX 8', 'Boeing', 178, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(16, 'Airbus A220-300', 'Airbus', 160, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(17, 'Boeing 727-200', 'Boeing', 134, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(18, 'Airbus A330-200', 'Airbus', 253, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(19, 'Boeing 747-400', 'Boeing', 116, '2024-12-07 20:37:39', '2024-12-07 20:37:39'),
(20, 'Airbus A340-300', 'Airbus', 195, '2024-12-07 20:37:39', '2024-12-07 20:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `airport_id` int(11) NOT NULL,
  `airport_name` varchar(150) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`airport_id`, `airport_name`, `city`, `country`) VALUES
(1, 'Noi Bai International Airport', 'Hanoi', 'Vietnam'),
(2, 'Tan Son Nhat International Airport', 'Ho Chi Minh City', 'Vietnam'),
(3, 'Da Nang International Airport', 'Da Nang', 'Vietnam'),
(4, 'Cam Ranh International Airport', 'Nha Trang', 'Vietnam'),
(5, 'Phu Quoc International Airport', 'Phu Quoc', 'Vietnam'),
(6, 'Cat Bi International Airport', 'Hai Phong', 'Vietnam'),
(7, 'Can Tho International Airport', 'Can Tho', 'Vietnam'),
(8, 'Buon Ma Thuot Airport', 'Buon Ma Thuot', 'Vietnam'),
(9, 'Vinh Airport', 'Vinh', 'Vietnam'),
(10, 'Pleiku Airport', 'Pleiku', 'Vietnam'),
(11, 'Con Dao Airport', 'Con Dao', 'Vietnam'),
(12, 'Dong Hoi Airport', 'Dong Hoi', 'Vietnam'),
(13, 'Quang Ngai Airport', 'Quang Ngai', 'Vietnam'),
(14, 'Rach Gia Airport', 'Rach Gia', 'Vietnam'),
(15, 'Tam Ky Airport', 'Tam Ky', 'Vietnam'),
(16, 'Phu Bai International Airport', 'Hue', 'Vietnam'),
(17, 'Dien Bien Phu Airport', 'Dien Bien Phu', 'Vietnam'),
(18, 'Lai Chau Airport', 'Lai Chau', 'Vietnam'),
(19, 'Nghe An Airport', 'Nghe An', 'Vietnam'),
(20, 'Quy Nhon Airport', 'Quy Nhon', 'Vietnam'),
(21, 'Bac Lieu Airport', 'Bac Lieu', 'Vietnam'),
(22, 'Cao Bang Airport', 'Cao Bang', 'Vietnam'),
(23, 'Da Lat Airport', 'Da Lat', 'Vietnam'),
(24, 'Ha Tinh Airport', 'Ha Tinh', 'Vietnam'),
(25, 'Kien Giang Airport', 'Kien Giang', 'Vietnam'),
(26, 'Lang Son Airport', 'Lang Son', 'Vietnam'),
(27, 'Phan Rang-Thap Cham Airport', 'Phan Rang', 'Vietnam'),
(28, 'Soc Trang Airport', 'Soc Trang', 'Vietnam'),
(29, 'Son La Airport', 'Son La', 'Vietnam'),
(30, 'Thai Nguyen Airport', 'Thai Nguyen', 'Vietnam'),
(31, 'Uong Bi Airport', 'Uong Bi', 'Vietnam'),
(32, 'Vung Tau Airport', 'Vung Tau', 'Vietnam'),
(33, 'Yen Bai Airport', 'Yen Bai', 'Vietnam'),
(34, 'Nghia Lo Airport', 'Nghia Lo', 'Vietnam'),
(35, 'Phong Dien Airport', 'Phong Dien', 'Vietnam'),
(36, 'Van Don International Airport', 'Quang Ninh', 'Vietnam'),
(37, 'Binh Thuan Airport', 'Phan Thiet', 'Vietnam'),
(38, 'Hartsfield-Jackson Atlanta International Airport', 'Atlanta', 'USA'),
(39, 'Beijing Capital International Airport', 'Beijing', 'China'),
(40, 'Los Angeles International Airport', 'Los Angeles', 'USA'),
(41, 'Dubai International Airport', 'Dubai', 'UAE'),
(42, 'Tokyo Haneda Airport', 'Tokyo', 'Japan'),
(43, 'Chicago International Airport', 'Chicago', 'USA'),
(44, 'London Heathrow Airport', 'London', 'UK'),
(45, 'Shanghai Pudong International Airport', 'Shanghai', 'China'),
(46, 'Paris Charles de Gaulle Airport', 'Paris', 'France'),
(47, 'Amsterdam Schiphol Airport', 'Amsterdam', 'Netherlands'),
(48, 'Frankfurt am Main Airport', 'Frankfurt', 'Germany'),
(49, 'Dallas/Fort Worth International Airport', 'Dallas', 'USA'),
(50, 'Istanbul Airport', 'Istanbul', 'Turkey'),
(51, 'Hong Kong International Airport', 'Hong Kong', 'Hong Kong'),
(52, 'Singapore Changi Airport', 'Singapore', 'Singapore'),
(53, 'Denver International Airport', 'Denver', 'USA'),
(54, 'Incheon International Airport', 'Seoul', 'South Korea'),
(55, 'Adolfo Suárez Madrid–Barajas Airport', 'Madrid', 'Spain'),
(56, 'Barcelona-El Prat Airport', 'Barcelona', 'Spain'),
(57, 'Guangzhou Baiyun International Airport', 'Guangzhou', 'China'),
(58, 'Boston Logan International Airport', 'Boston', 'USA'),
(59, 'Philadelphia International Airport', 'Philadelphia', 'USA'),
(60, 'Sheremetyevo International Airport', 'Moscow', 'Russia'),
(61, 'Toronto Pearson International Airport', 'Toronto', 'Canada'),
(62, 'San Francisco International Airport', 'San Francisco', 'USA'),
(63, 'Kuala Lumpur International Airport', 'Kuala Lumpur', 'Malaysia'),
(64, 'McCarran International Airport', 'Las Vegas', 'USA'),
(65, 'Seattle-Tacoma International Airport', 'Seattle', 'USA'),
(66, 'Munich Airport', 'Munich', 'Germany'),
(67, 'Zurich Airport', 'Zurich', 'Switzerland'),
(68, 'Indira Gandhi International Airport', 'Delhi', 'India'),
(69, 'Suvarnabhumi Airport', 'Bangkok', 'Thailand'),
(70, 'Sydney Kingsford Smith Airport', 'Sydney', 'Australia'),
(71, 'John F. Kennedy International Airport', 'New York City', 'USA'),
(72, 'Vancouver International Airport', 'Vancouver', 'Canada'),
(73, 'Melbourne Airport', 'Melbourne', 'Australia'),
(74, 'Vienna International Airport', 'Vienna', 'Austria'),
(75, 'Lisbon Humberto Delgado Airport', 'Lisbon', 'Portugal'),
(76, 'Brussels Airport', 'Brussels', 'Belgium'),
(77, 'Budapest Ferenc Liszt International Airport', 'Budapest', 'Hungary'),
(78, 'Copenhagen Airport', 'Copenhagen', 'Denmark'),
(79, 'Abu Dhabi International Airport', 'Abu Dhabi', 'UAE'),
(80, 'Rome–Fiumicino International Airport', 'Rome', 'Italy'),
(81, 'Miami International Airport', 'Miami', 'USA'),
(82, 'Orlando International Airport', 'Orlando', 'USA'),
(83, 'Johannesburg OR Tambo International Airport', 'Johannesburg', 'South Africa'),
(84, 'Dublin Airport', 'Dublin', 'Ireland'),
(85, 'Auckland Airport', 'Auckland', 'New Zealand'),
(86, 'Hamad International Airport', 'Doha', 'Qatar');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL DEFAULT 1,
  `status` enum('booked','canceled','paid') DEFAULT 'booked',
  `seat_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `service_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_value` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `discount_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount_percentage` decimal(10,2) NOT NULL DEFAULT 0.00,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_id` int(11) NOT NULL,
  `flight_number` varchar(20) NOT NULL,
  `departure` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `departure_date` DATE NOT NULL,
  `departure_time` TIME NOT NULL,
  `arrival_date` DATE NOT NULL,
  `arrival_time` TIME NOT NULL,
  `airplane_id` int(11) NOT NULL,
  `status` enum('scheduled','completed','canceled','delayed') DEFAULT 'scheduled',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category` enum('news','promotion','announcement','about') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seat_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `seat_number` varchar(10) NOT NULL,
  `status` enum('available','booked') DEFAULT 'available',
  `seat_type` enum('economy','business','first class') DEFAULT 'economy',
  `seat_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `service_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `service_price`, `createdAt`, `updatedAt`) VALUES
(1, 'Luggage under 5kg', 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Luggage from 5kg to 10kg', 100000.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Luggage from 10kg', 500000.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `id_card` varchar(20) NOT NULL,
  `passport` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `airplanes`
--
ALTER TABLE `airplanes`
  ADD PRIMARY KEY (`airplane_id`);

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`airport_id`),
  ADD UNIQUE KEY `unique_city_country` (`city`,`country`),
  ADD KEY `idx_city` (`city`),
  ADD KEY `idx_country` (`country`),
  ADD KEY `idx_name` (`airport_name`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `seat_id` (`seat_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`discount_id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_id`),
  ADD UNIQUE KEY `flight_number` (`flight_number`),
  ADD KEY `airplane_id` (`airplane_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD UNIQUE KEY `service_name` (`service_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `id_card` (`id_card`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `airplanes`
--
ALTER TABLE `airplanes`
  MODIFY `airplane_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
  MODIFY `airport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`seat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`airplane_id`) REFERENCES `airplanes` (`airplane_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
