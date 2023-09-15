-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2023 at 04:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railmap`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `item_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `get_in_touch`
--

CREATE TABLE `get_in_touch` (
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `item_name` varchar(60) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `restaurant` int(11) DEFAULT NULL,
  `price` float(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `item_name`, `description`, `restaurant`, `price`) VALUES
(1, 'Fried Chicken', 'Chicken which is fried', 4, 80.00),
(2, 'Chicken Pizza ', 'Chicken toppings on pizza', 5, 330.00),
(3, 'Beef Pizza', 'Beef toppings on pizza', 5, 450.00),
(4, 'Cold Coffee', 'Special for a hot weather', 1, 80.00),
(5, 'Classic Margherita Pizza', 'A timeless favorite, our Margherita pizza features a thin, crispy crust topped with fresh tomato sau', 5, 450.00),
(6, 'Savory Spinach and Artichoke Dip', 'Dive into a creamy blend of spinach, artichokes, and melted cheese served with warm, toasted baguett', 1, 200.00),
(7, 'Grilled Chicken Caesar Salad', 'Grilled chicken breast atop a bed of crisp romaine lettuce, tossed with Caesar dressing, Parmesan ch', 17, 120.00),
(8, 'Mouthwatering BBQ Pulled Beef Sandwich', 'Tender pulled beefslow-cooked to perfection, smothered in smoky barbecue sauce, and served on a fres', 6, 150.00),
(9, 'Vegetable Stir-Fry with Tofu', 'A delightful medley of fresh, seasonal vegetables and tofu stir-fried in a savory ginger and garlic ', 26, 300.00),
(10, 'Seafood Paella', 'Immerse your taste buds in the flavors of the Mediterranean with our hearty paella featuring saffron', 30, 250.00),
(11, 'Gourmet Angus Burger', 'Sink your teeth into a juicy Angus beef patty topped with melted cheddar cheese, caramelized onions,', 7, 250.00),
(12, 'Homestyle Lasagna', 'Layers of pasta, rich meat sauce, creamy béchamel, and a blend of mozzarella and Parmesan cheeses, b', 10, 280.00),
(13, 'Fresh Fruit Sorbet', 'A refreshing and guilt-free dessert option, our sorbet is a colorful blend of seasonal fruits, churn', 9, 80.00),
(14, 'Decadent Chocolate Lava Cake', 'For chocolate lovers, indulge in a warm, molten chocolate cake served with a scoop of vanilla ice cr', 32, 120.00),
(15, 'Lemon Herb Grilled Salmon', 'Savor the delicate flavors of perfectly grilled salmon fillet marinated in zesty lemon and fresh her', 25, 300.00),
(16, 'Vegan Thai Red Curry', 'A flavorful and aromatic Thai curry featuring tofu and a variety of vegetables simmered in a spicy r', 18, 230.00),
(17, 'Crispy Calamari Rings', 'Delight in the crispy goodness of tender calamari rings, lightly breaded and fried to perfection, se', 12, 90.00),
(18, 'Mediterranean Mezze Platter', 'A delightful assortment of Mediterranean flavors, including hummus, tzatziki, tabbouleh, falafel, an', 24, 150.00),
(19, 'Tender Beef Short Ribs', 'Slow-cooked to fork-tender perfection, our beef short ribs are braised in a red wine reduction and s', 27, 400.00),
(20, 'Vegetarian Enchiladas', 'A fiesta of flavors with corn tortillas rolled around a filling of black beans, roasted vegetables, ', 14, 100.00),
(21, 'Japanese Ramen Bowl', 'Dive into a steaming bowl of ramen with a savory broth, tender slices of pork belly, soft-boiled egg', 29, 200.00),
(22, 'Crispy Brussels Sprouts Salad', 'Roasted Brussels sprouts tossed with crispy bacon, candied pecans, dried cranberries, and a maple vi', 11, 180.00),
(23, 'Grilled Portobello Mushroom Burger', 'A satisfying meatless option featuring a marinated and grilled portobello mushroom cap topped with S', 13, 360.00),
(24, 'Authentic Chicken Tikka Masala', 'Succulent pieces of marinated chicken simmered in a creamy tomato and spice-infused sauce, served wi', 8, 190.00),
(25, 'Churro Ice Cream Sundae', 'Indulge your sweet tooth with crispy churros dusted in cinnamon sugar, served with a scoop of vanill', 28, 100.00),
(26, 'Hawaiian Poke Bowl', 'A taste of the tropics with fresh cubes of tuna or salmon, avocado, cucumber, edamame, and seaweed s', 24, 150.00),
(27, 'Italian Sausage and Peppers', 'Sautéed Italian sausage with colorful bell peppers and onions, served in a rustic tomato sauce and a', 21, 160.00),
(28, 'Homemade Apple Pie', 'End your meal on a comforting note with a slice of warm, flaky apple pie, served with a scoop of van', 17, 350.00);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `location`, `contact`) VALUES
(1, 'Caps & Hotbite', 'Cumilla', '+8801234567890'),
(2, 'Takeout 2.0', 'Cumilla', '+8801234567801'),
(4, 'Tasty Treat', 'Bramhanbaria', '+8801234567890'),
(5, 'Pizza Hut', 'Bramhanbaria', '+8801234567890'),
(6, 'Kebabdine', 'Cumilla', '+8801234567890'),
(7, 'Redroof inn', 'Cumilla', '+8801234567801'),
(8, 'Ruchi Bilash', 'Cumilla', '+8801234567801'),
(9, 'Elite Palace', 'Cumilla', '+8801234567801'),
(10, 'Makers 2.0', 'Cumilla', '+8801234567801'),
(11, 'ABfood', 'Cumilla', '+8801234567801'),
(12, 'Silver Spoon', 'Cumilla', '+8801234567801'),
(13, 'Uni Cafe', 'Bramhanbaria', '+8801234567890'),
(14, 'Smritichinese and Thai', 'Bramhanbaria', '+8801234567890'),
(15, 'Be Mezban', 'Bramhanbaria', '+8801234567890'),
(16, 'The Food Palace', 'Bramhanbaria', '+8801234567801'),
(17, 'Hungry', 'Bramhanbaria', '+8801234567801'),
(18, 'Spicy Restaurant', 'Kasba', '+8801234567890'),
(19, 'Handi Biriyani House', 'Kasba', '+8801234567801'),
(20, 'Tasty Bites', 'Kasba', '+8801234567890'),
(21, 'Swarma Bites', 'Kasba', '+8801234567801'),
(22, 'Hazi Biriyani', 'Kasba', '+8801234567801'),
(23, 'Cafe Catering', 'Laksham', '+8801234567890'),
(24, 'Hazi Khaja Garden', 'Laksham', '+8801234567801'),
(25, 'Allahr Dan', 'Laksham', '+8801234567801'),
(26, 'Agomon Food Park', 'Laksham', '+8801234567801'),
(27, 'Outback Steak House', 'Feni', '+8801234567890'),
(28, 'Crownest Restaurant', 'Feni', '+8801234567801'),
(29, 'Skylounge Restaurant', 'Feni', '+8801234567801'),
(30, 'Grand Taste', 'Feni', '+8801234567801'),
(31, 'Sonar Bangla Restaurant', 'Feni', '+8801234567801'),
(32, 'Food Valley', 'Feni', '+8801234567801'),
(33, 'Jam Jam Restaurant', 'Feni', '+8801234567801');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `contact`, `password`) VALUES
(1, 'abc', 'def', 'abc@gmail.com', '', '1234'),
(2, 'Sami', 'Nayeem', 'sami@gmail.com', '', '$2y$10$.E0hFpMx6oLd2MhW4DML5uebOKb4btmDK1R..Wesv/8Xn4GpYx3eC'),
(4, 'Fardin', 'Bhuiyan', 'fardin@gmail.com', '', '$2y$10$1CywMTZadmgFP3csGT0kieSNSjcjJrEpD5fQAnBqudRjyVY1jAH0u'),
(5, 'Humaira', 'Tabassum', 'humaira@gmail.com', '+8801234567890', '$2y$10$eGRD2.pRobIFfMojHNrTU.IRFZJxjkxuOV5hLQcX20cSa5DpM4lve');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk` (`restaurant`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk` FOREIGN KEY (`restaurant`) REFERENCES `restaurants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
