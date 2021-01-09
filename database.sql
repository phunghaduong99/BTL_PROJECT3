-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 08, 2018 lúc 04:19 PM
-- Phiên bản máy phục vụ: 10.1.29-MariaDB
-- Phiên bản PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phongtro_laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Phòng trọ cho thuê', 'phong-tro-cho-thue', NULL, NULL),
(2, 'Ở ghép', 'o-ghep', NULL, NULL),
(3, 'Nhà nguyên căn', 'nha-nguyen-can', NULL, NULL),
(4, 'Chung cư', 'chung-cu', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `districts`
--

INSERT INTO `districts` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Ba Đình', 'ba-dinh', NULL, NULL),
(2, 'Ba Vì', 'ba-vi', NULL, NULL),
(3, 'Bắc Từ Liêm', 'bac-tu-liem', NULL, NULL),
(4, 'Cầu Giấy', 'cau-giay', NULL, NULL),
(5, 'Chương Mỹ', 'chuong-my', NULL, NULL),
(6, 'Đan Phượng', 'dan-phuong', NULL, NULL),
(7, 'Đông Anh', 'dong-anh', NULL, NULL),
(8, 'Đống Đa', 'dong-da', NULL, NULL),
(9, 'Gia Lâm', 'gia-lam', NULL, NULL),
(10, 'Hà Đông', 'ha-dong', NULL, NULL),
(11, 'Hai Bà Trưng', 'hai-ba-trung', NULL, NULL),
(12, 'Hoài Đức', 'hoai-duc', NULL, NULL),
(13, 'Hoàn Kiếm', 'hoan-kiem', NULL, NULL),
(14, 'Hoàng Mai', 'hoang-mai', NULL, NULL),
(15, 'Long Biên', 'long-bien', NULL, NULL),
(16, 'Mê Linh', 'me-linh', NULL, NULL),
(17, 'Mỹ Đức', 'my-duc', NULL, NULL),
(18, 'Nam Từ Liêm', 'nam-tu-liem', NULL, NULL),
(19, 'Phú Xuyên', 'phu-xuyen', NULL, NULL),
(20, 'Phúc Thọ', 'phuc-tho', NULL, NULL),
(21, 'Quốc Oai', 'quoc-oai', NULL, NULL),
(22, 'Sóc Sơn', 'soc-son', NULL, NULL),
(23, 'Sơn Tây', 'son-tay', NULL, NULL),
(24, 'Tây Hồ', 'tay-ho', NULL, NULL),
(25, 'Thạch Thất', 'thach-that', NULL, NULL),
(26, 'Thanh Oai', 'thanh-oai', NULL, NULL),
(27, 'Thanh Trì', 'thanh-tri', NULL, NULL),
(28, 'Thanh Xuân', 'thanh-xuan', NULL, NULL),
(29, 'Thường Tín', 'thuong-tin', NULL, NULL),
    (30, 'Ứng Hòa', 'ung-hoa', NULL, NULL);


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_11_083541_create_table_motel_rooms', 1),
(4, '2018_03_11_085624_create_table_districts', 1),
(5, '2018_03_11_085744_create_table_categories', 1),
(6, '2018_04_22_122641_add_column__status_for_user', 1),
(7, '2018_04_22_152143_add_ondelete_cascade_for_motelroom', 1),
(8, '2018_05_06_030849_add_col_phone_for__motelroom_table', 1),
(9, '2018_05_12_063610_add_column_approve_for_motelroom', 1),
(10, '2018_05_13_064120_add_table_report', 1),
(11, '2018_05_19_033745_add_column_slug_table_motelroom', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `motelrooms`
--

CREATE TABLE `motelrooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `count_view` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latlng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `utilities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approve` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `motelrooms`
--

INSERT INTO `motelrooms` (`id`, `title`, `description`, `price`, `area`, `count_view`, `address`, `latlng`, `images`, `user_id`, `category_id`, `district_id`, `utilities`, `created_at`, `updated_at`, `phone`, `approve`, `slug`) VALUES
(1, 'Cho thuê phòng trọ Định Công Hạ 25m²', '
Phòng đâu mặt đường cho thuê.\r\nĐịa chỉ: SN 18, ngách 99/110/65 định công hạ, hoàng mai, hà nội. \r\nKhông chung chủ, giờ giấc tự do.\r\nƯu tiên ở hộ gia đình lâu dài.\r\nGiá: 2tr5\r\nCọc 1 tháng: 2tr5.\r\nCó điều hoà, bình nóng lạnh, internet, giường, gác xép....\r\nẢnh như hình đình kèm.\r\nLh: chị Lan ',
 2500000, 25, 8, 'Ngách 99/110/65, Đường Định Công Hạ, Phường Định Công, Quận Hoàng Mai, Hà Nội', '{\"0\":\"20.977301\",\"1\":\"105.829498\"}', '{\"0\":\"phongtro-6O7N4-32783828_1207853946018675_1556571610645790720_n.jpg\"}',
 1, 1, 14, '{\"0\":\"Wifi mi\\u1ec5n ph\\u00ed\",\"1\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"2\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"3\":\"V\\u1ec7 sinh ri\\u00eang\"}', '2020-05-18 22:50:01', '2020-05-24 07:24:34', '0915325634', 1, 'cho-thue-phong-tro-25m2-hoangmai-hanoi'),



-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_motelroom` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reports`
--

INSERT INTO `reports` (`id`, `ip_address`, `id_motelroom`, `status`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 7, 2, '2018-05-19 01:30:32', '2018-05-19 01:30:32'),
(2, '127.0.0.1', 7, 1, '2018-05-24 07:24:17', '2018-05-24 07:24:17'),
(3, '127.0.0.1', 1, 2, '2018-05-24 07:24:33', '2018-05-24 07:24:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `right` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no-avatar.jpg',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tinhtrang` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `right`, `phone`, `avatar`, `remember_token`, `created_at`, `updated_at`, `tinhtrang`) VALUES
(1, 'duong dai ca', 'admin@gmail.com', 'phunghaduong99@gmail.com', '$2y$10$LEEPDPTd.4hEV50ywDbnhuYVrstBSHSHa16jgCGjiLzHKtoQUgRfu', 1, null, 'avatar-admin-1526708699.jpg', null, '2021-01-07 14:46:35', '2021-01-07 14:46:35', 1),
(2, 'Tất Nhạc', 'tatnhac', 'tatnhac@gmail.com', '$2y$10$w68K356705u4SR1HUmzchOBR1nklo6yDvZ/VzvG0bhQRB9j4QFzwK', 0, NULL, 'no-avatar.jpg', 'j4m9NmrzLAKw6E6MxKE067XbMQegswMBoAjuC5PvnUcAjrF7FpZcPkfrqLbR', '2018-05-19 00:50:52', '2018-05-19 00:50:52', 1),
(3, 'Văn Phúc', 'vanphuc', 'vanphuc@gmail.com', '$2y$10$Dbd1QmmlWGV.uYqi9KpTVuD2yKMgqs5fbHVNn5jMeOReaqh79T7gq', 0, NULL, 'no-avatar.jpg', 'BxvBGC60U40Wu1TADa2zk3MrPujWPoaymjboNSoCk9jQethQp2TXEXWO9EbG', '2018-05-19 01:02:17', '2018-05-19 01:02:17', 1),
(4, 'Bảo Ngọc', 'baongoc', 'baongoc@gmail.com', '$2y$10$eMiGI1HA.u0IWJpLT1Wjlec3ojGbDhAmmnITN5Erga6t/GUpzjex.', 0, NULL, 'avatar-baongoc-1526717688.png', 'o9qTtYf2aoyY3imWqUmqLBkNoR7luVz3qoD3JslTmVpQyfapdx6JnZ0r3A9e', '2018-05-19 01:11:11', '2018-05-19 01:14:48', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `motelrooms`
--
ALTER TABLE `motelrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `motelrooms_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `motelrooms`
--
ALTER TABLE `motelrooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `motelrooms`
--
ALTER TABLE `motelrooms`
  ADD CONSTRAINT `motelrooms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
