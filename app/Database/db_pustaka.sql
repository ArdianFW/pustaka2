-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Oct 24, 2023 at 11:04 AM
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
-- Database: `db_pustaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `noktp` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `file_ktp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'michelle@yahoo.com', 1, '2023-10-23 16:10:32', 0),
(2, '::1', 'michelle@yahoo.com', 1, '2023-10-23 16:10:52', 1),
(3, '::1', 'michelle@yahoo.com', 1, '2023-10-23 17:36:42', 1),
(4, '::1', 'michelle@yahoo.com', 1, '2023-10-24 09:00:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `idbuku` int(11) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `idkategori` int(11) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `kota_terbit` varchar(255) DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `file_gambar` varchar(255) DEFAULT NULL,
  `tgl_insert` date DEFAULT NULL,
  `tgl_update` date DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `stok_tersedia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`idbuku`, `isbn`, `judul`, `idkategori`, `pengarang`, `penerbit`, `kota_terbit`, `editor`, `file_gambar`, `tgl_insert`, `tgl_update`, `stok`, `stok_tersedia`) VALUES
(1, '9790982258261', 'Quae sint quod velit quis.', 2, 'Misty Johnson', 'McClure and Sons', 'Lorenzomouth', 'Kallie Boehm', 'https://via.placeholder.com/640x480.png/00dd44?text=dolores', '2023-05-20', '2023-02-22', 63, 47),
(2, '9798088586691', 'Veniam illum autem optio provident molestias.', 5, 'Jayce Fritsch', 'Lebsack Ltd', 'Wuckerthaven', 'Imelda Kris', 'https://via.placeholder.com/640x480.png/00ccdd?text=iste', '2023-06-23', '2023-04-08', 66, 61),
(3, '9784748375392', 'Eum officia qui voluptatem voluptatem autem autem.', 10, 'Dannie Schmidt', 'Feeney, Jones and Dibbert', 'New Treverburgh', 'Mr. Bryon Krajcik Sr.', 'https://via.placeholder.com/640x480.png/007711?text=ut', '2023-06-16', '2023-05-27', 42, 34),
(4, '9793862442842', 'Fugit alias cum veniam unde magnam.', 9, 'Amos Wiegand PhD', 'Crona-Bruen', 'Lake Soniamouth', 'Sasha Frami', 'https://via.placeholder.com/640x480.png/000000?text=qui', '2023-02-05', '2023-04-13', 44, 20),
(5, '9796309901438', 'In nemo reprehenderit distinctio non aut amet.', 4, 'Angus Von', 'Bauch, Tremblay and Gorczany', 'Uliseston', 'Miss Myrtle Mayert', 'https://via.placeholder.com/640x480.png/0011dd?text=et', '2023-03-16', '2023-09-20', 69, 59),
(6, '9790321976450', 'Adipisci magnam impedit velit sit quibusdam.', 5, 'Delta Swaniawski', 'Boyle, Sauer and Mayert', 'Emilystad', 'Deondre Torp', 'https://via.placeholder.com/640x480.png/003322?text=culpa', '2023-02-13', '2023-03-25', 8, 9),
(7, '9786383187453', 'Nobis aut rem illum perspiciatis.', 7, 'Verlie Farrell', 'Brakus LLC', 'Bradlytown', 'Rosie Raynor', 'https://via.placeholder.com/640x480.png/00ffaa?text=eos', '2023-03-25', '2023-01-18', 9, 22),
(8, '9784705755540', 'Aspernatur quos est deserunt eum et.', 9, 'Lacy Towne', 'Thompson-Stoltenberg', 'Port Elwin', 'Prof. Trevor Wisoky DDS', 'https://via.placeholder.com/640x480.png/002299?text=ut', '2023-07-23', '2023-08-31', 60, 31),
(9, '9788995852200', 'Quae quis sed sint accusamus laudantium voluptatem eos.', 7, 'Ahmad Hintz', 'Predovic PLC', 'New Tyson', 'Dr. Dedric Wolff', 'https://via.placeholder.com/640x480.png/00ddff?text=eum', '2023-05-30', '2023-08-19', 95, 80),
(10, '9797973953747', 'Ut sequi et et autem.', 8, 'Solon Pagac', 'Schiller-Hermann', 'Darianville', 'Prof. Jaiden Auer', 'https://via.placeholder.com/640x480.png/0022cc?text=illo', '2023-06-01', '2023-02-23', 39, 74),
(11, '9786728450587', 'Quam rem eos recusandae.', 5, 'Mr. Ricky Steuber', 'Gutmann-Parisian', 'Aubreemouth', 'Rosario Bailey', 'https://via.placeholder.com/640x480.png/00ee11?text=repellat', '2023-05-09', '2023-04-08', 3, 63),
(12, '9784212321566', 'Soluta molestias mollitia explicabo neque.', 3, 'Autumn Skiles', 'Wuckert-Schultz', 'Tommiefurt', 'Sophie Keeling I', 'https://via.placeholder.com/640x480.png/0077dd?text=unde', '2023-04-16', '2023-09-02', 63, 53),
(13, '9794268382671', 'Voluptatem voluptate ut in dignissimos.', 2, 'Neva Bartoletti', 'Kozey, Rempel and Veum', 'Mistyhaven', 'Aisha Wintheiser', 'https://via.placeholder.com/640x480.png/004499?text=et', '2023-09-24', '2023-04-11', 26, 45),
(14, '9789011304222', 'Assumenda accusamus quod nihil aut.', 1, 'Marilyne Tillman MD', 'Roberts and Sons', 'Hectorburgh', 'Ernestina Kuvalis II', 'https://via.placeholder.com/640x480.png/00ee00?text=at', '2023-04-30', '2023-05-22', 53, 57),
(15, '9785515713287', 'Nemo maxime ratione quos a illo.', 3, 'Mr. Dennis Luettgen', 'Yundt-Abshire', 'Jaylanton', 'Madilyn Kuhic', 'https://via.placeholder.com/640x480.png/00aabb?text=ut', '2023-05-05', '2023-06-09', 73, 60),
(16, '9788007725003', 'Quis vero dignissimos consequuntur corporis.', 3, 'Dominic Hammes', 'Harber-Wintheiser', 'East Abigayleside', 'Leslie Zieme', 'https://via.placeholder.com/640x480.png/0044ff?text=odio', '2023-01-24', '2023-07-09', 18, 37),
(17, '9799135093155', 'Cum impedit quo explicabo id fugiat libero.', 1, 'Dawn Gislason', 'Purdy PLC', 'West Russmouth', 'Sylvester Schinner', 'https://via.placeholder.com/640x480.png/00aa99?text=quaerat', '2023-08-06', '2023-09-03', 67, 5),
(18, '9784301994787', 'Aut nulla nihil deserunt qui quia sit.', 7, 'Brenna Labadie', 'Legros LLC', 'North Mya', 'Mr. Reggie Trantow III', 'https://via.placeholder.com/640x480.png/00ff99?text=dolorem', '2023-07-02', '2023-09-08', 1, 29),
(19, '9797100661538', 'Et sapiente aliquid modi odio repellendus voluptatibus.', 9, 'Sallie Buckridge DVM', 'Cormier-Bergstrom', 'Lake Lillieside', 'Bethany D\'Amore DDS', 'https://via.placeholder.com/640x480.png/00aa99?text=odit', '2023-09-27', '2023-06-21', 7, 88),
(20, '9783911006385', 'Temporibus ea harum pariatur incidunt sed ut.', 7, 'Oceane Corkery', 'Hammes, Bergstrom and Hoppe', 'Janiemouth', 'Garth Mitchell', 'https://via.placeholder.com/640x480.png/0000dd?text=qui', '2023-09-08', '2023-10-10', 87, 99),
(21, '9783018606211', 'Aperiam aliquid dolorem odio quo natus.', 10, 'Miss Evalyn Hettinger', 'Hills-Parisian', 'Rohanstad', 'Norval Moen', 'https://via.placeholder.com/640x480.png/003344?text=veniam', '2023-01-12', '2023-06-16', 2, 67),
(22, '9782664279107', 'Voluptas nihil laborum assumenda molestiae unde est.', 9, 'Adalberto Bernier', 'Nolan, McDermott and Lesch', 'Port Roymouth', 'Aiyana Barrows', 'https://via.placeholder.com/640x480.png/0000bb?text=a', '2023-03-20', '2023-03-31', 64, 43),
(23, '9783701056507', 'Laudantium illo excepturi veniam accusamus explicabo quaerat.', 9, 'Ken Hoppe', 'Price Ltd', 'North Florinemouth', 'Jasen Mosciski', 'https://via.placeholder.com/640x480.png/00aaaa?text=quisquam', '2023-04-11', '2023-09-22', 7, 10),
(24, '9785997024000', 'Ea ipsa dignissimos vero deleniti dolores.', 2, 'Pierce Sporer III', 'Abshire-Corkery', 'Leschstad', 'Miss Elvera Dickinson Jr.', 'https://via.placeholder.com/640x480.png/00bb55?text=voluptas', '2023-07-28', '2023-10-20', 23, 26),
(25, '9796189552355', 'Illo ut eligendi consequatur sed blanditiis.', 5, 'Miss Delores Wilderman', 'Hartmann, Reynolds and Sporer', 'New Ellsworthbury', 'Prof. Alfred Erdman DVM', 'https://via.placeholder.com/640x480.png/003300?text=numquam', '2023-08-06', '2023-06-04', 39, 64),
(26, '9782534719733', 'Voluptatem cupiditate qui est eos.', 5, 'Mr. Sanford Zboncak', 'Schamberger-Wiegand', 'Lake Colbymouth', 'Haven Ferry IV', 'https://via.placeholder.com/640x480.png/009999?text=nulla', '2023-09-19', '2023-04-04', 76, 89),
(27, '9787119363240', 'Cupiditate laboriosam pariatur dolorem ut natus.', 10, 'Mr. Garnett Borer', 'Steuber-Keebler', 'New Kaydenstad', 'Prof. Sherman Dach', 'https://via.placeholder.com/640x480.png/00bb22?text=et', '2023-08-20', '2023-08-20', 82, 25),
(28, '9786992933243', 'Recusandae natus aspernatur neque.', 8, 'Stephan Marvin', 'Roberts-Huel', 'Lulufort', 'Prof. Bernardo Cole', 'https://via.placeholder.com/640x480.png/005544?text=harum', '2023-01-07', '2023-08-19', 56, 68),
(29, '9785549433663', 'Ut dolores deserunt suscipit rerum.', 6, 'Noble Keebler II', 'Koch, Stoltenberg and Kutch', 'New Milanville', 'Mr. Herman Lockman PhD', 'https://via.placeholder.com/640x480.png/000033?text=nesciunt', '2023-03-03', '2023-03-19', 96, 62),
(30, '9788649408159', 'Ea illo odit nihil quam.', 5, 'Aniya Price IV', 'Terry, Hermann and Dooley', 'South Shayneberg', 'Janelle Satterfield', 'https://via.placeholder.com/640x480.png/002299?text=minus', '2023-06-14', '2023-08-28', 32, 59),
(31, '9791799106165', 'Omnis et inventore sed qui.', 6, 'Enola Macejkovic V', 'Rice and Sons', 'Masonberg', 'Jadyn Mante', 'https://via.placeholder.com/640x480.png/008855?text=sunt', '2023-07-26', '2023-07-05', 54, 42),
(32, '9791766291092', 'Occaecati dolorem autem modi id voluptate.', 1, 'Prof. Unique Klein', 'Schoen PLC', 'Maribelbury', 'Prof. Quinten Fahey PhD', 'https://via.placeholder.com/640x480.png/0066ff?text=laborum', '2023-07-31', '2023-02-08', 59, 64),
(33, '9795237638690', 'Et sequi consequuntur ratione perferendis cum et.', 8, 'Lyla Turner', 'Abbott, Fadel and Collins', 'Lake Yazmin', 'Shyann Ullrich', 'https://via.placeholder.com/640x480.png/004422?text=repellat', '2023-04-07', '2023-06-06', 90, 88),
(34, '9798589982152', 'Neque autem aut consequatur.', 8, 'Breanna Smitham', 'Bahringer-Ferry', 'Vandervortville', 'Mrs. Romaine Runte DDS', 'https://via.placeholder.com/640x480.png/00bbdd?text=in', '2023-04-06', '2023-04-08', 27, 84),
(35, '9789429286790', 'Animi omnis exercitationem totam similique molestias repudiandae.', 9, 'Robin Bode', 'Romaguera-Quitzon', 'Hansentown', 'Monty Littel V', 'https://via.placeholder.com/640x480.png/0055cc?text=non', '2023-05-31', '2023-08-08', 72, 97),
(36, '9785783827617', 'Et cumque architecto blanditiis reprehenderit et.', 6, 'Ms. Caterina Cronin', 'O\'Reilly LLC', 'Hammesport', 'Tessie Torp', 'https://via.placeholder.com/640x480.png/00eebb?text=qui', '2023-08-21', '2023-02-08', 96, 79),
(37, '9786535997510', 'Iste odit minus repudiandae accusamus corrupti.', 6, 'Prof. Abdullah Lockman', 'Aufderhar LLC', 'Cummeratachester', 'Prof. Niko Rempel PhD', 'https://via.placeholder.com/640x480.png/0055ff?text=facilis', '2023-01-27', '2023-07-31', 58, 80),
(38, '9782741014669', 'Corrupti blanditiis voluptatem omnis quaerat voluptas.', 8, 'Theron Fisher', 'Fritsch, Fahey and Powlowski', 'East Loriland', 'Juvenal Schuster', 'https://via.placeholder.com/640x480.png/00bb66?text=nihil', '2023-10-11', '2023-08-13', 16, 97),
(39, '9785348413378', 'Cupiditate recusandae nisi ut numquam illo.', 10, 'Prof. Rosalind Lockman DVM', 'Flatley Ltd', 'Port Bobby', 'Ellis Koch', 'https://via.placeholder.com/640x480.png/008800?text=pariatur', '2023-07-01', '2023-03-08', 37, 72),
(40, '9790164522531', 'Dolorem est ut eos.', 1, 'Deon Lehner', 'Jacobi-Glover', 'West Ewaldport', 'Dr. Ignacio Kunde', 'https://via.placeholder.com/640x480.png/00ff33?text=ut', '2023-02-17', '2023-05-17', 50, 89),
(41, '9794278814421', 'Sit quo dolores magni.', 6, 'Erich Bernhard', 'Kub-Olson', 'South Lucieshire', 'Flo Wehner', 'https://via.placeholder.com/640x480.png/00ee66?text=et', '2023-06-11', '2023-04-20', 79, 24),
(42, '9793801807077', 'Officia maxime consequatur vel omnis maiores.', 2, 'Faye Swift V', 'Quigley-Weimann', 'Townemouth', 'Annie Rath', 'https://via.placeholder.com/640x480.png/0077ff?text=deleniti', '2023-06-10', '2023-03-19', 25, 45),
(43, '9796999949949', 'Atque voluptatem rerum ducimus harum incidunt.', 6, 'Mr. Maxwell O\'Hara', 'Bashirian-Heaney', 'West Ivychester', 'Miss Sarina Beahan II', 'https://via.placeholder.com/640x480.png/00aa11?text=nam', '2023-03-10', '2023-06-10', 70, 15),
(44, '9782820015822', 'Nam aliquam aut dolorum atque quia et.', 6, 'Sylvan Blanda', 'Anderson-Koepp', 'South Derek', 'Mrs. Shaniya Jaskolski III', 'https://via.placeholder.com/640x480.png/009911?text=veniam', '2023-08-04', '2023-04-23', 25, 37),
(45, '9783583215085', 'Odio in quas quasi.', 7, 'Prof. Orlo Schoen', 'Schumm, Jones and Grimes', 'New Howellhaven', 'Renee Kozey', 'https://via.placeholder.com/640x480.png/00dd66?text=quae', '2023-04-29', '2023-03-07', 50, 48),
(46, '9798547702563', 'Commodi provident illum porro.', 5, 'Raymundo Heathcote', 'Jenkins, Bergnaum and Prohaska', 'Port Kenyon', 'Bradford Thompson', 'https://via.placeholder.com/640x480.png/00ee33?text=itaque', '2023-02-27', '2023-01-22', 31, 99),
(47, '9784402968182', 'In tenetur rerum qui.', 6, 'Jovani Jast', 'Hermiston Inc', 'Dannyhaven', 'Ms. Lorena Bins', 'https://via.placeholder.com/640x480.png/00eeaa?text=reprehenderit', '2023-06-20', '2023-09-13', 58, 26),
(48, '9787452303316', 'Rerum repellat quos eum.', 2, 'Dr. Marcelle Hegmann', 'Cronin, Dicki and Torp', 'New Prestonberg', 'Major Doyle DVM', 'https://via.placeholder.com/640x480.png/00ddaa?text=est', '2023-03-19', '2023-01-15', 95, 77),
(49, '9795163611965', 'Molestiae quisquam nihil assumenda vel ut.', 2, 'Loraine Morissette', 'Murray Inc', 'Port Ozellachester', 'Vena Toy', 'https://via.placeholder.com/640x480.png/000011?text=voluptas', '2023-08-06', '2023-04-07', 76, 22),
(50, '9782935863066', 'Sed aspernatur minima in sint officia.', 10, 'Aliyah Balistreri', 'Pfeffer, Lowe and Stamm', 'Port Jenniferborough', 'Prof. Randall Nicolas', 'https://via.placeholder.com/640x480.png/0055bb?text=recusandae', '2023-04-06', '2023-03-07', 80, 24),
(51, '9781250882165', 'Velit quisquam quod aperiam rem.', 4, 'Aisha Olson', 'Mayert, Bashirian and Kunde', 'North Zena', 'Heath Runolfsdottir V', 'https://via.placeholder.com/640x480.png/0099bb?text=est', '2023-08-25', '2023-01-28', 43, 74),
(52, '9781706354048', 'Eos sed omnis laboriosam quas voluptatem ratione.', 3, 'Miss Lina Price', 'Labadie-Leannon', 'Madilynhaven', 'Mr. Erick Harvey', 'https://via.placeholder.com/640x480.png/008877?text=est', '2023-01-02', '2023-09-30', 58, 86),
(53, '9789990290219', 'Omnis accusantium quasi reiciendis ducimus aliquid aut.', 7, 'Prof. Hilbert Heaney DDS', 'Schaden Group', 'Reggiemouth', 'Camylle Wiegand', 'https://via.placeholder.com/640x480.png/009911?text=exercitationem', '2023-06-22', '2023-04-09', 3, 100),
(54, '9799484129703', 'Repudiandae quisquam inventore dolorem dolorem ducimus.', 6, 'Ms. Sylvia Lynch Sr.', 'Berge Group', 'North Makenzie', 'Braulio Muller', 'https://via.placeholder.com/640x480.png/00ff44?text=voluptatum', '2023-06-02', '2023-08-08', 46, 35),
(55, '9797995464399', 'Excepturi accusamus consequatur voluptas omnis eum.', 2, 'Lew Walsh', 'Morar, Crooks and Towne', 'North Lexibury', 'Miss Ashlynn Schinner', 'https://via.placeholder.com/640x480.png/003377?text=tempore', '2023-01-10', '2023-05-05', 15, 42),
(56, '9798938274822', 'Incidunt eaque et eum incidunt dolorem.', 2, 'Brook Douglas', 'Kemmer, Ondricka and Hill', 'Blandashire', 'Elise Murazik MD', 'https://via.placeholder.com/640x480.png/0033aa?text=fugiat', '2023-02-10', '2023-02-16', 30, 21),
(57, '9782197405370', 'Voluptatum natus sed cum qui.', 1, 'Efrain Russel', 'Brakus, Jacobs and Macejkovic', 'Jenningsland', 'Kaylin Quitzon IV', 'https://via.placeholder.com/640x480.png/000077?text=perspiciatis', '2023-07-16', '2023-05-24', 82, 71),
(58, '9798387202292', 'Consequatur ut voluptas est qui voluptas.', 10, 'Lessie Heller IV', 'Conn, Kris and Lubowitz', 'South Claudie', 'Shaun Schmitt', 'https://via.placeholder.com/640x480.png/002255?text=eligendi', '2023-02-21', '2023-06-08', 14, 51),
(59, '9795154144106', 'Autem dolor cum ab.', 1, 'Mossie Klocko', 'Wunsch Inc', 'Connview', 'Fletcher Funk', 'https://via.placeholder.com/640x480.png/0055ff?text=est', '2023-05-06', '2023-02-26', 48, 21),
(60, '9797468499156', 'Ut sint dolorem nulla porro quidem explicabo.', 8, 'Karlee Kling', 'Abshire Ltd', 'Trompville', 'Trevion Stokes', 'https://via.placeholder.com/640x480.png/0066ee?text=tenetur', '2023-07-13', '2023-01-19', 92, 38),
(61, '9796951052168', 'Sapiente qui molestias voluptas mollitia mollitia.', 7, 'Henry Casper', 'Hand-Mosciski', 'East Bethel', 'Michael Bogan', 'https://via.placeholder.com/640x480.png/00cc22?text=laboriosam', '2023-09-05', '2023-06-08', 80, 43),
(62, '9781839521409', 'Quis eum quo itaque.', 9, 'Ashley Emmerich DDS', 'Kshlerin Ltd', 'East Desiree', 'Quinton Olson II', 'https://via.placeholder.com/640x480.png/002266?text=maxime', '2023-05-05', '2023-09-28', 71, 88),
(63, '9784350250612', 'Possimus ut enim nihil qui nam.', 3, 'Dr. Theron Crist DDS', 'Sporer, Howe and Klein', 'Monserratemouth', 'Stan Spinka', 'https://via.placeholder.com/640x480.png/00ddaa?text=facilis', '2023-04-12', '2023-08-18', 86, 15),
(64, '9792605308759', 'Nihil nulla porro qui aut.', 9, 'Miss Delta Kutch I', 'Macejkovic, Hodkiewicz and Hahn', 'North Elisha', 'Tierra Nikolaus', 'https://via.placeholder.com/640x480.png/008855?text=qui', '2023-02-03', '2023-07-31', 95, 17),
(65, '9789132983962', 'Qui quo iste nemo aut sapiente voluptates.', 2, 'Tillman Stokes', 'O\'Keefe, Brakus and Wiegand', 'South Mariela', 'Dr. Wilbert Pollich Jr.', 'https://via.placeholder.com/640x480.png/001144?text=assumenda', '2023-07-28', '2023-06-05', 64, 21),
(66, '9782494003767', 'Repudiandae ut soluta nobis.', 5, 'Amira Torp', 'Jones PLC', 'South Maiya', 'Golden Hammes', 'https://via.placeholder.com/640x480.png/00dd77?text=aliquid', '2023-02-24', '2023-07-28', 42, 77),
(67, '9786258230581', 'Explicabo dolorum in est sunt vitae.', 1, 'Nia Bednar', 'Zieme Ltd', 'Claudebury', 'Theresa Ritchie MD', 'https://via.placeholder.com/640x480.png/00cc88?text=consequatur', '2023-05-25', '2023-08-28', 64, 30),
(68, '9788879580007', 'Dolore ad quia doloremque.', 7, 'Mr. Austyn Baumbach II', 'Pollich-Casper', 'Watsicaton', 'Erwin Boyle', 'https://via.placeholder.com/640x480.png/008833?text=odit', '2023-09-29', '2023-09-05', 22, 58),
(69, '9791272193224', 'Dolores voluptatem hic rem et sed ut.', 1, 'Prof. Opal Luettgen', 'Koelpin-Murray', 'Rogahnberg', 'Maxwell Roob', 'https://via.placeholder.com/640x480.png/007711?text=incidunt', '2023-09-30', '2023-03-07', 99, 100),
(70, '9786614763838', 'Porro repudiandae natus quibusdam libero dolorum.', 4, 'Kaia Satterfield', 'Kuvalis-Davis', 'Toneyport', 'Miss Vanessa Veum', 'https://via.placeholder.com/640x480.png/00ffdd?text=impedit', '2023-02-24', '2023-09-10', 82, 65),
(71, '9793418917893', 'Aut omnis qui enim.', 1, 'Joaquin Macejkovic', 'Schaefer-Schowalter', 'Aufderharborough', 'Kieran Borer', 'https://via.placeholder.com/640x480.png/004400?text=officiis', '2023-03-11', '2023-03-10', 4, 87),
(72, '9793267195787', 'Qui dolorem ea qui consequatur voluptatem reprehenderit.', 5, 'Dena Kunde', 'Labadie Group', 'West Orville', 'Shanelle Hayes III', 'https://via.placeholder.com/640x480.png/006611?text=placeat', '2023-10-18', '2023-03-20', 19, 14),
(73, '9784530625759', 'Sunt earum culpa ipsa sit.', 3, 'Lacey Hoppe', 'Kessler PLC', 'Meggieville', 'Dena Moen', 'https://via.placeholder.com/640x480.png/005522?text=facilis', '2023-06-24', '2023-06-23', 86, 56),
(74, '9797492132050', 'Ut quibusdam qui deleniti.', 2, 'Nora Langosh', 'Swaniawski-Ullrich', 'South Dorthyborough', 'Shayna Tillman', 'https://via.placeholder.com/640x480.png/001199?text=esse', '2023-09-20', '2023-08-06', 62, 70),
(75, '9786076899977', 'Exercitationem rerum quia id eveniet.', 8, 'Arlo O\'Keefe', 'D\'Amore and Sons', 'Wilfredtown', 'Mr. Geovanny Reilly DDS', 'https://via.placeholder.com/640x480.png/0011aa?text=repudiandae', '2023-04-07', '2023-09-12', 31, 45),
(76, '9781451591217', 'Nemo quasi repellat magni fugiat numquam.', 3, 'Rowan Rippin', 'Wisoky-Swift', 'Port Jedidiahville', 'Norwood Ortiz', 'https://via.placeholder.com/640x480.png/003399?text=excepturi', '2023-07-23', '2023-04-14', 76, 73),
(77, '9791624218322', 'Quia ad culpa quia non veritatis.', 9, 'Percy O\'Keefe', 'Monahan-Doyle', 'North Allen', 'Skylar Jast', 'https://via.placeholder.com/640x480.png/007711?text=et', '2023-03-26', '2023-06-15', 47, 30),
(78, '9793732237288', 'Modi ut laborum ut et et expedita cupiditate.', 3, 'Dr. Jaiden Rosenbaum', 'Boyle LLC', 'North Calista', 'Ms. Libbie Beier I', 'https://via.placeholder.com/640x480.png/000011?text=sit', '2023-05-19', '2023-02-04', 92, 86),
(79, '9796687397700', 'Sunt quas aut fugit aut aut earum.', 7, 'Hilton Johnson MD', 'Herman PLC', 'Parisianland', 'Sylvan Ziemann', 'https://via.placeholder.com/640x480.png/006644?text=consectetur', '2023-03-28', '2023-09-02', 23, 37),
(80, '9781444380644', 'Et accusantium aspernatur qui velit blanditiis vel.', 1, 'Bradly Breitenberg', 'Legros Group', 'North Oceanemouth', 'Dr. Kole Mertz III', 'https://via.placeholder.com/640x480.png/005577?text=sapiente', '2023-08-30', '2023-09-23', 61, 33),
(81, '9787182125851', 'Veritatis blanditiis quis dicta molestias.', 10, 'Javonte Mann PhD', 'Lakin Ltd', 'Bridietown', 'Enola Cremin', 'https://via.placeholder.com/640x480.png/0022ff?text=quam', '2023-02-05', '2023-08-05', 57, 89),
(82, '9796986483838', 'Nulla mollitia praesentium repellat quisquam magni.', 8, 'Vernie Mitchell III', 'Orn, Bednar and Kilback', 'South Rene', 'Prof. Linda Orn', 'https://via.placeholder.com/640x480.png/007744?text=id', '2023-09-28', '2023-08-10', 88, 69),
(83, '9795393138492', 'Qui vitae soluta quia at rerum.', 3, 'Brannon Nienow', 'Gibson, Nikolaus and Stiedemann', 'Lake Ikefurt', 'Mrs. Micaela Klocko', 'https://via.placeholder.com/640x480.png/004444?text=est', '2023-03-02', '2023-08-26', 100, 53),
(84, '9795130277866', 'Eaque id vitae voluptates.', 7, 'Miss Jennie Eichmann', 'Shields Inc', 'Tillmanborough', 'Ms. Elza Rice', 'https://via.placeholder.com/640x480.png/004499?text=quo', '2023-07-21', '2023-07-07', 47, 68),
(85, '9786424016711', 'Voluptatem culpa est repellat.', 7, 'Nettie Willms', 'Orn-Smith', 'South Meghanburgh', 'Prof. Gordon Reichert', 'https://via.placeholder.com/640x480.png/006622?text=expedita', '2023-09-27', '2023-03-31', 73, 39),
(86, '9798827675136', 'Earum voluptatum tempore ratione dolor et nobis.', 8, 'Prof. Shania Lehner DVM', 'Ritchie-Kerluke', 'Augustineville', 'Lenora Okuneva', 'https://via.placeholder.com/640x480.png/0077ee?text=quisquam', '2023-04-22', '2023-03-21', 96, 29),
(87, '9784992590121', 'Praesentium delectus corporis repellat aliquid nobis.', 4, 'Alfred Tillman', 'Lindgren Ltd', 'Juliusbury', 'Pete Kulas', 'https://via.placeholder.com/640x480.png/002233?text=quas', '2023-03-22', '2023-01-21', 85, 55),
(88, '9781806775309', 'Impedit velit beatae voluptatem.', 8, 'Dr. Myron Turner II', 'Rempel-Prosacco', 'Kennedystad', 'Antwon Bergstrom', 'https://via.placeholder.com/640x480.png/009966?text=laudantium', '2023-09-26', '2023-09-19', 14, 64),
(89, '9783349893236', 'Quae dolor qui consectetur.', 1, 'Ms. Melody Marquardt', 'Stark-Dickens', 'Arianetown', 'Will Kris', 'https://via.placeholder.com/640x480.png/007700?text=rem', '2023-05-18', '2023-02-01', 42, 82),
(90, '9789225537270', 'Sit id rerum voluptatem fuga nobis.', 3, 'Nels Rowe V', 'Nicolas-Lynch', 'North Howardville', 'Kieran Braun DVM', 'https://via.placeholder.com/640x480.png/000099?text=aut', '2023-01-08', '2023-08-12', 13, 91),
(91, '9792628885435', 'Et impedit nulla et adipisci repudiandae.', 6, 'Terrill Schuppe PhD', 'Nolan-Heaney', 'West Jensenmouth', 'Willard Berge', 'https://via.placeholder.com/640x480.png/00ee00?text=dolorem', '2023-02-21', '2023-08-10', 92, 99),
(92, '9786288244756', 'Unde provident et et impedit amet sed.', 6, 'Cheyanne Nader', 'Smitham PLC', 'New Carol', 'Carissa Sanford', 'https://via.placeholder.com/640x480.png/00eeff?text=ut', '2023-10-05', '2023-04-24', 2, 66),
(93, '9793119281644', 'Dolorem quam quis aut et.', 9, 'Prof. Cade Kilback', 'Bailey Inc', 'Lake Axel', 'Susana Flatley', 'https://via.placeholder.com/640x480.png/00eecc?text=delectus', '2023-07-15', '2023-05-13', 39, 47),
(94, '9795084010816', 'Ut est ea consequuntur id aperiam sapiente.', 1, 'Albert Larkin MD', 'Turner and Sons', 'East Julienberg', 'Myrna Lubowitz', 'https://via.placeholder.com/640x480.png/0044ee?text=aut', '2023-10-07', '2023-07-20', 92, 7),
(95, '9795878903942', 'Illo nostrum nihil quaerat optio voluptas.', 10, 'Jeffrey Rutherford', 'DuBuque, Tremblay and Nitzsche', 'Lake Sonia', 'Sallie Reichel', 'https://via.placeholder.com/640x480.png/002200?text=inventore', '2023-07-21', '2023-08-30', 45, 89),
(96, '9792548410687', 'Culpa quia sed voluptatem esse dolor.', 7, 'Dr. Casey Beier PhD', 'Farrell-O\'Reilly', 'Port Dasia', 'Prof. Elwyn Cassin', 'https://via.placeholder.com/640x480.png/003355?text=quasi', '2023-08-20', '2023-04-29', 77, 30),
(97, '9790038216146', 'Aliquam cupiditate natus sunt praesentium et quo.', 1, 'Ima Fay', 'Davis, Hyatt and Haley', 'Blicktown', 'Dejah Muller', 'https://via.placeholder.com/640x480.png/007711?text=est', '2023-02-10', '2023-07-17', 68, 14),
(98, '9783564840947', 'Veritatis magnam officiis minus minima rerum.', 2, 'Kaycee White', 'Goldner, Daniel and Okuneva', 'Markshaven', 'Ms. Nova Wehner', 'https://via.placeholder.com/640x480.png/004466?text=et', '2023-05-05', '2023-09-05', 80, 45),
(99, '9783922462897', 'Possimus quia officiis alias.', 3, 'Elvera Macejkovic DVM', 'Zemlak-Steuber', 'West Francisco', 'Keenan Kuvalis', 'https://via.placeholder.com/640x480.png/00ee11?text=est', '2023-01-19', '2023-05-22', 84, 58),
(100, '9793134336886', 'Quos qui quis accusantium quia.', 8, 'Gia Beahan IV', 'Jast Inc', 'Imaton', 'Lydia Gislason', 'https://via.placeholder.com/640x480.png/00ee66?text=nemo', '2023-04-01', '2023-07-10', 96, 3);

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `idtransaksi` int(11) NOT NULL,
  `idbuku` int(11) NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `denda` decimal(10,2) DEFAULT NULL,
  `idpetugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `nama`) VALUES
(1, 'Fiksi'),
(2, 'Non-Fiksi'),
(3, 'Sains');

-- --------------------------------------------------------

--
-- Table structure for table `komentar_buku`
--

CREATE TABLE `komentar_buku` (
  `idkomentar` int(11) NOT NULL,
  `idbuku` int(11) DEFAULT NULL,
  `noktp` varchar(16) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `isbn` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1698076796, 1);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `idtransaksi` int(11) NOT NULL,
  `noktp` varchar(16) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `idpetugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `idpetugas` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating_buku`
--

CREATE TABLE `rating_buku` (
  `idbuku` int(11) NOT NULL,
  `noktp` varchar(16) NOT NULL,
  `skor_rating` int(11) DEFAULT NULL,
  `tgl_rating` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'michelle@yahoo.com', 'michelle', '$2y$10$aPfTvQEM1EZi2zymeaALC.sk8YSQbjyweRuigEInLwmmP.ej/WMbu', NULL, NULL, NULL, '19f67a2f97278f76ef3086763f036d47', NULL, NULL, 1, 0, '2023-10-23 16:07:56', '2023-10-23 16:07:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`noktp`);

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`idbuku`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`idtransaksi`,`idbuku`),
  ADD KEY `idbuku` (`idbuku`),
  ADD KEY `idpetugas` (`idpetugas`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `komentar_buku`
--
ALTER TABLE `komentar_buku`
  ADD PRIMARY KEY (`idkomentar`),
  ADD KEY `idbuku` (`idbuku`),
  ADD KEY `noktp` (`noktp`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`idtransaksi`),
  ADD KEY `noktp` (`noktp`),
  ADD KEY `idpetugas` (`idpetugas`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`idpetugas`);

--
-- Indexes for table `rating_buku`
--
ALTER TABLE `rating_buku`
  ADD PRIMARY KEY (`idbuku`,`noktp`),
  ADD KEY `noktp` (`noktp`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `idbuku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentar_buku`
--
ALTER TABLE `komentar_buku`
  MODIFY `idkomentar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `idtransaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `idpetugas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`idtransaksi`) REFERENCES `peminjaman` (`idtransaksi`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`idbuku`) REFERENCES `buku` (`idbuku`),
  ADD CONSTRAINT `detail_transaksi_ibfk_3` FOREIGN KEY (`idpetugas`) REFERENCES `petugas` (`idpetugas`);

--
-- Constraints for table `komentar_buku`
--
ALTER TABLE `komentar_buku`
  ADD CONSTRAINT `komentar_buku_ibfk_1` FOREIGN KEY (`idbuku`) REFERENCES `buku` (`idbuku`),
  ADD CONSTRAINT `komentar_buku_ibfk_2` FOREIGN KEY (`noktp`) REFERENCES `anggota` (`noktp`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`noktp`) REFERENCES `anggota` (`noktp`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`idpetugas`) REFERENCES `petugas` (`idpetugas`);

--
-- Constraints for table `rating_buku`
--
ALTER TABLE `rating_buku`
  ADD CONSTRAINT `rating_buku_ibfk_1` FOREIGN KEY (`idbuku`) REFERENCES `buku` (`idbuku`),
  ADD CONSTRAINT `rating_buku_ibfk_2` FOREIGN KEY (`noktp`) REFERENCES `anggota` (`noktp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
