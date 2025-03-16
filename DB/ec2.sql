-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2025 at 05:37 AM
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
-- Database: `ec2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feature`
--

CREATE TABLE `tbl_feature` (
  `featureid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_feature`
--

INSERT INTO `tbl_feature` (`featureid`, `name`, `detail`, `date`, `img`, `status`) VALUES
(1, 'Nike’s approach to marketing: Then and now', 'Nike’s approach to marketing: Then and now', '2024-11-25 09:27:00', 'feature1.webp', 'Active'),
(2, 'Nike’s approach to marketing: Then and now', 'Nike', '2024-11-25 10:03:00', 'feature2.jpg', 'Active'),
(3, 'Nike’s approach to marketing: Then and now', 'Nike', '2024-11-25 10:15:00', 'banner-image3.jpg', 'Active'),
(4, 'Nike', 'Nike', '2024-11-25 10:19:00', 'feature.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menuid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `order` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menuid`, `name`, `order`, `status`) VALUES
(2, 'Men', 3, 'Active'),
(3, 'Women', 4, 'Active'),
(4, 'Kids', 5, 'Active'),
(5, 'All', 1, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prd`
--

CREATE TABLE `tbl_prd` (
  `productid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `des` text NOT NULL,
  `stock` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 CHECKSUM=1 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_prd`
--

INSERT INTO `tbl_prd` (`productid`, `name`, `price`, `des`, `stock`, `menuid`, `discount`, `date`, `img`) VALUES
(1, 'Nike Air Force 1', 149.99, 'The Nike Air Force 1 is a legendary sneaker that debuted in 1982, originally designed as a basketball shoe. Created by Bruce Kilgore, it was the first to feature Nike\'s innovative Air cushioning technology, enhancing comfort and performance. Over time, it transitioned from sportswear to a streetwear icon embraced worldwide. Known for its clean and timeless design, the sneaker comes in low, mid, and high-top versions with countless colorways. The all-white low-top remains a classic favorite for its simplicity. Its durable leather upper and cushioned sole offer both style and functionality. The Air Force 1 has seen collaborations with top designers, artists, and brands. It is a staple in both sneaker culture and fashion. Loved for its versatility, it suits casual, sporty, and trendy looks. Decades after its release, it continues to define individuality and style.', 6, 4, 10.00, '2024-11-28 08:49:42', 'prd1.png'),
(2, 'Nike Air Force 1', 149.99, 'The Nike Air Force 1 is a legendary sneaker that debuted in 1982, originally designed as a basketball shoe. Created by Bruce Kilgore, it was the first to feature Nike\'s innovative Air cushioning technology, enhancing comfort and performance. Over time, it transitioned from sportswear to a streetwear icon embraced worldwide. Known for its clean and timeless design, the sneaker comes in low, mid, and high-top versions with countless colorways. The all-white low-top remains a classic favorite for its simplicity. Its durable leather upper and cushioned sole offer both style and functionality. The Air Force 1 has seen collaborations with top designers, artists, and brands. It is a staple in both sneaker culture and fashion. Loved for its versatility, it suits casual, sporty, and trendy looks. Decades after its release, it continues to define individuality and style.', 10, 4, 20.00, '2024-11-28 08:50:58', 'prd2.png'),
(3, 'Nike Air Force 1 LV8', 199.99, 'The Nike Air Force 1 LV8 takes the classic Air Force 1 design and elevates it with bold updates and premium materials. Retaining the iconic silhouette, it adds modern twists like unique textures, patterns, or vibrant color schemes to stand out from the original. Designed for both style and comfort, it features a durable leather upper and Nike\'s Air cushioning for all-day support. The \"LV8\" designation signifies \"elevate,\" highlighting the upgraded look and feel. With versions showcasing reflective elements, embroidered details, or thematic designs, the LV8 caters to those who want their sneakers to make a statement. The shoe maintains its versatility, pairing effortlessly with casual or streetwear outfits. Whether in subtle tones or striking combinations, the Nike Air Force 1 LV8 is a fresh take on a timeless classic.', 40, 2, 13.00, '2024-11-28 08:54:05', 'prd3.jpg'),
(4, 'Nike Air Force 1 \'07 Next Nature', 189.99, 'The Nike Air Force 1 \'07 Next Nature is a modern and sustainable update to the classic Air Force 1. Designed with eco-conscious materials, it incorporates at least 20% recycled content by weight, reflecting Nike\'s commitment to sustainability through its \"Move to Zero\" initiative. Retaining the iconic silhouette, it features a durable, synthetic leather upper made with recycled fibers. The shoe offers the same classic comfort and style as the original, including Nike Air cushioning and a sturdy rubber outsole. Subtle details, like embroidered Swooshes and unique textures, give it a premium feel. With its sleek design and earth-friendly construction, the Air Force 1 \'07 Next Nature blends timeless fashion with environmental responsibility, making it a stylish and mindful choice for sneaker enthusiasts.', 24, 3, 0.00, '2024-11-28 08:57:49', 'prd4.png'),
(5, 'Jordan Spizike Low', 280.00, 'The Jordan Spizike Low is a bold fusion of iconic Jordan elements, crafted as a tribute to the partnership between Michael Jordan and filmmaker Spike Lee. Drawing inspiration from classic Air Jordan models like the AJ3, AJ4, AJ5, and AJ6, the Spizike Low combines their most celebrated features into one dynamic design. The low-top silhouette offers a fresh, contemporary take while maintaining the essence of its high-top predecessor. Signature details include the elephant print overlays from the AJ3, breathable mesh side panels from the AJ5, and sleek lace locks reminiscent of the AJ6. The shoe\'s midsole features Air cushioning for exceptional comfort and responsiveness, making it ideal for both performance and casual wear. Premium materials, such as leather and suede, enhance durability and style. The Jordan Spizike Low stands out with bold colorways that celebrate the legacy of Spike Lee’s contributions to basketball culture, including nods to his Mars Blackmon character from iconic Nike commercials. With a mix of nostalgic elements and modern upgrades, the Spizike Low is a versatile sneaker that resonates with athletes, collectors, and fashion enthusiasts alike. Whether you\'re on the court or hitting the streets, it delivers a perfect blend of heritage, innovation, and attitude.', 30, 2, 5.00, '2024-11-28 09:00:50', 'prd5new.png'),
(6, 'Jordan Spizike Low', 280.00, 'The Jordan Spizike Low is a bold fusion of iconic Jordan elements, crafted as a tribute to the partnership between Michael Jordan and filmmaker Spike Lee. Drawing inspiration from classic Air Jordan models like the AJ3, AJ4, AJ5, and AJ6, the Spizike Low combines their most celebrated features into one dynamic design. The low-top silhouette offers a fresh, contemporary take while maintaining the essence of its high-top predecessor. Signature details include the elephant print overlays from the AJ3, breathable mesh side panels from the AJ5, and sleek lace locks reminiscent of the AJ6. The shoe\'s midsole features Air cushioning for exceptional comfort and responsiveness, making it ideal for both performance and casual wear. Premium materials, such as leather and suede, enhance durability and style. The Jordan Spizike Low stands out with bold colorways that celebrate the legacy of Spike Lee’s contributions to basketball culture, including nods to his Mars Blackmon character from iconic Nike commercials. With a mix of nostalgic elements and modern upgrades, the Spizike Low is a versatile sneaker that resonates with athletes, collectors, and fashion enthusiasts alike. Whether you\'re on the court or hitting the streets, it delivers a perfect blend of heritage, innovation, and attitude.', 9, 2, 8.00, '2024-11-28 09:01:22', 'prd6.jpg'),
(7, 'Jordan Spizike Low', 290.00, 'The Jordan Spizike Low is a bold fusion of iconic Jordan elements, crafted as a tribute to the partnership between Michael Jordan and filmmaker Spike Lee. Drawing inspiration from classic Air Jordan models like the AJ3, AJ4, AJ5, and AJ6, the Spizike Low combines their most celebrated features into one dynamic design. The low-top silhouette offers a fresh, contemporary take while maintaining the essence of its high-top predecessor. Signature details include the elephant print overlays from the AJ3, breathable mesh side panels from the AJ5, and sleek lace locks reminiscent of the AJ6. The shoe\'s midsole features Air cushioning for exceptional comfort and responsiveness, making it ideal for both performance and casual wear. Premium materials, such as leather and suede, enhance durability and style. The Jordan Spizike Low stands out with bold colorways that celebrate the legacy of Spike Lee’s contributions to basketball culture, including nods to his Mars Blackmon character from iconic Nike commercials. With a mix of nostalgic elements and modern upgrades, the Spizike Low is a versatile sneaker that resonates with athletes, collectors, and fashion enthusiasts alike. Whether you\'re on the court or hitting the streets, it delivers a perfect blend of heritage, innovation, and attitude.', 6, 2, 0.00, '2024-11-28 09:03:01', 'prd7.jpg'),
(8, 'Nike Air Max Portal', 170.33, 'The Nike Air Max Portal is a modern sneaker designed to blend comfort, style, and everyday versatility. Built with a sleek and futuristic silhouette, it features Nike’s signature Air cushioning for superior comfort and support. The midsole showcases a visible Air unit, adding both functional performance and a nod to Nike\'s heritage of innovation. The upper is crafted from a mix of durable materials, such as mesh and synthetic overlays, offering breathability and a snug fit. Its clean lines and bold design details make it a standout choice for casual wear or light activity. The rubber outsole ensures reliable traction, while the lightweight construction makes it suitable for all-day use. With its minimalist yet striking design, the Nike Air Max Portal caters to those who want a versatile sneaker that complements a variety of outfits. Whether paired with activewear or streetwear, it delivers a perfect blend of fashion and function. Ideal for individuals seeking everyday comfort with a touch of iconic Air Max flair, the Portal is a modern addition to the Air Max family.', 12, 3, 15.00, '2024-11-28 09:05:35', 'prd8.png'),
(9, 'Nike Air Max Portal', 170.33, 'The Nike Air Max Portal is a modern sneaker designed to blend comfort, style, and everyday versatility. Built with a sleek and futuristic silhouette, it features Nike’s signature Air cushioning for superior comfort and support. The midsole showcases a visible Air unit, adding both functional performance and a nod to Nike\'s heritage of innovation. The upper is crafted from a mix of durable materials, such as mesh and synthetic overlays, offering breathability and a snug fit. Its clean lines and bold design details make it a standout choice for casual wear or light activity. The rubber outsole ensures reliable traction, while the lightweight construction makes it suitable for all-day use. With its minimalist yet striking design, the Nike Air Max Portal caters to those who want a versatile sneaker that complements a variety of outfits. Whether paired with activewear or streetwear, it delivers a perfect blend of fashion and function. Ideal for individuals seeking everyday comfort with a touch of iconic Air Max flair, the Portal is a modern addition to the Air Max family.', 5, 3, 13.00, '2024-11-28 09:06:57', 'prd9.png'),
(10, 'Nike Air Max Portal', 170.33, 'The Nike Air Max Portal is a modern sneaker designed to blend comfort, style, and everyday versatility. Built with a sleek and futuristic silhouette, it features Nike’s signature Air cushioning for superior comfort and support. The midsole showcases a visible Air unit, adding both functional performance and a nod to Nike\'s heritage of innovation. The upper is crafted from a mix of durable materials, such as mesh and synthetic overlays, offering breathability and a snug fit. Its clean lines and bold design details make it a standout choice for casual wear or light activity. The rubber outsole ensures reliable traction, while the lightweight construction makes it suitable for all-day use. With its minimalist yet striking design, the Nike Air Max Portal caters to those who want a versatile sneaker that complements a variety of outfits. Whether paired with activewear or streetwear, it delivers a perfect blend of fashion and function. Ideal for individuals seeking everyday comfort with a touch of iconic Air Max flair, the Portal is a modern addition to the Air Max family.', 19, 3, 5.00, '2024-11-28 09:08:50', 'prd10.png'),
(11, 'Jordan 1 Mid', 90.44, 'The Jordan 1 Mid is a versatile and iconic sneaker that pays homage to the original Air Jordan 1, offering a fresh take with a mid-top silhouette. Designed for everyday wear, it features a mix of durable leather and synthetic materials in the upper, ensuring a premium look and feel. The padded collar adds ankle support, making it comfortable for extended wear. The sneaker showcases classic Jordan branding, including the Wings logo, Nike Swoosh, and a Jumpman logo on the tongue. A lightweight Air-Sole unit in the midsole provides responsive cushioning, while the rubber outsole with a circular tread pattern delivers excellent grip on various surfaces. Known for its adaptability, the Jordan 1 Mid is available in a wide range of colorways, appealing to sneakerheads, athletes, and fashion enthusiasts alike. Its timeless design makes it suitable for casual outfits, sporty looks, or even a touch of streetwear flair. The Jordan 1 Mid continues to blend heritage and modernity, solidifying its place as a staple in the world of sneakers.', 90, 4, 4.00, '2024-11-28 09:11:11', 'prd11.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_feature`
--
ALTER TABLE `tbl_feature`
  ADD PRIMARY KEY (`featureid`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menuid`);

--
-- Indexes for table `tbl_prd`
--
ALTER TABLE `tbl_prd`
  ADD PRIMARY KEY (`productid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_feature`
--
ALTER TABLE `tbl_feature`
  MODIFY `featureid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_prd`
--
ALTER TABLE `tbl_prd`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
