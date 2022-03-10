-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th3 10, 2022 lúc 03:56 AM
-- Phiên bản máy phục vụ: 10.2.37-MariaDB
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `core_webcard`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `ward_id` int(11) DEFAULT NULL,
  `CityName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DistrictName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WardName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`id`, `fullname`, `email`, `phone`, `district_id`, `province_id`, `ward_id`, `CityName`, `DistrictName`, `WardName`, `address`, `picture`, `url_picture`, `user_id`, `status`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(15, 'Phạm thu hương', 'linhbq68@wru.vn', '0904506621', NULL, 1, NULL, NULL, NULL, NULL, 'đa nang', 'FIQjSVDp2B.png', NULL, 26, 'active', NULL, '2021-03-24 18:03:22', '2021-04-10 12:14:14', NULL),
(18, NULL, NULL, '02765057123', 461, 37, 7464, NULL, NULL, NULL, 'Thành Phố Hồ Chí Minh', NULL, NULL, 99, 'active', NULL, '2021-06-01 03:38:00', '2021-06-01 03:38:00', NULL),
(20, NULL, NULL, '0936118224', 42, 2, 657, NULL, NULL, NULL, 'số nhà 65 ngõ 54 đường lê quang đạo', NULL, NULL, 79, 'active', NULL, '2021-06-02 00:55:04', '2021-06-02 00:55:04', NULL),
(28, NULL, NULL, '0123123123', 402, 256, 11481, 'An Giang', 'Thành phố Long Xuyên', 'Phường Bình Khánh', 'Long Xuyên - An Giang', NULL, NULL, 102, 'active', NULL, '2021-06-04 20:15:05', '2021-06-04 20:15:05', NULL),
(29, NULL, NULL, '012345678', 395, 257, 10191, 'Bà Rịa - Vũng Tàu', 'Thành phố Vũng Tàu', 'Phường 7', 'Tp VÙng Tàu - Vùng Tàu', NULL, NULL, 102, 'active', NULL, '2021-06-04 20:15:29', '2021-06-04 20:15:29', NULL),
(33, 'mai lan', 'mailannguyenst@gmail.com', '0936118224', 42, 2, 654, 'Hà Nội', 'Nam Từ Liêm', 'Mễ Trì', 'số nhà 65 ngõ 54 đường lê quang đạo', NULL, NULL, 32, 'active', NULL, '2021-06-22 03:48:31', '2021-06-22 03:48:31', NULL),
(36, 'nguyen nhan', 'demo@gmail.com', '02765057123', 395, 30, 6365, 'An Giang', 'Tân Châu', 'Lê Chánh', 'Tân Châu, An Giang', NULL, NULL, 108, 'active', NULL, '2021-06-28 04:49:32', '2021-06-28 06:00:58', NULL),
(37, 'nguyễn mai lan', 'mailannguyenst@gmail.com', '0936118224', 42, 2, 657, 'Hà Nội', 'Nam Từ Liêm', 'Phú Đô', 'số nhà 65 ngõ 54 đường lê quang đạo', NULL, NULL, 109, 'active', NULL, '2021-06-29 19:27:43', '2021-06-29 19:27:43', NULL),
(45, 'mai lan', 'mailannguyenst@gmail.com', '0936118224', 27, 2, 378, 'Hà Nội', 'Bắc Từ Liêm', 'Phú Diễn', 'nhà văn hóa tổ 6', NULL, NULL, 28, 'active', NULL, '2021-07-01 19:28:55', '2021-07-01 19:28:55', NULL),
(47, 'Nguyễn Khánh Linh', 'ichimaruginzu1110@gmail.com', '0142536789', 464, 37, 7531, 'Bến Tre', 'Giồng Trôm', 'Phước Long', '11', NULL, NULL, 111, 'active', NULL, '2021-07-12 20:54:12', '2021-07-12 20:54:12', NULL),
(49, 'Trần Hoàng Lâm', 'thlam021995@gmail.com', '0988584757', 42, 2, 661, 'Hà Nội', 'Nam Từ Liêm', 'Xuân Phương', 'Thửa đất số 3930, tờ bản đồ số 34, Khu phố 3B', NULL, NULL, 116, 'active', NULL, '2021-07-20 20:29:13', '2021-07-20 20:29:13', NULL),
(50, 'Trần Hoàng Lâm', 'tranlam321@gmail.com', '0988584757', 32, 2, 472, 'Hà Nội', 'Đống Đa', 'Láng Thượng', 'Hongkong Tower, số 243A đường Đê La Thành', NULL, NULL, 119, 'active', NULL, '2021-07-20 23:45:44', '2021-07-20 23:45:44', NULL),
(51, 'Nguyễn Đức Thủy', 'ducthuy1705@gmail.com', '0982782923', 223, 17, 3094, 'Bắc Ninh', 'Từ Sơn', 'Đồng Kỵ', 'Tân thành', NULL, NULL, 115, 'active', NULL, '2021-07-21 01:27:25', '2021-07-21 01:27:25', NULL),
(52, NULL, NULL, '0982361548', 223, 17, 3094, 'Bắc Ninh', 'Từ Sơn', 'Đồng Kỵ', 'kcn', NULL, NULL, 115, 'active', NULL, '2021-07-21 07:16:15', '2021-07-21 07:16:15', NULL),
(53, 'Ms Nhung', 'doannhung25@gmail.com', '0973980423', 27, 2, 378, 'Hà Nội', 'Bắc Từ Liêm', 'Phú Diễn', 'Tòa R3 Goldmark city, 136 Hồ Tùng Mậu, tổ 20', NULL, NULL, 112, 'active', NULL, '2021-07-22 20:48:07', '2021-08-28 09:57:02', NULL),
(54, 'Doan Thi Nhung', 'doannhung25@gmail.com', '0973980423', 639, 56, 10093, 'Yên Bái', 'Văn Yên', 'Mậu Đông', 'Số nhà 04, khu phố 1', NULL, NULL, 112, 'active', NULL, '2021-07-24 00:05:58', '2021-08-28 09:55:45', NULL),
(55, NULL, NULL, '0904150229', 28, 2, 388, 'Hà Nội', 'Cầu Giấy', 'Nghĩa Đô', 'Việt Nam', NULL, NULL, 122, 'active', NULL, '2021-07-25 22:23:01', '2021-07-25 22:23:01', NULL),
(57, 'Doan Thi Nhung', 'doannhung25@gmail.com', '0973980423', 639, 56, 10093, 'Yên Bái', 'Văn Yên', 'Hoàng Thắng', 'Số nhà 02, khu phố 1', NULL, NULL, 124, 'active', NULL, '2021-07-29 00:13:16', '2021-09-03 08:06:58', NULL),
(58, 'Desi', 'd3511liu@gmail.com', '0971765336', 33, 2, 489, 'Hà Nội', 'Gia Lâm', 'Đa Tốn', 'Vinhomes Ocean Park, S2.15', NULL, NULL, 128, 'active', NULL, '2021-07-29 19:25:18', '2021-07-29 19:25:18', NULL),
(59, 'Doan Thi Nhung', 'doannhung25@gmail.com', '0973980423', 42, 2, 654, 'Hà Nội', 'Nam Từ Liêm', 'Mễ Trì', '20 ĐỒng Me', NULL, NULL, 124, 'active', NULL, '2021-07-29 20:53:38', '2021-07-29 20:53:38', NULL),
(60, 'mai lan', 'mailannguyenst@gmail.com', '0936118224', 27, 2, 378, 'Hà Nội', 'Bắc Từ Liêm', 'Phú Diễn', 'số nhà 70', NULL, NULL, 79, 'active', NULL, '2021-08-03 02:59:54', '2021-08-03 02:59:54', NULL),
(63, 'tuancisco', 'tuannt@heid.vn', 'fđfdfdfd', 26, 2, 344, 'Hà Nội', 'Ba Vì', 'Cam Thượng', 'abc', NULL, NULL, 137, 'active', NULL, '2021-08-07 08:14:14', '2021-08-07 08:14:14', NULL),
(64, 'Nguyễn Đức Phương', 'phuong21294@gmail.com', '+84327060081', 31, 2, 441, 'Hà Nội', 'Đông Anh', 'Bắc Hồng', 'Số nhà 19, đối diện UBND xã Bắc Hồng, Đông Anh, Hà Nội', NULL, NULL, 143, 'active', NULL, '2021-08-14 02:42:28', '2021-08-14 02:42:28', NULL),
(65, 'Nguyễn Đức Phương', 'phuong21294@gmail.com', '+84327060081', 31, 2, 441, 'Hà Nội', 'Đông Anh', 'Bắc Hồng', 'Số nhà 19, đối diện UBND xã Bắc Hồng, Đông Anh, Hà Nội', NULL, NULL, 143, 'active', NULL, '2021-08-14 02:44:18', '2021-08-14 02:44:18', NULL),
(66, 'Nhung Đoàn', 'doannhung25@gmail.com', '0973980423', 639, 56, 10093, 'Yên Bái', 'Văn Yên', 'Ngòi A', 'Số nhà 02, khu phố 1', NULL, NULL, 136, 'active', NULL, '2021-08-14 03:14:53', '2021-08-28 09:50:22', NULL),
(67, 'Hà Văn Hiếu', 'hahieu1980@gmail.com', '0938168322', 34, 2, 521, 'Hà Nội', 'Hà Đông', 'Quang Trung', '452 Quang Trung', NULL, NULL, 150, 'inactive', NULL, '2021-08-28 09:03:37', '2021-08-28 09:03:37', NULL),
(69, 'Hà Văn Hiếu', 'hahieu1980@gmail.com', '0938168322', 34, 2, 521, 'Hà Nội', 'Hà Đông', 'Quang Trung', '452 Quang Trung', NULL, NULL, 150, 'inactive', NULL, '2021-08-28 09:17:30', '2021-08-28 09:17:30', NULL),
(70, 'Bùi Quang Linh', 'linhbq68@wru.vn', '0904506621', 657, 58, 10403, 'Điện Biên', 'Tủa Chùa', 'Tả Sìn Thàng', 'hanoi', NULL, NULL, 28, 'inactive', NULL, '2021-08-28 09:55:05', '2021-08-28 09:55:05', NULL),
(72, 'Đỗ Thị Nhật Thảo', 'dothinhatthao@gmail.com', '0961524156', 28, 2, 392, 'Hà Nội', 'Cầu Giấy', 'Yên Hòa', '14 abc', NULL, NULL, 114, 'inactive', NULL, '2021-09-05 09:28:41', '2021-09-05 09:28:41', NULL),
(73, 'Thái Hùng', 'hlvthaihung@gmail.com', '0978187154', 39, 2, 604, 'Hà Nội', 'Long Biên', 'Ngọc Lâm', 'Số nhà 39 Ngõ 24 Ngọc Lâm', NULL, NULL, 160, 'inactive', NULL, '2021-09-05 09:31:40', '2021-09-05 09:31:40', NULL),
(74, 'Nhung Đoàn', 'doannhung25@gmail.com', '0973980423', 42, 2, 654, 'Hà Nội', NULL, NULL, 'abc', NULL, NULL, 136, 'inactive', NULL, '2021-09-08 01:25:13', '2021-09-08 01:25:13', NULL),
(75, 'son', 'makison@naver.com', '0899589284', 39, 2, 609, 'Hà Nội', 'Long Biên', 'Thạch Bàn', 'ssssss', NULL, NULL, 159, 'inactive', NULL, '2021-09-09 02:50:37', '2021-09-09 02:50:37', NULL),
(78, 'Nhung Anyhow', 'Anyhow@anyhow.vn', '0973980423', 639, 56, 10093, 'Yên Bái', NULL, 'Mậu A', 'SN 03, tổ dân phố số 1, tt Mậu A', NULL, NULL, 171, 'inactive', NULL, '2021-09-17 00:08:35', '2021-09-17 00:08:35', NULL),
(79, 'Nhung Anyhow', 'Anyhow@anyhow.vn', '0973980423', 639, 56, 10093, 'Yên Bái', NULL, 'Mậu A', 'SN 03, tổ dân phố số 1, tt Mậu A', NULL, NULL, 171, 'inactive', NULL, '2021-09-17 00:08:45', '2021-09-17 00:08:45', NULL),
(80, 'Nhung anyhow', 'nhunganyhow@gmail.com', '0973980423', 639, 56, 10093, 'Yên Bái', NULL, NULL, 'Tổ dân phố 1', NULL, NULL, 174, 'inactive', NULL, '2021-09-24 08:38:41', '2021-09-24 08:38:41', NULL),
(81, NULL, NULL, '0973980423', 639, 56, 10093, 'Yên Bái', 'Văn Yên', 'Mậu A', 'Tổ dân phố số 1', NULL, NULL, 174, 'inactive', NULL, '2021-09-24 16:32:33', '2021-09-24 16:32:33', NULL),
(82, 'Nguyễn Thanh Phong', 'thanhphonglx98@gmail.com', '0904506620', 370, 28, 5893, 'Bắc Giang', 'Lục Nam', 'Bình Sơn', '155 Nguyễn Trải', NULL, NULL, 1, 'inactive', NULL, '2021-09-24 17:12:09', '2021-09-24 17:12:09', NULL),
(87, 'Nguyen Ngan', 'ngan98@gmail.com', '281-235-0411', 321, 23, 4976, 'Bình Phước', 'Đồng Phú', NULL, '155 Nguyễn Trải', NULL, NULL, 177, 'inactive', NULL, '2021-09-25 04:09:45', '2021-09-25 04:09:45', NULL),
(88, 'Thùy Dung', 'thuydungtest@gmail.com', '0973980423', 639, 56, 10093, 'Yên Bái', 'Văn Yên', 'Mậu A', 'Tổ dân phố số 02', NULL, NULL, 178, 'inactive', NULL, '2021-09-25 04:15:02', '2021-09-25 04:15:02', NULL),
(89, 'Trang Nguyễn Thị Hiền', 'trangnth17886@gmail.com', '+84979074797', 25, 2, 332, 'Hà Nội', 'Ba Đình', 'Liễu Giai', 'S206 0203 Vinhome OceanPark Đa Tốn Gia Lâm HN', NULL, NULL, 182, 'inactive', NULL, '2021-10-02 02:18:12', '2021-10-02 02:18:12', NULL),
(90, 'hien trang', 'trangnth17886@gmail.com', '0979074797', 25, 2, 332, 'Hà Nội', 'Ba Đình', 'Liễu Giai', 'lotte 54 liễu giai ba đình hn', NULL, NULL, 182, 'inactive', NULL, '2021-10-02 02:51:12', '2021-10-02 02:51:12', NULL),
(91, 'hien trang', 'trangnth17886@gmail.com', '0979074797', 25, 2, 332, 'Hà Nội', 'Ba Đình', 'Liễu Giai', 'lotte 54 liễu giai ba đình hn', NULL, NULL, 182, 'inactive', NULL, '2021-10-02 02:51:13', '2021-10-02 02:51:13', NULL),
(92, 'AnyhowDesi', 'operator@anyhow.vn', '0963090416', 33, 2, 489, 'Hà Nội', 'Gia Lâm', 'Đa Tốn', 'Vinhomes Ocean Park S2.15', NULL, NULL, 113, 'inactive', NULL, '2021-10-02 03:02:08', '2021-10-02 03:02:08', NULL),
(93, 'Trang Nguyen', 'trangntt28tccn@gmail.com', '0988333668', 28, 2, 391, 'Hà Nội', 'Cầu Giấy', 'Trung Hòa', 'Cổng số 2 - Mandarin Hòa Phát - đường Nguyễn Thị Thập', NULL, NULL, 183, 'inactive', NULL, '2021-10-02 12:12:20', '2021-10-02 12:12:20', NULL),
(94, 'Malfoy Slytherin', 'maivanvo1234@gmail.com', '0982666710', 531, 45, 8503, 'Hà Nam', 'Duy Tiên', 'Tiên Phong', '24 Ba Lan', NULL, NULL, 184, 'inactive', NULL, '2021-10-07 02:45:40', '2021-10-07 02:45:40', NULL),
(95, 'test momo', 'test@gmail.com', '123456789', 140, 10, 2067, 'Bà Rịa Vũng Tàu', 'Châu Đức', 'Bình Trung', 'hà nội', NULL, NULL, 186, 'inactive', NULL, '2021-10-14 04:25:30', '2021-10-14 04:25:30', NULL),
(96, 'Đoàn Nhung', 'doannhung25@gmail.com', '0973980423', 639, 56, 10093, 'Yên Bái', 'Văn Yên', NULL, 'số nhà 10, tổ dân phố 1', NULL, NULL, 188, 'inactive', NULL, '2021-10-18 03:20:08', '2021-10-18 03:20:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_menus`
--

CREATE TABLE `admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_menus`
--

INSERT INTO `admin_menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'main menu', '2021-04-25 10:26:56', '2022-02-25 17:44:51'),
(2, 'Menu (Ko)', '2021-04-29 07:54:42', '2021-12-02 15:08:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_menu_items`
--

CREATE TABLE `admin_menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu` bigint(20) UNSIGNED NOT NULL,
  `depth` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_menu_items`
--

INSERT INTO `admin_menu_items` (`id`, `label`, `link`, `parent`, `sort`, `class`, `menu`, `depth`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', 'https://demo2.webhobasoft.com/', 0, 0, NULL, 1, 0, '2021-04-25 10:28:45', '2022-02-25 17:45:14'),
(2, 'Giới thiệu', 'https://demo2.webhobasoft.com/gioi-thieu', 0, 1, NULL, 1, 0, '2021-04-26 21:19:45', '2022-02-25 17:45:21'),
(3, 'Dịch vụ', 'https://demo2.webhobasoft.com/dich-vu', 0, 3, NULL, 1, 0, '2021-04-26 21:20:00', '2022-03-04 08:45:09'),
(7, 'Liên Hệ', 'https://demo2.webhobasoft.com/lien-he', 0, 6, NULL, 1, 0, '2021-04-26 21:21:11', '2022-03-04 08:44:59'),
(52, 'Home', 'https://alligayacht.com', 0, 0, NULL, 2, 0, '2021-12-06 06:16:20', '2022-01-27 06:58:57'),
(53, 'About us', 'https://alligayacht.com/gioi-thieu', 0, 1, NULL, 2, 0, '2021-12-06 06:16:45', '2022-01-26 08:35:03'),
(54, 'Contact', '#', 0, 5, NULL, 2, 0, '2021-12-06 06:16:52', '2022-01-26 08:38:44'),
(55, 'Yacht', 'https://alligayacht.com/du-thuyen', 0, 3, NULL, 2, 0, '2021-12-06 06:16:59', '2022-01-26 08:37:28'),
(56, 'Services', 'https://alligayacht.com/dich-vu', 0, 2, NULL, 2, 0, '2021-12-06 06:17:20', '2022-01-26 08:36:54'),
(68, 'Tin Tức', 'https://demo2.webhobasoft.com/tin-tuc', 0, 5, NULL, 1, 0, '2021-12-08 06:38:04', '2022-03-04 08:44:58'),
(69, 'News', 'https://alligayacht.com/tin-tuc', 0, 4, NULL, 2, 0, '2022-01-26 08:38:37', '2022-01-26 08:38:44'),
(70, 'Hướng dẫn', 'https://demo2.webhobasoft.com/huong-dan', 0, 4, NULL, 1, 0, '2022-02-28 18:35:50', '2022-03-04 08:45:07'),
(71, 'Cộng tác viên', '#', 2, 2, NULL, 1, 1, '2022-03-04 08:44:55', '2022-03-04 08:45:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `order_no` int(11) DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0 COMMENT '0:banner,1:slider',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `name_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ko` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `button_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_name_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `name`, `title`, `description`, `link`, `order_no`, `picture`, `url_picture`, `gallery`, `type`, `status`, `name_ko`, `title_ko`, `description_ko`, `location`, `created_by`, `created_at`, `updated_at`, `updated_by`, `button_name`, `button_name_ko`, `content`) VALUES
(29, 'THẺ VIỆT', 'MỘT THẺ QUỐC GIA', '<p><span style=\"color:#2c3e50;\">Mở t&agrave;i khoản miễn ph&iacute; trong v&agrave;i ph&uacute;t từ ứng dụng điện thoại của bạn trải nghiệm v&ocirc; v&agrave;n tiện &iacute;ch th&ocirc;ng minh</span></p>', '#', 1, 'https://demo2.webhobasoft.com/storage/photos/1/blog_small_img2.jpg', 'https://dako-int.com/storage/photos/1/bigimg1.jpg', NULL, 1, 'active', 'ALLIGA YACHT', NULL, '<p><span style=\"font-size:13pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Classy experience, worthy value</span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 'banner_home', 28, '2021-05-19 21:13:41', '2022-03-08 06:53:47', 1, 'Xem chi tiết', NULL, NULL),
(42, 'Giới thiệu', 'Thẻ Việt - Một thẻ quốc gia', '<div class=\"O0\">\r\n<p style=\"margin-bottom: 13px; text-align: justify;\">Thẻ Việt - Một thẻ quốc gia gi&uacute;p cuộc sống đơn giản v&agrave; tiện lợi hơn. Với nền tảng c&ocirc;ng nghệ ưu việt v&agrave; hệ thống bảo mật an to&agrave;n li&ecirc;n kết đa lĩnh vực, sử dụng thẻ gi&uacute;p người d&ugrave;ng: Đơn giản h&oacute;a qu&aacute; tr&igrave;nh kh&aacute;m chữa bệnh c&oacute; được số kh&aacute;m, tư vấn kh&aacute;m ngay tại nh&agrave;, mua v&eacute; bus, v&eacute; du lịch, v&eacute; gửi xe... Thanh to&aacute;n kh&ocirc;ng d&ugrave;ng tiền mặt, t&iacute;ch điểm với hằng ng&agrave;n ưu đ&atilde;i hấp dẫn.</p>\r\n\r\n<p style=\"margin-bottom: 13px; text-align: justify;\">&nbsp;</p>\r\n</div>', 'https://dako-int.com/gioi-thieu', NULL, 'https://alligayacht.com/storage/photos/1/Untitled_2.6.3.png', NULL, '[\"https:\\/\\/alligayacht.com\\/storage\\/photos\\/1\\/MDUC9421.jpg\",\"https:\\/\\/alligayacht.com\\/storage\\/photos\\/1\\/MDUC9365 (1).jpg\"]', 0, 'active', 'About Us', 'About Us', '<p style=\"text-indent:36.0pt; margin-bottom:13px\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Alliga Yacht is the first private yacht manufacturer in Vietnam. We are fortunate to continue and develop on the basis of HA MINH DUONG HOLDINGS JOINT STOCK COMPANY.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"line-height:1.38\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Capturing the potential of the domestic and international yacht market, together with the passion and desire to bring sustainable values ​​to the Vietnamese people, are all the driving forces and the foundation for the birth of Alliga Yacht.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"line-height:1.38\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Mission:</span></span></span></span></span></span><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> Bringing high-class experiences to Vietnamese citizens, along with worthy values of a personal yacht created by Vietnamese themselves, in the journey to bring yachts closer to people around Vietnam.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"line-height:1.38\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Vision:</span></span></span></span></span></span><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> To become the leading yacht brand in Vietnam, develop and manufacture private yachts, promote popularity in country and move towards larger, more luxurious, low-priced, branded Vietnamese yachts to the international market, bringing the image of the country and Vietnamese people to the world, enhancing the country&#39;s position and affirming the spirit and wisdom of the Vietnamese nation.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 'banner_about', 1, '2021-11-11 00:33:09', '2022-03-08 07:03:42', 1, 'Xem chi tiết', ' 의 전신은 베', NULL),
(43, 'Giới thiệu trang about', 'Thẻ Việt - Một thẻ quốc gia', '<p>Thẻ Việt - Một thẻ quốc gia gi&uacute;p cuộc sống đơn giản v&agrave; tiện lợi hơn. Với nền tảng c&ocirc;ng nghệ ưu việt v&agrave; hệ thống bảo mật an to&agrave;n li&ecirc;n kết đa lĩnh vực, sử dụng thẻ gi&uacute;p người d&ugrave;ng: Đơn giản h&oacute;a qu&aacute; tr&igrave;nh kh&aacute;m chữa bệnh c&oacute; được số kh&aacute;m, tư vấn kh&aacute;m ngay tại nh&agrave;, mua v&eacute; bus, v&eacute; du lịch, v&eacute; gửi xe... Thanh to&aacute;n kh&ocirc;ng d&ugrave;ng tiền mặt, t&iacute;ch điểm với hằng ng&agrave;n ưu đ&atilde;i hấp dẫn.</p>', '#', NULL, 'https://dako-int.com/storage/photos/1/_97A0602.jpg', NULL, NULL, 0, 'active', NULL, NULL, NULL, 'banner_about_page', 1, '2021-11-11 00:49:28', '2022-03-08 06:57:18', 1, NULL, NULL, NULL),
(46, 'Khối team', 'Chị Nguyễn Thị Bích Hoan', '<p style=\"text-indent: 0in;\"><font face=\"Arial\"><span style=\"font-size: 17.3333px; white-space: pre-wrap;\">&quot;T&ocirc;i đến bệnh viện v&agrave; c&oacute; số kh&aacute;m lu&ocirc;n, t&ocirc;i kh&ocirc;ng phải xếp h&agrave;ng chờ đợi nữa, t&ocirc;i cũng kh&ocirc;ng phải tiếp x&uacute;c nhiều với bệnh nh&acirc;n hoặc l&agrave; thủ tục rườm r&agrave; kia nữa&quot;</span></font></p>\r\n\r\n<p style=\"text-indent: 0in;\"><em>Huyện Thanh Tr&igrave;, H&agrave; Nội</em></p>', '#', 6, 'https://dako-int.com/storage/photos/1/Picture6.jpg', NULL, NULL, 0, 'active', NULL, 'Le Tiep', '<p><span style=\"font-size:13pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">I love fishing, thus owning Alliga&#39;s personal yacht enables my fishing trips with friends to be much more enjoyable and convenient.</span></span></span></span></span></span></p>', 'banner_team', 1, '2021-11-19 15:46:54', '2022-03-08 10:05:13', 1, NULL, NULL, NULL),
(47, 'Khách hàng phản hồi', 'BÀ PHẠM THỊ THÀNH', '<p style=\"text-indent: 0in;\">&ldquo;Trong c&aacute;i n&agrave;y c&oacute; lưu cả số thứ tự thẻ bảo hiểm y tế ở trong, n&ecirc;n chỉ cần c&aacute;i n&agrave;y người ta đ&atilde; biết hết rồi. Cho n&ecirc;n m&igrave;nh rất l&agrave; tiện. C&oacute; h&ocirc;m người t&ocirc;i mỏi, t&ocirc;i đi c&ocirc;ng t&aacute;c ở tr&ecirc;n th&agrave;nh phố t&ocirc;i tiện th&igrave; t&ocirc;i c&oacute; thể ra bất cứ bệnh viện n&agrave;o t&ocirc;i kh&aacute;m cũng được. C&aacute;i số n&agrave;y n&oacute; lưu h&agrave;nh trong to&agrave;n tỉnh, n&oacute; tiện như thế th&igrave; ch&uacute;ng t&ocirc;i mới l&agrave;m.&rdquo;</p>\r\n\r\n<p style=\"text-indent: 0in;\"><em>Huyện Vũ Thư, Tỉnh Th&aacute;i B&igrave;nh</em></p>', '#', 5, 'https://dako-int.com/storage/photos/1/Picture7.jpg', NULL, NULL, 0, 'active', NULL, 'Le Hong Thai', '<p><span style=\"font-size:13pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Alliga&rsquo;s rental service is really good. It was the first time I rented a yacht, but I was very attentively guided and devotedly prepared by the Alliga team</span></span></span></span></span></span></p>', 'banner_team', 1, '2021-11-19 15:54:21', '2022-03-08 09:59:29', 1, NULL, NULL, NULL),
(49, 'Đối tác 6', NULL, NULL, 'http://dht-lawfirm.com/', 6, 'https://dako-int.com/storage/photos/1/qFH5GcEr7H.png', NULL, NULL, 0, 'active', NULL, NULL, NULL, 'banner_partner', 1, '2021-11-20 16:02:32', '2021-11-24 04:37:47', 1, NULL, NULL, NULL),
(53, 'Đối tác 1', NULL, NULL, 'http://huunghiviethan.vn/content/thong-tin-cong-ty.html', 1, 'https://alligayacht.com/storage/photos/1/logo thăng long yacht.jpg', NULL, '[\"https:\\/\\/alligayacht.com\\/storage\\/photos\\/1\\/logo th\\u0103ng long yacht.jpg\"]', 0, 'active', NULL, NULL, NULL, 'banner_partner', 1, '2021-11-23 18:11:08', '2022-01-25 10:49:01', 1, NULL, NULL, NULL),
(55, 'Đối tác 7', NULL, NULL, 'http://alligayacht.com/', 7, 'https://alligayacht.com/storage/photos/1/logo189.jpg', NULL, '[\"https:\\/\\/alligayacht.com\\/storage\\/photos\\/1\\/logo189.jpg\"]', 0, 'active', NULL, NULL, NULL, 'banner_partner', 1, '2021-11-24 04:44:54', '2022-01-25 10:46:37', 1, NULL, NULL, NULL);
INSERT INTO `banners` (`id`, `name`, `title`, `description`, `link`, `order_no`, `picture`, `url_picture`, `gallery`, `type`, `status`, `name_ko`, `title_ko`, `description_ko`, `location`, `created_by`, `created_at`, `updated_at`, `updated_by`, `button_name`, `button_name_ko`, `content`) VALUES
(56, 'Đối tác 8', 'sấd', '<p>nasdasd</p>', '#', 8, 'https://alligayacht.com/storage/photos/1/logo canoe DEMO-06 (1).png', NULL, '[\"https:\\/\\/alligayacht.com\\/storage\\/photos\\/1\\/logo canoe DEMO-06 (1).png\"]', 0, 'active', NULL, NULL, NULL, 'banner_partner', 1, '2021-11-24 05:40:59', '2022-02-28 17:39:20', 1, NULL, NULL, '<p style=\"line-height:1.38; margin-bottom:4px\"><img alt=\"\" src=\"https://demo2.webhobasoft.com/storage/photos/1/choose-us.png\" style=\"width: 300px; height: 290px;\" /></p>\r\n\r\n<p style=\"line-height:1.38; margin-bottom:4px\"><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Y&ecirc;u cầu ch&iacute;nh:</span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Site cho ph&eacute;p thay đổi nội dung theo file JSON đưa v&agrave;o.</span></span></span></span></span></span></li>\r\n	<li aria-level=\"1\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">C&oacute; tool pull data từ Bing Shopping v&agrave; lưu v&agrave;o db.</span></span></span></span></span></span></li>\r\n	<li aria-level=\"1\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">C&oacute; bộ source blog sử dụng Wordpress.</span></span></span></span></span></span></li>\r\n	<li aria-level=\"1\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">C&aacute;c chức năng đ&atilde; c&oacute; ở c&aacute;c template JSON kh&aacute;c:&nbsp;</span></span></span></span></span></span>\r\n	<ul>\r\n		<li aria-level=\"2\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Bật/tắt ajax, điều chỉnh số % keyword lưu v&agrave;o db sau 1 khoảng thời gian.</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sitemap kiểu mới.</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Upload nội dung JSON.</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Table keyword_like: sử dụng lưu c&aacute;c keyword ph&ugrave; hợp theo điều kiện like được cấu h&igrave;nh từ file JSON đưa v&agrave;o.</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hiển thị coupons trả về từ api.</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sử dụng api python hiển thị kết quả search result, video, faq, coupons.</span></span></span></span></span></span></li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"line-height:1.38; margin-bottom:4px\"><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">T&agrave;i liệu đi k&egrave;m:</span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Link file nội dung json mẫu: </span></span></span></span></span></span><a href=\"https://docs.google.com/spreadsheets/d/1Z3Aec3qQ5aCx-pE5qb6L2ztkuBCdTsLbb3aEblhIJn0/edit#gid=0\" style=\"text-decoration:none\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:underline\"><span style=\"-webkit-text-decoration-skip:none\"><span style=\"text-decoration-skip-ink:none\">PBN Bind Template - Google Sheets</span></span></span></span></span></span></span></span></a></li>\r\n	<li aria-level=\"1\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">File HTML template:</span></span></span></span></span></span>\r\n	<ul>\r\n		<li aria-level=\"2\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Home page: </span></span></span></span></span></span><a href=\"https://pbn-html.iscoupon.com/Coupon-Bind/public/home.html\" style=\"text-decoration:none\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">https://pbn-html.iscoupon.com/Coupon-Bind/public/home.html</span></span></span></span></span></span></a></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Keyword page: </span></span></span></span></span></span><a href=\"https://pbn-html.iscoupon.com/Coupon-Bind/public/pbn-keyword.html\" style=\"text-decoration:none\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">https://pbn-html.iscoupon.com/Coupon-Bind/public/pbn-keyword.html</span></span></span></span></span></span></a></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">All Deals page: </span></span></span></span></span></span><a href=\"https://pbn-html.iscoupon.com/Coupon-Bind/public/all-deal.html\" style=\"text-decoration:none\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">https://pbn-html.iscoupon.com/Coupon-Bind/public/all-deal.html</span></span></span></span></span></span></a></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Category detail page: </span></span></span></span></span></span><a href=\"https://pbn-html.iscoupon.com/Coupon-Bind/public/category-detail-new.html\" style=\"text-decoration:none\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">https://pbn-html.iscoupon.com/Coupon-Bind/public/category-detail-new.html</span></span></span></span></span></span></a></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Deal detail page: </span></span></span></span></span></span><a href=\"https://pbn-html.iscoupon.com/Coupon-Bind/public/deal-detail.html\" style=\"text-decoration:none\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">https://pbn-html.iscoupon.com/Coupon-Bind/public/deal-detail.html</span></span></span></span></span></span></a></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Get code page: </span></span></span></span></span></span><a href=\"https://pbn-html.iscoupon.com/Coupon-Bind/public/popup2.html\" style=\"text-decoration:none\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">https://pbn-html.iscoupon.com/Coupon-Bind/public/popup2.html</span></span></span></span></span></span></a></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Get deal page: </span></span></span></span></span></span><a href=\"https://pbn-html.iscoupon.com/Coupon-Bind/public/popup1.html\" style=\"text-decoration:none\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">https://pbn-html.iscoupon.com/Coupon-Bind/public/popup1.html</span></span></span></span></span></span></a></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:disc\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Get fake code page: </span></span></span></span></span></span><a href=\"https://pbn-html.iscoupon.com/Coupon-Bind/public/popup3.html\" style=\"text-decoration:none\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">https://pbn-html.iscoupon.com/Coupon-Bind/public/popup3.html</span></span></span></span></span></span></a></li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"line-height:1.38; margin-bottom:4px\"><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Y&ecirc;u cầu c&aacute;c box chức năng theo từng page:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"line-height:1.38\">&nbsp;</p>\r\n\r\n<ol>\r\n	<li aria-level=\"1\" style=\"list-style-type:decimal\"><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffff00\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Home page (</span></span></span></span></span></span></span><a href=\"https://docs.google.com/spreadsheets/d/1Z3Aec3qQ5aCx-pE5qb6L2ztkuBCdTsLbb3aEblhIJn0/edit#gid=0\" style=\"text-decoration:none\"><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"background-color:#ffff00\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:underline\"><span style=\"-webkit-text-decoration-skip:none\"><span style=\"text-decoration-skip-ink:none\">link to sheet json</span></span></span></span></span></span></span></span></span></a><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffff00\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">)</span></span></span></span></span></span></span></li>\r\n</ol>\r\n\r\n<ol>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Menu</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">header_menu</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Config theo file JSON đưa v&agrave;o.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Search box</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hiện chưa l&agrave;m logic, sau sẽ c&oacute; page Search result rồi l&agrave;m sau.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Slider 1:&nbsp;</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">slider_1</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Theo config file JSON. VD: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">amazon.jpg|</span></span></span></span></span></span><a href=\"http://amazon.com/\" style=\"text-decoration:none\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:underline\"><span style=\"-webkit-text-decoration-skip:none\"><span style=\"text-decoration-skip-ink:none\">http://amazon.com</span></span></span></span></span></span></span></span></a><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">|nofollow (t&ecirc;n ảnh trong folder domain.com|đường dẫn link khi click v&agrave;o ảnh|thuộc t&iacute;nh của link: nofollow hoặc dofollow)</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol start=\"4\">\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Slider 2</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_1</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Limit: 10</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy c&aacute;c coupons mới nhất ở table coupons. Offset 0-10</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:&nbsp;</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Ảnh: ảnh đại diện của keyword c&oacute; box coupon. Click v&agrave;o ảnh link tới page keyword cụ thể.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title: text keyword. Click v&agrave;o link tới page keyword cụ thể.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title của 1 coupon mới nhất của keyword hiện tại.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Slider 3</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_2</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Limit: 40</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy c&aacute;c coupons mới nhất ở table coupons. offset 10-50</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Ảnh: ảnh đại diện của keyword c&oacute; coupons. Click v&agrave;o ảnh tới page keyword hiện tại.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Best Hot Store</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_3</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy từ file JSON Library, theo điều kiện của cột condition_get_from_lib</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Click v&agrave;o 1 keyword ra page keyword detail.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Top coupons 1</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_4</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Limit: 4.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy c&aacute;c coupons mới nhất ở table coupons. Offset 50-54</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Ảnh: ảnh đại diện của keyword sinh ra box coupon đ&oacute;.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title: ti&ecirc;u đề của coupon.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Expire date: fake (tomorrow)</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">User used: fake</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Button Get code/Get deal: click ra page Get code detail (nếu c&oacute; code) hoặc Get deal detail (nếu kh&ocirc;ng c&oacute; code).</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Top coupons 2</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_5</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy theo điều kiện ở file JSON Lib (lấy theo note v&agrave; limit được config ở JSON).</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Link khi click ra page keyword detail.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Today vouchers 1</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_6</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Limit: 12.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy c&aacute;c coupons mới nhất ở table coupons. Offset 54-66</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Logic như g.iii</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Today vouchers 2</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_7</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy theo điều kiện ở file JSON Lib (lấy theo note v&agrave; limit được config ở JSON).</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Link khi click ra page keyword detail.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">New stores</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_8</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Limit: 40</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy c&aacute;c coupons mới nhất ở table coupons. Offset 66-106</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Ảnh: ảnh đại diện của keyword c&oacute; coupons. Click v&agrave;o ảnh tới page keyword hiện tại.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Latest blogs posts</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_blog</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy 10 b&agrave;i post mới nhất của Wordpress blog</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:&nbsp;</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Ảnh: ảnh thumbnail của b&agrave;i blog, click v&agrave;o ảnh link đến page blog detail.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title: ti&ecirc;u đề của b&agrave;i blog.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">M&ocirc; tả ngắn của b&agrave;i blog. Giới hạn k&yacute; tự hiển thị cho ph&ugrave; hợp.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">FAQs about CouponBin</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">faq</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy theo config từ file json</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Best Selling Products</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_9.</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Limit: 10.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy list product theo tag được config bằng file JSON (cột html_content). Tag name được nhập v&agrave;o khi d&ugrave;ng tool k&eacute;o products từ Bing Shopping về db.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Tag discount percent: hiển thị nếu c&oacute; dữ liệu.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Ảnh: ảnh của product, click v&agrave;o link đến page Product detail của sản phẩm đ&oacute;.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Gi&aacute; trước giảm, gi&aacute; sau giảm: hiển thị nếu c&oacute; dữ liệu.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Ng&ocirc;i sao rating: dữ liệu rating của Product.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title của product</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">M&ocirc; tả ngắn của product hiển thị 2 d&ograve;ng v&agrave; hiển thị dấu 3 chấm ở cuối c&ugrave;ng.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Top Deal</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_10</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Limit 10.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy list product theo tag được config bằng file JSON (cột html_content). Tag name được nhập v&agrave;o khi d&ugrave;ng tool k&eacute;o products từ Bing Shopping về db.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Video</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_video</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Limit: 6</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy list video mới nhất trong table Videos.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Logic hoạt động giống template Login Drive.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Recently search</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_recently_search</span></span></span></span></span></span></li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Limit: 21</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy c&aacute;c keyword được insert mới nhất v&agrave;o table search_results.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Click v&agrave;o keyword ra page Keyword detail.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"1\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Footer</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name:&nbsp;</span></span></span></span></span></span>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">menu_footer_box1</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">menu_footer_box2</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">menu_footer_box3</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Menu_footer_box4</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Config được nhập v&agrave;o từ JSON.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol start=\"2\">\r\n	<li aria-level=\"1\" style=\"list-style-type:decimal\"><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffff00\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Keyword page (</span></span></span></span></span></span></span><a href=\"https://docs.google.com/spreadsheets/d/1Z3Aec3qQ5aCx-pE5qb6L2ztkuBCdTsLbb3aEblhIJn0/edit#gid=1923575337\" style=\"text-decoration:none\"><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"background-color:#ffff00\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:underline\"><span style=\"-webkit-text-decoration-skip:none\"><span style=\"text-decoration-skip-ink:none\">link to sheet json</span></span></span></span></span></span></span></span></span></a><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffff00\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">)</span></span></span></span></span></span></span>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n		<h3 role=\"presentation\" style=\"line-height:1.38; font-size:26pt; font-family:Arial; color:#000000; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Breadcrumb:</span></span></span></span></span></span></h3>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Cấu tr&uacute;c : Home &gt; origin title của keyword hiện tại (d&ugrave;ng ucword)</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n		<h3 role=\"presentation\" style=\"line-height:1.38; font-size:26pt; font-family:Arial; color:#000000; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">[current_keyword]:</span></span></span></span></span></span></h3>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: body_box_1</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:&nbsp;</span></span></span></span></span></span>\r\n			<ol>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hiển thị origin title của keyword hiện tại&nbsp; (d&ugrave;ng ucword)</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Subtext config từ file json.</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Button visit site: link rel=nofollow đến url domain của keyword.</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Ảnh: hiển thị ảnh của keyword nếu c&oacute;.</span></span></span></span></span></span></li>\r\n			</ol>\r\n			</li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n		<h3 role=\"presentation\" style=\"line-height:1.38; font-size:26pt; font-family:Arial; color:#000000; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Best [current_keyword]&nbsp; Try Now!</span></span></span></span></span></span></h3>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_2</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n			<ol>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hiển thị tất cả coupons của keyword hiện tại.</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:italic\"><span style=\"text-decoration:underline\"><span style=\"-webkit-text-decoration-skip:none\"><span style=\"text-decoration-skip-ink:none\">Sử dụng box sau để hiển thị coupon (tạm bỏ qua box coupon c&oacute; logo)</span></span></span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">:</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"><span style=\"border:none\"><span style=\"display:inline-block\"><span style=\"overflow:hidden\"><span style=\"width:357px\"><span style=\"height:105px\"><img height=\"105\" src=\"https://lh6.googleusercontent.com/mkYUHsELkUUL3BLmmXoikQmIU7Wqvgj8pQOG48QgW4T00IF2GovF2a55UDulDHs5PNy0Ot2-QyiOsUWruh5C51KpVzK7CSwsL_IqyIrKF4rYG088V5fsCkZcJYtTpsmlLGQY_HF3\" width=\"357\" /></span></span></span></span></span></span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Cấu tr&uacute;c box coupon:</span></span></span></span></span></span>\r\n				<ol>\r\n					<li aria-level=\"5\" style=\"list-style-type:lower-alpha\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Số tiền hoặc % giảm gi&aacute;</span></span></span></span></span></span></li>\r\n					<li aria-level=\"5\" style=\"list-style-type:lower-alpha\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title coupon</span></span></span></span></span></span></li>\r\n					<li aria-level=\"5\" style=\"list-style-type:lower-alpha\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">used today: fake</span></span></span></span></span></span></li>\r\n					<li aria-level=\"5\" style=\"list-style-type:lower-alpha\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">% success: fake</span></span></span></span></span></span></li>\r\n					<li aria-level=\"5\" style=\"list-style-type:lower-alpha\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Nếu c&oacute; coupon code &rarr; hiển thị text Get code</span></span></span></span></span></span></li>\r\n					<li aria-level=\"5\" style=\"list-style-type:lower-alpha\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Nếu kh&ocirc;ng c&oacute; coupon code &rarr; hiển thị Get deal</span></span></span></span></span></span></li>\r\n					<li aria-level=\"5\" style=\"list-style-type:lower-alpha\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Khi click Get code/Get Deal: về page Code detail/deal detail.</span></span></span></span></span></span></li>\r\n					<li aria-level=\"5\" style=\"list-style-type:lower-alpha\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Button like/dislike: ko cần l&agrave;m cho hoạt động.</span></span></span></span></span></span></li>\r\n				</ol>\r\n				</li>\r\n			</ol>\r\n			</li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p style=\"line-height:1.38\">&nbsp;</p>\r\n\r\n<ol start=\"4\">\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Coupons For Stores Like [current_keyword]&nbsp;</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_3</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:&nbsp;</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">phần n&agrave;y d&ugrave;ng cho box coupon đi mượn của Category kh&aacute;c. Tạm bỏ qua mục n&agrave;y</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Top Products</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_4</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Nếu keyword hiện tại c&oacute; box coupon trả về theo api, sẽ k&egrave;m theo t&ecirc;n store (eg: Target), d&ugrave;ng t&ecirc;n store t&igrave;m trong db v&agrave; lấy ra c&aacute;c products của store đ&oacute;.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Perfect Choices From [Keyword]</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_5</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hiển thị search result trả về từ api.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note: Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Keyword FAQ</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_faq_box_6</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hiển thị FAQs trả về từ api.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Popular Trending Product</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_7</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy trong db theo tag name v&agrave; limit được đưa v&agrave;o từ JSON. eg: tag=hoang|limit=6</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note: Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Best Coupons By Views</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_8</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Limit: 20</span></span></span></span></span></span></li>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy top 20 keyword c&oacute; coupon (c&ograve;n gọi l&agrave; Store), sắp xếp theo mới đến cũ nhất.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note: Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">tag_used, tag_success, tag_verified, tag_category_name, tag_days_ago, tag_total_offers, tag_best_saving, tag_last_updated, tag_last_verified-count</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note: Dữ liệu nhập từ file JSON.</span></span></span></span></span></span></li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sidebar_1</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: Sidebar_1</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:&nbsp;</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Text được nhập v&agrave;o từ file JSON.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">C&aacute;c con số thống k&ecirc; c&oacute; thể d&ugrave;ng Ajax lazy load sau khi page được tải xong.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sidebar_2</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: Sidebar_2</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note: box n&agrave;y tự chọn c&aacute;ch fake th&ocirc;ng tin.</span></span></span></span></span></span></li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sidebar_subscibe</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: Sidebar_subscibe</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:&nbsp;</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">chức năng subscribe kh&ocirc;ng cần hoạt động.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">cho ph&eacute;p thay đổi text trong box n&agrave;y từ file JSON.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sidebar_categories</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: sidebar_categories</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:&nbsp;</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">lấy ở filter categories.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sidebar_like_keyword&nbsp;</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">sidebar_like_keyword</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note: tự chọn html box ở sidebar ph&ugrave; hợp.</span></span></span></span></span></span></li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sidebar_3</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: ​​sidebar_3</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:&nbsp;</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy other store ở Bing trả về,</span></span></span></span></span></span><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:underline\"><span style=\"-webkit-text-decoration-skip:none\"><span style=\"text-decoration-skip-ink:none\"> chưa c&oacute; html</span></span></span></span></span></span></span></span><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">, nếu ko c&oacute; dữ liệu ẩn hẳn box đi.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">ảnh vd:</span></span></span></span></span></span><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"><span style=\"border:none\"><span style=\"display:inline-block\"><span style=\"overflow:hidden\"><span style=\"width:148px\"><span style=\"height:153px\"><img height=\"153\" src=\"https://lh4.googleusercontent.com/GJG3k3xAS6dHV_MBN-cDGEL_Qy-elgWimgl3lnzjIghGIX_ZGlgjXFDZXJAx8GrxEFYTiOyIqfOfTFOZwQo_MAhb2H8Zbd9nyXcliaV5qvXFVk5dJUqhX5w3A7KI-nq46NeYnWDo\" width=\"148\" /></span></span></span></span></span></span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sidebar_4</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: sidebar_4</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy 10 kw dc search nhiều nhất (theo cột times).</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sidebar_5</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">sidebar_5</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hiển thị c&aacute;c group discount (5%,10%,15%... hoặc c&oacute; k&yacute; tự $) m&agrave; c&oacute; số lượng bản ghi &gt; 100.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sử dụng giao diện của box sau:</span></span></span></span></span></span>\r\n			<ol>\r\n				<li aria-level=\"5\" style=\"list-style-type:lower-alpha\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"><span style=\"border:none\"><span style=\"display:inline-block\"><span style=\"overflow:hidden\"><span style=\"width:169px\"><span style=\"height:148px\"><img height=\"148\" src=\"https://lh3.googleusercontent.com/2GJZ4uof9ylc05AT_qFXAoAooacLKygfZ6558hutpkKhWir7Fg8ezIGD4IA75H98jc2k8nSkLSIAfd89nXrku1SVL3aaxP6APx4R6BlH0okeqPkxlDc4rodnVBsLCdMMdwN2bvof\" width=\"169\" /></span></span></span></span></span></span></span></span></span></span></span></li>\r\n			</ol>\r\n			</li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sidebar_faq: bỏ box n&agrave;y.</span></span></span></span></span></span></h3>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Body_box_blog</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: body_box_blog</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy 3 b&agrave;i blog mới nhất từ Wordpress.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Body_box_video</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: body_box_video</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Limit: 6.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy videos của kw hiện tại (nếu c&oacute; video trả về từ api)</span></span></span></span></span></span></li>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Nếu ko c&oacute; video của kw th&igrave; lấy 6 video mới nhất ở table videos.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title + subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Body_box_expired</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_expired</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\">&nbsp;</li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<h3 role=\"presentation\" style=\"line-height:1.38; font-size:13.999999999999998pt; font-family:Arial; color:#434343; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; margin-left:48px; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Side_bar_faq</span></span></span></span></span></span></h3>\r\n\r\n	<ol>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: Side_bar_faq</span></span></span></span></span></span></li>\r\n		<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n		<ol>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Limit: 5</span></span></span></span></span></span></li>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy từ table faqs.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy theo like keyword (like theo questions), nếu ko c&oacute; th&igrave; lấy theo mới nhất.</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol start=\"3\">\r\n	<li aria-level=\"1\" style=\"list-style-type:decimal\"><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffff00\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Category detail page (</span></span></span></span></span></span></span><a href=\"https://docs.google.com/spreadsheets/d/1Z3Aec3qQ5aCx-pE5qb6L2ztkuBCdTsLbb3aEblhIJn0/edit#gid=850687846\" style=\"text-decoration:none\"><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"background-color:#ffff00\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:underline\"><span style=\"-webkit-text-decoration-skip:none\"><span style=\"text-decoration-skip-ink:none\">link to sheet</span></span></span></span></span></span></span></span></span></a><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffff00\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">)</span></span></span></span></span></span></span>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">Group c&aacute;c coupon c&oacute; title chứa 5%,10%,15%... hoặc chứa k&yacute; tự $, th&igrave; nh&oacute;m th&agrave;nh 1 nh&oacute;m. Nếu số lượng của 1 group &gt; 100 record th&igrave; sinh ra 1 slug v&agrave; sử dụng template Category detail.</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">C&oacute; 1 list b&ecirc;n MKT sẽ đưa v&agrave;o t&ecirc;n category (blackfriday, cyber monday&hellip;). Ở suggestion keyword ở page Keyword detail, nếu c&oacute; keyword n&agrave;o chứa category filter đ&oacute; th&igrave; sẽ hiển thị như một link sang page Category detail. V&agrave; page đ&oacute; sẽ hiển thị c&aacute;c coupon của page đ&oacute; + search result + product list lấy theo tag name khi d&ugrave;ng tool pull dữ liệu về.</span></span></span></span></span></span><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\"><span style=\"white-space:pre\"> </span></span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n		<h3 role=\"presentation\" style=\"line-height:1.38; font-size:26pt; font-family:Arial; color:#000000; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Body_box_1</span></span></span></span></span></span></h3>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: body_box_1</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:&nbsp;</span></span></span></span></span></span>\r\n			<ol>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title v&agrave; subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hiển thị list categories trong category filter.</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Khi click v&agrave;o &rarr; page Category detail.</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hiển thị c&aacute;c coupon của Category hiện tại (bản chất l&agrave; coupon của 1 keyword).</span></span></span></span></span></span></li>\r\n			</ol>\r\n			</li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n		<h3 role=\"presentation\" style=\"line-height:1.38; font-size:26pt; font-family:Arial; color:#000000; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Body_box_2</span></span></span></span></span></span></h3>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: </span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_2</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n			<ol>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title v&agrave; subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Limit 10.</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy ra c&aacute;c deal (product) mới nhất được pull về.</span></span></span></span></span></span></li>\r\n			</ol>\r\n			</li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n		<h3 role=\"presentation\" style=\"line-height:1.38; font-size:26pt; font-family:Arial; color:#000000; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Body_box_3</span></span></span></span></span></span></h3>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: body_box_3</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n			<ol>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title v&agrave; subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy ra tối đa 50 search result trả về từ api.</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Click button &ldquo;Get deal and save&rdquo; &rarr; page Get deal fake.</span></span></span></span></span></span></li>\r\n			</ol>\r\n			</li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n		<h3 role=\"presentation\" style=\"line-height:1.38; font-size:26pt; font-family:Arial; color:#000000; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Faq</span></span></span></span></span></span></h3>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: faq</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n			<ol>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Title v&agrave; subtext nhập từ file JSON.</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Dữ liệu lấy FAQs trả về từ api. Nếu kh&ocirc;ng c&oacute; dữ liệu ẩn cả box n&agrave;y đi.</span></span></span></span></span></span></li>\r\n			</ol>\r\n			</li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol start=\"4\">\r\n	<li aria-level=\"1\" style=\"list-style-type:decimal\"><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffff00\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">All Deals Page (</span></span></span></span></span></span></span><a href=\"https://docs.google.com/spreadsheets/d/1Z3Aec3qQ5aCx-pE5qb6L2ztkuBCdTsLbb3aEblhIJn0/edit#gid=901140064\" style=\"text-decoration:none\"><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"background-color:#ffff00\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:underline\"><span style=\"-webkit-text-decoration-skip:none\"><span style=\"text-decoration-skip-ink:none\">link to sheet</span></span></span></span></span></span></span></span></span></a><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffff00\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">)</span></span></span></span></span></span></span>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n		<h3 role=\"presentation\" style=\"line-height:1.38; font-size:26pt; font-family:Arial; color:#000000; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Body_box_1</span></span></span></span></span></span></h3>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: Body_box_1</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note: Chỉ nhận title v&agrave; subtext từ file JSON.&nbsp;</span></span></span></span></span></span></li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n		<h3 role=\"presentation\" style=\"line-height:1.38; font-size:26pt; font-family:Arial; color:#000000; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Body_box_2</span></span></span></span></span></span></h3>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: Body_box_2</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n			<ol>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Ban đầu hiển thị 12 latest coupons.</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sau mỗi Load more load th&ecirc;m 4 coupons</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">title + subtext nhập từ json</span></span></span></span></span></span></li>\r\n			</ol>\r\n			</li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n		<h3 role=\"presentation\" style=\"line-height:1.38; font-size:26pt; font-family:Arial; color:#000000; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Body_box_3</span></span></span></span></span></span></h3>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: Body_box_3</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n			<ol>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">limit 10, chia l&agrave;m 2 slide.</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy ra deals theo tag nhập v&agrave;o từ file json, nếu ko c&oacute; sẽ lấy latest deals</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">title + subtext nhập từ json</span></span></span></span></span></span></li>\r\n			</ol>\r\n			</li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n		<h3 role=\"presentation\" style=\"line-height:1.38; font-size:26pt; font-family:Arial; color:#000000; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Body_box_4</span></span></span></span></span></span></h3>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: Body_box_4</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Điều kiện lấy data:</span></span></span></span></span></span>\r\n			<ol>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">title + subtext nhập từ json</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Lấy ra c&aacute;c deals latest mới được pull về. Ban đầu hiển thị 15 item, mỗi lần load more load th&ecirc;m 15 c&aacute;i tiếp theo.</span></span></span></span></span></span></li>\r\n			</ol>\r\n			</li>\r\n		</ol>\r\n		</li>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n		<h3 role=\"presentation\" style=\"line-height:1.38; font-size:26pt; font-family:Arial; color:#000000; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Faq</span></span></span></span></span></span></h3>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: faq</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n			<ol>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">title + subtext nhập từ json</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hiển thị faq theo cấu tr&uacute;c nhập v&agrave;o từ file JSON.</span></span></span></span></span></span></li>\r\n			</ol>\r\n			</li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol start=\"5\">\r\n	<li aria-level=\"1\" style=\"list-style-type:decimal\"><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Deal Detail Page</span></span></span></span></span></span>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">\r\n		<h3 role=\"presentation\" style=\"line-height:1.38; font-size:26pt; font-family:Arial; color:#000000; font-weight:400; font-style:normal; font-variant:normal; text-decoration:none; vertical-align:baseline; white-space:pre; padding-inline-start:48px\"><span style=\"font-size:13.999999999999998pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#434343\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Body_box_1</span></span></span></span></span></span></h3>\r\n\r\n		<ol>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">json box name: ​​</span></span></span></span></span></span><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">body_box_1</span></span></span></span></span></span></li>\r\n			<li aria-level=\"3\" style=\"list-style-type:lower-roman\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Note:</span></span></span></span></span></span>\r\n			<ol>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hiển thị c&aacute;c product c&ugrave;ng tag name với product hiện tại.</span></span></span></span></span></span></li>\r\n				<li aria-level=\"4\" style=\"list-style-type:decimal\"><span style=\"font-size:10pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Limit 15.</span></span></span></span></span></span></li>\r\n			</ol>\r\n			</li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol start=\"6\">\r\n	<li aria-level=\"1\" style=\"list-style-type:decimal\"><span style=\"font-size:26pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Get Code page</span></span></span></span></span></span>\r\n\r\n	<ol>\r\n		<li aria-level=\"2\" style=\"list-style-type:lower-alpha\">&nbsp;</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;</p>');
INSERT INTO `banners` (`id`, `name`, `title`, `description`, `link`, `order_no`, `picture`, `url_picture`, `gallery`, `type`, `status`, `name_ko`, `title_ko`, `description_ko`, `location`, `created_by`, `created_at`, `updated_at`, `updated_by`, `button_name`, `button_name_ko`, `content`) VALUES
(63, 'Tiệc đứng', NULL, '<p><span style=\"font-size:13pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Tận hưởng những bữa tiệc vui vẻ b&ecirc;n gia đ&igrave;nh, bạn b&egrave; v&ocirc; c&ugrave;ng ấm c&uacute;ng v&agrave; ri&ecirc;ng tư. Thật tuyệt vời phải kh&ocirc;ng?</span></span></span></span></span></span></p>', NULL, 1, 'https://alligayacht.com/storage/photos/1/Untitled_2.5.3.png', NULL, NULL, 0, 'active', 'Standing party', 'Standing party', '<p>&nbsp;</p>\r\n\r\n<p style=\"line-height:1.38\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Enjoy amusing parties with family and friends that are cozy and individual. It&#39;s great isn&#39;t it?</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 'banner_acti', 1, '2021-12-08 16:03:20', '2022-01-24 09:17:22', 1, NULL, NULL, NULL),
(64, 'Câu cá', 'Câu cá', '<p><span style=\"font-size:13pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Trải nghiệm th&uacute; vui c&acirc;u c&aacute; y&ecirc;u th&iacute;ch bằng ch&iacute;nh chiếc du thuyền c&aacute; nh&acirc;n của m&igrave;nh một c&aacute;ch tự do v&agrave; thoải m&aacute;i. </span></span></span></span></span></span></p>', NULL, 3, 'https://alligayacht.com/storage/photos/1/MDUC9365 (1).jpg', NULL, NULL, 0, 'active', 'Fishing', 'Fishing', '<p>&nbsp;</p>\r\n\r\n<p style=\"line-height:1.38\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Experience your fishing pleasure in your own personal yacht freely and comfortably.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 'banner_acti', 1, '2021-12-08 16:06:13', '2022-01-24 09:18:12', 1, NULL, NULL, NULL),
(69, 'Đăng ký khám', 'Cho thuê du thuyền', '<p><span style=\"font-size:13pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Một chiếc du thuyền đẳng cấp c&ugrave;ng </span></span></span></span></span></span><span style=\"font-size:13pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">dịch vụ chuy&ecirc;n nghiệp v&agrave; lu&ocirc;n được bảo dưỡng đ&uacute;ng chuẩn sẽ mang lại cho bạn đ&uacute;ng gi&aacute; trị m&agrave; bạn bỏ ra đầu tư. Alliga sẽ gi&uacute;p bạn tăng thu nhập cho du thuyền của bạn với chiến lược khả thi nhất.</span></span></span></span></span></span></span></p>', NULL, 2, 'https://alligayacht.com/storage/photos/1/MDUC9314.jpg', NULL, NULL, 0, 'active', 'Rental Yacht', 'Rental Yacht', '<p><span style=\"font-size:13pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">A high-class yacht with professional services and always properly maintained will bring you the right value for your investment, Alliga will help you increase your income with the most viable strategy.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 'banner_dv_page', 1, '2021-12-08 16:37:38', '2022-03-08 09:54:20', 1, NULL, NULL, NULL),
(70, 'Tư vấn khám', 'Mua bán du thuyền', '<p><span style=\"font-size:13pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Những mẫu du thuyền c&aacute; nh&acirc;n của Alliga chắc chắn sẽ lu&ocirc;n khiến bạn phải ấn tượng về vẻ đẹp v&agrave; chất lượng của n&oacute;. Với chi ph&iacute; v&ocirc; c&ugrave;ng hợp l&yacute;, h&atilde;y sở hữu ngay cho m&igrave;nh một chiếc du thuyền c&aacute; nh&acirc;n đẳng cấp nhất.</span></span></span></span></span></span></p>', NULL, 2, 'https://alligayacht.com/storage/photos/1/3I3B1045 (4).jpg', NULL, NULL, 0, 'active', 'Purchase Yacht', 'Purchase Yacht', '<p><span style=\"font-size:13pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Alliga&#39;s personal yacht models are sure to impress you with their beauty and quality. With a very reasonable cost, own yourself a private yacht of the highest class.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 'banner_dv_page', 1, '2021-12-08 16:38:26', '2022-03-08 09:55:31', 1, NULL, NULL, NULL),
(72, 'Dã ngoại', NULL, '<p><span style=\"font-size:13pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Thư gi&atilde;n m&ugrave;a lễ hội v&agrave; cuối tuần với những chuyến d&atilde; ngoại thật th&uacute; vị bằng du thuyền ri&ecirc;ng của bạn, v&agrave; theo c&aacute;ch của bạn.</span></span></span></span></span></span></p>', NULL, 2, 'https://alligayacht.com/storage/photos/1/dã ngoại 2.jpg', NULL, NULL, 0, 'active', 'Picnics', NULL, '<p>&nbsp;</p>\r\n\r\n<p style=\"line-height:1.38\"><span style=\"font-size:11pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Unwind the holiday and weekend with enjoyable excursions on your own personal yacht, and in your own way.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 'banner_acti', 1, '2022-01-06 03:37:59', '2022-01-24 09:07:19', 1, NULL, NULL, NULL),
(73, 'Vé nghệ thuật', 'Sửa chữa & bảo dưỡng du thuyền', '<p><span style=\"font-size:13pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Với kỹ thuật h&agrave;ng hải hiện đại nhất, Alliga cung cấp dịch vụ sửa chữa, bảo dưỡng du thuyền với những ti&ecirc;u chuẩn tốt nhất, gi&uacute;p bảo vệ chiếc du thuyền của bạn khỏi c&aacute;c yếu tố rủi ro v&agrave; đảm bảo an to&agrave;n cho ch&iacute;nh bạn.</span></span></span></span></span></span></p>', NULL, 3, 'https://alligayacht.com/storage/photos/1/Untitled_2.5.3.png', NULL, NULL, 0, 'active', 'Repair & maintenance', 'Repair & maintenance', '<p><span style=\"font-size:13pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">With the most modern marine technology, Alliga provides yacht repair and maintenance services that help protect your yacht from the elements and ensure your own safety</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 'banner_dv_page', 1, '2022-01-06 05:04:50', '2022-03-08 09:56:22', 1, NULL, NULL, NULL),
(74, 'Vé xe buýt', 'Siêu tiết kiệm', NULL, NULL, 4, 'https://alligayacht.com/storage/photos/1/MDUC9365 (1).jpg', NULL, NULL, 0, 'active', 'Marina', 'Marina', '<p><span style=\"font-size:13pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Alliga provides marina solutions with best quality construction management and contracting services. No matter where your project is located throughout Vietnam, Alliga always ensures the quality and speed to provide you with perfect services.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 'banner_dv_page', 1, '2022-01-06 05:05:57', '2022-03-08 09:56:44', 1, NULL, NULL, NULL),
(77, 'Banner khối giới thiệu trang dịch vụ', 'Làm thế nào để bắt đầu', '<h4>Tải App v&agrave; tạo t&agrave;i khoản</h4>\r\n\r\n<p>Tải app Thẻ Việt hoặc c&aacute;c app t&iacute;ch hợp thẻ v&agrave; chọn đăng k&yacute; t&agrave;i khoản</p>\r\n\r\n<h4>X&aacute;c thực v&agrave; k&iacute;ch hoạt</h4>\r\n\r\n<p>Tải l&ecirc;n giấy tờ c&aacute; nh&acirc;n, x&aacute;c thực khu&ocirc;n mặt, giọng n&oacute;i v&agrave; c&aacute;c th&ocirc;ng tin đăng k&yacute;</p>\r\n\r\n<h4>Nạp tiền</h4>\r\n\r\n<p>Li&ecirc;n kết t&agrave;i khoản nh&acirc;n h&agrave;ng hoặc chuyển khoản để nạp tiền</p>\r\n\r\n<h4>Thanh to&aacute;n</h4>\r\n\r\n<p>Thanh to&aacute;n v&ocirc; v&agrave;n tiện dịch vụ nhanh ch&oacute;ng v&agrave; bảo mật</p>', '#', NULL, 'https://demo2.webhobasoft.com/storage/photos/1/download.png', NULL, NULL, 0, 'active', NULL, NULL, NULL, 'banner_about_dv', 1, '2022-02-25 16:26:30', '2022-03-08 07:28:23', 1, 'Xem chi tiết', NULL, NULL),
(78, 'Ưu đãi hấp dẫn', 'Đăng ký sử dụng tại nhà không còn phải xếp hàng chờ đợi', '<ul>\r\n	<li>\r\n	<h3>Cộng điểm khi mở thẻ v&agrave; t&iacute;ch điểm với mỗi giao dịch</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Dễ d&agrave;ng thanh to&aacute;n ngay tr&ecirc;n điện thoại</h3>\r\n	</li>\r\n	<li>\r\n	<h3>H&agrave;ng ng&agrave;n ưu đ&atilde;i hấp dẫn, đ&aacute;ng tin cậy</h3>\r\n	</li>\r\n</ul>', '#', 1, 'https://demo2.webhobasoft.com/storage/photos/1/choose-us.png', NULL, NULL, 0, 'active', NULL, NULL, NULL, 'banner_why_choose', 1, '2022-02-28 16:21:38', '2022-03-08 10:11:02', 1, NULL, NULL, NULL),
(79, '4 bước dễ dàng đăng ký', '4 bước dễ dàng đăng ký', '<ul>\r\n	<li data-wow-delay=\"0.2s\">Bước 1:&nbsp;Tải app từ App Store hoặc Google Play</li>\r\n	<li data-wow-delay=\"0.2s\">Bước 2:&nbsp;Nhập số điện thoại v&agrave; nhập m&atilde; OTP</li>\r\n	<li data-wow-delay=\"0.2s\">Bước 3:&nbsp;X&aacute;c thực bằng c&aacute;ch tải ảnh chụp r&otilde; rằng 1 trong 3 loại giấy tờ CMND/CCCD/ Hộ chiếu, chụp ảnh khu&ocirc;n mặt&nbsp;v&agrave; ghi &acirc;m giọng n&oacute;i cả bạn</li>\r\n	<li data-wow-delay=\"0.2s\">Bước 4:&nbsp;X&aacute;c thực c&aacute;c th&ocirc;ng tin cả nh&acirc;n kh&aacute;c v&agrave; đăng k&yacute; th&agrave;nh c&ocirc;ng!</li>\r\n</ul>', NULL, NULL, 'https://demo2.webhobasoft.com/storage/photos/1/123009714_2908490526047632_4680981963391795996_n.jpg', NULL, NULL, 0, 'active', NULL, NULL, NULL, 'banner_download', 1, '2022-02-28 16:34:09', '2022-03-08 08:07:57', 1, NULL, NULL, '<form name=\"Tên\">sad</form>\r\n\r\n<p>&nbsp;</p>'),
(80, 'Khách hàng phản hồi', 'Ông Nguyễn Trọng Khang', '<p>&quot;Muốn đăng k&yacute; kh&aacute;m th&igrave; m&igrave;nh c&oacute; thể đăng k&yacute; tại nh&agrave;, kh&ocirc;ng cần mất thời gian đến đ&acirc;y để chờ&quot;</p>\r\n\r\n<p>Huyện Thường T&iacute;n, H&agrave; Nội</p>', NULL, NULL, 'https://demo2.webhobasoft.com/storage/photos/1/blog_small_img2.jpg', NULL, NULL, 0, 'active', NULL, NULL, NULL, 'banner_team', 1, '2022-03-08 10:07:05', '2022-03-08 10:12:46', 1, NULL, NULL, NULL),
(81, 'Tính năng check-in của Thẻ Việt', 'Check-in', '<p>T&iacute;nh năng check-in của Thẻ Việt</p>', NULL, 2, 'https://demo2.webhobasoft.com/storage/photos/1/blog_small_img2.jpg', NULL, NULL, 1, 'active', NULL, NULL, NULL, 'banner_home', 1, '2022-03-08 11:12:12', '2022-03-08 11:14:43', 1, NULL, NULL, NULL),
(82, 'Vé điện tử', 'Vé điện tử', '<p>V&eacute; điện tử</p>', NULL, 3, 'https://demo2.webhobasoft.com/storage/photos/1/blog_small_img2.jpg', NULL, NULL, 1, 'active', NULL, NULL, NULL, 'banner_home', 1, '2022-03-08 11:13:21', '2022-03-08 11:14:05', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `becomeTeacher`
--

CREATE TABLE `becomeTeacher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cmnd` varchar(255) DEFAULT NULL,
  `link_mxh` varchar(255) DEFAULT NULL,
  `co_kinh_nghiem` varchar(255) DEFAULT NULL,
  `so_nam_kinh_nghiem` varchar(255) DEFAULT NULL,
  `linhvuc` varchar(255) DEFAULT NULL,
  `chude` varchar(255) DEFAULT NULL,
  `khinao` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `becomeTeacher`
--

INSERT INTO `becomeTeacher` (`id`, `name`, `age`, `phone`, `email`, `cmnd`, `link_mxh`, `co_kinh_nghiem`, `so_nam_kinh_nghiem`, `linhvuc`, `chude`, `khinao`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Bùi Linh 123', '23', '0904506621', 'thanhphonglx98@gmail.com', '12', '2', NULL, '23', 'default', '23', '23', '2021-07-27 10:55:08', '2021-07-27 10:55:08', 1),
(2, 'Bùi Linh 123', '2', '0904506621', 'thanhphonglx98@gmail.com', '2323', NULL, NULL, '1', 'default', '23', '23', '2021-07-27 10:56:34', '2021-07-27 10:56:34', 1),
(3, 'Bùi Linh 123', '23', '0904506621', 'thanhphonglx98@gmail.com', '23', NULL, NULL, '23', 'default', '23', '23', '2021-07-27 11:00:32', '2021-07-27 11:00:32', 1),
(4, 'Bùi Linh 123', '2', '0904506621', 'thanhphonglx98@gmail.com', '2323', '2323', 'on', '2', '25', '2', '2', '2021-07-27 11:05:32', '2021-07-27 11:05:32', 1),
(5, 'Linh 123 adasd', '30', '09056604421', 'phongtest@gmail.com', '264806723', NULL, 'on', '5', '25', 'dạy belly dance', 'tháng 8', '2021-07-28 02:03:36', '2021-07-28 02:03:36', 28),
(6, 'Linh 123 adasd', '32', '09056604421', 'phongtest@gmail.com', '234234234', NULL, 'on', '123', '25', 'sadasa', 'sdasd', '2021-08-18 13:47:17', '2021-08-18 13:47:17', 28);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `order_no` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `name_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ko` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_ko` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `description`, `content`, `picture`, `url_picture`, `status`, `order_no`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `meta_title_ko`, `meta_description_ko`, `meta_keywords_ko`, `created_by`, `created_at`, `updated_at`, `updated_by`, `name_ko`, `description_ko`, `content_ko`) VALUES
(24, 'Sản Xuất Công Nghiệp', NULL, NULL, NULL, NULL, 'active', NULL, 'san-xuat-cong-nghiep', NULL, NULL, NULL, '산업생산', NULL, NULL, 1, '2021-11-13 05:44:04', '2021-12-05 17:42:53', 1, '산업생산', NULL, NULL),
(29, 'Tư vấn & xúc tiến đầu tư FDI', 'Tư vấn & xúc tiến đầu tư FDI', NULL, NULL, 'https://dako-int.com/storage/photos/1/_97A0602.jpg', 'active', NULL, 'tu-van-xuc-tien-dau-tu-fdi', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-11-20 16:39:54', '2021-12-05 14:23:47', 1, 'FDI투자 추진 및 컨설팅', NULL, NULL),
(30, 'Thương mại', 'Thương mại', NULL, NULL, 'https://demo2.webhobasoft.com/storage/photos/1/Trang chủ-01.jpg', 'active', NULL, 'thuong-mai', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-11-20 16:40:27', '2022-02-09 04:57:24', 1, '무역', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ko` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_ko` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `name`, `description`, `content`, `order_no`, `picture`, `url_picture`, `gallery`, `status`, `location`, `type`, `slug`, `category_id`, `meta_title`, `meta_description`, `meta_keywords`, `name_ko`, `description_ko`, `content_ko`, `meta_title_ko`, `meta_keywords_ko`, `meta_description_ko`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(95, 'ádsd 121233', 'ádd', '<p>&aacute;dsd</p>', 2, NULL, 'https://demo2.webhobasoft.com/storage/photos/1/download.png', NULL, 'active', NULL, NULL, 'adsd-121233', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-03-04 12:14:30', '2022-03-04 13:28:01', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_post_tag`
--

CREATE TABLE `blog_post_tag` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `blog_post_tag`
--

INSERT INTO `blog_post_tag` (`id`, `post_id`, `tag_id`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(17, NULL, 19, NULL, NULL, NULL, NULL),
(18, NULL, 19, NULL, NULL, NULL, NULL),
(20, 31, 19, NULL, NULL, NULL, NULL),
(21, 28, 22, NULL, NULL, NULL, NULL),
(22, 32, 22, NULL, NULL, NULL, NULL),
(23, 33, 21, NULL, NULL, NULL, NULL),
(24, 34, 22, NULL, NULL, NULL, NULL),
(25, 27, 22, NULL, NULL, NULL, NULL),
(26, 35, 21, NULL, NULL, NULL, NULL),
(27, 37, 21, NULL, NULL, NULL, NULL),
(28, 38, 21, NULL, NULL, NULL, NULL),
(29, 39, 22, NULL, NULL, NULL, NULL),
(30, 40, 22, NULL, NULL, NULL, NULL),
(31, 41, 22, NULL, NULL, NULL, NULL),
(33, 48, 22, NULL, NULL, NULL, NULL),
(36, 67, 25, NULL, NULL, NULL, NULL),
(37, 66, 27, NULL, NULL, NULL, NULL),
(38, 65, 27, NULL, NULL, NULL, NULL),
(39, 64, 27, NULL, NULL, NULL, NULL),
(40, 63, 27, NULL, NULL, NULL, NULL),
(41, 62, 23, NULL, NULL, NULL, NULL),
(42, 61, 23, NULL, NULL, NULL, NULL),
(43, 58, 23, NULL, NULL, NULL, NULL),
(45, 56, 23, NULL, NULL, NULL, NULL),
(47, 55, 23, NULL, NULL, NULL, NULL),
(48, 54, 27, NULL, NULL, NULL, NULL),
(49, 54, 24, NULL, NULL, NULL, NULL),
(50, 54, 23, NULL, NULL, NULL, NULL),
(52, 52, 27, NULL, NULL, NULL, NULL),
(53, 52, 24, NULL, NULL, NULL, NULL),
(54, 44, 27, NULL, NULL, NULL, NULL),
(55, 42, 27, NULL, NULL, NULL, NULL),
(56, 57, 23, NULL, NULL, NULL, NULL),
(57, 53, 23, NULL, NULL, NULL, NULL),
(58, 68, 25, NULL, NULL, NULL, NULL),
(59, 69, 25, NULL, NULL, NULL, NULL),
(60, 70, 25, NULL, NULL, NULL, NULL),
(61, 71, 25, NULL, NULL, NULL, NULL),
(62, 72, 25, NULL, NULL, NULL, NULL),
(63, 73, 25, NULL, NULL, NULL, NULL),
(64, 74, 25, NULL, NULL, NULL, NULL),
(65, 75, 25, NULL, NULL, NULL, NULL),
(66, 76, 23, NULL, NULL, NULL, NULL),
(67, 77, 25, NULL, NULL, NULL, NULL),
(68, 43, 27, NULL, NULL, NULL, NULL),
(69, 45, 27, NULL, NULL, NULL, NULL),
(70, 46, 27, NULL, NULL, NULL, NULL),
(71, 47, 27, NULL, NULL, NULL, NULL),
(72, 50, 27, NULL, NULL, NULL, NULL),
(73, 59, 23, NULL, NULL, NULL, NULL),
(74, 60, 27, NULL, NULL, NULL, NULL),
(75, 78, 23, NULL, NULL, NULL, NULL),
(76, 79, 23, NULL, NULL, NULL, NULL),
(77, 80, 23, NULL, NULL, NULL, NULL),
(78, 81, 27, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `name`, `content`, `picture`, `url_picture`, `status`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(23, 'Thành tựu nổi bật', '<p>C&aacute;c giải thưởng, th&agrave;nh tựu, sự kiện li&ecirc;n quan đến thẻ Việt</p>', NULL, 'https://anyclass.vn/storage/photos/28/Thumbnail categories/Sở thích - 600x315 px.jpg', 'active', 'thanh-tuu-noi-bat', 'các bài viết về sở thích', 'Tất tần tật các khoá học giúp bạn tìm tòi, nuôi dưỡng sở thích, phát triển thành đam mê.', 'sở thích, đam mê, so thich, dam me', 28, '2021-08-20 03:50:09', '2022-03-08 10:50:48', 1),
(24, 'Chương trình mới nhất', '<p>C&aacute;c ch&iacute;nh s&aacute;ch khuyến m&atilde;i, t&iacute;nh năng/ n&acirc;ng cấp&nbsp;mới được cập nhật</p>', NULL, 'https://anyclass.vn/storage/photos/28/Thumbnail categories/Kinh doanh - 600x315px.jpg', 'active', 'chuong-trinh-moi-nhat', 'khoá học phát triển bản thân', 'Các khoá học phát triển bản thân, nâng cao kỹ năng, phát triển sự nghiệp, kiếm tiền và làm giàu tại Anyclass', 'phát triển bản thân, phat trien ban than', 28, '2021-08-20 03:53:26', '2022-03-08 10:49:19', 1),
(29, 'Sức khỏe & đời sống', '<p>Kinh nghiệm sử dụng c&aacute;c dịch vụ lĩnh vực Y tế</p>', NULL, NULL, 'active', 'suc-khoe-doi-song', NULL, NULL, NULL, 1, '2022-03-08 10:55:37', '2022-03-08 10:55:55', 1),
(30, 'Bí quyết', '<p>Th&ocirc;ng tin hữu &iacute;ch về c&aacute;c dịch vụ li&ecirc;n quan Thẻ Việt</p>', NULL, NULL, 'active', 'bi-quyet', NULL, NULL, NULL, 1, '2022-03-08 10:57:48', '2022-03-08 10:57:48', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `body` text NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `star` tinyint(1) NOT NULL DEFAULT 0,
  `show_page_review` tinyint(4) NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `course_id`, `product_id`, `lesson_id`, `body`, `images`, `star`, `show_page_review`, `type`, `parent_id`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 28, 22, NULL, NULL, '123', '', 5, 0, NULL, 0, NULL, '2021-05-03 08:38:45', '2021-05-03 08:38:45', NULL),
(3, 28, 22, NULL, NULL, 'bình luận mới', '', 4, 0, NULL, 0, NULL, '2021-05-03 11:16:01', '2021-05-03 11:16:01', NULL),
(4, 25, 24, NULL, NULL, 'r', '', 4, 0, NULL, 0, NULL, '2021-05-03 15:31:57', '2021-05-03 15:31:57', NULL),
(5, 25, 24, NULL, NULL, 'ádasdasdasdas', '', 5, 0, NULL, 0, NULL, '2021-05-03 15:32:47', '2021-05-03 15:32:47', NULL),
(6, 1, 24, NULL, NULL, '123', '', 1, 0, NULL, 0, NULL, '2021-05-04 09:30:31', '2021-05-04 09:30:31', NULL),
(7, 1, 24, NULL, NULL, 'Đánh giá mới', '', 2, 0, NULL, 0, NULL, '2021-05-04 14:16:40', '2021-05-04 14:16:40', NULL),
(8, 28, 24, NULL, NULL, 'ádasd', '', 5, 1, NULL, 0, NULL, '2021-05-09 14:57:19', '2021-05-30 12:54:02', NULL),
(9, 28, 19, NULL, NULL, 'v', '', 4, 0, NULL, 0, NULL, '2021-05-11 14:35:57', '2021-05-11 14:35:57', NULL),
(10, 47, 21, NULL, NULL, 'sd', '', 1, 0, NULL, 0, NULL, '2021-05-12 10:33:17', '2021-05-12 10:33:17', NULL),
(11, 47, 21, NULL, NULL, 'r', '', 4, 0, NULL, 0, NULL, '2021-05-12 10:34:28', '2021-05-12 10:34:28', NULL),
(14, 1, 27, NULL, NULL, 'hay', '', 5, 0, NULL, 0, NULL, '2021-05-27 06:11:38', '2021-05-27 06:11:38', NULL),
(15, 1, 27, NULL, NULL, 'có hình', 'ke9GujJHUa.jpg', 4, 0, NULL, 0, NULL, '2021-05-27 07:04:47', '2021-05-27 07:04:47', NULL),
(20, 1, 31, NULL, NULL, 'ttt', '5xzc1homct.gif', 4, 0, NULL, 0, NULL, '2021-05-29 17:30:21', '2021-05-29 17:30:21', NULL),
(21, 1, 31, NULL, NULL, 'test star', NULL, 4, 0, NULL, 0, NULL, '2021-05-30 06:34:08', '2021-05-30 06:34:08', NULL),
(22, 28, 31, NULL, NULL, 'ádasd', NULL, 1, 0, NULL, 0, NULL, '2021-05-30 16:02:54', '2021-05-30 16:02:54', NULL),
(23, 28, 31, NULL, NULL, 'abc', 'BAzRbmrIUY.jpg', 5, 0, NULL, 0, NULL, '2021-05-30 16:03:38', '2021-05-30 16:03:38', NULL),
(24, 1, 24, NULL, NULL, 'datnq test', NULL, 1, 0, NULL, 0, NULL, '2021-05-31 14:30:51', '2021-05-31 14:30:51', NULL),
(25, 28, 24, NULL, NULL, 'Linh tets', NULL, 5, 0, NULL, 0, NULL, '2021-05-31 15:23:40', '2021-05-31 15:23:40', NULL),
(26, 28, 24, NULL, NULL, 'Linh tets', NULL, 5, 0, NULL, 0, NULL, '2021-06-01 01:29:00', '2021-06-01 01:29:00', NULL),
(28, 28, NULL, 21, NULL, 'product', '874kdmhuF8.jpg', 5, 0, 'product', 0, NULL, '2021-06-01 08:04:23', '2021-06-01 08:04:23', NULL),
(29, 28, NULL, 21, NULL, 'product review', 'iEi3w49yZW.jpg', 2, 0, 'product', 0, NULL, '2021-06-01 08:14:04', '2021-06-01 08:14:04', NULL),
(30, 28, NULL, 21, NULL, 'x', NULL, 3, 0, 'product', 0, NULL, '2021-06-01 08:14:30', '2021-06-01 08:14:30', NULL),
(31, 28, NULL, 21, NULL, 'dsfsdf', NULL, 2, 0, 'product', 0, NULL, '2021-06-01 08:14:46', '2021-06-01 08:14:46', NULL),
(32, 28, 25, NULL, NULL, 'Good testing', 'K1V0OAGnMz.jpg', 4, 0, NULL, 0, NULL, '2021-06-01 10:56:09', '2021-06-01 10:56:09', NULL),
(33, 79, 25, NULL, NULL, 'Giảng viên đẹp giai quá', NULL, 3, 0, NULL, 0, NULL, '2021-06-02 03:46:07', '2021-06-02 03:46:07', NULL),
(34, 28, NULL, 23, NULL, 'adfdf', NULL, 5, 0, 'product', 0, NULL, '2021-06-02 05:01:55', '2021-06-02 05:01:55', NULL),
(35, 28, NULL, 23, NULL, 'c', NULL, 2, 0, 'product', 0, NULL, '2021-06-02 05:02:05', '2021-06-02 05:02:05', NULL),
(36, 1, NULL, 30, NULL, 'hello', 'NvqpNjGpIH.png', 4, 0, 'product', 0, NULL, '2021-06-02 08:51:19', '2021-06-02 08:51:19', NULL),
(37, 28, 24, NULL, NULL, 'Linh tets', NULL, 5, 0, NULL, 0, NULL, '2021-06-03 15:05:53', '2021-06-03 15:05:53', NULL),
(38, 98, 25, NULL, NULL, 'Mobile', NULL, 5, 0, NULL, 0, NULL, '2021-06-03 15:13:11', '2021-06-03 15:13:11', NULL),
(39, 98, 25, NULL, NULL, 'Mobile', NULL, 5, 0, NULL, 0, NULL, '2021-06-03 15:14:43', '2021-06-03 15:14:43', NULL),
(40, 28, 24, NULL, NULL, 'Linh tets', NULL, 5, 0, NULL, 0, NULL, '2021-06-03 15:14:57', '2021-06-03 15:14:57', NULL),
(41, 98, 25, NULL, NULL, 'Mobile 1', NULL, 5, 0, NULL, 0, NULL, '2021-06-03 15:16:20', '2021-06-03 15:16:20', NULL),
(42, 98, 25, NULL, NULL, 'Mobile 2', NULL, 3, 0, NULL, 0, NULL, '2021-06-03 15:16:56', '2021-06-03 15:16:56', NULL),
(43, 1, 47, NULL, NULL, 'Đánh giá sản phẩm', '46WVYVGBYW.jpg', 5, 1, NULL, 0, NULL, '2021-06-11 06:28:38', '2021-06-11 06:30:00', NULL),
(44, 111, 50, NULL, NULL, 'cVSDGasg', NULL, 1, 0, NULL, 0, NULL, '2021-07-14 02:23:53', '2021-07-24 09:54:56', NULL),
(45, 28, 51, NULL, NULL, 'Khóa học rất hay và bổ ích, tôi rất thích', 'gvvFKvvOhx.jpg', 4, 1, NULL, 0, NULL, '2021-07-14 02:37:55', '2021-07-29 08:44:38', NULL),
(46, 1, 25, NULL, NULL, 'Chào bạn', 'o5G063g8nz.png', 4, 0, NULL, 0, NULL, '2021-07-15 13:05:15', '2021-07-15 13:05:15', NULL),
(48, 28, 25, NULL, NULL, 'ads', NULL, 1, 0, NULL, 0, NULL, '2021-07-27 00:27:58', '2021-07-27 00:27:58', NULL),
(49, 128, 56, NULL, NULL, 'great class! I have lost 3kg in just half-way lesson! not only I lost weight, I feel stronger and fresher!\r\n*will really recommend this class :)', NULL, 4, 0, NULL, 0, NULL, '2021-07-30 03:16:21', '2021-07-30 03:16:21', NULL),
(50, 128, 56, NULL, NULL, 'great class! I have lost 3kg in just half-way lesson! not only I lost weight, I feel stronger and fresher!\r\n*will really recommend this class :)', NULL, 4, 0, NULL, 0, NULL, '2021-07-30 03:16:24', '2021-07-30 03:16:24', NULL),
(52, 129, 50, NULL, NULL, 'tuyệt vời', NULL, 5, 0, NULL, 0, NULL, '2021-07-30 05:08:51', '2021-07-30 05:08:51', NULL),
(53, 129, 50, NULL, NULL, 'tuyệt vời', NULL, 5, 0, NULL, 0, NULL, '2021-07-30 05:08:51', '2021-07-30 05:08:51', NULL),
(54, 129, 50, NULL, NULL, 'tuyệt vời', NULL, 5, 0, NULL, 0, NULL, '2021-07-30 05:08:52', '2021-07-30 05:08:52', NULL),
(56, 112, 50, NULL, NULL, 'quá tuyệt vời', NULL, 5, 0, NULL, 0, NULL, '2021-08-03 14:46:09', '2021-08-03 14:46:09', NULL),
(57, 1, 56, NULL, NULL, '123', NULL, 1, 0, NULL, 0, NULL, '2021-08-10 16:00:04', '2021-08-10 16:00:04', NULL),
(58, 112, 58, NULL, NULL, 'Giáo viên giảng rất hay', NULL, 5, 0, NULL, 0, NULL, '2021-08-11 11:02:39', '2021-08-11 11:02:39', NULL),
(59, 112, 50, NULL, NULL, 'oieejtet', NULL, 5, 0, NULL, 0, NULL, '2021-08-11 13:07:56', '2021-08-11 13:07:56', NULL),
(60, 112, 58, NULL, NULL, 'nhạc hay', NULL, 1, 0, NULL, 0, NULL, '2021-08-12 10:53:03', '2021-08-12 10:53:03', NULL),
(61, 28, 58, NULL, NULL, 'Giảng viên người đẹp thế', NULL, 5, 0, NULL, 0, NULL, '2021-08-12 11:26:54', '2021-08-12 11:26:54', NULL),
(62, 28, 58, NULL, NULL, 'Gv hướng dẫn rất dễ tập theo', NULL, 1, 0, NULL, 0, NULL, '2021-08-12 11:44:01', '2021-08-12 11:44:01', NULL),
(63, 112, 50, NULL, NULL, 'tuyệt', 'KSF7cbKHsx.jpg', 1, 0, NULL, 0, NULL, '2021-08-12 14:11:09', '2021-08-12 14:11:09', NULL),
(64, 112, 51, NULL, NULL, 'good', 'fRHSF9iD6j.jpg', 1, 0, NULL, 0, NULL, '2021-08-12 14:12:15', '2021-08-12 14:12:15', NULL),
(65, 124, 61, NULL, NULL, 'quá tuyệt vời', NULL, 5, 0, NULL, 0, NULL, '2021-08-15 15:52:32', '2021-08-15 15:52:32', NULL),
(66, 144, NULL, 43, NULL, 'Khung đẹp, chắc, giá quá rẻ', NULL, 1, 0, 'product', 0, NULL, '2021-08-16 14:06:48', '2021-08-16 14:06:48', NULL),
(67, 1, 51, NULL, NULL, 'Good', NULL, 5, 0, NULL, 0, NULL, '2021-08-25 15:26:34', '2021-08-25 15:26:34', NULL),
(68, 1, 51, NULL, NULL, 'Hello', 'sDOWvK94Hh.png', 1, 0, NULL, 0, NULL, '2021-08-25 15:27:26', '2021-08-25 15:27:26', NULL),
(69, 150, 61, NULL, NULL, 'Rất tuyệt vời, thực tế', NULL, 5, 0, NULL, 0, NULL, '2021-08-28 16:09:12', '2021-08-28 16:09:12', NULL),
(73, 1, NULL, 92, NULL, 'Xin chào', NULL, 5, 0, 'product', 0, NULL, '2021-09-04 15:47:38', '2021-09-04 15:47:38', NULL),
(74, 124, 26, NULL, NULL, 'khóa học rất hay', NULL, 5, 0, NULL, 0, NULL, '2021-09-04 17:18:18', '2021-09-04 17:18:18', NULL),
(75, 136, 50, NULL, NULL, 'good', NULL, 1, 0, NULL, 0, NULL, '2021-09-08 08:35:41', '2021-09-08 08:35:41', NULL),
(76, 109, 26, NULL, NULL, 'GV hướng dẫn tỉ mỉ, dễ làm theo', NULL, 1, 0, NULL, 0, NULL, '2021-09-09 11:28:56', '2021-09-09 11:28:56', NULL),
(77, 109, 26, NULL, NULL, 'GV hướng dẫn tỉ mỉ, dễ làm theo', NULL, 5, 0, NULL, 0, NULL, '2021-09-09 11:29:25', '2021-09-09 11:29:25', NULL),
(78, 136, 58, NULL, NULL, 'hay quá', NULL, 1, 0, NULL, 0, NULL, '2021-09-17 06:38:22', '2021-09-17 06:38:22', NULL),
(79, 1, 61, NULL, NULL, 'Hà Hiếu Thật tuyệt', NULL, 1, 0, NULL, 69, NULL, '2021-09-23 18:01:11', '2021-09-23 18:01:11', NULL),
(80, 1, 61, NULL, NULL, 'Hello', NULL, 5, 0, NULL, 0, NULL, '2021-09-23 18:24:37', '2021-09-23 18:24:37', NULL),
(81, 174, 50, NULL, NULL, 'hi', NULL, 1, 0, NULL, 0, NULL, '2021-09-24 16:42:21', '2021-09-24 16:42:21', NULL),
(82, 1, 56, NULL, NULL, 'Hello', NULL, 5, 0, NULL, 0, NULL, '2021-09-26 20:33:51', '2021-09-26 20:33:51', NULL),
(83, 1, 56, NULL, NULL, 'Nguyễn Thanh Phong xin chào', NULL, 4, 0, NULL, 82, NULL, '2021-09-26 20:34:16', '2021-09-26 20:34:16', NULL),
(84, 1, 56, NULL, NULL, 'Nguyễn Thanh Phong .', NULL, 5, 0, NULL, 83, NULL, '2021-09-26 20:38:14', '2021-09-26 20:38:14', NULL),
(85, 1, 56, NULL, NULL, 'Nguyễn Thanh Phong great class', NULL, 5, 0, NULL, 82, NULL, '2021-09-26 20:46:12', '2021-09-26 20:46:12', NULL),
(86, 178, 50, NULL, NULL, 'hay quá ạ', NULL, 1, 0, NULL, 0, NULL, '2021-09-27 10:53:32', '2021-09-27 10:53:32', NULL),
(87, 178, 26, NULL, NULL, 'like', NULL, 5, 0, NULL, 0, NULL, '2021-09-27 19:31:22', '2021-09-27 19:31:22', NULL),
(88, 178, 64, NULL, NULL, 'hay quá', NULL, 5, 0, NULL, 0, NULL, '2021-09-30 14:14:25', '2021-09-30 14:14:25', NULL),
(89, 113, 50, NULL, NULL, 'cho mình hỏi, sau thêu mà đồ mình bị bẩn...mình có thế giặt đi ko? nó sẽ bị hỏng ko à? và nên giặt tay hay giặt máy cũng đc à?', NULL, 1, 0, NULL, 0, NULL, '2021-10-02 15:12:04', '2021-10-02 15:12:04', NULL),
(90, 113, 50, NULL, NULL, 'mình cũng thấy hay lắm bạn ạ', NULL, 1, 0, NULL, 0, NULL, '2021-10-02 15:23:20', '2021-10-02 15:23:20', NULL),
(91, 178, 64, NULL, NULL, 'cô giáo có bí quyết gì để nhớ nhanh được các thì không ạ?', NULL, 4, 1, NULL, 0, NULL, '2021-10-02 15:45:03', '2021-10-02 15:46:54', NULL),
(92, 178, 50, NULL, NULL, 'cùng ý kiến', NULL, 3, 0, NULL, 90, NULL, '2021-10-02 16:07:19', '2021-10-02 16:07:19', NULL),
(93, 178, 50, NULL, NULL, 'mình cho vào túi giặt thì thấy giặt máy ko vấn đề gì cậu ạ', NULL, 1, 0, NULL, 89, NULL, '2021-10-02 16:08:22', '2021-10-02 16:08:22', NULL),
(94, 1, 61, NULL, NULL, 'Hà Hiếu Khóa học nhanh', NULL, 5, 0, NULL, 69, NULL, '2021-10-09 11:29:23', '2021-10-09 11:29:23', NULL),
(95, 173, 64, NULL, NULL, 'test', NULL, 5, 0, NULL, 0, NULL, '2021-10-09 11:54:41', '2021-10-09 11:54:41', NULL),
(96, 173, 64, NULL, NULL, '1111', NULL, 5, 0, NULL, 0, NULL, '2021-10-09 12:02:01', '2021-10-09 12:02:01', NULL),
(97, 1, 58, NULL, NULL, 'Hello', NULL, 5, 0, NULL, 0, NULL, '2021-10-14 23:02:36', '2021-10-14 23:02:36', NULL),
(98, 1, 58, NULL, NULL, 'Hello', NULL, 5, 0, 'lesson', 0, NULL, '2021-10-14 23:03:54', '2021-10-14 23:03:54', NULL),
(99, 1, 58, NULL, NULL, 'Nguyễn Thanh Phong Toi co cau hoi', NULL, 1, 0, 'lesson', 98, NULL, '2021-10-14 23:04:16', '2021-10-14 23:04:16', NULL),
(100, 185, 64, NULL, NULL, 'Icon test', NULL, 5, 0, NULL, 0, NULL, '2021-10-17 20:06:20', '2021-10-17 20:06:20', NULL),
(101, 178, 64, NULL, NULL, 'admin ơi, cho mình hỏi sao mình không mở được bài tập trắc nghiệm nhỉ?', NULL, 1, 0, 'lesson', 0, NULL, '2021-10-18 10:12:01', '2021-10-18 10:12:01', NULL),
(102, 188, 64, NULL, NULL, 'sao mình không thấy bài trắc nghiệm', NULL, 1, 0, 'lesson', 0, NULL, '2021-10-18 10:52:24', '2021-10-18 10:52:24', NULL),
(103, 188, 64, NULL, NULL, 'cô dạy hay quá ạ', NULL, 4, 0, 'lesson', 0, NULL, '2021-10-18 11:05:00', '2021-10-18 11:05:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `facebook_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chat_messenger` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_css` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`id`, `meta_title`, `meta_description`, `meta_keywords`, `hotline_1`, `favicon`, `favicon_url`, `picture`, `url_picture`, `status`, `created_by`, `created_at`, `updated_at`, `updated_by`, `facebook_url`, `twitter`, `instagram`, `youtube`, `google_analytic`, `chat_messenger`, `custom_css`) VALUES
(26, 'Thẻ việt', 'Thẻ việt', 'Thẻ việt', '012345678', 'qAnU1zYswG.png', 'https://demo2.webhobasoft.com/storage/photos/1/logo-2.png', 'B8nZu45GZy.png', 'https://demo2.webhobasoft.com/storage/photos/1/logo-2.png', 'inactive', NULL, NULL, '2022-03-03 11:05:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `user_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `phone`, `email`, `message`, `ip`, `picture`, `status`, `user_id`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(42, 'ádsd', '0904506622', 'linhbq68@wru.vn', NULL, NULL, NULL, 'active', NULL, NULL, '2022-03-08 06:58:01', '2022-03-08 06:58:01', NULL),
(44, 'lê nhung', '0164 209 7635', 'lenhung1550@gmail.com', NULL, NULL, NULL, 'active', NULL, NULL, '2022-03-08 07:09:28', '2022-03-08 07:09:28', NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-03-08 07:40:48', '2022-03-08 07:40:48', NULL),
(46, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-03-08 16:10:59', '2022-03-08 16:10:59', NULL),
(47, 'Bùi Quang Linh', '09045066213', 'linhbq68@wru.vn', NULL, NULL, NULL, 'active', NULL, NULL, '2022-03-08 16:11:17', '2022-03-08 16:11:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `name`, `content`, `start_time`, `end_time`, `picture`, `url_picture`, `status`, `description`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, '10 SUẤT HỌC MIỄN PHÍ ĐẦU TIÊN', '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"><span style=\"border:none\"><span style=\"display:inline-block\"><span style=\"overflow:hidden\"><span style=\"width:602px\"><span style=\"height:307px\"><img src=\"https://lh5.googleusercontent.com/7yfT59TV7Em3GRzObivnOhSPLsdfH2rHhAdGirxfn_M3pNMQ4Bl_wj6h_24EAI1VgZqMMOps8vBmOAPuAd5tHiqGN_zvwK6lXCcRwHyeoWr1dxSDG-MGx-G63e8ScgXrw1vIyO0W=s0\" style=\"width:602px; height:307px\" /></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">Kh&oacute;a học tại Anyclass cực kỳ kh&aacute;c biệt.</span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">Gi&aacute; trị một kh&oacute;a học kh&ocirc;ng chỉ dừng lại ở nội dung c&aacute;c b&agrave;i giảng m&agrave; l&agrave; v&ocirc; v&agrave;n những quyền lợi kh&aacute;c đi k&egrave;m!</span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">Vừa học vừa chơi, th&iacute;ch nhất khoản kết nối cộng đồng học vi&ecirc;n.</span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Tất cả những điều tr&ecirc;n liệu c&oacute; phải l&agrave; SỰ THẬT???? Nếu bạn muốn biết sự thật, th&igrave; h&atilde;y nhanh tay ấn v&agrave;o đ&acirc;y</span></span></span></span></span></span></span></span>&nbsp;<span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">để biết th&ecirc;m th&ocirc;ng tin chi tiết nh&eacute;. </span></span></span></span></span></span></span></span><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">H&atilde;y nhanh tay v&igrave; trong thời gian n&agrave;y, Anyclass đang d&agrave;nh 10 suất học miễn ph&iacute; cho 10 người đăng k&yacute; tham gia kh&oacute;a học đầu ti&ecirc;n.</span></span></span></span></span></span></span></span></span></p>\r\n\r\n<h1 style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:13.999999999999998pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">I. Th&ocirc;ng tin chung về 10 suất học miễn ph&iacute; của Anyclass?</span></span></span></span></span></span></span></span></span></h1>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Với 10 suất học đăng k&yacute; đầu ti&ecirc;n, Anyclass d&agrave;nh tặng bạn Coupon</span></span></span></span></span></span></span></span> <span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">miễn 100% học ph&iacute; <strong>cho</strong></span></span></span></span></span></span></span></span><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> kh&oacute;a học <a href=\"https://anyclass.vn/khoa-hoc/khoe-va-dep/khoe-va-dep-voi-dance-fitness\">&quot;Khỏe v&agrave; đẹp với dance fitness&quot;</a>.</span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hiện nay, Anyclass đang c&oacute; c&aacute;c kh&oacute;a học với c&aacute;c nhiều chủ đề phong ph&uacute; như: th&ecirc;u nổi, vẽ tranh, custom gi&agrave;y, thể dục, makeup,...Trong tương lai, Anyclass cũng dự kiến cho ra mắt c&aacute;c kh&oacute;a học mới về ph&aacute;t triển bản th&acirc;n, c&aacute;ch thức để kiếm tiền hay c&aacute;c kh&oacute;a học về t&acirc;m l&yacute; gia đ&igrave;nh, gi&aacute;o dục con c&aacute;i. Tất cả c&aacute;c kh&oacute;a học tại Anyclass đều được giảng dạy bởi hệ thống giảng vi&ecirc;n chất lượng. Họ l&agrave; những người c&oacute; t&ecirc;n tuổi</span></span></span></span></span></span></span></span> <span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">v&agrave; nhiều năm kinh nghiệm trong nghề. C&aacute;c kh&oacute;a học của Anyclass c&oacute;</span></span></span></span></span></span></span></span> <span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">lộ tr&igrave;nh r&otilde; r&agrave;ng, th&ecirc;m v&agrave;o đ&oacute;, khi tham gia c&aacute;c kh&oacute;a học, học vi&ecirc;n c&ograve;n được giao lưu</span></span></span></span></span></span></span></span> <span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">với nhiều bạn b&egrave; kh&ocirc;ng chỉ trong nước m&agrave; c&ograve;n mở rộng ra phạm vi quốc tế.</span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:14px; margin-bottom:14px; text-align:center\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"><span style=\"border:none\"><span style=\"display:inline-block\"><span style=\"overflow:hidden\"><span style=\"width:304px\"><span style=\"height:214px\"><img src=\"https://lh6.googleusercontent.com/gR4coVDUKNBlN-c4Emsd1AMT9G-3TzGa1FA6CQCPP-RviUCG1t8eUkzig_Yh8kpqnKX54qPhQUN8iWdKLdVEgRHr5ofiMvATgo68TJubXnP-ll9fM44uPk1uLer4Sp9JIp8m503j=s0\" style=\"width:304px; height:250px\" /></span></span></span></span></span></span></span></span></span></span></span></span></span><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"><span style=\"border:none\"><span style=\"display:inline-block\"><span style=\"overflow:hidden\"><span style=\"width:288px\"><span style=\"height:215px\"><img src=\"https://lh5.googleusercontent.com/v9uCLEHOPawIDjhzUmgDjpZxXYNQrWUDV8_0UUgI8CkNQkcLM-22NZmekODB3g0nOV30URLEXZ5Qq4bHb2kJuKZP2ZXDdtZX6nbnWnc0tcEFeKDO23ek-bQn2AHkJ5ISea3_7GnJ=s0\" style=\"width:304px; height:250px\" /></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:1.2\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"><span style=\"border:none\"><span style=\"display:inline-block\"><span style=\"overflow:hidden\"><span style=\"width:306px\"><span style=\"height:242px\"><img src=\"https://lh4.googleusercontent.com/HH9yZDS2LT8fZVdB5eEnazaKI53wN_jT0Iasm0m79DBHW8mkvD4ukft8u7mAPPRcY0jnEkwFk0VQCmkux2K-XyugK_L20rRBuemmgMoTx6MPlqGP6NSgumJhcXhZNQwLj1i4q9Mh=s0\" style=\"margin-left:-11px; margin-top:-26px; width:304px; height:250px\" /></span></span></span></span></span></span></span></span></span></span></span></span></span><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"><span style=\"border:none\"><span style=\"display:inline-block\"><span style=\"overflow:hidden\"><span style=\"width:287px\"><span style=\"height:242px\"><img src=\"https://lh4.googleusercontent.com/dJDWA5scYFsRFdaOIRwJSkyl5SmUarN0ps_StkDUCtBfTG5YVrwIbzR5zAdpSmt2ablVksU_wSxjdqBiE6_yun7_7B0590W3-9msWgQaEQJ066LKfTvzrAYh24QG2E2vXMRrx5-H=s0\" style=\"width:304px; height:250px\" /></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<h1 style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:13.999999999999998pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">II. Check m&atilde; khuyến m&atilde;i như thế n&agrave;o?</span></span></span></span></span></span></span></span></span></h1>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Với 10 phần qu&agrave; tặng n&agrave;y, Anyclass mong muốn c&aacute;c bạn &quot;cam kết đồng h&agrave;nh&quot; c&ugrave;ng chương tr&igrave;nh bằng c&aacute;ch học hết chương tr&igrave;nh v&agrave; gửi cho ch&uacute;ng t&ocirc;i những cảm nhận của bạn trong qu&aacute; tr&igrave;nh sử dụng dịch vụ nh&eacute;. Anyclass sẽ rất cảm ơn nếu nhận được c&aacute;c h&igrave;nh ảnh feed back của bạn trong qu&aacute; tr&igrave;nh học. </span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><font face=\"Arial, Helvetica, sans-serif\"><span style=\"white-space:pre-wrap\">M&atilde; khuyến mại: DonghanhAnyclass</span></font></span></p>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><font face=\"Arial, Helvetica, sans-serif\"><span style=\"white-space:pre-wrap\">Anyclass hướng dẫn bạn c&aacute;ch sử dụng m&atilde; khuyến mại như sau:</span></font></span></p>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">V&agrave;o danh mục kho&aacute; học v&agrave; chọn &quot;Khoẻ v&agrave; đẹp với Dance Fitness&quot; v&agrave; thực hiện quy tr&igrave;nh mua, thanh to&aacute;n như b&igrave;nh thường (Bạn c&oacute; thể xem hướng dẫn <a href=\"https://anyclass.vn/tin-tuc/nhung-cau-hoi-thuong-gap-cua-anyclass\">tại đ&acirc;y</a>).</span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><font face=\"Arial, Helvetica, sans-serif\"><span style=\"white-space:pre-wrap\">Bạn nhớ nhập M&atilde; số khuyến mại v&agrave;o mục &quot;Nhập m&atilde; giảm gi&aacute;&quot; khi thanh to&aacute;n nh&eacute;.</span></font></span></p>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><font face=\"Arial, Helvetica, sans-serif\"><span style=\"white-space:pre-wrap\">Chỉ c&oacute; 10 suất khuyến mại th&ocirc;i, Anyclass sẽ ưu ti&ecirc;n cho 10 bạn nhập m&atilde; sớm nhất nha.</span></font></span></p>\r\n\r\n<p style=\"margin-top:14px; margin-bottom:14px; text-align:center\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"><img alt=\"\" src=\"https://anyclass.vn/storage/photos/123/z2823253547108_fc22fc2dedba8b4e94aca91d0c2e1deb.jpg\" style=\"width:700px; height:473px\" /></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center; margin-top:14px; margin-bottom:14px\">&nbsp;</p>\r\n\r\n<h1 style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:13.999999999999998pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">III, Quyền lợi khi tham gia c&aacute;c kh&oacute;a học miễn ph&iacute; từ Anyclass.</span></span></span></span></span></span></span></span></span></h1>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Khi tham gia c&aacute;c kh&oacute;a học tại Anyclass, bạn sẽ được nhận những đặc quyền m&agrave; chỉ tại Anyclass mới c&oacute;. Trong c&aacute;c kh&oacute;a học miễn ph&iacute; n&agrave;y, bạn sẽ nhận được những quyền lợi sau đ&acirc;y.&nbsp;</span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Thứ nhất, bạn sẽ được đ&agrave;o tạo theo lộ tr&igrave;nh được thiết kế d&agrave;nh ri&ecirc;ng cho học vi&ecirc;n của Anyclass. &nbsp;</span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Thứ hai, bạn sẽ lu&ocirc;n nhận được sự hỗ trợ từ giảng vi&ecirc;n của Anyclass . C&aacute;c chương tr&igrave;nh miễn ph&iacute; tổ chức h&agrave;ng th&aacute;ng giữa giảng vi&ecirc;n v&agrave; học vi&ecirc;n sẽ kh&ocirc;ng thể l&agrave;m n&oacute;ng hơn tinh thần học tập của c&aacute;c bạn.&nbsp;</span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Thứ ba, khi tham gia c&aacute;c kh&oacute;a học, bạn sẽ được gia nhập v&agrave;o cộng đồng c&oacute; chung niềm đam m&ecirc;, sở th&iacute;ch với bạn. Theo đ&oacute;, bạn kh&ocirc;ng chỉ được chia sẻ, giao lưu, học hỏi v&agrave; c&ograve;n c&oacute; những người bạn đồng h&agrave;nh, đảm bảo rằng qu&aacute; tr&igrave;nh học sẽ thật vui vẻ.</span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-top:14px; margin-bottom:14px\"><span style=\"line-height:1.38\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Vậy th&igrave; c&ograve;n chần chừ g&igrave; nữa m&agrave; kh&ocirc;ng đăng k&yacute; ngay th&ocirc;i n&agrave;o! </span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"line-height:1.38\"><span style=\"background-color:#ffffff\"><span style=\"font-size:11.5pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"color:#001a33\"><span style=\"background-color:#ffffff\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">H&atilde;y kh&aacute;m ph&aacute;</span></span></span></span></span></span></span></span></span> <a href=\"https://anyclass.vn/\" style=\"text-decoration:none\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:underline\"><span style=\"-webkit-text-decoration-skip:none\"><span style=\"text-decoration-skip-ink:none\">Anyclass</span></span></span></span></span></span></span></span></span></span></a><span style=\"font-size:11.5pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"color:#001a33\"><span style=\"background-color:#ffffff\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">, rất nhiều điều tuyệt vời v&agrave; bổ &iacute;ch đang chờ đ&oacute;n bạn</span></span></span></span></span></span></span></span></span><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">!</span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:1.38\"><span style=\"background-color:#ffffff\"><a href=\"https://anyclass.vn/\" style=\"text-decoration:none\"><span style=\"font-size:15pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"background-color:#f63cb7\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:underline\"><span style=\"-webkit-text-decoration-skip:none\"><span style=\"text-decoration-skip-ink:none\">THAM GIA NGAY</span></span></span></span></span></span></span></span></span></span></span></a></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:1.38\"><span style=\"background-color:#ffffff\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hỗ trợ: </span></span></span></span></span></span></span></span><a href=\"https://anyclass.vn/\" style=\"text-decoration:none\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:underline\"><span style=\"-webkit-text-decoration-skip:none\"><span style=\"text-decoration-skip-ink:none\">0981333790</span></span></span></span></span></span></span></span></span></span></a></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:1.38\"><span style=\"background-color:#ffffff\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Email: </span></span></span></span></span></span></span></span><a href=\"mailto:anyhow@anyhow.vn\" style=\"text-decoration:none\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:underline\"><span style=\"-webkit-text-decoration-skip:none\"><span style=\"text-decoration-skip-ink:none\">anyhow@anyhow.vn</span></span></span></span></span></span></span></span></span></span></a></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:1.38\"><span style=\"background-color:#ffffff\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Fanpage: </span></span></span></span></span></span></span></span><a href=\"https://www.facebook.com/Anyclass.vn\" style=\"text-decoration:none\"><span style=\"font-size:12pt\"><span style=\"font-variant:normal\"><span style=\"white-space:pre-wrap\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:underline\"><span style=\"-webkit-text-decoration-skip:none\"><span style=\"text-decoration-skip-ink:none\">https://www.facebook.com/Anyclass.vn</span></span></span></span></span></span></span></span></span></span></a></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>', '2021-01-10 15:42:57', '2023-07-10 15:42:57', NULL, NULL, 'inactive', 'Khám phá 10 suất học miễn phí đầu tiên', 28, '2021-10-07 08:41:00', '2021-10-07 08:42:57', 28);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exercise`
--

CREATE TABLE `exercise` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `exercise`
--

INSERT INTO `exercise` (`id`, `name`, `course_id`, `status`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(48, 'Online Inventory', 395, 'active', 1, '2021-10-16 14:38:52', '2021-10-16 14:38:52', NULL),
(49, 'Online Inventory', 395, 'active', 1, '2021-10-16 14:39:18', '2021-10-16 14:53:41', 1),
(50, 'Bài 1: Tổng hợp các bài tập trắc nghiệm (P2)', 372, 'active', 1, '2021-10-16 15:06:31', '2021-10-18 03:59:25', 1),
(52, 'Bài 2: Tổng hợp bài trắc nghiêm (P1)', 372, 'active', 1, '2021-10-18 03:46:35', '2021-10-18 03:59:39', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `huongdan`
--

CREATE TABLE `huongdan` (
  `id` int(11) NOT NULL,
  `slug` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `huongdan`
--

INSERT INTO `huongdan` (`id`, `slug`, `name`, `description`, `picture`, `content`, `order_no`, `meta_title`, `meta_description`, `meta_keywords`, `category_id`, `created_at`, `updated_at`, `status`, `created_by`, `updated_by`) VALUES
(2, 'sasd', 'sasd', 'asdasd', 'https://demo2.webhobasoft.com/storage/photos/1/choose-us.png', '<p>asdasd</p>', '1', NULL, NULL, NULL, 2, '2022-02-28 18:25:54', '2022-03-03 10:53:32', 'active', '1', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `huongdan_categories`
--

CREATE TABLE `huongdan_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `order_no` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `huongdan_categories`
--

INSERT INTO `huongdan_categories` (`id`, `name`, `description`, `content`, `order_no`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `picture`, `created_at`, `updated_at`, `slug`, `created_by`, `updated_by`) VALUES
(2, 'Bùi Quang Linh', 'dfsdfaádsdsd', '<p>sdfasdf</p>', '2', NULL, NULL, NULL, 'active', 'https://demo2.webhobasoft.com/storage/photos/1/logo-2.png', '2022-02-28 18:30:37', '2022-03-08 16:12:03', 'bui-quang-linh', '1', '1'),
(3, 'ád', 'sdasd', '<p>&aacute;dasd&aacute;d</p>', '3', NULL, NULL, NULL, 'active', 'https://demo2.webhobasoft.com/storage/photos/1/choose-us.png', '2022-03-04 12:13:32', '2022-03-08 16:11:56', 'ad', '1', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2017_08_11_073824_create_menus_wp_table', 1),
(3, '2017_08_11_074006_create_menu_items_wp_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(10, '2021_08_18_164322_create_jobs_table', 3),
(11, '2021_09_01_235649_create_post_related_post_table', 4),
(12, '2021_09_02_021945_alter_add_user_create_update_in_all_table', 4),
(13, '2021_09_02_235141_alter_add_column_in_order_table', 4),
(14, '2021_09_03_001344_alter_add_column_in_blog_tags_table', 4),
(15, '2021_09_03_001900_alter_add_column_in_product_products_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0103038df458b33e97e81dd2ae24ce6d55be763b2776342932fda64b41c3f77f45886d25034033c6', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:19:27', '2021-05-22 01:19:27', '2022-05-22 08:19:27'),
('025967baaf7f4761c1a1fd4679d3ffecfe21e99321c3ef8ea606e3cc3fd6179f18f179041230913f', 98, 16, 'Personal Access Token', '[]', 0, '2021-05-31 06:41:18', '2021-05-31 06:41:18', '2022-05-31 13:41:18'),
('062be170b20d73881b10fe6c04fc7a534dfc43d95fca80e7f53db9e0bb0624cf6133d744ce0551be', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:46:24', '2021-05-21 19:46:24', '2022-05-22 02:46:24'),
('07d061f0788f370cf2edb9eda16ebae37c61440547662fa163ff13633d1d5c9d707d7a666eaf3e7c', 28, 16, 'Personal Access Token', '[]', 0, '2021-05-31 04:32:21', '2021-05-31 04:32:21', '2022-05-31 11:32:21'),
('0af5712fd7f7a9df9f06a1f152efbcf633af1afcfebbd4c40f7f77b14a4d8de690519efecedffe7a', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:29:50', '2021-05-22 01:29:50', '2022-05-22 08:29:50'),
('0b4502e9d03019fbb9f48eabc8598fa88a689912e212d6b84949ef8b35fd1133d478b8cc6cc4656d', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:52:15', '2021-05-21 19:52:15', '2022-05-22 02:52:15'),
('0bfd6186979dc72edc27b06ac7b550c6eaa2eb671db3770703c697966b807461d831da15d7c58a08', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:02:20', '2021-05-21 19:02:20', '2022-05-22 02:02:20'),
('0d3c599cc856c9c39687f08f8399c2fbfa2519e651e4d5a5a281714e76423c52a6535e3ab4edec3a', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 21:58:14', '2021-05-21 21:58:14', '2022-05-22 04:58:14'),
('0dbd5c4e91504d2f3a932cf10554151d8c4c655ca8ca9e4b92529548589b91cad936d894a469b509', 1, 16, 'Personal Access Token', '[]', 0, '2021-08-15 14:47:15', '2021-08-15 14:47:15', '2022-08-15 21:47:15'),
('1136f138c2bb3e9febae01321a86277223a551a623e81f4c9fa0a6fe672741feeb58ea6f8b71b23f', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:19:24', '2021-05-21 19:19:24', '2022-05-22 02:19:24'),
('13a31f86c1d959d57df5724582ab659808cb50a38435da21aae3b6228217f61a8641e32b05ce4479', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 18:54:04', '2021-05-21 18:54:04', '2022-05-22 01:54:04'),
('14381bc724cd661254860317f7132b504a102764938dc4420e84846238c5e5a0bee0408e68892b5c', 93, 16, 'Personal Access Token', '[]', 0, '2021-05-25 07:52:59', '2021-05-25 07:52:59', '2022-05-25 14:52:59'),
('154b54087cf806377d3964c25704420543ca08121be70f2cdd492d703b99fbe96a07eea119e3965e', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-19 03:53:04', '2021-05-19 03:53:04', '2022-05-19 10:53:04'),
('17c0f3d5e0e578d63fee8e0c6b50278f787fa36bb9c17591ead066bce68938c3b4d0046bbf3a2af3', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-19 03:57:02', '2021-05-19 03:57:02', '2022-05-19 10:57:02'),
('18999ca87cba592fd9dcef46b1a39be35ccc823d04888509dd5b5fd15ee44fcdf647752968093565', 1, 16, 'Personal Access Token', '[]', 0, '2021-08-16 08:49:21', '2021-08-16 08:49:21', '2022-08-16 15:49:21'),
('1bb9cdf4419aeee68ed232d09d1145ad3c3f3b16b59687da02a0646f58556370734df7d92b69570d', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:13:15', '2021-05-22 01:13:15', '2022-05-22 08:13:15'),
('1df471901938bb9e8c8af56a5e0e8121431c7f153f507c65eaf71a06e0bf072dcf9a839c99c2b561', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:54:33', '2021-05-21 19:54:33', '2022-05-22 02:54:33'),
('2090dfa304140033860968e16b5120658213c7c1c8f6d4841d18a2b2839047c68d7ffcbc61fea8d3', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 21:59:12', '2021-05-21 21:59:12', '2022-05-22 04:59:12'),
('22dbc7ee3656b20893adec8bc8e4102b1810330ce0616f79a3e03d848122e686bd5b11d93d55824b', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:31:15', '2021-05-22 01:31:15', '2022-05-22 08:31:15'),
('2d1b8d85a19be6a60e3c464e26581ca4e68d3abbd5894fcc288d64d3ec277aca2f3270fa7d3a5812', 28, 16, 'Personal Access Token', '[]', 0, '2021-05-31 03:08:43', '2021-05-31 03:08:43', '2022-05-31 10:08:43'),
('3107a97f7e808615c80719aec19d37e517bc406f4ae09822b65e84c9c6589efc78ae9081b3eaf36a', 70, 16, 'Personal Access Token', '[]', 0, '2021-05-16 00:02:50', '2021-05-16 00:02:50', '2022-05-16 07:02:50'),
('3137e938f3eb3c6b024214fa47702c237f092d4a239e66108b354fc91b921bc3af7d9b2560e3f841', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 18:56:50', '2021-05-21 18:56:50', '2022-05-22 01:56:50'),
('3283fd6e936b46bab58570895b89b563ff98c4a8985cb2bab89e55e45c8803f7ea2abe710f269be2', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-18 03:40:46', '2021-05-18 03:40:46', '2022-05-18 10:40:46'),
('361a2687c5f67cfc9958879294cd607e6251ef423036de55191ea3dd501d5c4a54fae054db438136', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:14:08', '2021-05-21 19:14:08', '2022-05-22 02:14:08'),
('3eca91d635b350fc395ce08076b58c80effdd0c34eaddcac156a4b3e565d6f92b7c31e2c0bcd2532', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-16 03:35:19', '2021-05-16 03:35:19', '2022-05-16 10:35:19'),
('3f2096bc7a9cbd059fc28db3f57c5efe729f723c6f6b155e7de55274ef78ba684581ca22043845eb', 28, 16, 'Personal Access Token', '[]', 0, '2021-05-16 03:20:57', '2021-05-16 03:20:57', '2022-05-16 10:20:57'),
('3fdb96809e721ee70b28cd01d9790638832d48fa5c35f018a6fca1dc7e0fa2e1ecef7d0d3140165d', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-19 03:22:54', '2021-05-19 03:22:54', '2022-05-19 10:22:54'),
('49c083b3de56ff7a11134182d7fb49c4574907f4c9f3b0aaaa4418fe4f70db1b3b9ea95382e937b0', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:39:32', '2021-05-21 19:39:32', '2022-05-22 02:39:32'),
('4b3e49755e0b912086a8c0efde674e84d51f7c23ab689a2ae278a89376e1e19ed64c8f62cd32393d', 28, 16, 'Personal Access Token', '[]', 1, '2021-05-16 03:21:10', '2021-05-16 03:21:10', '2022-05-16 10:21:10'),
('4b8272c64656d756d2a488ee2c401c9eaff598a7c1791b89f4ce09901c64233a2d6e85dc6fc727a8', 1, 16, 'Personal Access Token', '[]', 0, '2021-08-16 08:48:47', '2021-08-16 08:48:47', '2022-08-16 15:48:47'),
('4c64ca221038e4ff6afbe7a86df0de7c20f7d0478ad7f73ffae308cb4b9839fd1147b904768c24d3', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:10:14', '2021-05-21 19:10:14', '2022-05-22 02:10:14'),
('4d5659dd180fb55bdda6f42045ef3e741820ccc6a341ec9a6d016b7c66a8be342ea6ab127754eb86', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:01:25', '2021-05-22 01:01:25', '2022-05-22 08:01:25'),
('4d72bc9cec373825464ce1a9e42b1a40e8fdaed1ec3c7411157aed36841e48735d0e50d2f604afc5', 1, 16, 'Personal Access Token', '[]', 0, '2021-08-16 08:45:42', '2021-08-16 08:45:42', '2022-08-16 15:45:42'),
('4df06814133f41b87d2bf22af4a6ec1dba1496d37e74f28482de3b5d8457655701f7376fa11544de', 70, 16, 'Personal Access Token', '[]', 1, '2021-05-15 23:58:44', '2021-05-15 23:58:44', '2022-05-16 06:58:44'),
('530b961f6417b498a9f1db0f29fb833adaee1d9eb130fe205dd2e6705c2abb2aa9b35bb71c8176a1', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:02:44', '2021-05-22 01:02:44', '2022-05-22 08:02:44'),
('5451cffc60a7ea71fe3ecb2db27dbdcb9b95300d0f2b2ee54afd163eabb07862062e21f224524fcd', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:22:07', '2021-05-21 19:22:07', '2022-05-22 02:22:07'),
('552069eabad31de573327f89325f844ffb3dc15d1cd6af24b8ca64db426e59e4c136b72b942e6bf6', 1, 16, 'Personal Access Token', '[]', 0, '2021-09-12 03:50:12', '2021-09-12 03:50:12', '2022-09-12 10:50:12'),
('552efac93a2e6f014240fb539d1e50106405d7e2e7cffd29347e2e3d7a7c24acb9728e131870f209', 89, 16, 'Personal Access Token', '[]', 0, '2021-05-25 07:21:13', '2021-05-25 07:21:13', '2022-05-25 14:21:13'),
('55d9a5ab266651870f33b91334f0a5477a2530285f47ad72babd5d7f44daf4606e2ab1f851d763c0', 28, 16, 'Personal Access Token', '[]', 0, '2021-05-31 08:20:35', '2021-05-31 08:20:35', '2022-05-31 15:20:35'),
('5865926c4a4bd54291a6f453e239e04e01f6ce7ba20b2c32570eae4c66e4c57a5f94b311c4e217a1', 28, 16, 'Personal Access Token', '[]', 0, '2021-05-16 00:18:51', '2021-05-16 00:18:51', '2022-05-16 07:18:51'),
('5ec84137d7fc47976f6225caea0ea0a914ea51c868f75a127881b74e04deb01f6f699af33c34930a', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:58:00', '2021-05-21 19:58:00', '2022-05-22 02:58:00'),
('5f0ce93e352f61bcbb27124ed3958c1c19718d8b76e9fca0e784548b876ad9332271b29ce48aaca3', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:00:09', '2021-05-22 01:00:09', '2022-05-22 08:00:09'),
('5f4a757c2e7fe9f55218595a32552739df556a09e5aef3f75765251603b34f3f04fd9226587fb1f7', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:44:50', '2021-05-21 19:44:50', '2022-05-22 02:44:50'),
('5f521089a012a38365dfa63d8d34359cf87dfa23907880fde3c47599f77758e3d7cfc184371972ad', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:42:45', '2021-05-22 01:42:45', '2022-05-22 08:42:45'),
('60c92b60bd6e6783b0d71196f0ad0b5b60d16039f07979e54caa6efc64f6a0546a41d02df2d9b244', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 18:53:02', '2021-05-21 18:53:02', '2022-05-22 01:53:02'),
('616621a3c2235ec92c85812bd661ca78142f26e15ecb800d7e546d90365d6a47bef638cf0e3ac961', 90, 16, 'Personal Access Token', '[]', 0, '2021-05-25 07:21:46', '2021-05-25 07:21:46', '2022-05-25 14:21:46'),
('620d94ff53790115af8d12dd550020c1b6e391eb4c82f1a41551b378e4458801c1871a39dccb1311', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 21:48:15', '2021-05-21 21:48:15', '2022-05-22 04:48:15'),
('63b07099623ba3d7fea7c8be8ef150b540a7961e2f75823e04c08302368374e69d9146937de1698f', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:03:34', '2021-05-21 19:03:34', '2022-05-22 02:03:34'),
('65ebd81c641a14c51ef737666574c964bb05ec69a3e0a0350e570e033054bdc06b6eea1b09e88c3b', 98, 16, 'Personal Access Token', '[]', 0, '2021-05-31 01:42:08', '2021-05-31 01:42:08', '2022-05-31 08:42:08'),
('681e5d100b1db0c1ebebe4267962d36db42f15c7e268b898be400b4760a6502f4cf9b4235479af99', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 21:32:13', '2021-05-21 21:32:13', '2022-05-22 04:32:13'),
('6a029d4f14d66385e1c69ea58abfd12d388f781320d9249876cd37285e843ef071c7b65657d1299b', 98, 16, 'Personal Access Token', '[]', 0, '2021-05-31 18:37:23', '2021-05-31 18:37:23', '2022-06-01 01:37:23'),
('6fa24da5629056420c31031441d97d654a0c619a46fde69f12b025fbfbcd48d6a4e32fbd6b9c6c28', 70, 16, 'Personal Access Token', '[]', 1, '2021-05-16 00:04:00', '2021-05-16 00:04:00', '2022-05-16 07:04:00'),
('762de096fc8f3c51a000ab282821904da54c92cdf48d383b95089680dc6f2a46aae0823598f97b3a', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-31 07:36:52', '2021-05-31 07:36:52', '2022-05-31 14:36:52'),
('79745821a6f8a2a07b6c1726d36038c5cb43c6d3310d2d119965a65babc0fff5aa7fc0c8b9c941c7', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-19 03:52:06', '2021-05-19 03:52:06', '2022-05-19 10:52:06'),
('7b786d484c42bb2e2c00bf1750730e26ee533b12ae38c431e6f89184174c5c21177fa9e94e940cee', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 21:30:36', '2021-05-21 21:30:36', '2022-05-22 04:30:36'),
('7c2becd1f926078622a66a19b0765cdbcf03f2ff25ebe06a1306aa36540e7489c93e43e4c18d9348', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 18:58:27', '2021-05-21 18:58:27', '2022-05-22 01:58:27'),
('7c375c42d0aae4c671feb39a4e36279b8918d661d530e5346dadd4cb35aa9c433ff5f2f0212b47ed', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 00:32:47', '2021-05-22 00:32:47', '2022-05-22 07:32:47'),
('7dcfa40bf1f0270b89485e47089f1ba8923ec6f8f14d376113a85831f1dc68eb953b8660ede560b0', 98, 16, 'Personal Access Token', '[]', 0, '2021-05-31 07:51:08', '2021-05-31 07:51:08', '2022-05-31 14:51:08'),
('8020eb4d84dda1cf7e83b62d420fb219702fc0e8d960abbd8e777293821de07acd2d95642cd021e6', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:35:17', '2021-05-21 19:35:17', '2022-05-22 02:35:17'),
('81595ad78c3a2879c78baf43125a38e370fe8df01ad020b0aff070bbcc7ded6487835968dc85dcc1', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 18:53:30', '2021-05-21 18:53:30', '2022-05-22 01:53:30'),
('8255c1c6a52bd8512cd637b8151519c565a8f292eb76e5deb2b3af4d7d2ce0e8bcc74033d249382b', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 00:33:28', '2021-05-22 00:33:28', '2022-05-22 07:33:28'),
('85b3895e85f595f02d2013d542e61ed5881119b1a4247dfe5af1e741d55933a0bd14eb5417b001a2', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:32:16', '2021-05-22 01:32:16', '2022-05-22 08:32:16'),
('87967ed510f81a9634ab88d870e857b6ac09f0b25c8a0060c40a63080fb74be4302119ca3c367a68', 1, 16, 'Personal Access Token', '[]', 0, '2021-09-09 09:39:27', '2021-09-09 09:39:27', '2022-09-09 16:39:27'),
('8baed240c053caf0e3dc3a43b087b6071d4630b89b18aeef5aa30fbd6aee79e3794ec3762a5cfd16', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-31 07:29:49', '2021-05-31 07:29:49', '2022-05-31 14:29:49'),
('8c90d73e1b984d620bc1e4003a0926271edd65c72d325d45292d21d92514f0afac84169ecbb82ff3', 91, 16, 'Personal Access Token', '[]', 0, '2021-05-25 07:32:14', '2021-05-25 07:32:14', '2022-05-25 14:32:14'),
('8d672f9da1d591056c1b66420acea91341fe25e74ab5023bf988e76b6b5b82be0323e2c20d099957', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:23:42', '2021-05-21 19:23:42', '2022-05-22 02:23:42'),
('90996338ef9cff71f32b99a0449d4fd4f362592d40280c745687eb0c1d1253a94e61c8953cfc5b87', 98, 16, 'Personal Access Token', '[]', 0, '2021-05-31 18:29:58', '2021-05-31 18:29:58', '2022-06-01 01:29:58'),
('94d3acd2db8192b10e110baebd1a2f51d76b3a3fb70b0db345645563dca6226fe498a2d3277b6ce7', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:04:14', '2021-05-22 01:04:14', '2022-05-22 08:04:14'),
('961a6e9dfdd9e495abec1f8d04ca7ada30f461b3f127840b0cc3b441cad66a7096581d0c8c21b32c', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 20:00:28', '2021-05-21 20:00:28', '2022-05-22 03:00:28'),
('98b18db04d19fa8b2e09ce4861c0d00655d274a00c4582046ddaae59b39345b63e1738549b9c85f1', 98, 16, 'Personal Access Token', '[]', 0, '2021-05-31 07:51:53', '2021-05-31 07:51:53', '2022-05-31 14:51:53'),
('9aeba36dc8b314dcb020085ab5e4a4e6687c53425fa6dc0a430519fc89880d92aa0ed3c4ff9d9d01', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 00:56:48', '2021-05-22 00:56:48', '2022-05-22 07:56:48'),
('9bc19449c92926a467360c05b96597026b1e30e64489c4d847db7a12c4d281dfd86f7ce731f0a684', 28, 16, 'Personal Access Token', '[]', 0, '2021-05-31 08:43:24', '2021-05-31 08:43:24', '2022-05-31 15:43:24'),
('9cf703136e53b6126ca6ec6d819fb25a9608292bb61f89d58871dcd0c303edf0dca6a4ef7388dff4', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 20:06:25', '2021-05-21 20:06:25', '2022-05-22 03:06:25'),
('9d5aed97322bc32a5754a69e41ebe0c1bb1bdc55ac92d617ab4b48daa4fcfc066331bf8dccce90ff', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-18 03:40:25', '2021-05-18 03:40:25', '2022-05-18 10:40:25'),
('9f45887a4c36284435bb806045760b4699484f834706fb5a3b35e9a1ad0b0a953ac2636560d250e3', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:26:22', '2021-05-22 01:26:22', '2022-05-22 08:26:22'),
('a27efcef12ca09f4c0d8f0364d13e0b9f39927d747e325c2a634c87667af3d3cb3f4286bc49f47dc', 98, 16, 'Personal Access Token', '[]', 0, '2021-05-31 01:40:16', '2021-05-31 01:40:16', '2022-05-31 08:40:16'),
('a2c044aedadab5029c3f4e3c40f0ca3cea7b5b760ed9c1b15f7770e5eb82a0bcc407320ad0a02db3', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-19 03:52:58', '2021-05-19 03:52:58', '2022-05-19 10:52:58'),
('a35f8374ddc0a0acba27f9b25f616b3cdff56f4c327758e40f9fd24c01b95a1321a7ac25d0ad6091', 70, 16, 'Personal Access Token', '[]', 0, '2021-05-15 23:58:04', '2021-05-15 23:58:04', '2022-05-16 06:58:04'),
('a3793e90c1333bfe0e38a06ab5b1a01fdef865e01a5880aa8cadf97fc236eb694b0fdf3d283a9ec8', 1, 16, 'Personal Access Token', '[]', 0, '2021-09-11 07:02:16', '2021-09-11 07:02:16', '2022-09-11 14:02:16'),
('a885b44acc51ac0d980ebdd726f454fe4f43c5eb5ef00b6660fd765f0afe5897880fd42dc6000267', 28, 16, 'Personal Access Token', '[]', 1, '2021-05-16 00:36:59', '2021-05-16 00:36:59', '2022-05-16 07:36:59'),
('af511784299f44c7abb179caa1aa3502abd33be76ddb611d34ea98cc28cad006b10d455c33e64e28', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-19 03:45:56', '2021-05-19 03:45:56', '2022-05-19 10:45:56'),
('b3a742ef94a72350d3789f4f7d87634878e8a5cbe5adbf24827c4be235b8812bc600bf4c601adc1f', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:56:48', '2021-05-21 19:56:48', '2022-05-22 02:56:48'),
('b5e1728871ffcfd1104695525b0b56f30506d179168f5031c3c200ebef1c27bbd8520b773d08721a', 98, 16, 'Personal Access Token', '[]', 0, '2021-06-01 02:27:27', '2021-06-01 02:27:27', '2022-06-01 09:27:27'),
('b78ba84dd491a4c9873dd4a01b37c24778090809820edb86bc2e4802edb3e3048f0de2778d027b70', 98, 16, 'Personal Access Token', '[]', 0, '2021-05-31 18:35:55', '2021-05-31 18:35:55', '2022-06-01 01:35:55'),
('b82075513de1e3cf869ca16c8d14b7823274f223766f4e6082e1672be3b92954c1cccab9bd2a5387', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:28:36', '2021-05-22 01:28:36', '2022-05-22 08:28:36'),
('b85f7aa77319c7c631f29d7a7cfebe893230f69685002f500857f62f8c218ab2d46751a1c9feda1d', 1, 16, 'Personal Access Token', '[]', 0, '2021-09-20 09:53:57', '2021-09-20 09:53:57', '2022-09-20 16:53:57'),
('ba6c1ef0986f5e3a341727c795813c86858b6ff13dfa43bbb39d22efeb5d4d93657d91582ac65c6c', 28, 16, 'Personal Access Token', '[]', 0, '2021-05-16 03:35:31', '2021-05-16 03:35:31', '2022-05-16 10:35:31'),
('bc63775908d7c922047fe2557c4787b0dbdb944f229a3e9734ff95d963f21dcf63caed03cb0b82b5', 98, 16, 'Personal Access Token', '[]', 0, '2021-09-09 09:41:08', '2021-09-09 09:41:08', '2022-09-09 16:41:08'),
('cd31b55b616b98c9b35b034502e2d80e48d7973b7aa1ff5615ea3caa07937ebbcc04c980d2b903de', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:54:07', '2021-05-21 19:54:07', '2022-05-22 02:54:07'),
('cd6a3c2834c160e8339d424e8a2e3adb8f598db036d1eaf9a95196cb6adc0020a081181b03505b20', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:53:56', '2021-05-21 19:53:56', '2022-05-22 02:53:56'),
('cf21c785b2cf58b3dfafd5be2017665a249283c506d4f302fb1d3cf347b95425a98f17fd30b5f974', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 00:34:52', '2021-05-22 00:34:52', '2022-05-22 07:34:52'),
('d0aa4d7d728432dff892f0205a57f7fd812eda37302a3a57bc05407782af1e22fc315d15451ad5ce', 1, 16, 'Personal Access Token', '[]', 0, '2021-09-09 09:44:29', '2021-09-09 09:44:29', '2022-09-09 16:44:29'),
('d180cb6cc06d37b04b50dd13d6dde22af9da391bdfa64d11a48fe037b7c360faa0b71174c34e3b51', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:40:36', '2021-05-22 01:40:36', '2022-05-22 08:40:36'),
('d1f9017183e56e0a2385a6ed48f56ee74f062357bbf56cd816ef3202d80f4605655ff1ae5ed0e471', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 20:01:17', '2021-05-21 20:01:17', '2022-05-22 03:01:17'),
('d4685235bf6c343024a8338987f1796e5e3211716e9d217b18ee0181ba2210b4d1fcd5d3085ba066', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:55:33', '2021-05-21 19:55:33', '2022-05-22 02:55:33'),
('da868b5ffeedb8a78b85175d8c0821837c8355e5c1018be97cd4d1d7b430c0b4a16b48a48a5be749', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:24:59', '2021-05-22 01:24:59', '2022-05-22 08:24:59'),
('dd1c300d0813c668e04b934f9caa19686888714bdb3313aad24dc3a1531987a1d1ccc45a7117cfe8', 1, 16, 'Personal Access Token', '[]', 0, '2021-08-15 04:01:44', '2021-08-15 04:01:44', '2022-08-15 11:01:44'),
('dd4eb70d5ccf7e8b7d0678020e26c96ad9d6faf9e8d6cd1a0711d653f87d0005583088ed3a45486f', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:26:31', '2021-05-21 19:26:31', '2022-05-22 02:26:31'),
('de0c7ba24a0f3d50b9a8efcd2fb17318f7c6d3d88c091be11e067d12b3a07f0b062d90701f7c1a11', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:25:04', '2021-05-21 19:25:04', '2022-05-22 02:25:04'),
('e1e34f018163c545cf4ea1afc572db4ec4c72d30f0ff1d7021760bb31824deb05f962c7910d93387', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 19:23:23', '2021-05-21 19:23:23', '2022-05-22 02:23:23'),
('e3c9796937f67a1d1c4673f5534048c9b75382bbc471747e89ed193ea5d4bcf82b01b2f8b38ad1a4', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-16 03:34:06', '2021-05-16 03:34:06', '2022-05-16 10:34:06'),
('ee39b5358db7baa3d88721d24242f034b06bdc1d6a45b8f4c87ca6a1feb8652d7307fe5f4e076bdd', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 20:05:43', '2021-05-21 20:05:43', '2022-05-22 03:05:43'),
('f104f83f5bfb25e87fddae51f724594bb843a0b12d9049f1be7817d5d3313842de833677d6848813', 147, 16, 'Personal Access Token', '[]', 0, '2021-08-21 09:26:33', '2021-08-21 09:26:33', '2022-08-21 16:26:33'),
('f6454749efb45cd8a1ce630fe87d5cb4cc40be99c9eb143b7e519bfa09d183f4c51682491196f877', 92, 16, 'Personal Access Token', '[]', 0, '2021-05-25 07:35:10', '2021-05-25 07:35:10', '2022-05-25 14:35:10'),
('fbc76b438b22a994f484ef740458aab30d8d5a94a67d1ff6f0a30c46bf73084c5d57c6d8394d8146', 28, 16, 'Personal Access Token', '[]', 0, '2021-05-16 03:05:28', '2021-05-16 03:05:28', '2022-05-16 10:05:28'),
('fd2f65a8cb0cd1a0b6babc808229f73e5a17239db3e0f6af587f92be667dd416e0a5aa27aa3a4bfc', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-22 01:09:11', '2021-05-22 01:09:11', '2022-05-22 08:09:11'),
('fdd2e03d452e2b772257d556b33ee2a1222fe8dcd9616a52adcd5faa4f3d967455c67adc48ef7a8f', 71, 16, 'Personal Access Token', '[]', 0, '2021-05-21 18:48:21', '2021-05-21 18:48:21', '2022-05-22 01:48:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Edushop Personal Access Client', 'ubaGpzbNmZlstc5TqsUpjbARpPRghVaeg5VnRbpg', NULL, 'http://localhost', 1, 0, 0, '2021-05-15 21:31:30', '2021-05-15 21:31:30'),
(2, NULL, 'Edushop Password Grant Client', 'qIthNB9LQknIgrwfCXPRousdnEBcLvnjMssC1R0C', 'users', 'http://localhost', 0, 1, 0, '2021-05-15 21:31:31', '2021-05-15 21:31:31'),
(3, NULL, 'Edushop Personal Access Client', 'yUTsTNP6jUrkI9yHL81myq1MFEGfdsgdiiQ6k56Y', NULL, 'http://localhost', 1, 0, 0, '2021-05-15 21:42:26', '2021-05-15 21:42:26'),
(4, NULL, 'Edushop Password Grant Client', 'Y6rSp15ZsfzTAF7MuxfGk7VV5bcIkD4RvxAcyEqT', 'users', 'http://localhost', 0, 1, 0, '2021-05-15 21:42:27', '2021-05-15 21:42:27'),
(5, NULL, 'Edushop Personal Access Client', 'Z0bgbmVXztRLODfTSlpss9qdMYoYAiKn2d8OZwaP', NULL, 'http://localhost', 1, 0, 0, '2021-05-15 21:47:51', '2021-05-15 21:47:51'),
(6, NULL, 'Edushop Personal Access Client', 'bzMKLtxnFYPbmETDb90spWqKgyxrovnrESrbPr6c', NULL, 'http://localhost', 1, 0, 0, '2021-05-15 21:57:40', '2021-05-15 21:57:40'),
(7, NULL, 'Edushop Password Grant Client', 'pqMRxNc220AmY6dNChDgFtzAhfMEATHt67Z5h8LP', 'users', 'http://localhost', 0, 1, 0, '2021-05-15 21:57:40', '2021-05-15 21:57:40'),
(8, NULL, 'Edushop Personal Access Client', 'GqMSrmHCREx6nAJ4IhldFmBalJPoOm6dfZUEnPdC', NULL, 'http://localhost', 1, 0, 0, '2021-05-15 22:02:53', '2021-05-15 22:02:53'),
(9, NULL, 'Edushop Password Grant Client', 'HFgqXSr0xNSy7FZwCkbfgkhdJb0tUktUOevpItpc', 'users', 'http://localhost', 0, 1, 0, '2021-05-15 22:02:53', '2021-05-15 22:02:53'),
(10, NULL, 'Edushop Personal Access Client', 'C6rK4CNcSp2SwBDHtcM4Tq7OcMcWcFvIpXxLfLS2', NULL, 'http://localhost', 1, 0, 0, '2021-05-15 23:18:56', '2021-05-15 23:18:56'),
(11, NULL, 'Edushop Password Grant Client', 'rzItJQc8kQO9rB9Iqb7WStbpHUzXlI8YfGKoAVOe', 'users', 'http://localhost', 0, 1, 0, '2021-05-15 23:18:57', '2021-05-15 23:18:57'),
(12, NULL, 'Edushop Personal Access Client', 'oubGR1uVgsaSBonD52dY5NPkObK9Yvl0FecudYOi', NULL, 'http://localhost', 1, 0, 0, '2021-05-15 23:19:12', '2021-05-15 23:19:12'),
(13, NULL, 'Edushop Password Grant Client', '3nUumCIzfoVMwQHJ7VXxIZwxmLJBnMkovJdcTLsy', 'users', 'http://localhost', 0, 1, 0, '2021-05-15 23:19:12', '2021-05-15 23:19:12'),
(14, NULL, 'Edushop Personal Access Client', 'qZNinCaWTCINDDPgHJTpXLOdP3INoYDbb6q1TqzC', NULL, 'http://localhost', 1, 0, 0, '2021-05-15 23:33:04', '2021-05-15 23:33:04'),
(15, NULL, 'Edushop Password Grant Client', 'X2EoQnTIqPp8fSZwYNanROpv3A7jz8wnFM8ijnzV', 'users', 'http://localhost', 0, 1, 0, '2021-05-15 23:33:05', '2021-05-15 23:33:05'),
(16, NULL, 'Laravel Personal Access Client', 'dXXUyWAx56qkqmib9TdcNMP0XBf80UCvWUE44wpX', NULL, 'http://localhost', 1, 0, 0, '2021-05-15 23:47:09', '2021-05-15 23:47:09'),
(17, NULL, 'Laravel Password Grant Client', 'jvvLiqQtPpsDEGvq7AjUWAE3WoSxY2Wtu8oorqIW', 'users', 'http://localhost', 0, 1, 0, '2021-05-15 23:47:10', '2021-05-15 23:47:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-05-15 21:31:31', '2021-05-15 21:31:31'),
(2, 3, '2021-05-15 21:42:26', '2021-05-15 21:42:26'),
(3, 5, '2021-05-15 21:47:51', '2021-05-15 21:47:51'),
(4, 6, '2021-05-15 21:57:40', '2021-05-15 21:57:40'),
(5, 8, '2021-05-15 22:02:53', '2021-05-15 22:02:53'),
(6, 10, '2021-05-15 23:18:57', '2021-05-15 23:18:57'),
(7, 12, '2021-05-15 23:19:12', '2021-05-15 23:19:12'),
(8, 14, '2021-05-15 23:33:04', '2021-05-15 23:33:04'),
(9, 16, '2021-05-15 23:47:10', '2021-05-15 23:47:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_ko` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `name`, `picture`, `url_picture`, `content`, `status`, `meta_title`, `meta_description`, `meta_keywords`, `slug`, `location`, `name_ko`, `content_ko`, `meta_title_ko`, `meta_description_ko`, `meta_keywords_ko`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(19, 'Trang chủ', NULL, NULL, 'a:35:{s:8:\"duthuyen\";a:1:{s:4:\"name\";s:12:\"ALLIGA YACHT\";}s:8:\"activity\";a:1:{s:4:\"name\";s:19:\"Các hoạt động\";}s:6:\"client\";a:1:{s:4:\"name\";s:38:\"Khách hàng nói gì về chúng tôi\";}s:4:\"call\";a:3:{s:4:\"name\";s:54:\"Trải nghiệm đẳng cấp, giá trị xứng tầm\";s:6:\"button\";s:15:\"Liên hệ ngay\";s:4:\"link\";s:1:\"#\";}s:7:\"partner\";a:1:{s:4:\"name\";s:29:\"Đối tác của chúng tôi\";}s:7:\"product\";a:1:{s:4:\"name\";s:28:\"Gia đình của chúng tôi\";}s:6:\"slider\";a:3:{s:4:\"name\";s:42:\"Hãy để cả thế giới đón nhận!\";s:11:\"description\";s:64:\"Cho đi kiến thức và nhận lại những điều vô giá.\";s:11:\"text_button\";s:26:\"Trở thành giảng viên\";}s:8:\"slider_1\";a:2:{s:11:\"picture_url\";s:51:\"https://anyclass.vn/storage/photos/1/HTXmM83F7R.jpg\";s:7:\"picture\";s:14:\"HTXmM83F7R.jpg\";}s:8:\"slider_2\";a:2:{s:11:\"picture_url\";s:51:\"https://anyclass.vn/storage/photos/1/HTXmM83F7R.jpg\";s:7:\"picture\";s:14:\"32lRfSRmPY.jpg\";}s:8:\"slider_3\";a:1:{s:11:\"picture_url\";N;}s:11:\"dichvu_khoi\";a:1:{s:4:\"name\";s:47:\"Khám phá khả năng tiềm ẩn của bạn!\";}s:13:\"dichvu_khoi_1\";a:4:{s:11:\"picture_url\";s:51:\"https://anyclass.vn/storage/photos/1/Y3ZD4iwPDU.png\";s:4:\"name\";s:26:\"Chương trình hợp tác\";s:11:\"description\";s:50:\"Mục đích, cách thức, nội dung hợp tác.\";s:7:\"picture\";s:14:\"Y3ZD4iwPDU.png\";}s:13:\"dichvu_khoi_2\";a:4:{s:11:\"picture_url\";s:51:\"https://anyclass.vn/storage/photos/1/ExrUJ0QERU.png\";s:4:\"name\";s:23:\"Xây dựng khoá học\";s:11:\"description\";s:91:\"Chung tay hợp tác để sản xuất những khóa học có chất lượng cao nhất.\";s:7:\"picture\";s:14:\"ExrUJ0QERU.png\";}s:13:\"dichvu_khoi_3\";a:4:{s:11:\"picture_url\";s:51:\"https://anyclass.vn/storage/photos/1/90dd3R6o6b.png\";s:4:\"name\";s:18:\"Quyền tác giả\";s:11:\"description\";s:117:\"Quyền tác giả được thừa nhận ngay khi tác phẩm được sinh ra và được pháp luật bảo vệ.\";s:7:\"picture\";s:14:\"90dd3R6o6b.png\";}s:5:\"conso\";a:3:{s:6:\"tieude\";s:16:\"Anyclass có gì\";s:11:\"picture_url\";s:51:\"https://anyclass.vn/storage/photos/1/tQFVtgQXmG.png\";s:7:\"picture\";s:14:\"tQFVtgQXmG.png\";}s:10:\"cacconso_1\";a:2:{s:6:\"number\";s:5:\"1,045\";s:4:\"name\";s:11:\"Học viên\";}s:10:\"cacconso_2\";a:2:{s:6:\"number\";s:4:\"5600\";s:4:\"name\";s:4:\"User\";}s:10:\"cacconso_3\";a:2:{s:6:\"number\";s:2:\"10\";s:4:\"name\";s:11:\"Khoá học\";}s:10:\"cacconso_4\";a:2:{s:6:\"number\";s:4:\"1110\";s:4:\"name\";s:21:\"Khoá học đã bán\";}s:7:\"cacbuoc\";a:1:{s:6:\"tieude\";s:33:\"Từng bước tới thành công\";}s:9:\"cacbuoc_1\";a:5:{s:11:\"picture_url\";s:51:\"https://anyclass.vn/storage/photos/1/eFjs0a8yHv.png\";s:4:\"name\";s:9:\"Bước 1\";s:11:\"description\";s:22:\"Đăng ký khoá học\";s:3:\"job\";s:5:\"Job 1\";s:7:\"picture\";s:14:\"eFjs0a8yHv.png\";}s:9:\"cacbuoc_2\";a:5:{s:11:\"picture_url\";s:51:\"https://anyclass.vn/storage/photos/1/uwupDgCdE3.png\";s:4:\"name\";s:9:\"Bước 2\";s:11:\"description\";s:27:\"Xây dựng chương trình\";s:3:\"job\";s:5:\"Job 2\";s:7:\"picture\";s:14:\"uwupDgCdE3.png\";}s:9:\"cacbuoc_3\";a:5:{s:11:\"picture_url\";s:51:\"https://anyclass.vn/storage/photos/1/JGdWf4bUVk.png\";s:4:\"name\";s:10:\"Bước 3\";s:11:\"description\";s:17:\"Ký hợp đồng\";s:3:\"job\";s:5:\"Job 3\";s:7:\"picture\";s:14:\"JGdWf4bUVk.png\";}s:9:\"cacbuoc_4\";a:5:{s:11:\"picture_url\";s:51:\"https://anyclass.vn/storage/photos/1/PTTWgEcF5v.png\";s:4:\"name\";s:9:\"Bước 4\";s:11:\"description\";s:16:\"Quay khoá học\";s:3:\"job\";N;s:7:\"picture\";s:14:\"PTTWgEcF5v.png\";}s:9:\"cacbuoc_5\";a:5:{s:11:\"picture_url\";s:51:\"https://anyclass.vn/storage/photos/1/1FQ4HWNkOr.png\";s:4:\"name\";s:9:\"Bước 5\";s:11:\"description\";s:17:\"Dưng khoá học\";s:3:\"job\";N;s:7:\"picture\";s:14:\"1FQ4HWNkOr.png\";}s:9:\"cacbuoc_6\";a:5:{s:11:\"picture_url\";s:51:\"https://anyclass.vn/storage/photos/1/z0U1KqYgaQ.png\";s:4:\"name\";s:9:\"Bước 6\";s:11:\"description\";s:38:\"Đăng bán và hỗ trợ học viên\";s:3:\"job\";N;s:7:\"picture\";s:14:\"z0U1KqYgaQ.png\";}s:6:\"phamvi\";a:1:{s:6:\"tieude\";s:37:\"Giảng viên nghĩ gì về Anyclass\";}s:8:\"phamvi_1\";a:5:{s:11:\"picture_url\";s:110:\"https://anyclass.vn/storage/photos/28/Khỏe và đẹp/2107_ Health coach - Thái Hùng/GV-1100x555px-min.jpg\";s:4:\"name\";s:16:\"Thái Ngô Hùng\";s:3:\"job\";s:43:\"Huấn luyện viên sức khoẻ cá thể\";s:11:\"description\";s:135:\"Cảm ơn vì đã đồng hành cùng tôi để lan toả cuộc sống xanh, lành mạnh tới tất cả người dân Việt Nam!\";s:7:\"picture\";s:15:\"ekvWY66SJM.webp\";}s:8:\"phamvi_2\";a:5:{s:11:\"picture_url\";s:117:\"https://anyclass.vn/storage/photos/28/Sở thích/0907 Thêu nổi - Phương/GT1 - Giới thiệu- 500x350pt-min.jpg\";s:4:\"name\";s:24:\"Nguyễn Đức Phương\";s:3:\"job\";s:17:\"Thợ thêu nổi\";s:11:\"description\";s:37:\"Rất nhiều ý tưởng sáng tạo\";s:7:\"picture\";s:15:\"8DmOrIeDDS.webp\";}s:8:\"phamvi_3\";a:5:{s:11:\"picture_url\";s:95:\"https://anyclass.vn/storage/photos/28/Khỏe và đẹp/2107 Makeup-Quân/GV2-1100x55px-min.jpg\";s:4:\"name\";s:16:\"Quân Cá makeup\";s:3:\"job\";s:37:\"Chuyên gia đào tạo trang điểm\";s:11:\"description\";s:105:\"Đôi ngũ tư vấn hỗ trợ nhiệt tình trong suốt quá trình làm kịch bản và quay dựng!\";s:7:\"picture\";s:15:\"9snZwqnfDU.webp\";}s:13:\"\'dichvu_khoi\'\";a:1:{s:6:\"\'name\'\";s:23:\"DISCOVER YOUR POTENTIAL\";}s:8:\"phamvi_4\";a:1:{s:11:\"description\";N;}s:8:\"phamvi_5\";a:1:{s:11:\"description\";N;}s:8:\"phamvi_6\";a:1:{s:11:\"description\";N;}s:5:\"about\";a:4:{s:6:\"tieude\";N;s:11:\"description\";N;s:4:\"link\";N;s:10:\"video_link\";N;}}', 'active', NULL, NULL, NULL, '', 'detail_page', 'tiếng hàn', 'a:6:{s:8:\"duthuyen\";a:1:{s:4:\"name\";s:35:\"Chọn theo sở thích của bạn\";}s:8:\"activity\";a:1:{s:4:\"name\";s:8:\"Sporting\";}s:6:\"client\";a:1:{s:4:\"name\";s:8:\"Customer\";}s:4:\"call\";a:3:{s:4:\"name\";s:31:\"Classy experience, worthy value\";s:6:\"button\";s:11:\"Contact now\";s:4:\"link\";N;}s:7:\"partner\";a:1:{s:4:\"name\";s:7:\"Partner\";}s:7:\"product\";a:1:{s:4:\"name\";s:8:\"Products\";}}', '0', '0', '0', 28, '2021-03-31 00:09:18', '2022-01-24 08:39:16', NULL),
(22, 'Trang du thuyền', NULL, NULL, 'a:1:{s:9:\"duthuyeen\";a:2:{s:4:\"name\";s:11:\"Du thuyền\";s:11:\"description\";s:94:\"Một trong những thương hiệu sản xuất du thuyền cá nhân hàng đầu Việt Nam\";}}', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{s:9:\"duthuyeen\";a:2:{s:4:\"name\";s:5:\"Yatch\";s:11:\"description\";s:65:\"One of the leading personal yacht manufacturing brands in Vietnam\";}}', '0', '0', '0', NULL, '2021-08-18 17:00:00', '2022-01-24 08:28:50', NULL),
(23, 'Liên hệ', NULL, NULL, 'a:1:{s:6:\"lienhe\";a:1:{s:4:\"name\";s:10:\"Liên hệ\";}}', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{s:6:\"lienhe\";a:1:{s:4:\"name\";s:7:\"Contact\";}}', '0', '0', '0', NULL, '2021-08-18 17:00:00', '2021-12-08 17:31:41', NULL),
(27, 'Trang dịch vụ', NULL, NULL, 'a:2:{s:13:\"services_page\";a:2:{s:4:\"name\";s:29:\"Dịch vụ của chúng tôi\";s:11:\"description\";s:55:\"Trải nghiệm đẳng cấp, giá trị xứng tầm!\";}s:4:\"lvhd\";a:1:{s:4:\"name\";s:26:\"Lĩnh vực hoạt động\";}}', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{s:13:\"services_page\";a:2:{s:4:\"name\";s:7:\"Service\";s:11:\"description\";s:31:\"Classy experience, worthy value\";}s:4:\"lvhd\";a:1:{s:4:\"name\";s:5:\"Lvhđ\";}}', '0', '0', '0', NULL, '2021-08-18 17:00:00', '2022-01-24 08:38:02', NULL),
(28, 'Trang giới thiệu', NULL, NULL, 'a:5:{s:10:\"page_about\";a:2:{s:4:\"name\";s:14:\"Giới thiệu\";s:11:\"description\";s:94:\"Một trong những thương hiệu sản xuất du thuyền cá nhân hàng đầu Việt Nam\";}s:7:\"partner\";a:1:{s:4:\"name\";s:29:\"Đối tác của chúng tôi\";}s:7:\"history\";a:1:{s:4:\"name\";s:34:\"Lịch sử phát triển công ty\";}s:6:\"member\";a:1:{s:4:\"name\";s:30:\"Thành Viên Của Chúng Tôi\";}s:13:\"button_detail\";a:1:{s:4:\"name\";s:36:\"Xem chi tiết hơn về chúng tôi\";}}', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 'a:5:{s:10:\"page_about\";a:2:{s:4:\"name\";s:8:\"About Us\";s:11:\"description\";s:65:\"One of the leading personal yacht manufacturing brands in Vietnam\";}s:7:\"partner\";a:1:{s:4:\"name\";s:7:\"Partner\";}s:7:\"history\";a:1:{s:4:\"name\";s:7:\"History\";}s:6:\"member\";a:1:{s:4:\"name\";s:6:\"Member\";}s:13:\"button_detail\";a:1:{s:4:\"name\";s:9:\"Detail us\";}}', '0', '0', '0', NULL, '2021-08-18 17:00:00', '2022-01-24 08:29:40', NULL),
(29, 'Trang chi tiết về chúng tôi', NULL, NULL, NULL, 'active', NULL, NULL, NULL, NULL, NULL, 'tieensh hàn', NULL, '0', '0', '0', NULL, '2021-08-18 17:00:00', '2021-08-18 17:00:00', NULL),
(31, 'Trang tin tức', NULL, NULL, 'a:2:{s:6:\"tintuc\";a:2:{s:4:\"name\";s:9:\"Tin tức\";s:11:\"description\";N;}s:9:\"duthuyeen\";a:2:{s:4:\"name\";s:11:\"Du thuyền\";s:11:\"description\";s:55:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit\";}}', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{s:6:\"tintuc\";a:2:{s:4:\"name\";s:4:\"News\";s:11:\"description\";N;}s:9:\"duthuyeen\";a:2:{s:4:\"name\";s:5:\"Yatch\";s:11:\"description\";s:55:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit\";}}', '0', '0', '0', NULL, '2021-08-18 17:00:00', '2021-12-10 03:18:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages_dynamic`
--

CREATE TABLE `pages_dynamic` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages_dynamic`
--

INSERT INTO `pages_dynamic` (`id`, `name`, `picture`, `url_picture`, `content`, `status`, `meta_title`, `meta_description`, `meta_keywords`, `slug`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(20, 'Giới thiệu', 'vzLFNZ6pS4.png', 'https://anyclass.vn/storage/photos/shares/thumbnail blog.jpg', '<p><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">ANYCLASS l&agrave; </span></span></span><span style=\"background-color:#ffffff\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">nền tảng cung cấp c&aacute;c kh&oacute;a học dưới dạng video nhằm phục vụ c&aacute;c nhu cầu quan trọng của kh&aacute;ch h&agrave;ng, từ những nhu cầu cơ bản như sinh l&yacute;, an to&agrave;n, x&atilde; hội đến nhu cầu được qu&yacute; trọng v&agrave; thể hiện bản th&acirc;n.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"line-height:1.542857142857143; margin-top:-2px; margin-bottom:-2px\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Mỗi kh&oacute;a học được thiết kế ri&ecirc;ng cho ANYCLASS v&agrave; được hợp t&aacute;c sản xuất bởi ANYCLASS v&agrave; c&aacute;c chuy&ecirc;n gia, nghệ nh&acirc;n, huấn luyện vi&ecirc;n c&ugrave;ng c&aacute;c giảng vi&ecirc;n c&oacute; chuy&ecirc;n m&ocirc;n cao.&nbsp;</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"line-height:1.38\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">ANYCLASS ch&uacute; trọng giải quyết c&aacute;c vấn đề m&agrave; kh&aacute;ch h&agrave;ng gặp phải khi học c&aacute;c kh&oacute;a học online kh&aacute;c. Ch&uacute;ng t&ocirc;i cũng sẽ tạo m&ocirc;i trường học s&ocirc;i động, động lực v&agrave; kiến tạo cộng đồng những học vi&ecirc;n c&oacute; c&ugrave;ng mối quan t&acirc;m, đam m&ecirc;, sở th&iacute;ch. C&ugrave;ng với sự t&acirc;m huyết v&agrave; tận t&igrave;nh của c&aacute;c gi&aacute;ng vi&ecirc;n, ch&uacute;ng t&ocirc;i sẽ đồng h&agrave;nh c&ugrave;ng c&aacute;c bạn trong suốt qu&aacute; tr&igrave;nh học.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 'inactive', NULL, NULL, NULL, 'gioi-thieu', 28, '2021-06-14 03:37:56', '2021-09-10 04:30:34', 28),
(21, 'Liên hệ', 'C4toYQXFS1.jpg', 'https://anyclass.vn/storage/photos/shares/thumbnail blog.jpg', '<p>Hotline: 0981 333 790</p>\r\n\r\n<p>Email: anyhow@anyhow.vn</p>\r\n\r\n<p>Fanpage:&nbsp;https://www.facebook.com/Anyclass.vn/</p>', 'inactive', NULL, NULL, NULL, 'lien-he', 28, '2021-06-14 03:38:27', '2021-09-10 04:30:02', 28),
(22, 'Tuyển dụng', 'qkZojgzxPL.png', 'https://anyclass.vn/storage/photos/28/Logo Anyclass.png', '<p>Page tuyển dụng</p>', 'inactive', NULL, NULL, NULL, 'tuyen-dung', 28, '2021-06-14 03:50:59', '2021-08-14 09:50:33', NULL),
(23, 'Điều khoản sử dụng', 'azDVKgysVG.jpg', 'https://anyclass.vn/storage/photos/28/Logo Anyclass.png', '<p>&nbsp;</p>\r\n\r\n<p style=\"line-height:1.38; text-align:justify\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Nền tảng Anyclass.vn bao gồm website Anyclass.vn v&agrave; ứng dụng Anyclass tr&ecirc;n điện thoại (Sau đ&acirc;y gọi l&agrave; Anyclass) do C&ocirc;ng ty TNHH Anyhow (&ldquo;C&ocirc;ng ty&rdquo;) sở hữu v&agrave; vận h&agrave;nh. </span></span></span></span></span></span></span><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Dưới đ&acirc;y l&agrave; những điều khoản được &aacute;p dụng cho người d&ugrave;ng (bao gồm cả c&aacute;c học vi&ecirc;n, đối t&aacute;c, affiliate) của AnyClass. Bạn h&atilde;y d&agrave;nh thời gian để đọc kỹ những điều khoản dưới đ&acirc;y để tr&aacute;nh những vấn đề ph&aacute;t sinh trong suốt qu&aacute; tr&igrave;nh hợp t&aacute;c v&agrave; sử dụng dịch vụ của AnyClass.&nbsp;</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"line-height:1.7999999999999998; text-align:justify\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Khi c&aacute;c bạn đ&atilde; tham gia AnyClass ch&uacute;ng t&ocirc;i sẽ mặc định c&aacute;c bạn đ&atilde; xem v&agrave; đồng &yacute; với những điều khoản hoạt động của AnyClass.&nbsp;</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"line-height:1.7999999999999998; text-align:justify\"><strong><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Những bản cập nhật về th&ocirc;ng tin v&agrave; ch&iacute;nh s&aacute;ch của AnyClass sẽ được thay đổi trực tiếp tại trang web n&agrave;y v&agrave; sẽ th&ocirc;ng b&aacute;o những nội dung QUAN TRỌNG đến cho người d&ugrave;ng.</span></span></span></span></span></span></span></strong></p>\r\n\r\n<ul style=\"margin-left: 40px;\">\r\n	<li style=\"list-style-type: disc;\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"><span style=\"line-height:1;\">Kh&aacute;ch h&agrave;ng trả tiền mua kh&oacute;a học một lần v&agrave; được d&ugrave;ng tối thiểu 3 năm hoặc m&atilde;i m&atilde;i t&ugrave;y theo qui định của từng giảng vi&ecirc;n.</span></span></span></span></span></span></span></span></li>\r\n	<li style=\"list-style-type: disc;\"><span style=\"line-height:1;\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hướng dẫn mua h&agrave;ng, phương thức thanh to&aacute;n, c&aacute;ch sử dụng t&agrave;i khoản để học, thảo luận, l&agrave;m b&agrave;i, điều khoản ho&agrave;n trả&hellip;xem mục hướng dẫn (<a href=\"https://anyclass.vn/huong-dan\">https://anyclass.vn/huong-dan</a>).</span></span></span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"list-style-type: disc;\"><strong><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Nghi&ecirc;m cấm sử dụng dịch vụ với c&aacute;c h&agrave;nh vi dưới đ&acirc;y:</span></span></span></span></span></span></span></strong></p>\r\n\r\n<ul style=\"margin-left: 40px;\">\r\n	<li style=\"list-style-type: disc;\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sử dụng bất kỳ c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o để can thiệp v&agrave;o c&aacute;c dịch vụ, kh&oacute;a học trong hệ thống AnyClass</span></span></span></span></span></span></span></li>\r\n	<li style=\"list-style-type: disc;\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Nghi&ecirc;m cấm sử dụng chung t&agrave;i khoản: Nếu AnyClass ph&aacute;t hiện một t&agrave;i khoản sử dụng chung, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối cung cấp dịch vụ t&agrave;i khoản đ&oacute; bằng h&igrave;nh thức x&oacute;a t&agrave;i khoản.&nbsp;</span></span></span></span></span></span></span></li>\r\n	<li style=\"list-style-type: disc;\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Nghi&ecirc;m cấm h&agrave;nh vi x&uacute;c phạm giảng vi&ecirc;n v&agrave; những người học kh&aacute;c bằng bất cứ h&igrave;nh thức n&agrave;o. Những h&agrave;nh vi x&uacute;c phạm bao gồm x&uacute;c phạm về nh&acirc;n phẩm, giới t&iacute;nh, v&ugrave;ng miền, thu nhập, th&acirc;n thế đều l&agrave; h&agrave;nh vi nghi&ecirc;m cấm.</span></span></span></span></span></span></span></li>\r\n	<li style=\"list-style-type: disc;\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Sử dụng những lời lẽ kh&ocirc;ng lịch sự, kh&ocirc;ng đ&uacute;ng với thuần phong mỹ tục Việt Nam.&nbsp;</span></span></span></span></span></span></span><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> </span></span></span></span></span></span></span></li>\r\n	<li style=\"list-style-type: disc;\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">H&agrave;nh vi giả mạo th&ocirc;ng tin người kh&aacute;c ho&agrave;n to&agrave;n bị nghi&ecirc;m cấm.</span></span></span></span></span></span></span></li>\r\n	<li style=\"list-style-type: disc;\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">B&agrave;n luận về c&aacute;c vấn đề ch&iacute;nh trị, kỳ thị t&ocirc;n gi&aacute;o, kỳ thị sắc tộc.</span></span></span></span></span></span></span></li>\r\n	<li style=\"list-style-type: disc;\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">H&agrave;nh vi, th&aacute;i độ l&agrave;m tổn hại đến uy t&iacute;n của c&aacute;c sản phẩm, dịch vụ v&agrave; kho&aacute; học do AnyClass ph&aacute;t h&agrave;nh.&nbsp;</span></span></span></span></span></span></span></li>\r\n	<li style=\"list-style-type: disc;\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">B&aacute;n một phần hay to&agrave;n bộ nội dung kho&aacute; học của AnyClass m&agrave; kh&ocirc;ng c&oacute; cho ph&eacute;p của AnyClass.</span></span></span></span></span></span></span></li>\r\n	<li style=\"list-style-type: disc;\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Mạo danh AnyClass g&acirc;y ảnh hưởng đến uy t&iacute;n của AnyClass, g&acirc;y sự nhầm lẫn cho c&aacute;c học vi&ecirc;n v&agrave; đối t&aacute;c theo bất kỳ phương thức n&agrave;o (d&ugrave;ng địa chỉ email, t&ecirc;n miền website, fanpage c&oacute; logo v&agrave; chữ AnyClass).</span></span></span></span></span></span></span></li>\r\n	<li style=\"list-style-type: disc;\"><span style=\"font-size:14px;\"><span style=\"font-variant: normal; white-space: pre-wrap;\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Khi ph&aacute;t hiện những h&agrave;nh vi tr&ecirc;n từ t&agrave;i khoản của bạn, AnyClass c&oacute; quyền tước bỏ mọi quyền lợi li&ecirc;n quan đối với t&agrave;i khoản (bao gồm việc kh&oacute;a t&agrave;i khoản) hoặc sử dụng những th&ocirc;ng tin m&agrave; bạn cung cấp khi đăng k&yacute; t&agrave;i khoản để chuyển cho cơ quan chức năng giải quyết theo quy định của ph&aacute;p luật.</span></span></span></span></span></span></span></li>\r\n</ul>', 'inactive', NULL, NULL, NULL, 'dieu-khoan-su-dung', 28, '2021-06-14 03:51:21', '2021-08-14 09:47:46', NULL),
(24, 'Chính sách bảo mật', 'nX5K17F43O.jpg', 'https://anyclass.vn/storage/photos/28/Logo Anyclass.png', '<p style=\"text-align:justify; margin-bottom:11px\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Nền tảng ph&acirc;n phối kh&oacute;a học trực tuyến (bao gồm website </span></span><a href=\"http://anyclass.vn\" style=\"color:#0563c1; text-decoration:underline\"><span lang=\"EN-US\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">http://anyclass.vn</span></span></a><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> v&agrave;&nbsp; ứng dụng di động Anyclass) thuộc sở hữu của C&ocirc;ng ty TNHH Anyhow </span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">sau đ&acirc;y gọi l&agrave; </span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">&quot;Ch&uacute;ng t&ocirc;i&quot;). </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ch&uacute;ng t&ocirc;i hiểu rằng ngay từ khi bạn đăng k&yacute; t&agrave;i khoản sử dụng tr&ecirc;n nền tảng của ch&uacute;ng t&ocirc;i, bạn đ&atilde; tin tưởng cung cấp th&ocirc;ng tin v&agrave; ch&uacute;ng t&ocirc;i sẽ nỗ lực hết sức để bảo mật c&aacute;c th&ocirc;ng tin n&agrave;y.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ch&iacute;nh s&aacute;ch Bảo mật </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">n&agrave;y nhằm gi&uacute;p bạn hiểu r&otilde; những th&ocirc;ng tin ch&uacute;ng t&ocirc;i thu thập, l&yacute; do ch&uacute;ng t&ocirc;i thu thập để bạn c&oacute; thể quản l&yacute; v&agrave; kiểm so&aacute;t c&aacute;c th&ocirc;ng tin của m&igrave;nh.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><strong><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">. </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">C&Aacute;C </span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">TH&Ocirc;NG TIN C&Aacute; NH&Acirc;N ĐƯỢC</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">&nbsp;</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">THU THẬP</span></span></span></span></span></strong></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">C&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n của bạn sẽ được thu thập kể từ khi bạn đăng k&yacute; sử dụng dịch vụ bao gồm nhưng kh&ocirc;ng giới hạn bởi c&aacute;c t&igrave;nh huống sau:</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align: justify; margin-bottom: 11px;\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- T&ecirc;n truy cập, địa chỉ email của bạn được thu thập khi bạn đăng k&yacute; sử dụng nền tảng.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align: justify; margin-bottom: 11px;\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- Th&ocirc;ng tin m&agrave; bạn cung cấp trong hồ sơ c&aacute; nh&acirc;n bao gồm:</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> quốc </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">tịch,nơi cư tr&uacute;</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">, ảnh, họ v&agrave; t&ecirc;n,</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> ng&agrave;y sinh, giới th&iacute;ch, sở th&iacute;ch..</span></span> <span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Cung cấp t</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">h&ocirc;ng tin</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> đầy đủ trong</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> hồ sơ</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> sẽ</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> gi&uacute;p bạn tận dụng tối đa </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">d</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">ịch vụ của ch&uacute;ng t&ocirc;i, như</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> ch&uacute;ng t&ocirc;i x&aacute;c định r&otilde; hơn nhu cầu của bạn v&agrave; gửi tới bạn những sản phẩm ph&ugrave; hợp nhất hoặc x&aacute;c định r&otilde; danh t&iacute;nh của bạn trong c&aacute;c trường hợp khiếu nại..</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">. Tuy nhi&ecirc;n, </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">c&aacute;c th&ocirc;ng tin n&agrave;y kh&ocirc;ng bắt buộc phải khai b&aacute;o, bạn c&oacute; thể để trống nếu kh&ocirc;ng c&oacute; nhu cầu.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- T</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">h&ocirc;ng tin </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">li&ecirc;n quan tới ng&acirc;n h&agrave;ng thanh to&aacute;n, th&ocirc;ng tin thẻ, th&ocirc;ng tin về t&agrave;i khoản của bạn tr&ecirc;n c&aacute;c cổng thanh to&aacute;n, v&iacute; thanh to&aacute;n hay c&aacute;c phương thức thanh to&aacute;n&nbsp; kh&aacute;c &hellip;do bạn cung cấp để tiến h&agrave;nh thanh to&aacute;n khi mua h&agrave;ng.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- Th&ocirc;ng tin địa chỉ nhận h&agrave;ng, số điện thoại người nhận khi bạn mua học cụ, học liệu phục vụ kho&aacute; học.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- Khi bạn truy cập hoặc sử dụng Dịch vụ của ch&uacute;ng t&ocirc;i, </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">c</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">h&uacute;ng t&ocirc;i </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">sẽ c&oacute; </span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">dữ liệu</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> tổng hợp về nội dung người d&ugrave;ng sử dụng.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- Khi bạn truy cập nền tảng từ c&aacute;c thiết bị kh&aacute;c nhau, ch&uacute;ng t&ocirc;i sẽ thu thập được th&ocirc;ng tin về </span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">địa chỉ giao thức Internet (&quot;IP&quot;)</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> từ thiết bị m&agrave; bạn truy cập</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- Khi bạn sử dụng c&aacute;c phương thức đăng nhập th&ocirc;ng qua c&aacute;c nền tảng kh&aacute;c như Facebook, Google, Zalo, ch&uacute;ng t&ocirc;i cũng sẽ nhận được c&aacute;c th&ocirc;ng tin của bạn li&ecirc;n quan tới c&aacute;c nền tảng n&agrave;y. </span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><strong><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">. </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">L&Yacute; DO THU THẬP TH&Ocirc;NG TIN C&Aacute; NH&Acirc;N</span></span></span></span></span></strong></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><strong><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- Cung cấp dịch vụ</span></span></span></span></span></strong></p>\r\n\r\n<p style=\"text-align: justify; margin-bottom: 11px;\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ch&uacute;ng t&ocirc;i sử dụng th&ocirc;ng tin của bạn để </span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">x&aacute;c định</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> danh t&iacute;nh của</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> bạn v&agrave; cấp quyền truy cập</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> v&agrave;o c&aacute;c nền tảng. Th&ocirc;ng tin c&aacute; nh&acirc;n của bạn sẽ được lưu trữ để&nbsp;thuận tiện hơn trong qu&aacute; tr&igrave;nh thực thi c&aacute;c điều khoản dịch vụ v&agrave; quản l&yacute; việc bạn sử dụng c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i&nbsp;như lưu trữ th&ocirc;ng tin để giao h&agrave;ng, th&ocirc;ng tin về qu&aacute; tr&igrave;nh học tập của bạn.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align: justify; margin-bottom: 11px;\"><strong><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- Duy tr&igrave; v&agrave; cải thiện dịch vụ</span></span></span></span></span></strong></p>\r\n\r\n<p style=\"text-align: justify; margin-bottom: 11px;\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ch&uacute;ng t&ocirc;i sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n của bạn để đảm bảo c&aacute;c hoạt động cung cấp dịch vụ của ch&uacute;ng t&ocirc;i được tiến h&agrave;nh đ&uacute;ng như cam kết, kiểm tra, khắc phục c&aacute;c sự cố m&agrave; bạn gặp phải hay hỗ trợ bạn khi bạn gặp sự cố kh&ocirc;ng xem được b&agrave;i giảng, kiểm tra địa chỉ của bạn để cải thiện dịch vụ giao h&agrave;ng,&hellip;</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align: justify; margin-bottom: 11px;\"><strong><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- Ph&aacute;t triển dịch vụ mới </span></span></span></span></span></strong></p>\r\n\r\n<p style=\"text-align: justify; margin-bottom: 11px;\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ch&uacute;ng t&ocirc;i thu thập</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> th&ocirc;ng tin c&aacute; nh&acirc;n li&ecirc;n quan đến việc mua h&agrave;ng, </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">th&oacute;i quen</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> v&agrave; sở th&iacute;ch của bạn </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">để </span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">ph&acirc;n t&iacute;ch, </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">thống k&ecirc;, nhằm đ&aacute;nh gi&aacute; xu hướng ti&ecirc;u d&ugrave;ng,</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> chất lượng</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> dịch vụ để ph&aacute;t triển sản phẩm mới tốt hơn v&agrave; cải thiện chất lượng sản phẩm, dịch vụ tốt hơn.</span></span> </span></span></span></p>\r\n\r\n<p style=\"text-align: justify; margin-bottom: 11px;\"><strong><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- Cung cấp c&aacute;c dịch vụ được c&aacute; nh&acirc;n h&oacute;a</span></span></span></span></span></strong></p>\r\n\r\n<p style=\"text-align: justify; margin-bottom: 11px;\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">C&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n của bạn gi&uacute;p ch&uacute;ng t&ocirc;i cung cấp cho bạn c&aacute;c th&ocirc;ng tin về sản phẩm mới m&agrave; ch&uacute;ng t&ocirc;i cho rằng c&oacute; thể bạn quan t&acirc;m hoặc ph&ugrave; hợp với bạn.Bạn c&oacute; thể hủy đăng k&yacute; nhận c&aacute;c th&ocirc;ng tin n&agrave;y bất cứ l&uacute;c n&agrave;o.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align: justify; margin-bottom: 11px;\"><strong><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- Bảo vệ người d&ugrave;ng, bảo vệ Anyclass</span></span></span></span></span></strong></p>\r\n\r\n<p style=\"text-align: justify; margin-bottom: 11px;\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ch&uacute;ng t&ocirc;i lưu trữ th&ocirc;ng tin c&aacute; nh&acirc;n của bạn để nhận dạng, x&aacute;c minh danh t&iacute;nh c&aacute;c lần truy cập tiếp theo v&agrave; th&ocirc;ng b&aacute;o/y&ecirc;u cầu x&aacute;c minh/bảo vệ t&agrave;i khoản của bạn trong trường hợp ch&uacute;ng t&ocirc;i nhận thấy nghi ngờ c&oacute; người kh&aacute;c sử dụng th&ocirc;ng tin của bạn để truy cập v&agrave;o t&agrave;i khoản của bạn như: sử dụng sai mật khẩu nhiều lần, truy cập c&ugrave;ng l&uacute;c từ c&aacute;c thiết bị hay địa điểm kh&aacute;c nhau, &hellip;</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align: justify; margin-bottom: 11px;\"><strong><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- Li&ecirc;n hệ với bạn</span></span></span></span></span></strong></p>\r\n\r\n<p style=\"text-align: justify; margin-bottom: 11px;\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ch&uacute;ng t&ocirc;i sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n để l</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">i&ecirc;n hệ với bạn qua email</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">, điện thoại, tin nhắn văn bản hay qua nền tảng kh&aacute;c</span></span> <span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">để trả lời thắc mắc, khiếu nại hay c&aacute;c y&ecirc;u cầu hỗ trợ của bạn. </span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><strong><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">. KHOẢNG THỜI GIAN LƯU</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> GIỮ TH&Ocirc;NG TIN</span></span> </span></span></span></strong></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ch&uacute;ng t&ocirc;i sẽ lưu giữ </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">th&ocirc;ng tin</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> c&aacute; nh&acirc;n của bạn </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">trong thời gian t&agrave;i khoản c&aacute; nh&acirc;n của bạn tr&ecirc;n nền tảng c&ograve;n hoạt động. Một số th&ocirc;ng tin sẽ được giữ lại phục vụ cho c&aacute;c mục đ&iacute;ch ph&aacute;p l&yacute; hoặc kinh doanh hơp ph&aacute;p hoặc để giải quyết c&aacute;c khiếu nại</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><strong><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">. </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">BẢO MẬT TH&Ocirc;NG TIN</span></span></span></span></span></strong></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ch&uacute;ng t&ocirc;i kh&ocirc;ng b&aacute;n, trao đổi, sử dụng c&aacute;c h&igrave;nh thức thương mại li&ecirc;n quan tới th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Th&ocirc;ng tin c&aacute; nh&acirc;n của bạn chỉ được ph&eacute;p sử dụng bởi b&ecirc;n thứ ba trong c&aacute;c trường hợp sau:</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- Trường hợp Anyclass thực hiện c</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">huyển giao</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">, s&aacute;t nhập với/bởi tổ chức kh&aacute;c: ch&uacute;ng t&ocirc;i sẽ c&oacute; th&ocirc;ng b&aacute;o cho người d&ugrave;ng v&agrave; đơn vị chuyển giao, s&aacute;t nhập cam kết tu&acirc;n thủ ch&iacute;nh s&aacute;ch bảo mật như đ&atilde; tuy&ecirc;n bố tr&ecirc;n nền tảng n&agrave;y.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- C&aacute;c nh&acirc;n vi&ecirc;n, những người c&oacute; tr&aacute;ch nhiệm trong tổ chức của Anyclass cần phải truy cập v&agrave;o th&ocirc;ng tin c&aacute; nh&acirc;n để xử l&yacute; v&agrave; cung cấp sản phẩm, dịch vụ.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- B&ecirc;n thứ ba l&agrave; đại diện hoặc đơn vị </span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">cung cấp dịch</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> vụ thực hiện việc quản l&yacute; hoạt động của nền tảng hay thực hiện cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">. V&iacute; dụ: ch&uacute;ng t&ocirc;i k&yacute; hợp đồng với</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> ng&acirc;n h&agrave;ng, c&aacute;c đơn vị chuyển ph&aacute;t&hellip;, đ&acirc;y l&agrave; b&ecirc;n thứ ba cần phải c&oacute; một số th&ocirc;ng tin c&aacute; nh&acirc;n nhất định để thực hiện dịch vụ của m&igrave;nh như: t&ecirc;n, số điện thoại, địa chỉ giao h&agrave;ng, t&ecirc;n sản phẩm,..để thực hiện giao h&agrave;ng; m&atilde; đơn h&agrave;ng, ng&acirc;n h&agrave;ng chuyển tiền, số tiền chuyển,&hellip;để tra so&aacute;t v&agrave; giải quyết khiếu nại.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px;\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">- C&aacute;c cơ quan chức năng thực hiện theo chỉ thị của cơ quan c&oacute; thẩm quyền.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><strong><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5. COOKIE</span></span></span></span></span></strong></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"line-height:1;\"><span style=\"font-size:12pt\"><span style=\"vertical-align:baseline\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Cookies l&agrave; một lượng nhỏ dữ liệu&nbsp;được gửi tới tr&igrave;nh duyệt của bạn từ một trang web v&agrave; được lưu trữ tr&ecirc;n ổ đĩa cứng của m&aacute;y t&iacute;nh. Cookies cho ph&eacute;p trang web hoặc hệ thống của c&aacute;c b&ecirc;n cung cấp dịch vụ nhận diện tr&igrave;nh duyệt của bạn v&agrave; lưu lại một số th&ocirc;ng tin nhất định. Ch&uacute;ng t&ocirc;i d&ugrave;ng cookies để hiểu v&agrave; lưu trữ hoạt động của bạn v&agrave; đ&aacute;p ứng c&aacute;c nhu cầu của bạn tốt hơn cho lần truy cập sau.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"line-height:1;\"><span style=\"font-size:12pt\"><span style=\"vertical-align:baseline\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Bạn c&oacute; thể từ chối sử dụng cookie bằng c&aacute;ch chọn c&aacute;c thiết lập th&iacute;ch hợp tr&ecirc;n tr&igrave;nh duyệt của bạn. </span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin-bottom:11px\"><span style=\"line-height:1;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">*** Nếu bạn c&oacute; bất kỳ thắc mắc, h&atilde;y li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua địa chỉ email: Anyhow</span></span><span lang=\"VI\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">@</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">anyhow.com</span></span></span></span></span></p>', 'inactive', NULL, NULL, NULL, 'chinh-sach-bao-mat', 28, '2021-06-14 03:51:34', '2021-08-14 09:47:27', NULL),
(25, 'Chương trình đối tác', 'uPuKEzOmP1.jpg', 'https://anyclass.vn/storage/photos/1/2QVUwq1YgD.jpg', '<p>Page&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://anyclass.vn/page/gioi-thieu#\">Chương tr&igrave;nh đối t&aacute;c</a></li>\r\n</ul>', 'inactive', NULL, NULL, NULL, 'chuong-trinh-doi-tac', 1, '2021-06-14 03:51:45', '2021-07-25 21:11:01', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `partner`
--

INSERT INTO `partner` (`id`, `name`, `description`, `picture`, `status`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(17, 'Thanh Phong', 'Mô tả ngắn', '6cz3t2ZDzu.jpg', 'active', NULL, '2021-03-22 08:48:43', '2021-03-22 08:48:43', NULL),
(18, 'Bùi Quang Linh', 'asdsd', '8McEiAxgd2.jpg', 'active', NULL, '2021-05-11 07:30:33', '2021-05-11 07:30:33', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_related_post`
--

CREATE TABLE `post_related_post` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `related_post_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_related_post`
--

INSERT INTO `post_related_post` (`id`, `post_id`, `related_post_id`, `created_at`, `update_at`) VALUES
(4, 66, 63, NULL, NULL),
(5, 66, 50, NULL, NULL),
(6, 65, 64, NULL, NULL),
(7, 64, 65, NULL, NULL),
(8, 64, 47, NULL, NULL),
(9, 63, 66, NULL, NULL),
(10, 63, 50, NULL, NULL),
(11, 62, 61, NULL, NULL),
(12, 62, 60, NULL, NULL),
(13, 62, 53, NULL, NULL),
(14, 61, 61, NULL, NULL),
(15, 58, 60, NULL, NULL),
(16, 57, 57, NULL, NULL),
(17, 56, 56, NULL, NULL),
(18, 55, 55, NULL, NULL),
(19, 54, 54, NULL, NULL),
(20, 58, 58, NULL, NULL),
(21, 58, 55, NULL, NULL),
(22, 57, 60, NULL, NULL),
(23, 57, 58, NULL, NULL),
(24, 57, 55, NULL, NULL),
(25, 56, 61, NULL, NULL),
(26, 56, 59, NULL, NULL),
(27, 56, 58, NULL, NULL),
(28, 54, 59, NULL, NULL),
(29, 53, 60, NULL, NULL),
(30, 53, 58, NULL, NULL),
(31, 53, 56, NULL, NULL),
(32, 52, 52, NULL, NULL),
(36, 42, 43, NULL, NULL),
(37, 42, 42, NULL, NULL),
(38, 44, 63, NULL, NULL),
(39, 44, 50, NULL, NULL),
(40, 81, 63, NULL, NULL),
(41, 81, 43, NULL, NULL),
(42, 82, 71, NULL, NULL),
(43, 82, 70, NULL, NULL),
(44, 82, 69, NULL, NULL),
(45, 83, 82, NULL, NULL),
(46, 83, 70, NULL, NULL),
(47, 83, 69, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `order_no` int(11) DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `name_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ko` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_ko` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `content`, `picture`, `url_picture`, `status`, `order_no`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `created_by`, `created_at`, `updated_at`, `updated_by`, `name_ko`, `description_ko`, `content_ko`, `meta_title_ko`, `meta_keywords_ko`, `meta_description_ko`) VALUES
(32, 'Phấn không bụi', NULL, NULL, NULL, 'https://dako-int.com/storage/photos/1/Phấn không bụi.jpg', 'active', 1, 'phan-khong-bui', NULL, NULL, NULL, 1, '2021-11-13 06:25:26', '2021-12-05 14:36:53', 1, '비 먼지 분필', NULL, NULL, NULL, NULL, NULL),
(33, 'Bảng chống lóa', NULL, NULL, NULL, 'https://dako-int.com/storage/photos/1/Bảng chống lóa 01.jpg', 'active', 2, 'bang-chong-loa', NULL, NULL, NULL, 1, '2021-11-13 06:25:36', '2021-12-05 14:22:21', 1, '칠판', NULL, NULL, NULL, NULL, NULL),
(34, 'Bao bì giấy', NULL, NULL, NULL, 'https://dako-int.com/storage/photos/1/Bao bì 02.jpg', 'active', 3, 'bao-bi-giay', NULL, NULL, NULL, 1, '2021-11-19 17:58:53', '2021-12-05 16:53:26', 1, '박스', '박스', NULL, NULL, NULL, NULL),
(35, 'Thực phẩm bổ dưỡng', NULL, NULL, NULL, 'https://dako-int.com/storage/photos/1/Bổ gan.JPG', 'active', 4, 'thuc-pham-bo-duong', NULL, NULL, NULL, 1, '2021-11-19 17:59:06', '2021-12-05 14:20:43', 1, '건강식품', NULL, NULL, NULL, NULL, NULL),
(36, 'Cửa chống cháy', NULL, NULL, NULL, 'https://dako-int.com/storage/photos/1/_97A0513.jpg', 'active', 5, 'cua-chong-chay', NULL, NULL, NULL, 1, '2021-11-19 18:00:11', '2021-12-05 14:20:33', 1, '방화문', NULL, NULL, NULL, NULL, NULL),
(37, 'Du thuyền', NULL, NULL, NULL, 'https://dako-int.com/storage/photos/1/Du thuyền 01.jpg', 'active', 6, 'du-thuyen', NULL, NULL, NULL, 1, '2021-11-19 18:55:23', '2021-12-05 14:20:20', 1, '요트', NULL, NULL, NULL, NULL, NULL),
(38, 'Pin Lithium', NULL, NULL, NULL, 'https://dako-int.com/storage/photos/1/Lithium 1.jpg', 'active', 7, 'pin-lithium', NULL, NULL, NULL, 1, '2021-11-19 19:00:11', '2021-12-06 19:18:15', 1, '리튬 배터리', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_compo`
--

CREATE TABLE `product_compo` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `compo_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_compo`
--

INSERT INTO `product_compo` (`id`, `product_id`, `compo_id`, `quantity`, `created_by`, `updated_by`) VALUES
(4, 20, 4, 1, NULL, NULL),
(5, 21, 5, 2, NULL, NULL),
(6, 21, 4, 1, NULL, NULL),
(9, 28, 15, 2, NULL, NULL),
(10, 29, 16, 0, NULL, NULL),
(12, 29, 17, 0, NULL, NULL),
(13, 28, 17, 0, NULL, NULL),
(14, 29, 18, 2, NULL, NULL),
(15, 28, 18, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_products`
--

CREATE TABLE `product_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_base` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_final` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `weight` float DEFAULT 0,
  `warehouse_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `name_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description_ko` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ko` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_ko` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_products`
--

INSERT INTO `product_products` (`id`, `name`, `price_base`, `price_final`, `short_description`, `description`, `content`, `order_no`, `picture`, `url_picture`, `gallery`, `status`, `type`, `category_id`, `weight`, `warehouse_id`, `quantity`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `created_by`, `created_at`, `updated_at`, `updated_by`, `name_ko`, `short_description_ko`, `description_ko`, `content_ko`, `meta_keywords_ko`, `meta_description_ko`, `meta_title_ko`) VALUES
(103, 'Sản phẩm của chúng tôi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"https:\\/\\/alligayacht.com\\/storage\\/photos\\/1\\/\\u1ea3nh s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i (2).jpg\",\"https:\\/\\/alligayacht.com\\/storage\\/photos\\/1\\/MDUC9098 (1).jpg\",\"https:\\/\\/alligayacht.com\\/storage\\/photos\\/1\\/Untitled_2.6.3.png\",\"https:\\/\\/alligayacht.com\\/storage\\/photos\\/1\\/\\u1ea3nh s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i (1).png\"]', 'active', NULL, NULL, 0, NULL, 0, 'san-pham-cua-chung-toi', NULL, NULL, NULL, 1, '2021-12-08 16:18:32', '2022-01-24 08:59:35', 1, 'Our products', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_products_tags`
--

CREATE TABLE `product_products_tags` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_products_tags`
--

INSERT INTO `product_products_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`, `updated_by`) VALUES
(3, 30, 20, NULL, NULL, NULL),
(5, 31, 20, NULL, NULL, NULL),
(6, 32, 20, NULL, NULL, NULL),
(7, 33, 20, NULL, NULL, NULL),
(8, 34, 20, NULL, NULL, NULL),
(9, 35, 20, NULL, NULL, NULL),
(10, 36, 20, NULL, NULL, NULL),
(11, 37, 21, NULL, NULL, NULL),
(13, 44, 20, NULL, NULL, NULL),
(14, 48, 21, NULL, NULL, NULL),
(15, 49, 20, NULL, NULL, NULL),
(16, 51, 21, NULL, NULL, NULL),
(17, 53, 21, NULL, NULL, NULL),
(18, 55, 21, NULL, NULL, NULL),
(19, 62, 22, NULL, NULL, NULL),
(20, 63, 23, NULL, NULL, NULL),
(21, 64, 23, NULL, NULL, NULL),
(22, 65, 23, NULL, NULL, NULL),
(23, 66, 23, NULL, NULL, NULL),
(24, 67, 23, NULL, NULL, NULL),
(25, 72, 24, NULL, NULL, NULL),
(26, 72, 23, NULL, NULL, NULL),
(27, 74, 23, NULL, NULL, NULL),
(28, 75, 28, NULL, NULL, NULL),
(29, 75, 23, NULL, NULL, NULL),
(30, 76, 23, NULL, NULL, NULL),
(31, 78, 35, NULL, NULL, NULL),
(32, 78, 23, NULL, NULL, NULL),
(33, 81, 23, NULL, NULL, NULL),
(34, 82, 30, NULL, NULL, NULL),
(35, 83, 30, NULL, NULL, NULL),
(36, 85, 28, NULL, NULL, NULL),
(37, 88, 34, NULL, NULL, NULL),
(38, 88, 28, NULL, NULL, NULL),
(39, 90, 28, NULL, NULL, NULL),
(40, 91, 28, NULL, NULL, NULL),
(41, 92, 28, NULL, NULL, NULL),
(42, 93, 37, NULL, NULL, NULL),
(43, 94, 37, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tags`
--

INSERT INTO `product_tags` (`id`, `name`, `content`, `picture`, `url_picture`, `status`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(20, 'Đào Duy Phương', '<p>adsadsa</p>', 'Jf8TG6xh4N.png', 'https://anyclass.vn/storage/photos/1/NyHalF4sts.jpg', 'active', 'dao-duy-phuong', NULL, NULL, NULL, 1, '2021-03-30 22:14:02', '2021-07-25 20:00:00', NULL),
(21, 'new tag', NULL, 'oGipWUotrk.png', 'https://anyclass.vn/storage/photos/1/NyHalF4sts.jpg', 'active', 'new-tag', NULL, NULL, NULL, 1, '2021-06-01 21:52:40', '2021-07-25 19:59:45', NULL),
(22, 'Thảm tập định tuyến TPE 2 lớp  Eco Friendly', NULL, NULL, 'https://anyclass.vn/storage/photos/114/Gym Hoàng Hiếu/z2678338569013_965c76761febe7bfc70de634e3ed5ef6.jpg', 'active', 'tham-tap-dinh-tuyen-tpe-2-lop-eco-friendly', 'Thảm tập định tuyến 2 lớp của Anyclass', 'Thảm tập TPE định tuyến 2 lớp chính hãng, giá rẻ', 'Thảm tập yoga, gym, giá rẻ', 114, '2021-08-17 12:18:53', '2021-08-17 12:18:53', NULL),
(23, 'Makeupcánhân', NULL, NULL, 'https://anyclass.vn/storage/photos/114/Makeup Quân Cá/unnamed.jpg', 'active', 'makeupcanhan', 'Makeup cá nhân', 'Trang điểm cá nhân cho người mới bắt đầu', 'trang điểm giá rẻ', 114, '2021-08-17 12:33:00', '2021-08-17 12:33:00', NULL),
(24, 'Phấn má 3ce cam đào', NULL, NULL, NULL, 'active', 'phan-ma-3ce-cam-dao', NULL, NULL, NULL, 114, '2021-08-17 16:49:35', '2021-08-17 16:49:35', NULL),
(25, 'mascara', NULL, NULL, NULL, 'active', 'mascara', NULL, NULL, NULL, 114, '2021-08-17 17:15:05', '2021-08-17 17:15:05', NULL),
(26, 'chuốt mi', NULL, NULL, NULL, 'active', 'chuot-mi', NULL, NULL, NULL, 114, '2021-08-17 17:15:17', '2021-08-17 17:15:17', NULL),
(28, 'sản phẩm trang điểm mắt', NULL, NULL, NULL, 'active', 'san-pham-trang-diem-mat', NULL, NULL, NULL, 114, '2021-08-17 17:16:06', '2021-08-17 17:16:06', NULL),
(29, 'son', NULL, NULL, NULL, 'active', 'son', NULL, NULL, NULL, 114, '2021-08-17 17:17:06', '2021-08-17 17:17:06', NULL),
(30, 'sản phẩm dưỡng da', NULL, NULL, NULL, 'active', 'san-pham-duong-da', NULL, NULL, NULL, 114, '2021-08-17 17:17:20', '2021-08-17 17:17:20', NULL),
(31, 'lông mi giả', NULL, NULL, NULL, 'active', 'long-mi-gia', NULL, NULL, NULL, 114, '2021-08-17 17:17:37', '2021-08-17 17:17:37', NULL),
(32, 'bút kẻ mắt', NULL, NULL, NULL, 'active', 'but-ke-mat', NULL, NULL, NULL, 114, '2021-08-17 17:17:50', '2021-08-17 17:17:50', NULL),
(33, 'kẻ mắt nước', NULL, NULL, NULL, 'active', 'ke-mat-nuoc', NULL, NULL, NULL, 114, '2021-08-17 17:18:02', '2021-08-17 17:18:02', NULL),
(34, 'kẻ mắt nước', NULL, NULL, NULL, 'active', 'ke-mat-nuoc', NULL, NULL, NULL, 114, '2021-08-17 17:18:02', '2021-08-17 17:18:02', NULL),
(35, 'Highlight', NULL, NULL, NULL, 'active', 'highlight', NULL, NULL, NULL, 114, '2021-08-18 06:17:35', '2021-08-18 06:17:35', NULL),
(36, 'phấn', NULL, NULL, NULL, 'active', 'phan', NULL, NULL, NULL, 114, '2021-08-18 06:17:51', '2021-08-18 06:17:51', NULL),
(37, 'phấn', NULL, NULL, NULL, 'active', 'phan', NULL, NULL, NULL, 114, '2021-08-18 06:17:51', '2021-08-18 06:17:51', NULL),
(38, 'thon gọn mặt', NULL, NULL, NULL, 'active', 'thon-gon-mat', NULL, NULL, NULL, 114, '2021-08-18 06:18:10', '2021-08-18 06:18:10', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qa_answer`
--

CREATE TABLE `qa_answer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qa_question_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `qa_answer`
--

INSERT INTO `qa_answer` (`id`, `name`, `qa_question_id`, `status`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(22, 'câu trả lời 1', 26, 'active', 1, '2021-04-01 01:36:42', '2021-07-08 23:35:58', NULL),
(23, 'Bùi Quang Linh', 26, 'active', 1, '2021-04-01 02:50:05', '2021-07-08 23:36:04', NULL),
(24, 'Bạn có thể đăng kí tại website', 26, 'active', 1, '2021-04-03 19:39:24', '2021-07-08 23:35:14', NULL),
(25, 'Bạn có thể test test', 26, 'active', 1, '2021-06-01 03:26:48', '2021-07-08 23:35:03', NULL),
(26, 'test test', 26, 'active', 1, '2021-06-02 00:57:00', '2021-07-08 23:34:57', NULL),
(27, 'test bai viet', 26, 'active', 1, '2021-06-09 21:47:17', '2021-07-08 23:34:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qa_question`
--

CREATE TABLE `qa_question` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `hidden` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `thuonggap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `qa_question`
--

INSERT INTO `qa_question` (`id`, `name`, `description`, `answer`, `users_id`, `hidden`, `status`, `thuonggap`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(65, 'Tôi đã nhấn nút \"thanh toán\", trên website hiển thị \"thanh toán thành công\", sau đó tôi phải làm gì để bắt đầu học được?', NULL, 'Nếu bạn chọn thanh toán COD, vui lòng thanh toán sau khi nhận hàng.\r\nNếu bạn chọn thanh toán ebanking, vui lòng chuyển khoản tới tài khoản của Anyclass. Trong vòng 24h sau khi nhận được thông báo của ngân hàng, chúng tôi sẽ kích hoạt tài khoản để bạn có thể vào website và bắt đầu học.\r\nTài khoản thanh toán của Anyclass:\r\n1. STK: 86669898 tại Ngân hàng TMCP Á Châu (ACB)\r\nChủ tài khoản: Công ty TNHH Anyclass.\r\n2. SKT 19133996622666 tại Ngân hàng TMCP kỹ thương Việt Nam (TECHCOMBANK)\r\nChủ tài khoản: Công ty TNHH Anyclass', 109, '0', 'active', 'yes', 28, '2021-07-19 01:38:54', '2021-07-26 19:09:02', NULL),
(66, 'đâsdasd', NULL, 'ádasdsa', 28, '1', 'active', 'no', 1, '2021-07-26 19:10:21', '2021-08-04 11:13:00', NULL),
(67, 'đâsdasd', NULL, NULL, 28, '1', 'inactive', 'no', NULL, '2021-07-26 19:10:22', '2021-07-26 19:10:22', NULL),
(68, 'Tại sao tôi mua khóa học nhưng không thanh toán được?', NULL, 'Bạn vui lòng chọn hình thức thanh toán. Sau khi bạn hoàn thành thanh toán theo hình thức COD hoặc ebanking, tài khoản của bạn sẽ được kích hoạt trong vòng 24h và bạn có thể bắt đầu học ngay sau đó.', 124, '1', 'active', 'yes', 28, '2021-07-29 20:54:58', '2021-08-12 08:01:03', NULL),
(70, 'âsdasd', NULL, NULL, 28, '0', 'inactive', 'no', NULL, '2021-08-01 00:15:29', '2021-08-01 00:15:29', NULL),
(71, 'TẠI SAO TÔI KHÔNG TẠO ĐƯỢC TÀI KHOẢN', NULL, 'Bạn vui lòng nói rõ hơn để Ad có thể tư vấn chính xác nhé.', 112, '1', 'active', 'no', 28, '2021-08-03 02:05:10', '2021-08-12 10:29:03', NULL),
(72, 'Xin chao', NULL, NULL, 1, '0', 'inactive', 'no', 1, '2021-08-04 11:13:58', '2021-08-04 11:14:34', NULL),
(73, 'sao tôi không thấy nội dung câu hỏi thường gặp', NULL, 'Câu hỏi thường gặp đã được upload trên website. Có thể lúc bạn vào xem thì mạng bị lỗi nên không thể load được trang thông tin này. Bạn vui lòng tải lại trang và kiểm tra nhé.', 112, '0', 'active', 'no', 28, '2021-08-11 04:01:03', '2021-08-12 07:59:33', NULL),
(74, 'Anyclass là gì?', NULL, 'Anyclass là nền tảng phân phối các bài giảng thông qua video được quay dựng sẵn.\r\nCác nền tảng mà Anyclass đang sử dụng bao gồm: \r\nWebsite: Anyclass.vn\r\nỨng dụng trên điện thoại di động: Anyclass', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:43:49', '2021-08-11 04:43:49', NULL),
(75, 'Tôi sẽ nhận được gì sau khi học xong? Tôi có được cấp chứng chỉ hay không?', NULL, 'Tùy vào việc bạn học khóa học nào, nội dung nào và học như thế nào. Nếu bạn hoàn thành việc học toàn bộ giáo trình, làm đúng theo các chỉ dẫn và với sự hỗ trợ của giảng viên, các bạn có thế làm ra sản phẩm sau khi học khóa học đó, và thậm chí đưa sản phẩm vào kinh doanh, kiếm tiền.\r\nChúng tôi không cấp chứng chỉ hoàn thành khóa học, bởi chúng tôi nghĩ chứng chỉ đó ko quan trọng bằng việc bạn thực sự thu được gì sau khi học.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:45:50', '2021-08-11 04:45:50', NULL),
(76, 'Sau khi mua khóa học, tôi sẽ được học trong bao lâu?', NULL, 'Tùy vào tính chất, đặc điểm từng khóa học, thời gian sử dụng khóa học sẽ là khác nhau. Tuy nhiên thời gian tối thiểu là 03 năm. Qua nghiên cứu khảo sát, chúng tôi nhận thấy rằng nếu khóa học không có giới hạn, các bạn sẽ không có sự phấn đấu để hoàn thành khóa học và sẽ không thu được kết quả như mong đợi. Mặt khác, sau một khoảng thời gian nhất định, các kiến thức và hướng dẫn trong khóa học có thể lỗi thời, bạn nên cập nhật những kiến thức và hướng dẫn mới hơn, phù hợp với thời đại.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:46:24', '2021-08-11 04:46:24', NULL),
(77, 'Có rất nhiều kênh website miễn phí cung cấp kiến thức và hướng dẫn thực hành...như YouTube, facebook. Tại sao tôi chọn mua video từ Anyclass?', NULL, 'Bạn có tin rằng những gì miễn phí đều tốt cả?\r\nMặc dù bạn không phải trả tiền để học từ các nền tảng miễn phí nhưng bạn sẽ phải trả chi phí bằng thời gian và trải nghiệm của bạn. Chi phí cho thời gian tìm, chọn lọc, hệ thống lại kiến thức,…thậm chí để xem các video quảng cáo; chi phí cho trải nghiệm của bạn như học rồi thử làm không có kết quả lại tìm-học-thử-kiểm tra kết quả nữa và, bạn chỉ có một mình trên con đường học và hành này.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:47:14', '2021-08-11 04:47:14', NULL),
(78, 'Học từ Anyclass còn có gì hơn so với học từ các nền tảng miễn phí khác?', NULL, 'Tất cả giảng viên của chúng tôi đều là những người có thâm niên tối thiểu 5 năm trong nghề, những gì họ chia sẻ là những gì học đã học, đã trải nghiệm thực tế, được đúc kết từ kinh nghiệm của họ thành những kiến thức quý báu và có giá trị nhất để chia sẻ với bạn. \r\nKhông những thế, trong quá trình học, giáo viên sẽ đồng hành vơi bạn, tư vấn cho bạn, thậm chí kiểm tra kết quả thực hành của bạn để giúp bạn đạt hiệu quả cao nhất sau khi học xong.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:47:43', '2021-08-11 04:47:43', NULL),
(79, 'Có rất nhiều nền tảng cung cấp khóa học như Anyclass rồi, tại sao tôi lại nên chọn Anyclass?', NULL, 'Vì chúng tôi sẽ mang lại hiệu quả tốt nhất đối với cùng mức chi phí bạn bỏ ra để mua khóa học.\r\nHọc cụ đi kèm để bạn thực hành, tài liệu hướng dẫn và luyện tập, giảng viên đồng hành, các chương trình online và offline giải đáp thắc mắc của học viên, kết nối các học viên có chung sở thích để tạo cộng đồng giúp đỡ nhau…là những khác biệt mà bạn sẽ được trải nghiệm khi học các khóa học do Anyclass cung cấp.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:48:23', '2021-08-11 04:48:23', NULL),
(80, 'Tôi có thế tải video xuống máy tính để xem không?', NULL, 'Không. Để bảo vệ quyền tác giả của các bài giảng, bạn chỉ có thể học trực tiếp khóa học từ website hoặc ứng dụng trên điện thoại di động.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:48:47', '2021-08-11 04:48:47', NULL),
(81, 'Nếu tôi cần trợ giúp và hỗ trợ từ Anyclass, tôi phải làm như nào?', NULL, 'Liên hệ trực tiếp với Anyclass qua số điện thoại: 0981333790.\r\nLiên hệ trực tiếp với Anyclass qua email: anyhow@anyhow.vn.\r\nĐể lại lời nhắn trên website, fanpage: Anyclass.\r\nNhắn tin trong mục “Thảo luận” trong phần bài học.\r\nNhắn tin cho bạn học và giảng viên trong các group riêng của giảng viên.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:49:20', '2021-08-11 04:49:20', NULL),
(82, 'Cách đăng ký tài khoản trong nền tảng của Anyclass?', NULL, 'Đầu tiên bạn hãy click vào biểu tượng hình người ở góc phải màn hình nhé.\r\nChọn tạo tài khoản ngay\r\nCách 1:\r\nĐiền thông tin tên tài khoản, địa chỉ email, mật khẩu.\r\nBấm vào “đăng ký”\r\nAnyclass sẽ gửi email xác nhận cho bạn, bạn vui long click vào đường link trong email để xác nhận tài khoản.\r\nCách 2:\r\nBạn có thể bấm vào Facebook/Google/Zalo để chúng tôi kết nối với bạn nhé.\r\nKhi tôi quên mật khẩu, phải làm sao?\r\n-Đầu tiên bạn hãy click vào biểu tượng hình người ở góc phải màn hình nhé.\r\n- Chọn quên mật khẩu.\r\n- Điền thông tin địa chỉ email của bạn. \r\n- Bấm vào “Gửi liên kết”\r\n- Vào email và kiểm tra thư gửi từ Anyclass, bấm vào đường link chúng tôi gửi bạn, sau đó bạn hãy đổi mật khẩu mới nhé.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:51:36', '2021-08-11 04:51:36', NULL),
(83, 'Tôi muốn kiểm tra tình trạng giao hàng, tìm khóa học, xem lại các câu hỏi, sửa thông tin cá nhân thì làm thế nào?', NULL, 'Bạn hãy đăng nhập trước nhé.\r\nHãy click vào biểu tượng hình người ở góc phải màn hình sau khi đăng nhập để vào trang cá nhân của bạn.\r\nChọn thông tin bạn muốn hiển thị.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:52:16', '2021-08-11 04:52:16', NULL),
(84, 'Hình thức thanh toán?', NULL, 'Hiện nay chúng tôi đang có hai hình thức thanh toán COD và thanh toán bằng ebanking. Sớm thôi chúng tôi sẽ bổ sung các hình thức thanh toán qua cổng thanh toán và ví thanh toán để đem đến sự thuận tiện hơn cho bạn.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:52:45', '2021-08-11 04:52:45', NULL),
(85, 'Tôi có thể dùng tài khoản của tôi để đăng nhập trên các thiết bị khác nhau, ở các nơi khác nhau để học không?', NULL, 'Có. Tuy nhiên nếu tài khoản của bạn được đăng nhập trên nhiều hơn 3 thiết bị và từ các địa điểm khác nhau, và đặc biệt là nếu được đăng nhập cùng một lúc từ các IP khác nhau, nền tảng của chúng tôi sẽ kích hoạt ngay hệ thống bảo vệ tài khoản của bạn vì nghi ngờ tài khoản của bạn bị người khác sử dụng. Vậy nên chúng tôi khuyến khích bạn hãy cố định các địa chỉ IP sử dụng tài khoản để đảm bảo an toàn thông tin cá nhân cho bạn nhé.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:53:24', '2021-08-11 04:53:24', NULL),
(86, 'Làm sao để tôi mua được khóa học?', NULL, 'Bạn hãy chọn khóa học bạn yêu thích nhé. Chúng tôi có nhiều combo cho từng khóa học, hãy chọn Combo mà bạn thích.\r\nBấm vào nút “Mua ngay”.\r\nBấm vào nút “Đi đến giỏ hàng”\r\nKiểm tra thông tin và bấm vào nút “Thanh toán”\r\nNhớ là bạn phải “Đăng nhập” nhé. Nếu bạn đã “Đăng nhập” rồi, bạn có thể bỏ qua bước này.\r\nĐiền thông tin ở mục “Địa chỉ giao hàng”. Nếu bạn đã có “Địa chỉ giao hàng” bạn có thể đổi chọn địa chỉ giao hàng khác, nếu không, bạn hãy bỏ qua bước này.\r\nChọn phương thức thanh toán và làm theo hướng dẫn từng bước nhé.\r\nNếu bạn có coupon giảm giá, hãy nhập mã giảm giá, bấm nút “đồng ý” ở mục “Bạn có mã giảm giá”. Nếu bạn có nhiều mã giảm giá hãy chọn mã bạn muốn sử dụng ở mục “Coupon” của bạn.\r\nNhớ kiểm tra phí vận chuyển nhé.\r\nBám nút “Tiến hành thanh toán”.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:55:22', '2021-08-11 04:55:22', NULL),
(87, 'Tôi muốn mua thêm học cụ thì làm thế nào?', NULL, 'Trên trang chủ của Anyclass, bạn hãy vào phần “Cửa hàng”.\r\nCác học cụ sẽ được sắp xếp theo từng nhóm khóa học. Bạn có thể chọn theo nhóm khóa học để dễ dàng vào tìm học cụ mình cần.\r\nNhớ đọc thông tin mô tả sản phẩm nhé.\r\nBấm nút “mua ngay”\r\nCác bước tiếp theo tương tự như khi bạn mua khóa học.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:55:47', '2021-08-11 04:55:47', NULL),
(88, 'Tôi nhận được coupon, dùng thế nào?', NULL, 'Chúng tôi có hai loại coupon:\r\nCoupon áp dụng riêng cho khóa học nhất định.\r\nCoupon áp dụng chung cho tất cả khóa học.\r\nKhi bạn thanh toán, ở phần “mã giảm giá”, hãy nhập chính xác số seri trên coupon của bạn, hệ thống sẽ đối chiếu với số coupon đăng ký, nếu khớp nhau, số tiền được giảm sẽ được trừ ngay vào số tiền bạn phải thanh toán cho đơn hàng.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:56:22', '2021-08-11 04:56:22', NULL),
(89, 'Đã thanh toán nhưng không xem được bài giảng.?', NULL, 'Trước tiên, chúng tôi rất xin lỗi nếu sự cố này xảy ra.\r\nBạn vui lòng liên hệ lại với Anyclass đồng thời gửi cho chúng tôi các thông tin sau:\r\nChụp hình ảnh thanh toán thành công.\r\nCung cấp thông tin đơn hàng của bạn\r\nCung cấp thông tin cá nhân (tài khoản đăng ký trên Anyclass) của bạn.\r\nChúng tôi sẽ nhanh chóng kiểm tra, xử lý sự cố và thông báo lại cho bạn.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:56:51', '2021-08-11 04:56:51', NULL),
(90, 'Khi thanh toán COD, làm thế nào bắt đầu học được?', NULL, 'Trong vòng 24h sau khi bạn thanh toán thành công, chúng tôi sẽ gửi email cho bạn. Bạn vui lòng click vào đường link mà chúng tôi gửi để kích hoạt tài khoản. Ngay sau khi Admin nhận được thông tin, bạn có thể bắt đầu học ngay.', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:57:15', '2021-08-11 04:57:15', NULL),
(91, 'Làm thế nào để huỷ đơn?', NULL, 'Bạn hãy gửi email cho chúng tôi về yêu cầu của bạn nhé. Trong đó bạn vui lòng cung cấp các thông tin đầy đủ như sau:\r\nTên tài khoản\r\nEmail\r\nSố điện thoại liên hệ\r\nMã đơn hàng\r\nTên sản phẩm\r\nNgày mua hàng\r\nLý do hủy đơn (chúng tôi rất cảm ơn nếu bạn cho biết lý do hủy đơn để chúng tôi có thể cải tiến chất lượng sản phẩm và dịch vụ tốt hơn).', NULL, '0', 'active', 'yes', 1, '2021-08-11 04:59:41', '2021-08-11 04:59:41', NULL),
(92, 'Tôi sẽ học như thế nào?', NULL, 'Bạn hãy vào trang cá nhân của bạn trên nền tảng nhé.\r\nChọn mục “Học”.\r\nChọn bài mà bạn muốn học, bấm nút “Play” hay biểu tượng hình tam giác để học.', NULL, '0', 'active', 'yes', 1, '2021-08-11 05:00:21', '2021-08-11 05:00:21', NULL),
(93, 'Làm thế nào để tôi có kết quả học tập tốt nhất?', NULL, 'Đầu tiên hãy kiên nhẫn theo dõi hết nội dung bài giảng của giảng viên bạn nhé.\r\nHãy chăm chỉ thực hành theo chỉ dẫn của giảng viên (bạn nhớ chuẩn bị học cụ phù hợp nhé). Bạn hoàn toàn có thể dừng video, xem lại video bất cứ đoạn nào mà bạn chưa hiểu rõ. \r\nHãy cố gắng thực hành trước, nếu bạn vẫn không hiểu bạn có thể vào phần “Thảo luận” để đưa câu hỏi, trả lời câu hỏi, trao đổi với giảng viên. Đối với các khóa học ngoại ngữ, bạn hãy làm bài kiểm tra trực tiếp trên nền tảng và xem kết quả học tập của mình.', NULL, '0', 'active', 'yes', 1, '2021-08-11 05:00:48', '2021-08-11 05:00:48', NULL),
(94, 'Làm thế nào để tôi có hứng thú và động lực để học?', NULL, 'Đầu tiên hãy nghĩ về mục đích bạn mua khóa học, đến số tiền bạn đã bỏ ra, bạn không muốn bỏ phí chứ?\r\nKhi bạn thấy chán nản, hãy xem phần “kết quả” nhé, bạn hãy nghĩ rằng nếu bạn kiên trì, bạn sẽ tạo được những kết quả như thế hay tốt hơn thế. \r\nBạn hãy trò chuyện với giảng viên và các học viên khác ở phần “Thảo luận”, xem thành phẩm của mọi người để lấy lại động lực cho bạn.', NULL, '0', 'active', 'yes', 1, '2021-08-11 05:01:28', '2021-08-11 05:01:28', NULL),
(95, 'Mạng internet ở vị trí của tôi kém quá, video hay bị dừng hình, tôi không thể học được.', NULL, 'Đó là do video có chất lượng cao thì dung lượng cũng lớn và yêu cầu đường truyền internet phải mạnh. Nếu bạn không thể di chuyển đến vị trí có tốc độ internet cao hơn, hãy vào mục “Setting” trên màn hình bài học, chọn lại chất lượng video ở mức thấp hơn. Bạn sẽ học được liên tục tuy nhiên chất lượng hình ảnh sẽ giảm đi đôi chút nhé.', NULL, '0', 'active', 'yes', 1, '2021-08-11 05:34:37', '2021-08-11 05:34:37', NULL),
(96, 'Khi cần giảng viên hỗ trợ, tôi phải làm thế nào?', NULL, 'Hãy nhắn tin cho giảng viên ở mục “Thảo luận” trong phần bài học nhé.\r\nBạn có thể tham gia các group nhóm lớp do Anyclass tạo ra trên zalo, facebook để yêu cầu hỗ trợ.\r\nBạn cũng có thể liên hệ trực tiếp Anyclass (xem phần hướng dẫn liên hệ)', NULL, '0', 'active', 'yes', 1, '2021-08-11 05:35:09', '2021-08-11 05:35:09', NULL),
(97, 'Tôi có thế nhận được địa chi email/ Facebook/ số điện thoại của giảng viên không?', NULL, 'Chúng tôi tôn trọng quyền giảng viên, hãy sử dụng các phương thức hỗ trợ ở trên để hỏi giảng viên hoặc liên hệ với Anyclass nhé.', NULL, '0', 'active', 'yes', 1, '2021-08-11 05:35:43', '2021-08-11 05:35:43', NULL),
(98, 'Tôi có thể gặp giảng viên trực tiếp không?', NULL, 'Bạn theo dõi fanpage của Anyclass thường xuyên nhé, chúng tôi sẽ tổ chức nhiều buổi livestream và gặp mặt giảng viên trực tiếp để có thể hỗ trợ tốt nhất cho bạn.', NULL, '0', 'active', 'yes', 1, '2021-08-11 05:37:35', '2021-08-11 05:37:35', NULL),
(99, 'Điều kiện để hoàn tiền?', NULL, 'Bạn cần gửi email cho Anyclass trong vòng 07 ngày sau khi bạn mua khóa học.\r\nHoàn tiền về video hoặc combo video và học cụ:\r\nNếu bạn đã học ít hơn 10% toàn bộ thời lượng bài giảng và  thông báo hợp  lệ trong vòng 7 ngày, chưa sử dụng học cụ: chúng tôi sẽ hoàn tiền 100%.\r\nNếu bạn đã học từ 10 đến dưới 30% toàn bộ thời lượng bài giảng và  thông  báo hợp  lệ trong vòng 7 ngày, chưa sử dụng học cụ: chúng tôi sẽ hoàn tiền 70%.\r\nNếu bạn đã học từ 30% đến dưới  50% toàn bộ thời lượng bài giảng và  thông  báo hợp  lệ trong vòng 7 ngày, chưa sử dụng học cụ: chúng tôi sẽ hoàn tiền 50%.\r\nNếu bạn đã học từ  50% toàn bộ thời lượng bài giảngt trở  lên  và  thông  báo hợp  lệ  trong vòng 7 ngày: chúng tôi sẽ không thể hoàn tiền cho bạn.\r\nHoàn tiền học cụ mua trong cửa hàng.\r\nNếu bạn gửi email yêu cầu hoàn trả trước khi chúng tôi bắt đầu giao hàng: chúng tôi sẽ hoàn tiền 100%.\r\nNếu bạn gửi email yêu cầu hoàn trả trong vòng 7 ngày sau khi chúng tôi giao hàng và chưa sử dụng: chúng tôi sẽ hoàn tiền 70%.\r\nNếu  bạn  gửi email  yêu cầu hoàn trả sau 7 ngày: chúng  tôi  sẽ  không  thể  hoàn tiền  cho bạn.', NULL, '0', 'active', 'yes', 28, '2021-08-11 05:38:36', '2021-08-22 02:33:04', NULL),
(100, 'Tôi muốn thay đổi, chọn khóa học khác sau khi tôi đã thanh toán', NULL, 'Bạn vui lòng yêu cầu hoàn trả khóa học đã mua và tiến hành mua ngay khóa học mới.', NULL, '0', 'active', 'yes', 1, '2021-08-11 05:39:02', '2021-08-11 05:39:02', NULL),
(101, 'Tôi đã thanh toán hơn giá trị khóa học, tôi sẽ được trả lại tiền như nào?', NULL, 'Bạn vui lòng gửi email cho Anyclass, chúng tôi sẽ liên hệ và hướng dẫn để bạn nhận được số tiền mình trả dư', NULL, '0', 'active', 'yes', 1, '2021-08-11 05:39:32', '2021-08-11 05:39:32', NULL),
(103, 'tại sao tôi không xem được video khóa học', NULL, 'Chào bạn, bạn vui lòng kiểm tra lại đường truyền mạng hoặc bạn thử xem video bằng các trình duyệt khác nhé', 112, '0', 'active', 'no', NULL, '2021-09-04 11:16:40', '2021-09-08 08:55:56', 28),
(104, 'Admin ơi, hiện tại đang có chương tình khuyến mãi gì không ạ?', NULL, 'Có bạn ơi. Khóa học Zumba đang được tặng cho 10 khách hàng đầu tiên đăng ký.', 178, '0', 'active', 'no', NULL, '2021-09-27 04:12:50', '2021-09-27 05:03:12', 28),
(105, 'admin ơi, hiện tại có chương trình khuyến mãi gì không ạ?', NULL, NULL, 178, '0', 'inactive', 'no', NULL, '2021-09-27 04:15:37', '2021-09-27 04:15:37', NULL),
(106, 'test', NULL, NULL, 173, '0', 'inactive', 'no', NULL, '2021-10-09 04:55:55', '2021-10-09 04:55:55', NULL),
(107, 'test', NULL, NULL, 173, '1', 'inactive', 'no', NULL, '2021-10-09 04:56:05', '2021-10-09 04:56:05', NULL),
(108, 'i want insert question but can not insert here', NULL, NULL, 173, '0', 'inactive', 'no', NULL, '2021-10-09 04:56:47', '2021-10-09 04:56:47', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qa_question_client`
--

CREATE TABLE `qa_question_client` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `hidden` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `qa_question_client`
--

INSERT INTO `qa_question_client` (`id`, `name`, `users_id`, `status`, `hidden`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(9, 'Linh Bùi', 28, NULL, '0', NULL, '2021-05-24 17:30:00', '2021-05-24 17:30:00', NULL),
(10, 'Helo', 28, NULL, NULL, NULL, '2021-05-24 17:37:35', '2021-05-24 17:37:35', NULL),
(11, 'zcasad', 28, NULL, '0', NULL, '2021-05-24 17:39:12', '2021-05-24 17:39:12', NULL),
(12, 'noong to12', 28, NULL, '0', NULL, '2021-05-25 15:43:46', '2021-05-30 10:00:07', NULL),
(13, 'Linh Bùi12345', 28, NULL, NULL, NULL, '2021-05-29 03:38:08', '2021-05-29 03:38:45', NULL),
(14, 'ádasd332', 28, NULL, NULL, NULL, '2021-06-01 16:13:36', '2021-06-01 16:15:53', NULL),
(15, 'abv33', 28, NULL, NULL, NULL, '2021-06-01 16:13:42', '2021-06-01 16:15:59', NULL),
(16, 'zxcz', 28, NULL, '0', NULL, '2021-06-01 16:16:07', '2021-06-01 16:16:07', NULL),
(17, 'zxcz', 28, NULL, '0', NULL, '2021-06-01 16:16:07', '2021-06-01 16:16:07', NULL),
(18, 'bbbb', 28, NULL, '0', NULL, '2021-06-01 16:16:18', '2021-06-01 16:16:18', NULL),
(19, 'xin chào. Cho mình hỏi có thể down khóa học xuống để học được không?\r\nok nhes', 28, NULL, NULL, NULL, '2021-06-02 06:49:55', '2021-06-03 11:09:58', NULL),
(20, 'ddfdf', 28, NULL, NULL, NULL, '2021-06-03 11:09:45', '2021-06-03 11:09:45', NULL),
(21, 'mình có được cấp chứng chỉ sau khi học xong không?', 79, NULL, NULL, NULL, '2021-06-10 02:24:50', '2021-06-10 02:24:50', NULL),
(22, 'mình mua nhiều có được giảm giá không?', 79, NULL, '0', NULL, '2021-06-10 02:25:38', '2021-06-10 02:25:38', NULL),
(23, NULL, 28, NULL, NULL, NULL, '2021-06-11 04:55:40', '2021-06-11 04:55:40', NULL),
(24, 'abc', 1, NULL, NULL, NULL, '2021-07-09 09:23:57', '2021-07-09 09:23:57', NULL),
(25, 'Abc', 1, NULL, NULL, NULL, '2021-07-09 10:38:05', '2021-07-09 10:38:05', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reset_password`
--

CREATE TABLE `reset_password` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `reset_password`
--

INSERT INTO `reset_password` (`id`, `email`, `token`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'son.vi.99@gmail.com', 'shmGphOpiken6TWr9wXXxklL4HUucMtOhU9GcemefJxKpdFSIjiGHFLQNLqLjDD5DfvtRSvxCPP4UJ8cJDLDOci8CKz5Om4ok06A', '2021-05-11 13:27:43', '2021-05-11 15:04:49', NULL, NULL),
(2, 'phongtest@gmail.com', 'NkElWpR9aDMCLk1GO4hG4M89dSW4BSvYvsTz6LfVqwqtbPhN4HHVvghLPjEsXTpxuhsSEcubDJTiP2z8zPzLHfoV2RBmz8PbSdo3', '2021-06-02 08:39:07', '2021-06-02 08:39:07', NULL, NULL),
(8, 'doannhung25@gmail.com', '0G2LIHraWcVNOxRvbA8EBHdEnbT9Mnr6qhlFJqd4EBJ0zyVpYTE4vW21VeFK4ZDfwwku0TH9yTHa1verU0xHsskDqbgLQ6d6ViwN', '2021-07-15 04:28:51', '2021-08-10 17:11:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 'admin', 'Admin', '{\"blog_posts.index\":true,\"blog_posts.create\":true,\"blog_posts.edit\":true,\"blog_posts.destroy\":true,\"blog_posts.active\":true,\"blog_categories.index\":true,\"blog_categories.create\":true,\"blog_categories.edit\":true,\"blog_categories.destroy\":true,\"blog_categories.active\":true,\"introduce.index\":true,\"introduce.create\":true,\"introduce.edit\":true,\"introduce.destroy\":true,\"introduce.active\":true,\"introduce_categories.index\":true,\"introduce_categories.create\":true,\"introduce_categories.edit\":true,\"introduce_categories.destroy\":true,\"introduce_categories.active\":true,\"blog_tags.index\":true,\"blog_tags.create\":true,\"blog_tags.edit\":true,\"blog_tags.destroy\":true,\"blog_tags.active\":true,\"user.index\":true,\"user.create\":true,\"user.edit\":true,\"user.destroy\":true,\"user.changeLang\":true,\"user.active\":true,\"role.index\":true,\"role.create\":true,\"role.edit\":true,\"role.destroy\":true,\"role.active\":true,\"banner.index\":true,\"banner.create\":true,\"banner.edit\":true,\"banner.destroy\":true,\"banner.active\":true,\"widget.index\":true,\"widget.create\":true,\"widget.edit\":true,\"widget.destroy\":true,\"widget.active\":true,\"discount.index\":true,\"discount.create\":true,\"discount.edit\":true,\"discount.destroy\":true,\"discount.active\":true,\"page.index\":true,\"page.create\":true,\"page.edit\":true,\"page.destroy\":true,\"page.active\":true,\"address.index\":true,\"address.create\":true,\"address.edit\":true,\"address.destroy\":true,\"address.active\":true,\"product_tags.index\":true,\"product_tags.create\":true,\"product_tags.edit\":true,\"product_tags.destroy\":true,\"product_tags.active\":true,\"contact.index\":true,\"contact.create\":false,\"contact.edit\":false,\"contact.destroy\":true,\"contact.active\":false,\"product_products.index\":true,\"product_products.create\":false,\"product_products.edit\":true,\"product_products.destroy\":false,\"product_products.active\":true,\"product_category.index\":true,\"product_category.create\":true,\"product_category.edit\":true,\"product_category.destroy\":true,\"product_category.active\":true,\"qa_question.index\":true,\"qa_question.create\":true,\"qa_question.edit\":true,\"qa_question.destroy\":true,\"qa_question.active\":true,\"translate.index\":true,\"translate.edit\":true,\"translate.destroy\":true,\"qa_answer.index\":true,\"qa_answer.create\":true,\"qa_answer.edit\":true,\"qa_answer.destroy\":true,\"qa_answer.active\":true,\"event.index\":true,\"event.create\":true,\"event.edit\":true,\"event.destroy\":true,\"event.active\":true,\"course_category.index\":true,\"course_category.create\":true,\"course_category.edit\":true,\"course_category.destroy\":true,\"course_category.active\":true,\"course_courses.index\":true,\"course_courses.create\":true,\"course_courses.edit\":true,\"course_courses.destroy\":true,\"course_courses.active\":true,\"notification.index\":true,\"notification.create\":true,\"notification.edit\":true,\"notification.destroy\":true,\"notification.active\":true,\"chapter.index\":true,\"chapter.create\":true,\"chapter.edit\":true,\"chapter.destroy\":true,\"chapter.active\":true,\"lesson.index\":true,\"lesson.create\":true,\"lesson.edit\":true,\"lesson.destroy\":true,\"lesson.active\":true,\"bank.index\":true,\"bank.create\":true,\"bank.edit\":true,\"bank.destroy\":true,\"bank.active\":true,\"partner.index\":true,\"partner.create\":true,\"partner.edit\":true,\"partner.destroy\":true,\"partner.active\":true,\"rank.index\":true,\"rank.create\":true,\"rank.edit\":true,\"rank.destroy\":true,\"rank.active\":true,\"order.index\":true,\"order.create\":true,\"order.edit\":true,\"order.destroy\":true,\"order.detail\":true,\"order.status_course\":true,\"order.active\":true,\"warehouse.index\":true,\"warehouse.create\":true,\"warehouse.edit\":true,\"warehouse.destroy\":true,\"warehouse.active\":true,\"coupon.index\":true,\"coupon.create\":true,\"coupon.edit\":true,\"coupon.destroy\":true,\"coupon.active\":true,\"pages_dynamic.index\":true,\"pages_dynamic.create\":true,\"pages_dynamic.edit\":true,\"pages_dynamic.destroy\":true,\"pages_dynamic.active\":true,\"config.edit\":true,\"logs.index\":true,\"customer.index\":true}', NULL, '2021-02-09 21:45:11', '2022-02-28 18:28:42', 1),
(7, NULL, 'Nhân viên', '{\"post.index\":true,\"post.create\":true,\"post.edit\":true,\"post.destroy\":true,\"user.index\":false,\"user.create\":false,\"user.edit\":false,\"user.destroy\":false,\"user.changeLang\":false,\"role.index\":false,\"role.create\":false,\"role.edit\":false,\"role.destroy\":false,\"banner.index\":true,\"banner.create\":true,\"banner.edit\":true,\"banner.destroy\":true,\"widget.index\":true,\"widget.create\":true,\"widget.edit\":true,\"widget.destroy\":true,\"discount.index\":true,\"discount.create\":true,\"discount.edit\":true,\"discount.destroy\":true,\"page.index\":true,\"page.create\":true,\"page.edit\":true,\"page.destroy\":true,\"blog_tags.index\":true,\"blog_tags.create\":true,\"blog_tags.edit\":true,\"blog_tags.destroy\":true,\"blog_posts.index\":true,\"blog_posts.create\":true,\"blog_posts.edit\":true,\"blog_posts.destroy\":true,\"address.index\":false,\"address.create\":false,\"address.edit\":false,\"address.destroy\":false,\"product_tags.index\":true,\"product_tags.create\":true,\"product_tags.edit\":true,\"product_tags.destroy\":true,\"blog_categories.index\":true,\"blog_categories.create\":true,\"blog_categories.edit\":true,\"blog_categories.destroy\":true,\"contact.index\":true,\"contact.create\":true,\"contact.edit\":true,\"contact.destroy\":true,\"product_products.index\":true,\"product_products.create\":true,\"product_products.edit\":true,\"product_products.destroy\":true,\"product_category.index\":true,\"product_category.create\":true,\"product_category.edit\":true,\"product_category.destroy\":true,\"qa_question.index\":true,\"qa_question.create\":true,\"qa_question.edit\":true,\"qa_question.destroy\":true,\"translate.index\":true,\"translate.edit\":true,\"translate.destroy\":true,\"qa_answer.index\":true,\"qa_answer.create\":true,\"qa_answer.edit\":true,\"qa_answer.destroy\":true,\"event.index\":true,\"event.create\":true,\"event.edit\":true,\"event.destroy\":true,\"course_category.index\":true,\"course_category.create\":true,\"course_category.edit\":true,\"course_category.destroy\":true,\"course_courses.index\":true,\"course_courses.create\":true,\"course_courses.edit\":true,\"course_courses.destroy\":true,\"notification.index\":true,\"notification.create\":true,\"notification.edit\":true,\"notification.destroy\":true,\"chapter.index\":true,\"chapter.create\":true,\"chapter.edit\":true,\"chapter.destroy\":true,\"lesson.index\":true,\"lesson.create\":true,\"lesson.edit\":true,\"lesson.destroy\":true,\"bank.index\":true,\"bank.create\":true,\"bank.edit\":true,\"bank.destroy\":true,\"order.index\":true,\"order.create\":true,\"order.edit\":true,\"order.destroy\":true,\"order.detail\":true}', NULL, '2021-03-28 06:36:51', '2021-05-19 22:32:22', NULL),
(8, NULL, 'Editor', '{\"blog_posts.index\":true,\"blog_posts.create\":true,\"blog_posts.edit\":true,\"blog_posts.destroy\":true,\"blog_posts.active\":true,\"blog_categories.index\":true,\"blog_categories.create\":true,\"blog_categories.edit\":true,\"blog_categories.destroy\":true,\"blog_categories.active\":false,\"blog_tags.index\":true,\"blog_tags.create\":true,\"blog_tags.edit\":true,\"blog_tags.destroy\":true,\"blog_tags.active\":true,\"user.index\":false,\"user.create\":false,\"user.edit\":false,\"user.destroy\":false,\"user.changeLang\":false,\"user.active\":true,\"role.index\":false,\"role.create\":false,\"role.edit\":false,\"role.destroy\":false,\"role.active\":true,\"banner.index\":false,\"banner.create\":false,\"banner.edit\":false,\"banner.destroy\":false,\"banner.active\":true,\"widget.index\":false,\"widget.create\":false,\"widget.edit\":false,\"widget.destroy\":false,\"widget.active\":true,\"discount.index\":true,\"discount.create\":true,\"discount.edit\":true,\"discount.destroy\":true,\"discount.active\":true,\"page.index\":false,\"page.create\":false,\"page.edit\":false,\"page.destroy\":false,\"page.active\":true,\"address.index\":false,\"address.create\":false,\"address.edit\":false,\"address.destroy\":false,\"address.active\":true,\"product_tags.index\":true,\"product_tags.create\":true,\"product_tags.edit\":true,\"product_tags.destroy\":true,\"product_tags.active\":true,\"contact.index\":false,\"contact.create\":false,\"contact.edit\":false,\"contact.destroy\":false,\"contact.active\":true,\"product_products.index\":true,\"product_products.create\":true,\"product_products.edit\":true,\"product_products.destroy\":true,\"product_products.active\":true,\"product_category.index\":true,\"product_category.create\":false,\"product_category.edit\":false,\"product_category.destroy\":false,\"product_category.active\":true,\"qa_question.index\":true,\"qa_question.create\":true,\"qa_question.edit\":true,\"qa_question.destroy\":true,\"qa_question.active\":true,\"translate.index\":false,\"translate.edit\":false,\"translate.destroy\":false,\"qa_answer.index\":false,\"qa_answer.create\":false,\"qa_answer.edit\":false,\"qa_answer.destroy\":false,\"qa_answer.active\":true,\"event.index\":false,\"event.create\":false,\"event.edit\":false,\"event.destroy\":false,\"event.active\":true,\"course_category.index\":true,\"course_category.create\":false,\"course_category.edit\":false,\"course_category.destroy\":false,\"course_category.active\":true,\"course_courses.index\":true,\"course_courses.create\":true,\"course_courses.edit\":true,\"course_courses.destroy\":false,\"course_courses.active\":true,\"notification.index\":false,\"notification.create\":false,\"notification.edit\":false,\"notification.destroy\":false,\"notification.active\":true,\"chapter.index\":true,\"chapter.create\":true,\"chapter.edit\":true,\"chapter.destroy\":true,\"chapter.active\":true,\"lesson.index\":true,\"lesson.create\":true,\"lesson.edit\":true,\"lesson.destroy\":true,\"lesson.active\":true,\"bank.index\":false,\"bank.create\":false,\"bank.edit\":false,\"bank.destroy\":false,\"bank.active\":true,\"partner.index\":false,\"partner.create\":false,\"partner.edit\":false,\"partner.destroy\":false,\"partner.active\":true,\"rank.index\":false,\"rank.create\":false,\"rank.edit\":false,\"rank.destroy\":false,\"rank.active\":true,\"order.index\":true,\"order.create\":true,\"order.edit\":true,\"order.destroy\":false,\"order.detail\":true,\"order.status_course\":false,\"order.active\":true,\"warehouse.index\":true,\"warehouse.create\":true,\"warehouse.edit\":true,\"warehouse.destroy\":false,\"warehouse.active\":true,\"coupon.index\":true,\"coupon.create\":true,\"coupon.edit\":true,\"coupon.destroy\":true,\"coupon.active\":true,\"pages_dynamic.index\":true,\"pages_dynamic.create\":true,\"pages_dynamic.edit\":true,\"pages_dynamic.destroy\":true,\"pages_dynamic.active\":true,\"config.edit\":true}', NULL, '2021-04-18 05:17:11', '2021-08-20 07:13:10', NULL),
(9, NULL, 'Giảng viên', '{\"blog_posts.index\":false,\"blog_posts.create\":false,\"blog_posts.edit\":false,\"blog_posts.destroy\":false,\"blog_posts.active\":false,\"blog_categories.index\":false,\"blog_categories.create\":false,\"blog_categories.edit\":false,\"blog_categories.destroy\":false,\"blog_categories.active\":false,\"blog_tags.index\":false,\"blog_tags.create\":false,\"blog_tags.edit\":false,\"blog_tags.destroy\":false,\"blog_tags.active\":false,\"user.index\":false,\"user.create\":false,\"user.edit\":false,\"user.destroy\":false,\"user.changeLang\":false,\"user.active\":false,\"role.index\":false,\"role.create\":false,\"role.edit\":false,\"role.destroy\":false,\"role.active\":false,\"banner.index\":false,\"banner.create\":false,\"banner.edit\":false,\"banner.destroy\":false,\"banner.active\":false,\"widget.index\":false,\"widget.create\":false,\"widget.edit\":false,\"widget.destroy\":false,\"widget.active\":false,\"discount.index\":false,\"discount.create\":false,\"discount.edit\":false,\"discount.destroy\":false,\"discount.active\":false,\"page.index\":false,\"page.create\":false,\"page.edit\":false,\"page.destroy\":false,\"page.active\":false,\"address.index\":false,\"address.create\":false,\"address.edit\":false,\"address.destroy\":false,\"address.active\":false,\"product_tags.index\":false,\"product_tags.create\":false,\"product_tags.edit\":false,\"product_tags.destroy\":false,\"product_tags.active\":false,\"contact.index\":false,\"contact.create\":false,\"contact.edit\":false,\"contact.destroy\":false,\"contact.active\":false,\"product_products.index\":false,\"product_products.create\":false,\"product_products.edit\":false,\"product_products.destroy\":false,\"product_products.active\":false,\"product_category.index\":false,\"product_category.create\":false,\"product_category.edit\":false,\"product_category.destroy\":false,\"product_category.active\":false,\"qa_question.index\":false,\"qa_question.create\":false,\"qa_question.edit\":false,\"qa_question.destroy\":false,\"qa_question.active\":false,\"translate.index\":false,\"translate.edit\":false,\"translate.destroy\":false,\"qa_answer.index\":false,\"qa_answer.create\":false,\"qa_answer.edit\":false,\"qa_answer.destroy\":false,\"qa_answer.active\":false,\"event.index\":false,\"event.create\":false,\"event.edit\":false,\"event.destroy\":false,\"event.active\":false,\"course_category.index\":false,\"course_category.create\":false,\"course_category.edit\":false,\"course_category.destroy\":false,\"course_category.active\":false,\"course_courses.index\":true,\"course_courses.create\":true,\"course_courses.edit\":true,\"course_courses.destroy\":false,\"course_courses.active\":false,\"notification.index\":false,\"notification.create\":false,\"notification.edit\":false,\"notification.destroy\":false,\"notification.active\":false,\"chapter.index\":false,\"chapter.create\":false,\"chapter.edit\":false,\"chapter.destroy\":false,\"chapter.active\":false,\"lesson.index\":true,\"lesson.create\":true,\"lesson.edit\":true,\"lesson.destroy\":false,\"lesson.active\":false,\"bank.index\":false,\"bank.create\":false,\"bank.edit\":false,\"bank.destroy\":false,\"bank.active\":false,\"partner.index\":false,\"partner.create\":false,\"partner.edit\":false,\"partner.destroy\":false,\"partner.active\":false,\"rank.index\":false,\"rank.create\":false,\"rank.edit\":false,\"rank.destroy\":false,\"rank.active\":false,\"order.index\":true,\"order.create\":false,\"order.edit\":false,\"order.destroy\":false,\"order.detail\":true,\"order.status_course\":false,\"order.active\":false,\"warehouse.index\":true,\"warehouse.create\":true,\"warehouse.edit\":true,\"warehouse.destroy\":false,\"warehouse.active\":false,\"coupon.index\":false,\"coupon.create\":false,\"coupon.edit\":false,\"coupon.destroy\":false,\"coupon.active\":false,\"pages_dynamic.index\":false,\"pages_dynamic.create\":false,\"pages_dynamic.edit\":false,\"pages_dynamic.destroy\":false,\"pages_dynamic.active\":false,\"config.edit\":false,\"logs.index\":true,\"customer.index\":true}', NULL, '2021-04-25 05:28:07', '2021-09-04 12:04:16', NULL),
(11, NULL, 'Anyhowad', '{\"blog_posts.index\":true,\"blog_posts.create\":true,\"blog_posts.edit\":true,\"blog_posts.destroy\":false,\"blog_posts.active\":false,\"blog_categories.index\":true,\"blog_categories.create\":true,\"blog_categories.edit\":false,\"blog_categories.destroy\":false,\"blog_categories.active\":false,\"blog_tags.index\":true,\"blog_tags.create\":true,\"blog_tags.edit\":true,\"blog_tags.destroy\":true,\"blog_tags.active\":false,\"user.index\":true,\"user.create\":true,\"user.edit\":false,\"user.destroy\":false,\"user.changeLang\":false,\"user.active\":false,\"role.index\":false,\"role.create\":false,\"role.edit\":false,\"role.destroy\":false,\"role.active\":false,\"banner.index\":true,\"banner.create\":true,\"banner.edit\":true,\"banner.destroy\":true,\"banner.active\":true,\"widget.index\":true,\"widget.create\":true,\"widget.edit\":true,\"widget.destroy\":true,\"widget.active\":true,\"discount.index\":false,\"discount.create\":false,\"discount.edit\":false,\"discount.destroy\":false,\"discount.active\":false,\"page.index\":true,\"page.create\":false,\"page.edit\":true,\"page.destroy\":true,\"page.active\":false,\"address.index\":true,\"address.create\":true,\"address.edit\":false,\"address.destroy\":false,\"address.active\":false,\"product_tags.index\":true,\"product_tags.create\":true,\"product_tags.edit\":false,\"product_tags.destroy\":false,\"product_tags.active\":true,\"contact.index\":true,\"contact.create\":true,\"contact.edit\":false,\"contact.destroy\":false,\"contact.active\":false,\"product_products.index\":true,\"product_products.create\":false,\"product_products.edit\":true,\"product_products.destroy\":false,\"product_products.active\":false,\"product_category.index\":true,\"product_category.create\":false,\"product_category.edit\":false,\"product_category.destroy\":false,\"product_category.active\":false,\"qa_question.index\":true,\"qa_question.create\":true,\"qa_question.edit\":true,\"qa_question.destroy\":true,\"qa_question.active\":true,\"translate.index\":false,\"translate.edit\":false,\"translate.destroy\":false,\"qa_answer.index\":true,\"qa_answer.create\":true,\"qa_answer.edit\":false,\"qa_answer.destroy\":false,\"qa_answer.active\":true,\"event.index\":true,\"event.create\":true,\"event.edit\":true,\"event.destroy\":true,\"event.active\":true,\"course_category.index\":true,\"course_category.create\":false,\"course_category.edit\":false,\"course_category.destroy\":false,\"course_category.active\":false,\"course_courses.index\":false,\"course_courses.create\":false,\"course_courses.edit\":false,\"course_courses.destroy\":false,\"course_courses.active\":false,\"notification.index\":true,\"notification.create\":true,\"notification.edit\":true,\"notification.destroy\":true,\"notification.active\":true,\"chapter.index\":false,\"chapter.create\":false,\"chapter.edit\":false,\"chapter.destroy\":false,\"chapter.active\":false,\"lesson.index\":false,\"lesson.create\":false,\"lesson.edit\":false,\"lesson.destroy\":false,\"lesson.active\":false,\"bank.index\":false,\"bank.create\":false,\"bank.edit\":false,\"bank.destroy\":false,\"bank.active\":false,\"partner.index\":true,\"partner.create\":true,\"partner.edit\":true,\"partner.destroy\":true,\"partner.active\":true,\"rank.index\":true,\"rank.create\":true,\"rank.edit\":true,\"rank.destroy\":true,\"rank.active\":true,\"order.index\":false,\"order.create\":false,\"order.edit\":false,\"order.destroy\":false,\"order.detail\":false,\"order.status_course\":false,\"order.active\":false,\"warehouse.index\":false,\"warehouse.create\":false,\"warehouse.edit\":false,\"warehouse.destroy\":false,\"warehouse.active\":false,\"coupon.index\":false,\"coupon.create\":false,\"coupon.edit\":false,\"coupon.destroy\":false,\"coupon.active\":false,\"pages_dynamic.index\":true,\"pages_dynamic.create\":true,\"pages_dynamic.edit\":true,\"pages_dynamic.destroy\":true,\"pages_dynamic.active\":true,\"config.edit\":true}', 28, '2021-07-27 22:47:21', '2021-08-21 10:31:16', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-02-09 21:45:36', '2021-02-09 21:45:36'),
(14, 7, NULL, NULL),
(22, 1, NULL, NULL),
(28, 1, NULL, NULL),
(29, 8, NULL, NULL),
(30, 8, NULL, NULL),
(31, 8, NULL, NULL),
(80, 7, NULL, NULL),
(96, 8, NULL, NULL),
(99, 9, NULL, NULL),
(101, 9, NULL, NULL),
(103, 8, NULL, NULL),
(108, 8, NULL, NULL),
(114, 8, NULL, NULL),
(123, 8, NULL, NULL),
(124, 8, NULL, NULL),
(125, 11, NULL, NULL),
(126, 8, NULL, NULL),
(127, 9, NULL, NULL),
(143, 9, NULL, NULL),
(154, 9, NULL, NULL),
(166, 1, NULL, NULL),
(172, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_zalo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `permissions`, `last_login`, `type`, `first_name`, `last_name`, `picture`, `url_picture`, `phone`, `birthday`, `status`, `remember_token`, `id_zalo`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 'thanhphonglx98@gmail.com', NULL, '$2y$10$HXSXtuJkzPxgClx6TxnyF.02whONlWtraI4RAx6bS85jk1OF6eMaO', NULL, '2021-03-18 23:17:53', NULL, 'Nguyễn', 'Thanh Phong', 'ZpdZtUv5Jq.jpg', NULL, '0904506620', '2021-03-31', 'active', '03ZuIqscUGtm7zlXlhSMZ0M3FNoKtKGRVSWYlcryvjEui2SVtKZI4aFS7yT6', NULL, 1, '2021-02-09 21:45:36', '2021-09-13 12:07:46', NULL),
(14, 'phongprolx98@gmail.com', NULL, '$2y$10$bx9uZF3f6qS/Xuk0TEBLw.kM/ZSIrQ6C.EgFEiJZphEMdox4WILIS', NULL, NULL, NULL, 'Nguyen', 'Nhan', 'wUMGFWf8L3.png', NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-03-28 06:40:29', '2021-05-27 00:10:12', NULL),
(22, 'phong@gmail.com', '123123bbb', '$2y$10$kUggOEHAvUPlC3ww1./7KuSpqUrBxF5Ss/zJ/kyTxW6n1CLjociky', NULL, NULL, NULL, 'phong', 'test', NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-04-08 03:08:35', '2021-05-17 03:39:35', NULL),
(23, 'bbbbb@gmail.com', 'bbbbbb', '$2y$10$wXKSeKIlukfJc.frfYbtt.N0HAohJcHXUzxfEFeoC6tIa4S/O9.Ve', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-04-08 03:11:41', '2021-04-08 03:11:41', NULL),
(24, 'phong12345@gmail.com', 'bbbbbb123', '$2y$10$BUI7CcUUJbl/C5TUqjS4RuTJrEszZx6jYe7GTbuxkQeOZfc0Rf8zu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-04-08 03:12:42', '2021-04-08 03:12:42', NULL),
(25, 'linhbq68@wru.vn', 'Bùi Quang linh', '$2y$10$yiWsAU0Dd6yn/VwOEOmg8.79Eq4c7qr1skOdVa.cU/k.ZdA8ULk6u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-04-08 03:16:00', '2021-04-08 03:16:00', NULL),
(26, 'linhbq688@wru.vn', 'buiquan glinh', '$2y$10$CyJZv6w0MD3rjV8.23ivz.tIMofk/AlvSxRMu.C8zrFGP7ao8fq4K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-04-08 07:45:05', '2021-04-08 07:45:05', NULL),
(27, 'son@gmail.com', 'Son', '$2y$10$Y0B62qZXjYjK230kDTwapu8w7TYVDk.MOZ1uc53dtZfo0Wp4PE2xa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-04-10 19:39:43', '2021-04-10 19:39:43', NULL),
(28, 'phongtest@gmail.com', 'phongtest', '$2y$10$GmAfp4aoEBP20rReuVxPjueAKltV/ZpxY6VrcPC7BeqSPhK99AS9a', NULL, NULL, NULL, 'Linh 123', 'adasd', 'https://anyclass.vn/enduser/assets/images/logo.png', NULL, '09056604421', '2021-10-20', 'active', 'phoigOkVoq88AhaK51XLEgQgVeZ78RbZmCaoeRFGCDtlYXS5LgWWxuOzdbPs', NULL, NULL, '2021-04-13 03:56:11', '2021-05-31 19:35:12', NULL),
(29, 'nganvan@gmail.com', NULL, '$2y$10$Lqv5Wp6DVFKGYbv1/fnFtuZqZK4SOH1GjPZb9leTfBkKtMadyPNyy', NULL, NULL, NULL, 'nghian', 'tran', 'ARx5Suo3ro.jpg', NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-04-18 05:18:03', '2021-04-18 05:18:03', NULL),
(30, 'phongtest123@gmail.com', NULL, '$2y$10$izMuU.8X4Ig6.W4tKLSGk.fMBwJLB2sPDsoRRoiV6EcmHYJSGPAeW', NULL, NULL, NULL, 'Nguyen', 'phong 123', NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-04-25 04:05:02', '2021-04-25 04:05:02', NULL),
(31, 'vanc@gmail.com', NULL, '$2y$10$hy9mdH.1SQe4nEs/mItuU.vVid6MDFRJmcUJ.erNKRYtuaDePv.hW', NULL, NULL, NULL, 'nguyen', 'van c', NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-04-25 07:36:19', '2021-04-25 07:36:19', NULL),
(35, 'doraemon1999kt@gmail.com', 'nguyen vi', NULL, NULL, NULL, 'google', 'nguyen', 'vi', 'https://lh3.googleusercontent.com/a/AATXAJzkqc2Iue3oQXvhFxdh_feh1J39L17htI7BC2Zr=s96-c', NULL, NULL, NULL, 'active', 'Jc3ArH6E21DiRdmCDyxaHmy2WfV41ogRSFkPIMaekWIYuAENhd1XadDmU7Bt', NULL, NULL, '2021-05-10 01:06:34', '2021-05-10 01:06:34', NULL),
(36, 'sonvi10101999@gmail.com', 'son vi', NULL, NULL, NULL, 'google', 'son', 'vi', 'https://lh3.googleusercontent.com/a-/AOh14GgZ08IVvbTampAgQ_XF8c38j6d-oSQJNo6xfm3s=s96-c', NULL, NULL, NULL, 'active', 'pe7ylS8desQrl9iACiSQNIJ4DESNJnPOHiznUi8Uh0tJfXECJeqv8UugUtNf', NULL, NULL, '2021-05-10 01:41:58', '2021-05-10 01:41:58', NULL),
(40, 'doraemon1999kt@gmail.com', 'Khôi Lê', NULL, NULL, NULL, 'facebook', 'Lê', 'Khôi', 'https://graph.facebook.com/v3.3/580647253324768/picture?type=normal', NULL, '0909999888', '2021-05-21', 'active', 'jiAsHDxzky8uZgyPPPli0GNBsDLxai1MrJ9W0NeoB5W5GXG7UZUL7jjkNkMm', NULL, NULL, '2021-05-11 02:21:29', '2021-05-11 02:23:11', NULL),
(41, 'son.vi.99@gmail.com', 'doraemon1999kt', '$2y$10$atu/u1inzr4EkfyxeDr7menY1PElWjgfRmXHg8sMGV1cPAZKpx/n.', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-11 02:52:55', '2021-05-11 02:52:55', NULL),
(42, 'sonvi10101999@gmail.com', 'doraemon1999kt', '$2y$10$HbICrRQcJQ8F3/Sp3EIwJ.Spdfs7F2IoxV1w0V9v5LTqJCm07Y/Eq', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-11 03:02:03', '2021-05-11 03:02:03', NULL),
(43, 'linhbq68@wru.vn', 'Bui LINH', NULL, NULL, NULL, 'google', 'Bui', 'LINH', 'https://lh3.googleusercontent.com/a-/AOh14GhqGR8nUXsFCXC1iGyfkSgTbPEamgjd7_MhQMzEBw=s96-c', NULL, NULL, NULL, 'active', 'dAMwju4ZZtlSZQLD4nprXZ0EFznPr7IFeiX7Npd96CCTR93E6IMZhE8MKirX', NULL, NULL, '2021-05-12 03:17:00', '2021-05-12 03:17:00', NULL),
(46, 'hoanghai31299@gmail.com', 'Hoàng Hải', NULL, NULL, NULL, 'facebook', NULL, 'Hoàng Hải', 'https://graph.facebook.com/v3.3/1185025715272028/picture?type=normal', NULL, NULL, NULL, 'active', 'O0J0pkJuAfPh4pTw7ebMRKakk3u4OfdCMpGyYRoWSiKq0uwf8VCbGT4s5iGO', NULL, NULL, '2021-05-12 03:28:29', '2021-05-12 03:28:29', NULL),
(48, NULL, 'Thành Sơn', NULL, NULL, NULL, 'zalo', NULL, 'Thành Sơn', 'https://s120-ava-talk.zadn.vn/e/7/b/a/7/120/4b59f2cdd4e8ee23800eeefca52cbe72.jpg', NULL, NULL, NULL, 'active', 'Aw6okNsNIXEjKuccgCLTCiN8wZu261n5XnJS22cuA5BT2LgLIwYebInZWcCb', NULL, NULL, '2021-05-13 01:56:34', '2021-05-13 01:56:34', NULL),
(49, 'sexboy.dizzluv@gmail.com', 'Quốc Đạt', NULL, NULL, NULL, 'google', 'Quốc', 'Đạt', 'https://lh3.googleusercontent.com/a-/AOh14GgWbA8xNrNbmc-M4D4umkz0em9Ne-Z0foTWA-BZQg=s96-c', NULL, NULL, NULL, 'active', 'kb8a79rcCCdNuRYnx8ELZ1qMzdg8lGGA05YUs0PEVMqLkzXWYTPAiR99ewut', NULL, NULL, '2021-05-15 16:18:35', '2021-05-15 16:18:35', NULL),
(50, 'linh87@gmail.com', 'bui quang linh', '$2y$10$gdINWexGnnk5V8a6IKjl2.iRP2Adb/PTSpp7meCo1HMLuAvzbPxum', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-15 21:40:38', '2021-05-15 21:40:38', NULL),
(56, 'buiquanglinh410@gmail.com', 'bui quang linh', '$2y$10$fCz49DBpseIdH4sK8Xj1ou.HOrMdCUnwTkombFos2QCyQXr/ndMAi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-15 21:54:32', '2021-05-15 21:54:32', NULL),
(66, 'buiquanglinh410@gmail.com', 'bui quang linh', '$2y$10$UryKdip4Fw2lasTTiNJQy.vTHC6/AjWP75.4R7Qkg9flITy/WTYue', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-15 23:33:25', '2021-05-15 23:33:25', NULL),
(69, 'buiquanglinh41r0@gmail.com', 'bui quang linh', '$2y$10$UEwflblPS8ZvHvDB0nHwrOVhv7Z1/x1n488wwzfYl5fm8lNwgtfBG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-15 23:40:12', '2021-05-15 23:40:12', NULL),
(70, 'buiquanglinh41dr0@gmail.com', 'bui quang linh', '$2y$10$GfY.WkDdvjUydtCTYDp.DuQw5OqP2MbuOH0EC1HSs3gcLtEpQ1eDS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-15 23:41:23', '2021-05-15 23:41:23', NULL),
(71, 'phongtest222@gmail.com', 'linh teae', '$2y$10$gp2Y2LSVSm2KeoIAFn8SIuoSD2rc3NmeDmAKGVWnZf.t6GO3ZSNsS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-16 03:33:33', '2021-05-16 03:33:33', NULL),
(72, 'abc@gmail.com', 'abc', '$2y$10$XX7/bZscXeKSOAYF9rQ36uTV.5M3LNRxqHC6mnshLQJCpWSzmdOaq', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-17 05:26:30', '2021-05-17 05:26:30', NULL),
(73, 'nhan@gmail.com', 'nguyen nhan', '$2y$10$bj7cnoJ/Kn7G9rmQ27PsYO2dAMONmhGP1OTRhIKDPTyN/7jslbb4q', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-17 07:25:03', '2021-05-17 07:25:03', NULL),
(74, 'boromirluvsoft@gmail.com', 'admin123', '$2y$10$8/xAM3KOsjp.wV6NCElwK.WlXJz0BIRtpRr8KX/9F5jPCiFoyOH/a', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-18 03:42:29', '2021-05-18 03:42:29', NULL),
(75, 'goodedu2021@gmail.com', 'Hyeunsoo Son', NULL, NULL, NULL, 'facebook', NULL, 'Hyeunsoo Son', 'https://graph.facebook.com/v3.3/149027190572617/picture?type=normal', NULL, NULL, NULL, 'active', 'a9kqVlxRjMxeaef5dd4WPZTriSR4qyCKZMQqOy7XbV7683k58j99d8nDHP2n', NULL, NULL, '2021-05-18 09:35:07', '2021-05-18 09:35:07', NULL),
(77, 'istaildreyn@gmail.com', 'RMwQxkJgoNbzea', '$2y$10$McXcnx9Y93UU8pAFJdQ7W.4KAwjx05bkHfmx4wM8TfIYX9sKRQjpW', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-19 13:39:54', '2021-05-19 13:39:54', NULL),
(80, 'nghia@gmail.com', NULL, '$2y$10$7qA9Dy.2sM4HfJCiioIwTO5pGQ3C3PzHqYufqPTYOZo68OB1iYwoG', NULL, NULL, NULL, 'nguyen', 'nghia', NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-19 21:49:21', '2021-05-19 21:49:21', NULL),
(81, 'geogatedproject1054@gmail.com', 'Mira', NULL, NULL, NULL, 'facebook', NULL, 'Mira', 'https://graph.facebook.com/v3.3/24102200493876/picture?type=normal', NULL, NULL, NULL, 'active', 'zKo1SnHS3dR71hDuacN2XDQ6i8vP9NreBDl8RLE5qqY4b1m78WasYGXnTbMX', NULL, NULL, '2021-05-21 01:54:28', '2021-05-21 01:54:28', NULL),
(82, 'phongtest12334@gmail.com', 'linh teae', '$2y$10$EN6297vqn26o/HV.9d3WZO5eBeoRhR92RyeDCHvPw2ZEnFVgZl8tW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-25 06:37:23', '2021-05-25 06:37:23', NULL),
(83, 'abcxylzd@gmail.com', 'datnq', '$2y$10$bUCrcWQ7qa.YAhPRvj88.ulXjQbxMTfpg9HSD6fBA5hKlWlKdPlYy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-25 07:04:38', '2021-05-25 07:04:38', NULL),
(84, 'Jshgwhjjdhzha@gmail.com', 'ajcjhskkd', '$2y$10$/wdZtTbGmY3xSrtpBMIsVOd40sgeIQ2V52vf/iIP25y1AWu9EPCrO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-25 07:09:42', '2021-05-25 07:09:42', NULL),
(85, 'Bgsdfhbfdf@gmail.com', 'dddjjgdss', '$2y$10$I18/Fo7Ez1KFyMaiivTdNOh4vLdSuC/lx.TuYHqkF.qChna8Y6zr.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-25 07:10:51', '2021-05-25 07:10:51', NULL),
(86, 'Bvzbjahsvz@gmail.com', 'hdhvajkx', '$2y$10$j4O5mLYRJUf7Uoh9tS9jJezNi/Pr0srnN/33Vt22g7hboK78tCAFe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-25 07:12:58', '2021-05-25 07:12:58', NULL),
(87, 'Bvzdbbvvbjahsvz@gmail.com', 'hdhvajkxxbjh', '$2y$10$ht1h/WCQC4TdjU9Z5cwX7ONsDgFI5zTO.a.E3dm9RHEuD7FT9T0Rq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-25 07:15:01', '2021-05-25 07:15:01', NULL),
(88, 'XsdhjkifdzBbv@gmail.com', 'fjjcxxsaaazs', '$2y$10$ttfjgju0COxu1eG2efWwhO3IOY.3CsrZTy5ZwKJlSWRKpmRNqpqoa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-25 07:17:21', '2021-05-25 07:17:21', NULL),
(89, 'Dsfjkkgddsfh@gmail.com', 'fgjkkgccbn', '$2y$10$LpJQTyHykDTHsmkPkgCAYOVz7TKvIbsGBq28MFyNl0R2Lyo.Hk7Te', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-25 07:20:12', '2021-05-25 07:20:12', NULL),
(90, 'Sgjkhdsdhjj@gmail.com', 'jgsdfhn', '$2y$10$hZy3etEJKmPg9NVxUCriKe.j2kekyf1SZfOzI084SW8n5x3D2yUXa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-25 07:21:45', '2021-05-25 07:21:45', NULL),
(91, 'Gjkkjg@gmhfh.com', 'jfxjkkkbb', '$2y$10$ItJuj.uXRPAn4k/ogQd9EOrkCF5ohT1tBEjTvYroV6WAXaHB9zF2i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-25 07:32:13', '2021-05-25 07:32:13', NULL),
(92, 'Gdxvjjjuvv@jff.com', 'jgxxfbbsdvbnvc', '$2y$10$1R7akPy7vwqnu9d9FTlA7ui3hcbsLV2SK4TLs1RIGXUliRxXwaZSe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-25 07:35:09', '2021-05-25 07:35:09', NULL),
(93, 'Jxkuahksks@gmail.com', 'ikhskkxjsjz', '$2y$10$tfwybL07bcaBYdZzkvI0sucVskMBYXmccNJ002gS.Vc.8MoBf4KXq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-25 07:52:37', '2021-05-25 07:52:37', NULL),
(94, 'dutchtahu3434else@gmail.com', 'AuDFRhSsQYZdIx', '$2y$10$VkfPJ/I.0GPmYk2M7NRzk.tf2esa/U4XLLUCzZjKwCu6n8XIffcAm', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-25 23:33:36', '2021-05-25 23:33:36', NULL),
(95, NULL, 'Lê Dương Lâm', NULL, NULL, NULL, 'facebook', NULL, 'Lê Dương Lâm', 'https://graph.facebook.com/v3.3/328325788679273/picture?type=normal', NULL, NULL, NULL, 'active', 'Ni9Fq60pbXJEmv9afgjoRwJr0y3n51mgVDXyQ7DVaPqsu8iCAL8NajRCqXYQ', NULL, NULL, '2021-05-29 07:52:06', '2021-05-29 07:52:06', NULL),
(96, 'test@gmail.com', NULL, '$2y$10$BqSe9oOSm/PDAVb/48R9Ye1Nf/mlUOM6rz3vnsPr3DyqX2XiMhI4u', NULL, NULL, NULL, 'Test', 'abc', '63cKGomq3V.jpg', NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-29 19:08:23', '2021-05-29 19:08:23', NULL),
(97, 'fraternaljosefcamb@gmail.com', 'HhoOAQIkasmfgew', '$2y$10$Xz6xvApSIOusZrMhXrz4O.GtnRfajIcsnKqxS6Maj.BlKC56Nqa/q', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-30 02:14:03', '2021-05-30 02:14:03', NULL),
(98, 'datnq@test.com', 'datnq@test.com', '$2y$10$h7PNT1spHKEaWIpCbxb9Wua3Rq0NHNyGKDYG6Oz5i/fXoIZvUJHMS', NULL, NULL, NULL, 'datnq', 'last name', 'https://anyclass.vn/enduser/assets/images/logo.png', NULL, '4567422654', '2021-10-20', 'active', NULL, NULL, NULL, '2021-05-31 01:40:15', '2021-06-01 02:26:26', NULL),
(99, 'phonggiangvien@gmail.com', NULL, '$2y$10$5nJ2NfKzD19ZxAKug6odNuu7geGCUsv5O51Dc5Kxcg6qY39EPSJTS', NULL, NULL, NULL, 'Giang vien', 'Phong', 'VRNwtpUlOg.jpg', NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-05-31 23:26:24', '2021-05-31 23:26:24', NULL),
(100, 'goodedu2021@gmail.com', 'HYEUNSOO SON', NULL, NULL, NULL, 'google', 'HYEUNSOO', 'SON', 'https://lh3.googleusercontent.com/a/AATXAJzAJ6e9tzPxy6W_u8kAzU55JbjBroz95tTvG0M=s96-c', NULL, NULL, NULL, 'active', 'IhZfo5WiyPI4ipwKqPiK8MIJOdaja3uSQiQ0nIQeBqMBdcMQYIfHsIWQgmpz', NULL, NULL, '2021-06-04 08:54:16', '2021-06-04 08:54:16', NULL),
(101, 'giangvien01@gmail.com', NULL, '$2y$10$2mFRHTYnWnLZRvrIfANz1uOsxvHq7pu/DRy/WJCcLv9sM1jV3eELe', NULL, NULL, NULL, 'giangvien', 'abc', 'M34DscOFrq.png', NULL, NULL, NULL, 'active', NULL, NULL, 1, '2021-06-04 20:05:59', '2021-06-04 20:05:59', NULL),
(102, 'khachhanga@gmail.com', 'khachhanga', '$2y$10$Qrf4MW5aPPbWBg9i77rWsuHmrHUk.a46ubUhIUupsr7W3Tbxeofli', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-06-04 20:13:44', '2021-06-04 20:13:44', NULL),
(103, 'marketing@anyhow.vn', NULL, '$2y$10$V6NWWAGeer9846aFGCBsG.W7FklQb7C4bHPIgEpOld.5mtRvotUme', NULL, NULL, NULL, 'Nguyen', 'Minh Anh', 'Ji2MPk9pVM.png', NULL, NULL, NULL, 'active', NULL, NULL, 28, '2021-06-04 20:43:51', '2021-06-25 02:58:53', NULL),
(104, 'phongprolx98@gmail.com', 'Phong Nguyen', NULL, NULL, NULL, 'google', 'Phong', 'Nguyen', 'https://lh3.googleusercontent.com/a/AATXAJwPPFOeo-XSfPmYG0dwJE29vUn3F6B1yjJ5BOys=s96-c', NULL, NULL, NULL, 'active', 'mNlJlYlH9uH31TYzSJ5SpFOIArn0j2SW764SB5KKEX2E77gQc79QjGldOtju', NULL, NULL, '2021-06-10 23:41:52', '2021-06-10 23:41:52', NULL),
(105, 'basilsmith8757@gmail.com', 'ZMekNUlATaOt', '$2y$10$zu/jdVX.aSiDTQPETYZLM.F.YPoW6Zl1vghvD9plv8O4iDoNHa5ge', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-06-11 01:17:35', '2021-06-11 01:17:35', NULL),
(106, 'yerinsun@gmail.com', '손현수', NULL, NULL, NULL, 'google', '현수', '손', 'https://lh3.googleusercontent.com/a/AATXAJz2NOTy5i_KVirCpTaAvNkgYsh4wK_Gtp4s5uva=s96-c', NULL, NULL, NULL, 'active', 'Y338yT8DmvsjRRP7eGHj0QeJMsB1Yxdhzsn23vkphhpC85DqOjVOIJpAebJ0', NULL, NULL, '2021-06-12 22:54:12', '2021-06-12 22:54:12', NULL),
(107, 'nthuychi2104@gmail.com', 'Chi Ngô Thùy', NULL, NULL, NULL, 'google', 'Chi', 'Ngô Thùy', 'https://lh3.googleusercontent.com/a-/AOh14Gga5eMKxyv9dl5a8QGFS7fJvHDWff48SCYeU6Wp_A=s96-c', NULL, NULL, NULL, 'active', '8YhqbiOBrRwjqbII4mB64EEv7gAMxdO8i1fINGzA0n29QdcNlyPi3XUdcOG3', NULL, NULL, '2021-06-14 00:43:02', '2021-06-14 00:43:02', NULL),
(108, 'khang@gmail.com', NULL, '$2y$10$jpGo9CVouFwdJLnTB7/13uXEgZAsZZfTlhGHj9d37DC3azF/JIVJO', NULL, NULL, NULL, 'khang', 'nguyen', NULL, NULL, NULL, NULL, 'active', NULL, NULL, 1, '2021-06-25 05:44:11', '2021-06-28 04:48:22', NULL),
(110, 'lucygraves986@gmail.com', 'wcSVGavetzjAPUKn', '$2y$10$/6oA5xuoWNv4ePcRRbXfeOUY1J79LAHchxD8yYOJQLbgFFvTVZi2u', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-07-05 20:20:01', '2021-07-05 20:20:01', NULL),
(111, 'ichimaruginzu1110@gmail.com', 'ichimaruginzu1110@gmail.com', '$2y$10$QMdOCXiEeqz4avyHyq3FYu5CnJca4XsSXxOhGXT5MFQ2frTLAwjJO', NULL, NULL, 'website', 'Nguyễn', 'Linh', NULL, NULL, '498785455', '2002-07-08', 'active', NULL, NULL, NULL, '2021-07-12 19:13:32', '2021-07-13 19:57:24', NULL),
(113, 'operator@anyhow.vn', 'Operator1', '$2y$10$GhbH0WJa7BdRoX/keerbPesWqWUCeVZj4UevYjkVmj84V8OGcjVXG', NULL, NULL, 'website', 'Liu', 'Desi', NULL, NULL, '0963090416', '1987-26-12', 'active', NULL, NULL, NULL, '2021-07-16 01:30:50', '2021-10-02 09:10:19', NULL),
(114, 'nhatthao.nckh@gmail.com', 'Đỗ Thị Nhật Thảo', NULL, NULL, NULL, 'facebook', 'Nhật Thảo', 'Đỗ Thị Nhật Thảo', 'https://graph.facebook.com/v3.3/1184109802001050/picture?type=normal', NULL, NULL, NULL, 'active', 'exg1PuM36BtjgFsh8YSFwNrey3X77cCeuE9NDLGEYNhpHTvkuHVCTDS9fFwU', NULL, 28, '2021-07-16 01:32:52', '2021-08-15 09:21:48', NULL),
(115, 'ndtdeveloper1705@gmail.com', 'Đức Thủy', NULL, NULL, NULL, 'facebook', NULL, 'Đức Thủy', 'https://graph.facebook.com/v3.3/1214242289092507/picture?type=normal', NULL, NULL, NULL, 'active', 'yl6UVOl5U69g7WO3MGA2Bhq22WRSqwzqa82HOOU58VzXDvEg6sfWq7I9ChKj', NULL, NULL, '2021-07-20 06:41:18', '2021-07-20 06:41:18', NULL),
(116, 'thlam021995@gmail.com', 'Trần Lâm', NULL, NULL, NULL, 'google', 'Trần', 'Lâm', 'https://lh3.googleusercontent.com/a-/AOh14GjInbrXXmSZr5VaiQnWlOJRHsMA66GQKBjpLOCXRQ=s96-c', NULL, NULL, NULL, 'active', 'WiYE1rLN6HmRfkPcm8TGRYgGvthrkYFvOsuagBbUOZiWlqRbod6PcZsZz7QV', NULL, NULL, '2021-07-20 20:20:20', '2021-07-20 20:20:20', NULL),
(118, 'tranlam.famik@gmail.com', 'godpzo', '$2y$10$IrEUFJb3JymB/n3MI.g81e/HWMDjNalfVRbrhsJjU3pZMpKqmhknK', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-07-20 21:32:48', '2021-07-20 21:32:48', NULL),
(119, 'tranlam321@gmail.com', 'godpzo', '$2y$10$HLGvUn1fQzFZgBrubPxFFeW90j58MMLHOSui85VGRULBsxgEfsbau', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-07-20 23:39:58', '2021-07-20 23:39:58', NULL),
(120, 'geogatedproject414@gmail.com', 'gokuvegeta', '$2y$10$oLntBCxLZIbmFNhe6A8ER.PGewSESY.XzmKIMkE/LE8ulpO1RAmLK', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-07-23 00:58:04', '2021-07-23 00:58:04', NULL),
(121, 'geogatedproject414@gmail.com', 'Gokuvegeta', NULL, NULL, NULL, 'facebook', NULL, 'Gokuvegeta', 'https://graph.facebook.com/v3.3/37502200941912/picture?type=normal', NULL, NULL, NULL, 'active', '3DXxRJqV7MDp3FzBOlyKzQmzhmNNCTOGE8qOcVZ4Q7xTdEfjzYZfh2AFkpKO', NULL, NULL, '2021-07-23 00:58:49', '2021-07-23 00:58:49', NULL),
(122, 'videoeditor2@anyhow.vn', 'Nguyễn Giang', '$2y$10$RCWIHx83XHUAmzHUPrIZve33Z5ndJTrZeKtTj.E8GxmEpuxTvJyeS', NULL, NULL, 'website', 'Nguyễn', 'Đức Giang', NULL, NULL, '0904150229', '1982-11-01', 'active', NULL, NULL, NULL, '2021-07-25 22:21:36', '2021-07-25 22:22:32', NULL),
(123, 'anyhowcoo@gmail.com', 'anyhowad', '$2y$10$vyzIQivk6dr4hH9XeUNJNu..XGFU7xLo33VfVNeaILuUeQnk31/He', NULL, NULL, 'website', 'Ads', 'anyhow', NULL, NULL, NULL, NULL, 'active', 'X9sT38uWAdGsuDAvG9o9nLLK5KYsu32nMRgvRLIOcVCUghi7dSroEZCEpvxs', NULL, 28, '2021-07-27 22:41:18', '2021-07-27 22:45:55', NULL),
(124, 'anyhowvn@gmail.com', 'anyhoweditor', '$2y$10$.CECEGONQzPL9I4yoxYPUORIDqQMqCpbvX3STUAqKbuITnaeWyBIu', NULL, NULL, 'website', 'Nhung', 'Hồng', NULL, NULL, NULL, NULL, 'active', '8DDF0YNHjpeeLsIKdpJtKu2H0g67CH9Z4tPFiGVu6nrXImeSDzOvJmdlfPlf', NULL, 28, '2021-07-27 23:09:54', '2021-10-07 09:30:41', NULL),
(125, 'phongprolx99@gmail.com', NULL, '$2y$10$5o14J.46wy1II/htQZ4asuycdayd9I08bfwKF/QI2JJuNnlwE.nUS', NULL, NULL, NULL, 'phong', 'test', NULL, 'https://anyclass.vn/storage/photos/1/2jCj2Jd03W.jpg', NULL, NULL, 'active', NULL, NULL, 1, '2021-07-28 02:51:15', '2021-07-28 02:51:15', NULL),
(126, 'phongprolx97@gmail.com', NULL, '$2y$10$7CNvwn9nOuKHJUrf4.xlIuzR.H7jrzo5W7AAv9Bu9rDHUYYQ6rn/q', NULL, NULL, NULL, 'Phong', 'Dev', NULL, NULL, NULL, NULL, 'active', NULL, NULL, 1, '2021-07-29 03:07:38', '2021-07-29 03:07:38', NULL),
(127, 'linhbq689@wru.vn', NULL, '$2y$10$JOUXhgr6BZ4cZJqihndLK.XD1H3WhKBVD1D4yzYXnBiz41smjQIEq', NULL, NULL, NULL, 'Bùi', 'Linh', NULL, 'https://anyclass.vn/storage/photos/1/2W9waVHd8G.jpg', NULL, NULL, 'active', NULL, NULL, 28, '2021-07-29 18:33:30', '2021-07-29 18:33:30', NULL),
(128, 'd3511liu@gmail.com', 'Desi', '$2y$10$6H6Hu6Icrv8678dpjHnbDun/wXzWa5voxNjJs0TuWWgyqAkRX00SS', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-07-29 19:04:12', '2021-07-29 19:04:12', NULL),
(129, 'natuan182@gmail.com', 'Tuan Nguyen', '$2y$10$oibSuGH1OkC8mMydimoMrOGlnU02b6ZQ/54wd/sGO6Yk5R1jFIFiC', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-07-29 22:05:19', '2021-07-29 22:05:19', NULL),
(130, 'phongprolx98@gmail.com', 'thanhphongnew', '$2y$10$cvcdup2wMnbFM0fJ1viHGeT19E1qsjs4xZQKT/JLWSa1p6rpvYU8W', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-07-31 06:44:10', '2021-07-31 06:44:10', NULL),
(131, 'monicaharmon5516@gmail.com', 'TwEVhjPKNFgyuLpG', '$2y$10$KF48f2V2ClWTRhGYudinpu3oTuJo1IcrBoWasfp.SaqpNRQNvH2E.', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-07-31 20:04:09', '2021-07-31 20:04:09', NULL),
(132, 'lethuyhanhvn@gmail.com', 'Lê Thúy Hạnh', NULL, NULL, NULL, 'facebook', NULL, 'Lê Thúy Hạnh', 'https://graph.facebook.com/v3.3/10159534318173104/picture?type=normal', NULL, NULL, NULL, 'active', 'DBCVHDfjlKwbq0PtxyDoWGGeRTDfdbtw2NXewk8KLnPUMATgQ4b5FVzjE3sR', NULL, NULL, '2021-08-03 09:51:18', '2021-08-03 09:51:18', NULL),
(133, 'ducthuy1705@gmail.com', 'Đức Thủy', '$2y$10$30so3KggtM/plQk2u/NRNOY1U1mgSjjxCumnOCtm6wzIeXx1nymlG', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-08-03 11:10:28', '2021-08-03 11:10:28', NULL),
(134, 'hoangviann@gmail.com', 'Hoang Bui Huy', NULL, NULL, NULL, 'google', 'Hoang', 'Bui Huy', 'https://lh3.googleusercontent.com/a-/AOh14Ggp9zSfPDMDSYT49gG7cltYyTZjd-ROcLvuEb6o=s96-c', NULL, NULL, NULL, 'active', 'uHy88UGHcoSF0uT9MX7jGbylVNaQAlzn7tJ9O7OZj9a0INXSET8mBVTPrS1n', NULL, NULL, '2021-08-04 02:14:41', '2021-08-04 02:14:41', NULL),
(135, 'thaihungcntt@gmail.com', 'Thái Hùng', NULL, NULL, NULL, 'facebook', NULL, 'Thái Hùng', 'https://graph.facebook.com/v3.3/4073127519472786/picture?type=normal', NULL, NULL, NULL, 'active', 'MYhk3KIAFwA6K3y8cgg79elAPvQHopSXUD5DkUkYHGnRQZCsOwjSHpoXeWPI', NULL, NULL, '2021-08-05 15:21:06', '2021-08-05 15:21:06', NULL),
(137, 'tuancisco@gmail.com', 'tuannt', '$2y$10$Jh/jgaEJGv4ucDUGfQ82ae6NoPNh49.xWBBMmtWd.p67YhDtB0SlG', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-08-07 08:04:53', '2021-08-07 08:04:53', NULL),
(138, 'nguyenhoahaiduong16052002@gmail.com', 'haiduongnguyen2002', '$2y$10$MirDP/E4U8WFqz1moy88I.pKc8fRnGr4zqQTYx09Nkm1bqwtL0Rj2', NULL, NULL, 'website', 'Nguyễn', 'Hải Dương', NULL, NULL, '0365881216', '2002-05-16', 'active', NULL, NULL, NULL, '2021-08-07 15:58:45', '2021-08-07 17:03:37', NULL),
(139, 'haiduongnguyen1605@gmail.com', 'haiduong', '$2y$10$ChaVLh2ahfaCRi7hwqXyDu6j171O1Usbpd7qZGq42kJNhU81MS6xi', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-08-07 16:37:59', '2021-08-07 16:37:59', NULL),
(140, 'ohhlink249@gmail.com', 'dieulinhnguyen', '$2y$10$I6AF45OBBUoM1beeuqXwZucxeJzQbpowA0.rlWrvy8A123RYOrLsW', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-08-07 16:43:07', '2021-08-07 16:46:45', NULL),
(141, 'bekhoe.bengoan9x@gmail.com', 'Đinh Anh Tuấn', NULL, NULL, NULL, 'facebook', NULL, 'Đinh Anh Tuấn', 'https://graph.facebook.com/v3.3/3033507320195839/picture?type=normal', NULL, NULL, NULL, 'active', '2XK6Awy0sg6uVt2C152US3b91N6Elr84b0b2HosahKOad2yXA8DL5epIwU73', NULL, NULL, '2021-08-11 06:19:34', '2021-08-11 06:19:34', NULL),
(142, 'ryanfit1102@gmail.com', 'Nguyễn ryan', NULL, NULL, NULL, 'google', 'Nguyễn', 'ryan', 'https://lh3.googleusercontent.com/a/AATXAJxQ-_RucFTc2XOk71SGUZH9i-QDHGEaFwU2R5Xx=s96-c', NULL, NULL, NULL, 'active', 'OpXT3Iy1OCXbuIh7oFWJg5etYup8JUQNbbKs9rv3x4zgmvlqmKvfnsPuUCIs', NULL, NULL, '2021-08-12 09:47:24', '2021-08-12 09:47:24', NULL),
(143, 'phuong21294@gmail.com', 'Nguyễn Đức Phương', NULL, NULL, NULL, 'facebook', 'Đức Phương', 'Nguyễn', 'https://graph.facebook.com/v3.3/2271494412993560/picture?type=normal', 'https://anyclass.vn/storage/photos/28/Sở thích/0907 Thêu nổi - Phương/GT1 - Giới thiệu- 500x350pt-min.jpg', NULL, NULL, 'active', 'ykvkajVD2f3edizDMnkupfuzBGrEkMdpjLlOenHZmillFgMfJ2pQlL0GUXrM', NULL, 28, '2021-08-14 02:34:14', '2021-08-20 06:44:54', NULL),
(145, 'mneal9211@gmail.com', 'UpPlwoiFNH', '$2y$10$w66J3D6OC0quDB8dHw2KzujfR4aL0/8ssOZX76hYBePcp3uxWCQhe', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-08-20 03:00:08', '2021-08-20 03:00:08', NULL),
(146, 'ttrucquynh63@gmail.com', 'Bubbi05', '$2y$10$w.4RB4tT/BvRzooHzAUYn.wcZX/Hbu2D12tiLo.CUpawCRLB3t2aO', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-08-20 12:21:46', '2021-08-20 12:21:46', NULL),
(147, 'phongtest22@gmail.com', 'linh teae', '$2y$10$FaFxrBWVzLzX7lDLR0O5uufJ6zHEyWye8UbAoCwlHrjRExSQ8W1ea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-08-21 09:26:15', '2021-08-21 09:26:15', NULL),
(148, 'phongtest652@gmail.com', 'linh teae', '$2y$10$bXp6s5DuG4WG42ji2n68deQP4RucJId6ZrzS2XwhamoLkB.a2z4oO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-08-21 10:41:34', '2021-08-21 10:41:34', NULL),
(149, 'nongto477@gmail.com', 'vanto', '$2y$10$xUhKOUwvmejwrbpV7OCD6u1EvHDQ.71v5wc.nxuGdCsGLUB0XHOTi', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-08-27 08:18:25', '2021-08-27 08:18:25', NULL),
(150, 'hahieu1980@gmail.com', 'Hahieu', '$2y$10$ZZJhnhIgpmyaSA3UQCcWv./jGSeXT6g3TXwIF1wfC466ovB1zoZ82', NULL, NULL, 'website', 'Hà', 'Hiếu', NULL, NULL, '0938168322', '1980-09-02', 'active', NULL, NULL, NULL, '2021-08-28 08:59:52', '2021-08-28 09:16:06', NULL),
(151, 'shieldslauren548@gmail.com', 'zwNKdGvSipcLb', '$2y$10$tmU0MExyAS6nsu42GmZfxuSH9.tJ3dmeL.Vxr5Ks8hwjd85Rdl2I6', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-08-30 00:50:36', '2021-08-30 00:50:36', NULL),
(152, 'daop37566@gmail.com', 'Phương Đào', NULL, NULL, NULL, 'google', 'Phương', 'Đào', 'https://lh3.googleusercontent.com/a/AATXAJxrbl6_QJJQlU-3uxyK2Id2DIvQSOk63Hq8uSq9=s96-c', NULL, NULL, NULL, 'active', '4wcsoeCb8mWNKTs4aPHll7Omr1HGQ0xqhDHp8M7I5cIpVVSXtjcF3KqLgjiv', NULL, NULL, '2021-08-30 11:22:34', '2021-08-30 11:22:34', NULL),
(153, 'nangthanhmai', 'Thanhmai', '$2y$10$QJc92nky1HX/g3KDxTmtF.rw4HAKH17M7YXdK7fgOnfrO9f1YtiDy', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-08-31 00:29:40', '2021-08-31 00:29:40', NULL),
(154, 'dothanhmai82@gmail.com', 'dothanhmai', '$2y$10$KvbXZKdAOfJYRvCw9ogdP.kZQec6uWALaeMWFTkhxoX6XkutmDgEG', NULL, NULL, 'website', 'Thanh Mai', 'Đỗ', NULL, 'https://anyclass.vn/storage/photos/124/Bảo hiểm/khoa hoc1.jpg', NULL, NULL, 'active', 'wvoJabsdOtvTSRuwzJzQDfiG7dl0CjuhHmTV19htjwdVGwNZtt7d8quEAf9h', NULL, 28, '2021-08-31 00:34:10', '2021-09-02 15:38:08', NULL),
(155, 'binhtran140391@gmail.com', 'hoasitranbinh', '$2y$10$mEhsxJfRSkNzrPJkCl4MTeHaOQiTVxGdf8DTH9o2VeKMftwlZOeuS', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-09-02 04:25:32', '2021-09-02 04:25:32', NULL),
(159, NULL, '4992882932366533590', NULL, NULL, NULL, 'zalo', 'Hyeunsoo', 'Son', 'https://s120-ava-talk.zadn.vn/f/5/7/0/3/120/341a12e961e7aabce025298fe59e6f2f.jpg', NULL, NULL, '15/01/1984', 'active', '2GUx8Tj827teCu4G2VqXU3mFziqbGd9gUWj4y13X8EHPq9raJAuogjF55vtt', NULL, NULL, '2021-09-03 07:41:31', '2021-09-03 07:41:31', NULL),
(160, 'hlvthaihung@gmail.com', 'Hùng Thái', NULL, NULL, NULL, 'google', 'Hùng', 'Thái', 'https://lh3.googleusercontent.com/a/AATXAJwCwsPMNbE-f-lBdk6NKp35H_7xtR3uvu0E7krd=s96-c', NULL, NULL, NULL, 'active', 'NGWfMvv8wozCZvq45DEguZGK6MgXWsYQxikwZJ6x6zoXeJGqPNZuPVZeG0QA', NULL, NULL, '2021-09-05 09:17:30', '2021-09-05 09:17:30', NULL),
(161, 'phuong44781@donga.edu.vn', 'phuong44781@donga.edu.vn', NULL, NULL, NULL, 'facebook', 'Đào', 'Duy Phương', 'https://graph.facebook.com/v3.3/243897064320249/picture?type=normal', NULL, NULL, NULL, 'active', '3Fp9KtoceFxlL8gPBhYQ7WTq0Kkdfm56HEckF5hPcYKMLtormKwUTANkBPnM', NULL, NULL, '2021-09-08 09:32:55', '2021-09-08 09:32:55', NULL),
(162, NULL, '2483638892506200555', NULL, NULL, NULL, 'zalo', 'Mai', 'Lan', 'https://s120-ava-talk.zadn.vn/1/c/8/8/8/120/1675ec45576ce8ec54d4425c30c0ad76.jpg', NULL, NULL, '12/10/1982', 'active', 'UwcW6l8Cyzx3gHNG92sVebvy1qF2T23Yxk96S45PReFtwsYIjGMkEL6euVvD', NULL, NULL, '2021-09-09 04:33:20', '2021-09-09 04:33:20', NULL),
(163, 'myronbryant59@gmail.com', 'ZApaxRMeHJIqBXfG', '$2y$10$ld276NfUmXX7Zl7PL96UteVx7NpqKA9buQ6URqsUyw.qY90n8F.5.', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-09-09 14:29:52', '2021-09-09 14:29:52', NULL),
(164, NULL, '4992882932366533590', NULL, NULL, NULL, 'zalo', 'Hyeunsoo', 'Son', 'https://s120-ava-talk.zadn.vn/f/5/7/0/3/120/341a12e961e7aabce025298fe59e6f2f.jpg', NULL, NULL, '15/01/1984', 'active', 'Iu6ygdJkroc05wAzTc4f0nCBPL9GV92MXSMe0IyK2KQxWHZDVg49ncfaaCkH', NULL, NULL, '2021-09-09 16:48:46', '2021-09-09 16:48:46', NULL),
(165, NULL, '4992882932366533590', NULL, NULL, NULL, 'zalo', 'Hyeunsoo', 'Son', 'https://s120-ava-talk.zadn.vn/f/5/7/0/3/120/341a12e961e7aabce025298fe59e6f2f.jpg', NULL, NULL, '15/01/1984', 'active', 'e2TzvjhXJa9rHA65yoCpfsrtRW47eHwP458SNMgZi0O987azg1USVxIMs7wD', NULL, NULL, '2021-09-10 03:11:23', '2021-09-10 03:11:23', NULL),
(166, 'mailannguyenst@gmail.com', 'Mai Lan Nguyen', NULL, NULL, NULL, 'google', 'Mai Lan', 'Nguyen', 'https://lh3.googleusercontent.com/a/AATXAJzpQ-z-C8792fQxFPuuQcJMI9FgIKmEOuOrg5B8=s96-c', NULL, '0936118224', '1982-11-11', 'active', 'k403mV8X0o8b99SmB7HetR1WyO0FKoMqevL0xp0fQncCk39sakcWBnoQcnq1', NULL, 28, '2021-09-10 03:36:42', '2021-10-07 09:34:30', NULL),
(167, NULL, '4992882932366533590', NULL, NULL, NULL, 'zalo', 'Hyeunsoo', 'Son', 'https://s120-ava-talk.zadn.vn/f/5/7/0/3/120/341a12e961e7aabce025298fe59e6f2f.jpg', NULL, NULL, '15/01/1984', 'active', '0wCIfdZ6J3uDH3qOhutrHwUGTNcfRg2TurMkpNgQ8kgHAIgszHtSQpWh6sz9', NULL, NULL, '2021-09-10 17:08:28', '2021-09-10 17:08:28', NULL),
(168, NULL, '4992882932366533590', NULL, NULL, NULL, 'zalo', 'Hyeunsoo', 'Son', 'https://s120-ava-talk.zadn.vn/f/5/7/0/3/120/341a12e961e7aabce025298fe59e6f2f.jpg', NULL, NULL, '15/01/1984', 'active', '9jRZUsMgN6bwrAajauJMK4buzBTxqe5nSguxkYF5jNbkYFwPHsrc13ugjA44', NULL, NULL, '2021-09-10 17:19:14', '2021-09-10 17:19:14', NULL),
(169, NULL, '7546875827679477543', NULL, NULL, NULL, 'zalo', 'Quang', 'Linh', 'https://s120-ava-talk.zadn.vn/0/2/c/0/17/120/b39afc7eff4171ea9906a6e337e5b2e9.jpg', NULL, NULL, '04/10/1992', 'active', 'bcqCJZqf3bv20dmgu37YAn9T19k73ZXKKuHGyzB1wRagRTkOJCnWSlpwOK0K', NULL, NULL, '2021-09-16 10:04:16', '2021-09-16 10:04:16', NULL),
(170, NULL, '7546875827679477543', NULL, NULL, NULL, 'zalo', 'Quang', 'Linh', 'https://s120-ava-talk.zadn.vn/0/2/c/0/17/120/b39afc7eff4171ea9906a6e337e5b2e9.jpg', NULL, NULL, '04/10/1992', 'active', 'oGlpN6PUzRumAZNhAPYLDWyORxkcIySGJOPBevbNTU2IV7hqnBf6keLTiLdi', NULL, NULL, '2021-09-16 10:04:38', '2021-09-16 10:04:38', NULL),
(172, 'nguyentest@gmail.com', NULL, '$2y$10$cRxzfqRjzMzhc0d2akh1POIeOaM1LqXLybl.K/Zf6ycZZgpW2Tk9O', NULL, NULL, NULL, 'Nguyen', 'test', NULL, NULL, NULL, NULL, 'active', NULL, NULL, 1, '2021-09-17 09:01:04', '2021-09-17 09:01:04', NULL),
(173, NULL, '4992882932366533590', NULL, NULL, NULL, 'zalo', 'Hyeunsoo', 'Son', 'https://s120-ava-talk.zadn.vn/f/5/7/0/3/120/341a12e961e7aabce025298fe59e6f2f.jpg', NULL, NULL, '15/01/1984', 'active', 'clcxW11A8M2PPKdwe9tLkqihRdQkjpRoiSw9P5UdGM4FN40Fj89a5610DMpB', NULL, NULL, '2021-09-17 15:26:55', '2021-09-17 15:26:55', NULL),
(175, 'phong@gmail.com', 'phong123', '$2y$10$0DD4IYYC6KoXiXO30FLIjO4TkzBnZjqtMMbNHWVBLXx4tIrhF6kg6', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-09-24 17:09:19', '2021-09-24 17:09:19', NULL),
(176, 'phongdemo@gmail.com', 'phongdemo2', '$2y$10$0m1ySeYm7/OBmLZBVhuu4uAGxDMA5p46zlA0pyT9nvlcelW3MUw7y', NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-09-25 02:58:50', '2021-09-25 02:58:50', NULL),
(177, 'ngan98@gmail.com', 'ngan98', '$2y$10$/mQ7g9EEhNG9cFiABH0OI.v7aq9z2OPAuUqP6FDxFsryKLX.SoMiK', NULL, NULL, 'website', 'Nguyen', 'Ngan', NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-09-25 03:00:41', '2021-09-25 03:00:41', NULL),
(179, 'tobias@cybridge.jp', 'Nong Van To (Tobias)', NULL, NULL, NULL, 'google', 'Nong Van To', '(Tobias)', 'https://lh3.googleusercontent.com/a/AATXAJzhDNffBxRIujCYeWO4sKfD8Zguj62NU9psBQo=s96-c', NULL, NULL, NULL, 'active', 'aTUSAx0cyjuojsF9divAhKGnkqIDXvSAYKVt2SdRhMaLC9BzhWkctHxbAhmL', NULL, NULL, '2021-09-25 17:58:24', '2021-09-25 17:58:24', NULL),
(180, 'nongto477@gmail.com', 'To Nong', NULL, NULL, NULL, 'google', 'To', 'Nong', 'https://lh3.googleusercontent.com/a/AATXAJwimTUqbR76psAyzFs_uWtRQh49E_5c5B5Dr3b8=s96-c', NULL, NULL, NULL, 'active', 'UgBBc9u0t7o7XevSjGi2QongQCSVi4orFkTtPmehGecmA5O9jKzC2bb8oTxn', NULL, NULL, '2021-09-27 16:40:50', '2021-09-27 16:40:50', NULL),
(181, 'dzung@chai.finance', 'Dzung Pham Viet', NULL, NULL, NULL, 'google', 'Dzung', 'Pham Viet', 'https://lh3.googleusercontent.com/a/AATXAJwO9xEZermyOsqyP61LSwJC3Hi6TzFle09SliyS=s96-c', NULL, NULL, NULL, 'active', 'HqCKAnFKSFouRcxBFrTFSzxt4aCsp2vvEfDIDPJUEXqvoUiEUMVO6OTlrih1', NULL, NULL, '2021-10-01 08:55:12', '2021-10-01 08:55:12', NULL),
(182, 'trangnth17886@gmail.com', 'TRANG NGUYEN THI HIEN', NULL, NULL, NULL, 'google', 'TRANG', 'NGUYEN THI HIEN', 'https://lh3.googleusercontent.com/a-/AOh14Gi4Ha8KPCZQjEC8HUirSOc2CppGNKRzpBUblF4sTg=s96-c', NULL, NULL, NULL, 'active', 'FfRRVi9luX4yt2rLScLGfJysGbNUpwNKLC4epZ9WrzzWNWJiY7nQqnuPQ9Jb', NULL, NULL, '2021-10-02 02:15:48', '2021-10-02 02:15:48', NULL),
(183, 'trangntt28tccn@gmail.com', 'trangntt28', '$2y$10$c95IZC0gkN.bIsXFY9xd9.5fZmME/2xgQAJVOhLwVXW9Ph/KKp3Tu', NULL, NULL, 'website', 'Trang', 'Nguyen', NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-10-02 10:57:17', '2021-10-02 10:57:17', NULL),
(184, 'maivanvo1234@gmail.com', 'Malfoy Slytherin', '$2y$10$LLDfVnjdZwtD6kCZjdvNyuUX9s9V1dHtTVglDCIXPGcGi8DLJEU3K', NULL, NULL, 'website', 'Võ', 'Tân', NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-10-07 02:44:49', '2021-10-07 02:44:49', NULL),
(185, NULL, '4992882932366533590', NULL, NULL, NULL, 'zalo', 'Hyeunsoo', 'Son', 'https://s120-ava-talk.zadn.vn/d/a/e/6/4/120/341a12e961e7aabce025298fe59e6f2f.jpg', NULL, NULL, '15/01/1984', 'active', 'nkbgXKk31PYy2hwymONFM4kU3kD0JQumeyVswv7aH3XmyvKo6egrk8blJDbX', NULL, NULL, '2021-10-09 04:42:04', '2021-10-09 04:42:04', NULL),
(186, 'dungna@nganluong.vn', 'Nguyễn Anh Dũng', NULL, NULL, NULL, 'google', 'Nguyễn Anh', 'Dũng', 'https://lh3.googleusercontent.com/a-/AOh14Gj2dtw-DYHTX92KudfwycOYq4RnEjKZywb9ktt5=s96-c', NULL, NULL, NULL, 'active', 'I3mFrxCejeDTiit0KBoDjjkq8y2EcDkJmIYmNPBY759E58DCLNTVvgZ5Mawy', NULL, NULL, '2021-10-14 04:24:56', '2021-10-14 04:24:56', NULL),
(187, 'hoangduong941@gmail.com', 'Duong Yen Hoang', NULL, NULL, NULL, 'google', 'Duong Yen', 'Hoang', 'https://lh3.googleusercontent.com/a/AATXAJzKtmDq7kqwKk2iEkVSOQaUReoAOJ7hyAyLrc1r=s96-c', NULL, NULL, NULL, 'active', 'DFXuBVsCnEDsx0C5Mg0IE7T6QJHmEuU4fflBe7vbLsA0h7RnR5M5oBky1Vl3', NULL, NULL, '2021-10-17 13:03:18', '2021-10-17 13:03:18', NULL),
(188, 'doannhung25@gmail.com', 'Doannhung', '$2y$10$Uvf1qSckKY097JkFA4xb1eLhiOHH1/bNv720QBHCRgPbscpY.CNVi', NULL, NULL, 'website', 'Đoàn', 'Nhung', NULL, NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2021-10-18 03:18:18', '2021-10-18 03:18:18', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_course`
--

CREATE TABLE `users_course` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users_course`
--

INSERT INTO `users_course` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(52, 79, 50, '2021-08-03 10:01:26', '2021-08-03 10:01:26'),
(54, 134, 56, '2021-08-04 09:15:23', '2021-08-04 09:15:23'),
(55, 128, 56, '2021-08-05 10:12:47', '2021-08-05 10:12:47'),
(56, 135, 51, '2021-08-05 22:21:29', '2021-08-05 22:21:29'),
(58, 136, 50, '2021-08-07 14:22:57', '2021-08-07 14:22:57'),
(59, 112, 51, '2021-08-07 14:25:57', '2021-08-07 14:25:57'),
(60, 137, 50, '2021-08-07 15:19:48', '2021-08-07 15:19:48'),
(61, 115, 51, '2021-08-08 22:33:16', '2021-08-08 22:33:16'),
(62, 28, 58, '2021-08-10 11:46:54', '2021-08-10 11:46:54'),
(64, 112, 50, '2021-08-10 21:04:50', '2021-08-10 21:04:50'),
(65, 112, 58, '2021-08-10 21:17:07', '2021-08-10 21:17:07'),
(66, 95, 56, '2021-08-11 13:08:02', '2021-08-11 13:08:02'),
(67, 112, 26, '2021-08-12 11:06:27', '2021-08-12 11:06:27'),
(68, 142, 56, '2021-08-12 16:48:01', '2021-08-12 16:48:01'),
(69, 144, 61, '2021-08-16 10:46:40', '2021-08-16 10:46:40'),
(70, 144, 25, '2021-08-16 14:07:51', '2021-08-16 14:07:51'),
(71, 146, 52, '2021-08-20 19:23:02', '2021-08-20 19:23:02'),
(73, 79, 61, '2021-08-30 21:11:09', '2021-08-30 21:11:09'),
(74, 150, 61, '2021-08-30 22:18:00', '2021-08-30 22:18:00'),
(75, 143, 50, '2021-08-31 09:10:53', '2021-08-31 09:10:53'),
(76, 109, 61, '2021-09-04 11:56:37', '2021-09-04 11:56:37'),
(77, 160, 51, '2021-09-05 17:11:12', '2021-09-05 17:11:12'),
(78, 114, 51, '2021-09-05 17:11:50', '2021-09-05 17:11:50'),
(80, 136, 26, '2021-09-08 16:08:31', '2021-09-08 16:08:31'),
(81, 136, 51, '2021-09-08 16:20:45', '2021-09-08 16:20:45'),
(82, 159, 26, '2021-09-09 09:54:26', '2021-09-09 09:54:26'),
(83, 159, 61, '2021-09-09 09:55:29', '2021-09-09 09:55:29'),
(84, 109, 26, '2021-09-09 11:13:58', '2021-09-09 11:13:58'),
(85, 136, 58, '2021-09-16 21:39:19', '2021-09-16 21:39:19'),
(86, 136, 61, '2021-09-17 06:23:12', '2021-09-17 06:23:12'),
(87, 171, 58, '2021-09-24 22:39:20', '2021-09-24 22:39:20'),
(88, 174, 26, '2021-09-24 22:43:44', '2021-09-24 22:43:44'),
(89, 178, 50, '2021-09-27 10:35:40', '2021-09-27 10:35:40'),
(90, 178, 64, '2021-09-30 13:58:11', '2021-09-30 13:58:11'),
(91, 113, 50, '2021-10-02 10:03:19', '2021-10-02 10:03:19'),
(92, 182, 61, '2021-10-02 10:32:46', '2021-10-02 10:32:46'),
(93, 183, 61, '2021-10-06 08:55:37', '2021-10-06 08:55:37'),
(94, 1, 58, '2021-10-09 11:00:42', '2021-10-09 11:00:42'),
(95, 1, 64, '2021-10-09 12:18:00', '2021-10-09 12:18:00'),
(96, 188, 64, '2021-10-18 10:26:12', '2021-10-18 10:26:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_lesson`
--

CREATE TABLE `user_lesson` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT 0,
  `watched` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_lesson`
--

INSERT INTO `user_lesson` (`id`, `user_id`, `lesson_id`, `view`, `watched`, `created_at`, `updated_at`) VALUES
(1, 1, 337, 0, 1, NULL, NULL),
(2, 1, 274, 0, 1, NULL, NULL),
(3, 1, 277, 0, 1, NULL, NULL),
(5, 1, 268, 0, 1, NULL, NULL),
(6, 178, 220, 0, 1, NULL, NULL),
(7, 178, 94, 0, 1, NULL, NULL),
(8, 178, 95, 0, 1, NULL, NULL),
(9, 178, 96, 0, 1, NULL, NULL),
(10, 160, 264, 0, 1, NULL, NULL),
(11, 143, 220, 0, 1, NULL, NULL),
(12, 143, 95, 0, 1, NULL, NULL),
(13, 143, 96, 0, 1, NULL, NULL),
(14, 143, 109, 0, 1, NULL, NULL),
(15, 143, 110, 0, 1, NULL, NULL),
(16, 143, 111, 0, 1, NULL, NULL),
(17, 143, 100, 0, 1, NULL, NULL),
(18, 143, 101, 0, 1, NULL, NULL),
(19, 143, 102, 0, 1, NULL, NULL),
(20, 143, 103, 0, 1, NULL, NULL),
(21, 143, 104, 0, 1, NULL, NULL),
(22, 178, 339, 0, 1, NULL, NULL),
(23, 178, 372, 0, 1, NULL, NULL),
(24, 143, 112, 0, 1, NULL, NULL),
(25, 113, 220, 0, 1, NULL, NULL),
(26, 113, 94, 0, 1, NULL, NULL),
(27, 113, 109, 0, 1, NULL, NULL),
(28, 113, 104, 0, 1, NULL, NULL),
(29, 113, 101, 0, 1, NULL, NULL),
(30, 113, 95, 0, 1, NULL, NULL),
(31, 113, 96, 0, 1, NULL, NULL),
(32, 113, 110, 0, 1, NULL, NULL),
(33, 113, 114, 0, 1, NULL, NULL),
(34, 113, 112, 0, 1, NULL, NULL),
(35, 113, 103, 0, 1, NULL, NULL),
(36, 113, 113, 0, 1, NULL, NULL),
(37, 113, 100, 0, 1, NULL, NULL),
(38, 113, 111, 0, 1, NULL, NULL),
(39, 178, 114, 0, 1, NULL, NULL),
(40, 178, 100, 0, 1, NULL, NULL),
(41, 178, 113, 0, 1, NULL, NULL),
(42, 178, 104, 0, 1, NULL, NULL),
(43, 178, 103, 0, 1, NULL, NULL),
(44, 178, 342, 0, 1, NULL, NULL),
(45, 178, 344, 0, 1, NULL, NULL),
(46, 178, 347, 0, 1, NULL, NULL),
(47, 178, 354, 0, 1, NULL, NULL),
(48, 178, 369, 0, 1, NULL, NULL),
(49, 178, 352, 0, 1, NULL, NULL),
(50, 178, 361, 0, 1, NULL, NULL),
(51, 183, 337, 0, 1, NULL, NULL),
(52, 183, 268, 0, 1, NULL, NULL),
(53, 1, 267, 0, 1, NULL, NULL),
(54, 1, 250, 0, 1, NULL, NULL),
(55, 1, 339, 0, 1, NULL, NULL),
(56, 1, 372, 0, 1, NULL, NULL),
(57, 1, 340, 0, 1, NULL, NULL),
(58, 182, 337, 0, 1, NULL, NULL),
(59, 182, 268, 0, 1, NULL, NULL),
(60, 182, 269, 0, 1, NULL, NULL),
(61, 183, 287, 0, 1, NULL, NULL),
(62, 183, 279, 0, 1, NULL, NULL),
(63, 183, 269, 0, 1, NULL, NULL),
(64, 183, 270, 0, 1, NULL, NULL),
(65, 183, 271, 0, 1, NULL, NULL),
(66, 183, 272, 0, 1, NULL, NULL),
(67, 183, 273, 0, 1, NULL, NULL),
(68, 183, 274, 0, 1, NULL, NULL),
(69, 183, 275, 0, 1, NULL, NULL),
(70, 183, 276, 0, 1, NULL, NULL),
(71, 183, 277, 0, 1, NULL, NULL),
(72, 183, 278, 0, 1, NULL, NULL),
(73, 183, 280, 0, 1, NULL, NULL),
(74, 183, 281, 0, 1, NULL, NULL),
(75, 183, 282, 0, 1, NULL, NULL),
(76, 1, 341, 0, 1, NULL, NULL),
(77, 1, 371, 0, 1, NULL, NULL),
(78, 188, 339, 0, 1, NULL, NULL),
(79, 188, 372, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `widgets`
--

CREATE TABLE `widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_ko` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `date_ko` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `widgets`
--

INSERT INTO `widgets` (`id`, `name`, `content`, `date`, `status`, `location`, `name_ko`, `content_ko`, `order_no`, `created_by`, `created_at`, `updated_at`, `updated_by`, `date_ko`) VALUES
(22, 'Activities', '<ul>\r\n	<li><a href=\"https://alligayacht.com\">Trang chủ</a></li>\r\n	<li><a href=\"https://alligayacht.com/gioi-thieu\">Giới thiệu</a></li>\r\n	<li><a href=\"https://alligayacht.com/dich-vu\">Dịch vụ</a></li>\r\n	<li><a href=\"https://alligayacht.com/du-thuyen\">Du thuyền</a></li>\r\n	<li><a href=\"https://alligayacht.com/tin-tuc\">Tin tức</a></li>\r\n</ul>', NULL, 'inactive', 'footer_block_1', 'About us', '<p>&nbsp;<a href=\"https://alligayacht.com\"><span style=\"color:#ffffff;\">Home</span></a></p>\r\n\r\n<p><span style=\"color:#ffffff;\"><a href=\"https://alligayacht.com/gioi-thieu\">About </a>Us</span></p>\r\n\r\n<p><a href=\"https://alligayacht.com/dich-vu\"><span style=\"color:#ffffff;\">Services</span></a></p>\r\n\r\n<p><a href=\"https://alligayacht.com/du-thuyen\"><span style=\"color:#ffffff;\">Yachts</span></a></p>\r\n\r\n<p><a href=\"https://alligayacht.com/tin-tuc\"><span style=\"color:#ffffff;\">News</span></a></p>', NULL, 1, '2021-06-09 23:20:03', '2022-01-25 08:41:05', 1, NULL),
(23, 'Địa chỉ', '<p><span style=\"color:#ffffff;\">Số 144 An Dương Vương, T&acirc;y Hồ, H&agrave; Nội</span></p>', NULL, 'inactive', 'footer_block_2', 'Address', '<p><span style=\"color:#ffffff;\">No. 144 An Dương Vương Street, Tay Ho District, Ha Noi City</span></p>', NULL, 1, '2021-06-09 23:20:50', '2022-01-19 02:36:31', 1, NULL),
(24, 'Contact Us', '<p><a href=\"https://www.facebook.com/Alliga.Yacht.Life\">Facebook</a></p>\r\n\r\n<p>Email: tungdt@alligayacht.com</p>\r\n\r\n<p>SĐT: 0949.171.088 | MR. T&ugrave;ng</p>', NULL, 'inactive', 'footer_block_3', NULL, NULL, NULL, 28, '2021-06-09 23:22:12', '2022-01-10 09:03:15', 1, NULL),
(25, 'ALLIGA YACHT', '<p style=\"text-align: center;\"><img alt=\"\" src=\"https://alligayacht.com/storage/photos/1/FULL ĐỨNG XANH PNG.png\" style=\"width: 100px; height: 63px; float: left;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trải nghiệm đẳng cấp, gi&aacute; trị xứng tầm</p>', NULL, 'inactive', 'footer_block_4', NULL, '<p><span style=\"color:#ffffff;\">Classy experience, Worthy value</span></p>', NULL, 1, '2021-06-09 23:26:59', '2022-01-27 07:04:16', 1, NULL),
(26, 'Footer - Mô tả chung', '<p style=\"text-align: center;\">AnyClass l&agrave; nền tảng cung cấp những kho&aacute; học online với đa dạng c&aacute;c chủ đề kh&aacute;c nhau. Sứ mệnh của Anyclass kh&ocirc;ng chỉ đơn thuần cung cấp kiến thức m&agrave; c&ograve;n khai mở những đam m&ecirc;, những khả năng tiềm ẩn của bạn. Học với Anyclass, bạn kh&ocirc;ng những được cung cấp học cụ, học liệu, b&agrave;i tập để thực h&agrave;nh ngay m&agrave; c&ograve;n được kết nối với giảng vi&ecirc;n, học vi&ecirc;n kh&aacute;c để tạo th&agrave;nh một cộng đồng c&ugrave;ng chung một sở th&iacute;ch. AnyClass tin tưởng sẽ đem đến cho học vi&ecirc;n những trải nghiệm th&uacute; vị v&agrave; gi&uacute;p bạn ph&aacute;t triển hơn nữa năng lực của m&igrave;nh, biến giấc mơ th&agrave;nh hiện thực.</p>', NULL, 'inactive', 'footer_description', NULL, NULL, NULL, 28, '2021-06-09 23:27:55', '2021-07-18 23:13:57', NULL, NULL),
(27, 'Footer - Copyright', '<p class=\"footer-copy-right\">&copy; Bản quyền thuộc về <strong>C&Ocirc;NG TY TNHH ANYHOW</strong>&nbsp;</p>', NULL, 'inactive', 'footer_block_bottom', NULL, NULL, NULL, 1, '2021-06-09 23:28:41', '2022-01-06 03:00:49', 1, NULL),
(28, 'Khối 1', '<p>C&ocirc;ng ty CP C&ocirc;ng nghệ OneLink Việt Nam (gọi tắt: OneLink) được th&agrave;nh lập v&agrave;o 27/03/2014</p>', '03/2014', 'inactive', 'timeline', NULL, '<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"line-height:120%\"><span lang=\"VI\"><span style=\"line-height:120%\">Dako Investment and Trading Co., Ltd </span></span><span lang=\"KO\"><span style=\"line-height:120%\">회사라는</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">이름으로</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">국내외</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">파트너사와</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">함께</span></span><span lang=\"VI\"><span style=\"line-height:120%\">3</span></span><span lang=\"KO\"><span style=\"line-height:120%\">가지의</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">핵심</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">사업</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">분야에</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">중점을</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">두면서</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">관련</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">다양한</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">분야에서</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">투자를</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">크게</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">확대하였습니다</span></span><span lang=\"VI\"><span style=\"line-height:120%\">:</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"line-height:120%\"><span lang=\"VI\"><span style=\"line-height:120%\">&nbsp; &nbsp; - </span></span><span lang=\"KO\"><span style=\"line-height:120%\">산업</span></span> </span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"line-height:120%\"><span lang=\"VI\"><span style=\"line-height:120%\">&nbsp; &nbsp; - FDI</span></span><span lang=\"KO\"><span style=\"line-height:120%\">투자</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">추진</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">및</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">컨설팅</span></span> </span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"line-height:120%\"><span lang=\"VI\"><span style=\"line-height:120%\">&nbsp; &nbsp; - </span></span><span lang=\"KO\"><span style=\"line-height:120%\">무역</span></span></span></span></span></p>', 1, 1, '2021-11-19 14:56:56', '2022-03-08 07:39:18', 1, NULL),
(29, 'Khối 2', '<p>Lễ b&agrave;n giao 15 triệu thẻ thanh to&aacute;n trong Chương tr&igrave;nh Một thẻ Quốc gia (Chương tr&igrave;nh &ldquo;Ph&aacute;t thương mại điện tử quốc gia giai đoạn 2014-2020&quot;)</p>', '09/2019', 'inactive', 'timeline', NULL, '<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span lang=\"KO\"><span style=\"line-height:120%\">한국으로부터</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">기계</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">및</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">장비</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">수입</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">확대</span></span><span lang=\"VI\"><span style=\"line-height:120%\">, </span></span><span lang=\"KO\"><span style=\"line-height:120%\">국내외</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">시장</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">진출을</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">위해</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">종이</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">포장지</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">생산</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">라인을</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">완성</span></span><span lang=\"VI\"><span style=\"line-height:120%\">, </span></span><span lang=\"KO\"><span style=\"line-height:120%\">종이</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">재료</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">가공부터</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">포장지</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">완제품</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">완성단계까지</span></span> <span lang=\"KO\"><span style=\"line-height:120%\">보장.</span></span></span></span></p>', 2, 1, '2021-11-19 15:04:04', '2022-03-08 07:40:26', 1, NULL),
(43, 'Country - 1', '<div><span style=\"font-family:Arial,Helvetica,sans-serif;\"><a href=\"https://alligayacht.com/lien-he#\">email@example.com</a></span></div>\r\n\r\n<div><span style=\"font-family:Arial,Helvetica,sans-serif;\">+54 192 45 78 621&nbsp;/&nbsp;+54 192 45 78 622</span></div>', NULL, 'inactive', 'contact_content_left', NULL, NULL, NULL, 1, '2022-01-17 02:14:20', '2022-01-17 02:18:37', 1, NULL),
(44, 'Country - 2', '<div><span style=\"font-family:Tahoma,Geneva,sans-serif;\">2079 Settlers Lane, lorem ipsum - 56478354</span></div>\r\n\r\n<div><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><a href=\"https://alligayacht.com/lien-he#\">email@example.com</a></span></div>\r\n\r\n<div><span style=\"font-family:Tahoma,Geneva,sans-serif;\">+54 192 45 78 621 / +54 192 45 78 622</span></div>', NULL, 'inactive', 'contact_content_right', NULL, NULL, NULL, 1, '2022-01-17 02:14:45', '2022-01-17 02:20:04', 1, NULL),
(45, 'Khối 4', '<p>Ra mắt ứng dụng Du lịch Việt Nam an to&agrave;n của Tổng Cục du lịch t&iacute;ch hợp Thẻ Việt gi&uacute;p du kh&aacute;ch dễ d&agrave;ng check-in. t&igrave;m kiếm điểm đến an to&agrave;n</p>', '10/2020', 'inactive', 'timeline', NULL, NULL, 4, 1, '2022-02-25 16:04:20', '2022-03-08 07:38:17', 1, NULL),
(46, 'Khối 5', '<p>Thẻ Việt l&agrave; một sản phẩm dịch vụ quan trọng trong Giải ph&aacute;p Chuyển đổi số Y tế đoạt giải đặc biệt trong cuộc thi &ldquo;Y tế th&ocirc;ng minh lần II&rdquo; do Bộ Y tế tổ chức</p>', '10/2021', 'active', 'timeline', NULL, NULL, 5, 1, '2022-03-08 07:37:10', '2022-03-08 07:37:10', NULL, NULL),
(47, 'Khối 3', '<p>Ra mắt ứng dụng HSSK của Bộ Y tế t&iacute;ch hợp Thẻ Việt do Vietsens x&acirc;y dựng v&agrave; ph&aacute;t triển gi&uacute;p người bệnh đơn giản h&oacute;a qu&aacute; tr&igrave;nh kh&aacute;m chữa bệnh</p>', '02/2020', 'active', 'timeline', NULL, NULL, 3, 1, '2022-03-08 07:41:33', '2022-03-08 07:41:33', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_menu_items_menu_foreign` (`menu`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `becomeTeacher`
--
ALTER TABLE `becomeTeacher`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog_post_tag`
--
ALTER TABLE `blog_post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `huongdan`
--
ALTER TABLE `huongdan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `huongdan_categories`
--
ALTER TABLE `huongdan_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`(191));

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages_dynamic`
--
ALTER TABLE `pages_dynamic`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_related_post`
--
ALTER TABLE `post_related_post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_compo`
--
ALTER TABLE `product_compo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_products`
--
ALTER TABLE `product_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_products_tags`
--
ALTER TABLE `product_products_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `qa_answer`
--
ALTER TABLE `qa_answer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `qa_question`
--
ALTER TABLE `qa_question`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `qa_question_client`
--
ALTER TABLE `qa_question_client`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users_course`
--
ALTER TABLE `users_course`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_lesson`
--
ALTER TABLE `user_lesson`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `admin_menus`
--
ALTER TABLE `admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `becomeTeacher`
--
ALTER TABLE `becomeTeacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT cho bảng `blog_post_tag`
--
ALTER TABLE `blog_post_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `exercise`
--
ALTER TABLE `exercise`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `huongdan`
--
ALTER TABLE `huongdan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `huongdan_categories`
--
ALTER TABLE `huongdan_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `pages_dynamic`
--
ALTER TABLE `pages_dynamic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `post_related_post`
--
ALTER TABLE `post_related_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `product_compo`
--
ALTER TABLE `product_compo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `product_products`
--
ALTER TABLE `product_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `product_products_tags`
--
ALTER TABLE `product_products_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `qa_answer`
--
ALTER TABLE `qa_answer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `qa_question`
--
ALTER TABLE `qa_question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `qa_question_client`
--
ALTER TABLE `qa_question_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT cho bảng `users_course`
--
ALTER TABLE `users_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `user_lesson`
--
ALTER TABLE `user_lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  ADD CONSTRAINT `admin_menu_items_menu_foreign` FOREIGN KEY (`menu`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
