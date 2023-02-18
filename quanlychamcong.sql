-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221014.c92621d023
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 03, 2023 lúc 08:39 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlychamcong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bo_phan`
--

CREATE TABLE `bo_phan` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(50) NOT NULL,
  `Luong_theo_gio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bo_phan`
--

INSERT INTO `bo_phan` (`ID`, `Ten`, `Luong_theo_gio`) VALUES
(1, 'Quản trị', 19000),
(2, 'Thu ngân', 17000),
(3, 'Pha chế', 18000),
(4, 'Phục vụ', 17000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ca_lam_viec`
--

CREATE TABLE `ca_lam_viec` (
  `ID` int(11) NOT NULL,
  `Gio_bat_dau` time NOT NULL,
  `Gio_ket_thuc` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ca_lam_viec`
--

INSERT INTO `ca_lam_viec` (`ID`, `Gio_bat_dau`, `Gio_ket_thuc`) VALUES
(1, '06:30:00', '14:30:00'),
(2, '14:30:00', '22:30:00'),
(3, '10:00:00', '14:00:00'),
(5, '18:00:00', '22:00:00'),
(6, '14:00:00', '18:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cham_cong`
--

CREATE TABLE `cham_cong` (
  `ID_cham_cong` int(11) NOT NULL COMMENT 'ID chấm công',
  `Ma_nv` varchar(50) NOT NULL COMMENT 'Mã nhân viên',
  `Ngay` date NOT NULL COMMENT 'Ngày tháng năm chấm công',
  `Tinh_trang` varchar(10) NOT NULL DEFAULT 'Đi làm' COMMENT 'Tình trạng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cham_cong`
--

INSERT INTO `cham_cong` (`ID_cham_cong`, `Ma_nv`, `Ngay`, `Tinh_trang`) VALUES
(1, 'NV01', '2022-12-01', 'Đi làm'),
(2, 'NV02', '2022-12-01', 'Đi làm'),
(3, 'NV03', '2022-12-01', 'Đi làm'),
(4, 'NV04', '2022-12-01', 'Đi làm'),
(5, 'NV05', '2022-12-01', 'Đi làm'),
(6, 'NV06', '2022-12-01', 'Đi làm'),
(7, 'NV07', '2022-12-01', 'Đi làm'),
(8, 'NV08', '2022-12-01', 'Đi làm'),
(9, 'NV09', '2022-12-01', 'Đi làm'),
(10, 'NV10', '2022-12-01', 'Đi làm'),
(12, 'NV01', '2022-12-02', 'Đi làm'),
(13, 'NV02', '2022-12-02', 'Đi làm'),
(14, 'NV03', '2022-12-02', 'Đi làm'),
(15, 'NV04', '2022-12-02', 'Đi làm'),
(16, 'NV05', '2022-12-02', 'Đi làm'),
(17, 'NV06', '2022-12-02', 'Đi làm'),
(18, 'NV07', '2022-12-02', 'Đi làm'),
(19, 'NV08', '2022-12-02', 'Đi làm'),
(20, 'NV09', '2022-12-02', 'Đi làm'),
(21, 'NV10', '2022-12-02', 'Đi làm'),
(23, 'NV01', '2022-12-03', 'Đi làm'),
(24, 'NV02', '2022-12-03', 'Đi làm'),
(25, 'NV03', '2022-12-03', 'Đi làm'),
(26, 'NV04', '2022-12-03', 'Đi làm'),
(27, 'NV05', '2022-12-03', 'Đi làm'),
(28, 'NV06', '2022-12-03', 'Đi làm'),
(29, 'NV07', '2022-12-03', 'Đi làm'),
(30, 'NV08', '2022-12-03', 'Đi làm'),
(31, 'NV09', '2022-12-03', 'Đi làm'),
(32, 'NV10', '2022-12-03', 'Đi làm'),
(34, 'NV01', '2022-12-04', 'Đi làm'),
(35, 'NV02', '2022-12-04', 'Đi làm'),
(36, 'NV03', '2022-12-04', 'Đi làm'),
(37, 'NV04', '2022-12-04', 'Đi làm'),
(38, 'NV05', '2022-12-04', 'Đi làm'),
(39, 'NV06', '2022-12-04', 'Đi làm'),
(40, 'NV07', '2022-12-04', 'Đi làm'),
(41, 'NV08', '2022-12-04', 'Đi làm'),
(42, 'NV09', '2022-12-04', 'Đi làm'),
(43, 'NV10', '2022-12-04', 'Đi làm'),
(45, 'NV01', '2022-12-05', 'Đi làm'),
(46, 'NV02', '2022-12-05', 'Đi làm'),
(47, 'NV03', '2022-12-05', 'Đi làm'),
(48, 'NV04', '2022-12-05', 'Đi làm'),
(49, 'NV05', '2022-12-05', 'Đi làm'),
(50, 'NV06', '2022-12-05', 'Đi làm'),
(51, 'NV07', '2022-12-05', 'Đi làm'),
(52, 'NV08', '2022-12-05', 'Đi làm'),
(53, 'NV09', '2022-12-05', 'Đi làm'),
(54, 'NV10', '2022-12-05', 'Đi làm'),
(56, 'NV01', '2022-12-06', 'Đi làm'),
(57, 'NV02', '2022-12-06', 'Đi làm'),
(58, 'NV03', '2022-12-06', 'Đi làm'),
(59, 'NV04', '2022-12-06', 'Đi làm'),
(60, 'NV05', '2022-12-06', 'Đi làm'),
(61, 'NV06', '2022-12-06', 'Đi làm'),
(62, 'NV07', '2022-12-06', 'Đi làm'),
(63, 'NV08', '2022-12-06', 'Đi làm'),
(64, 'NV09', '2022-12-06', 'Đi làm'),
(65, 'NV10', '2022-12-06', 'Đi làm'),
(67, 'NV01', '2022-12-07', 'Đi làm'),
(68, 'NV02', '2022-12-07', 'Đi làm'),
(69, 'NV03', '2022-12-07', 'Đi làm'),
(70, 'NV04', '2022-12-07', 'Đi làm'),
(71, 'NV05', '2022-12-07', 'Đi làm'),
(72, 'NV06', '2022-12-07', 'Đi làm'),
(73, 'NV07', '2022-12-07', 'Đi làm'),
(74, 'NV08', '2022-12-07', 'Đi làm'),
(75, 'NV09', '2022-12-07', 'Đi làm'),
(76, 'NV10', '2022-12-07', 'Đi làm'),
(78, 'NV01', '2022-12-08', 'Đi làm'),
(79, 'NV02', '2022-12-08', 'Đi làm'),
(80, 'NV03', '2022-12-08', 'Đi làm'),
(81, 'NV04', '2022-12-08', 'Đi làm'),
(82, 'NV05', '2022-12-08', 'Đi làm'),
(83, 'NV06', '2022-12-08', 'Đi làm'),
(84, 'NV07', '2022-12-08', 'Đi làm'),
(85, 'NV08', '2022-12-08', 'Đi làm'),
(86, 'NV09', '2022-12-08', 'Đi làm'),
(87, 'NV10', '2022-12-08', 'Đi làm'),
(89, 'NV01', '2022-12-09', 'Đi làm'),
(90, 'NV02', '2022-12-09', 'Đi làm'),
(91, 'NV03', '2022-12-09', 'Đi làm'),
(92, 'NV04', '2022-12-09', 'Đi làm'),
(93, 'NV05', '2022-12-09', 'Đi làm'),
(94, 'NV06', '2022-12-09', 'Đi làm'),
(95, 'NV07', '2022-12-09', 'Đi làm'),
(96, 'NV08', '2022-12-09', 'Đi làm'),
(97, 'NV09', '2022-12-09', 'Đi làm'),
(98, 'NV10', '2022-12-09', 'Đi làm'),
(100, 'NV01', '2022-12-10', 'Đi làm'),
(101, 'NV02', '2022-12-10', 'Đi làm'),
(102, 'NV03', '2022-12-10', 'Đi làm'),
(103, 'NV04', '2022-12-10', 'Đi làm'),
(104, 'NV05', '2022-12-10', 'Đi làm'),
(105, 'NV06', '2022-12-10', 'Đi làm'),
(106, 'NV07', '2022-12-10', 'Đi làm'),
(107, 'NV08', '2022-12-10', 'Đi làm'),
(108, 'NV09', '2022-12-10', 'Đi làm'),
(109, 'NV10', '2022-12-10', 'Đi làm'),
(111, 'NV01', '2022-12-11', 'Đi làm'),
(112, 'NV02', '2022-12-11', 'Đi làm'),
(113, 'NV03', '2022-12-11', 'Đi làm'),
(114, 'NV04', '2022-12-11', 'Đi làm'),
(115, 'NV05', '2022-12-11', 'Đi làm'),
(116, 'NV06', '2022-12-11', 'Đi làm'),
(117, 'NV07', '2022-12-11', 'Đi làm'),
(118, 'NV08', '2022-12-11', 'Đi làm'),
(119, 'NV09', '2022-12-11', 'Đi làm'),
(120, 'NV10', '2022-12-11', 'Đi làm'),
(122, 'NV01', '2022-12-12', 'Đi làm'),
(123, 'NV02', '2022-12-12', 'Đi làm'),
(124, 'NV03', '2022-12-12', 'Đi làm'),
(125, 'NV04', '2022-12-12', 'Đi làm'),
(126, 'NV05', '2022-12-12', 'Đi làm'),
(127, 'NV06', '2022-12-12', 'Đi làm'),
(128, 'NV07', '2022-12-12', 'Đi làm'),
(129, 'NV08', '2022-12-12', 'Đi làm'),
(130, 'NV09', '2022-12-12', 'Đi làm'),
(131, 'NV10', '2022-12-12', 'Đi làm'),
(133, 'NV01', '2022-12-13', 'Đi làm'),
(134, 'NV02', '2022-12-13', 'Đi làm'),
(135, 'NV03', '2022-12-13', 'Đi làm'),
(136, 'NV04', '2022-12-13', 'Đi làm'),
(137, 'NV05', '2022-12-13', 'Đi làm'),
(138, 'NV06', '2022-12-13', 'Đi làm'),
(139, 'NV07', '2022-12-13', 'Đi làm'),
(140, 'NV08', '2022-12-13', 'Đi làm'),
(141, 'NV09', '2022-12-13', 'Đi làm'),
(142, 'NV10', '2022-12-13', 'Đi làm'),
(144, 'NV01', '2022-12-14', 'Đi làm'),
(145, 'NV02', '2022-12-14', 'Đi làm'),
(146, 'NV03', '2022-12-14', 'Đi làm'),
(147, 'NV04', '2022-12-14', 'Đi làm'),
(148, 'NV05', '2022-12-14', 'Đi làm'),
(149, 'NV06', '2022-12-14', 'Đi làm'),
(150, 'NV07', '2022-12-14', 'Đi làm'),
(151, 'NV08', '2022-12-14', 'Đi làm'),
(152, 'NV09', '2022-12-14', 'Đi làm'),
(153, 'NV10', '2022-12-14', 'Đi làm'),
(155, 'NV01', '2022-12-15', 'Đi làm'),
(156, 'NV02', '2022-12-15', 'Đi làm'),
(157, 'NV03', '2022-12-15', 'Đi làm'),
(158, 'NV04', '2022-12-15', 'Đi làm'),
(159, 'NV05', '2022-12-15', 'Đi làm'),
(160, 'NV06', '2022-12-15', 'Đi làm'),
(161, 'NV07', '2022-12-15', 'Đi làm'),
(162, 'NV08', '2022-12-15', 'Đi làm'),
(163, 'NV09', '2022-12-15', 'Đi làm'),
(164, 'NV10', '2022-12-15', 'Đi làm'),
(166, 'NV01', '2022-12-16', 'Đi làm'),
(167, 'NV02', '2022-12-16', 'Đi làm'),
(168, 'NV03', '2022-12-16', 'Đi làm'),
(169, 'NV04', '2022-12-16', 'Đi làm'),
(170, 'NV05', '2022-12-16', 'Đi làm'),
(171, 'NV06', '2022-12-16', 'Đi làm'),
(172, 'NV07', '2022-12-16', 'Đi làm'),
(173, 'NV08', '2022-12-16', 'Đi làm'),
(174, 'NV09', '2022-12-16', 'Đi làm'),
(175, 'NV10', '2022-12-16', 'Đi làm'),
(177, 'NV01', '2022-12-17', 'Đi làm'),
(178, 'NV02', '2022-12-17', 'Đi làm'),
(179, 'NV03', '2022-12-17', 'Đi làm'),
(180, 'NV04', '2022-12-17', 'Đi làm'),
(181, 'NV05', '2022-12-17', 'Đi làm'),
(182, 'NV06', '2022-12-17', 'Đi làm'),
(183, 'NV07', '2022-12-17', 'Đi làm'),
(184, 'NV08', '2022-12-17', 'Đi làm'),
(185, 'NV09', '2022-12-17', 'Đi làm'),
(186, 'NV10', '2022-12-17', 'Đi làm'),
(188, 'NV01', '2022-12-18', 'Đi làm'),
(189, 'NV02', '2022-12-18', 'Đi làm'),
(190, 'NV03', '2022-12-18', 'Đi làm'),
(191, 'NV04', '2022-12-18', 'Đi làm'),
(192, 'NV05', '2022-12-18', 'Đi làm'),
(193, 'NV06', '2022-12-18', 'Đi làm'),
(194, 'NV07', '2022-12-18', 'Đi làm'),
(195, 'NV08', '2022-12-18', 'Đi làm'),
(196, 'NV09', '2022-12-18', 'Đi làm'),
(197, 'NV10', '2022-12-18', 'Đi làm'),
(199, 'NV01', '2022-12-19', 'Đi làm'),
(200, 'NV02', '2022-12-19', 'Đi làm'),
(201, 'NV03', '2022-12-19', 'Đi làm'),
(202, 'NV04', '2022-12-19', 'Đi làm'),
(203, 'NV05', '2022-12-19', 'Đi làm'),
(204, 'NV06', '2022-12-19', 'Đi làm'),
(205, 'NV07', '2022-12-19', 'Đi làm'),
(206, 'NV08', '2022-12-19', 'Đi làm'),
(207, 'NV09', '2022-12-19', 'Đi làm'),
(208, 'NV10', '2022-12-19', 'Đi làm'),
(210, 'NV01', '2022-12-20', 'Đi làm'),
(211, 'NV02', '2022-12-20', 'Đi làm'),
(212, 'NV03', '2022-12-20', 'Đi làm'),
(213, 'NV04', '2022-12-20', 'Đi làm'),
(214, 'NV05', '2022-12-20', 'Đi làm'),
(215, 'NV06', '2022-12-20', 'Đi làm'),
(216, 'NV07', '2022-12-20', 'Đi làm'),
(217, 'NV08', '2022-12-20', 'Đi làm'),
(218, 'NV09', '2022-12-20', 'Đi làm'),
(219, 'NV10', '2022-12-20', 'Đi làm'),
(221, 'NV01', '2022-12-21', 'Đi làm'),
(222, 'NV02', '2022-12-21', 'Đi làm'),
(223, 'NV03', '2022-12-21', 'Đi làm'),
(224, 'NV04', '2022-12-21', 'Đi làm'),
(225, 'NV05', '2022-12-21', 'Đi làm'),
(226, 'NV06', '2022-12-21', 'Đi làm'),
(227, 'NV07', '2022-12-21', 'Đi làm'),
(228, 'NV08', '2022-12-21', 'Đi làm'),
(229, 'NV09', '2022-12-21', 'Đi làm'),
(230, 'NV10', '2022-12-21', 'Đi làm'),
(232, 'NV01', '2022-12-22', 'Đi làm'),
(233, 'NV02', '2022-12-22', 'Đi làm'),
(234, 'NV03', '2022-12-22', 'Đi làm'),
(235, 'NV04', '2022-12-22', 'Đi làm'),
(236, 'NV05', '2022-12-22', 'Đi làm'),
(237, 'NV06', '2022-12-22', 'Đi làm'),
(238, 'NV07', '2022-12-22', 'Đi làm'),
(239, 'NV08', '2022-12-22', 'Đi làm'),
(240, 'NV09', '2022-12-22', 'Đi làm'),
(241, 'NV10', '2022-12-22', 'Đi làm'),
(243, 'NV01', '2022-12-29', 'Đi làm'),
(244, 'NV02', '2022-12-29', 'Đi làm'),
(245, 'NV03', '2022-12-29', 'Đi làm'),
(246, 'NV04', '2022-12-29', 'Đi làm'),
(247, 'NV05', '2022-12-29', 'Đi làm'),
(248, 'NV06', '2022-12-29', 'Đi làm'),
(249, 'NV07', '2022-12-29', 'Đi làm'),
(250, 'NV08', '2022-12-29', 'Đi làm'),
(251, 'NV09', '2022-12-29', 'Đi làm'),
(252, 'NV10', '2022-12-29', 'Đi làm'),
(254, 'NV01', '2022-12-30', 'Đi làm'),
(255, 'NV01', '2023-01-02', 'Đi làm'),
(256, 'NV02', '2023-01-02', 'Đi làm'),
(257, 'NV03', '2023-01-02', 'Đi làm'),
(258, 'NV04', '2023-01-02', 'Đi làm'),
(259, 'NV05', '2023-01-02', 'Đi làm'),
(260, 'NV06', '2023-01-02', 'Đi làm'),
(261, 'NV07', '2023-01-02', 'Đi làm'),
(262, 'NV08', '2023-01-02', 'Đi làm'),
(263, 'NV09', '2023-01-02', 'Đi làm'),
(264, 'NV10', '2023-01-02', 'Đi làm'),
(266, 'NV01', '2023-01-01', 'Đi làm'),
(267, 'NV01', '2023-01-03', 'Đi làm'),
(268, 'NV02', '2023-01-03', 'Đi làm'),
(269, 'NV03', '2023-01-03', 'Đi làm'),
(270, 'NV04', '2023-01-03', 'Đi làm'),
(271, 'NV05', '2023-01-03', 'Đi làm'),
(272, 'NV06', '2023-01-03', 'Đi làm'),
(273, 'NV07', '2023-01-03', 'Đi làm'),
(274, 'NV08', '2023-01-03', 'Đi làm'),
(275, 'NV09', '2023-01-03', 'Đi làm'),
(276, 'NV10', '2023-01-03', 'Đi làm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luong`
--

CREATE TABLE `luong` (
  `He_so_luong` int(11) NOT NULL COMMENT 'Hệ số lương',
  `Luong_co_ban` int(11) NOT NULL COMMENT 'Lương cơ bản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `luong`
--

INSERT INTO `luong` (`He_so_luong`, `Luong_co_ban`) VALUES
(1, 4600000),
(2, 4400000),
(3, 4100000),
(4, 2050000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_luong`
--

CREATE TABLE `nhan_luong` (
  `ID` int(11) NOT NULL COMMENT 'ID nhân lương',
  `Ma_nv` varchar(50) NOT NULL COMMENT 'Mã nhân viên',
  `He_so_luong` int(11) NOT NULL COMMENT 'Hệ số lương',
  `So_ngay_lam` int(11) NOT NULL COMMENT 'Số ngày làm',
  `Tien_thuong` int(11) NOT NULL COMMENT 'Tiền thưởng',
  `Tien_phat` int(11) NOT NULL COMMENT 'Tiền phạt',
  `Tien_ung` int(11) NOT NULL COMMENT 'Tiền ứng',
  `Tong` int(11) NOT NULL COMMENT 'Tổng',
  `Thoi_gian` date NOT NULL,
  `Tinh_trang` varchar(50) NOT NULL DEFAULT 'Chưa thanh toán'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhan_luong`
--

INSERT INTO `nhan_luong` (`ID`, `Ma_nv`, `He_so_luong`, `So_ngay_lam`, `Tien_thuong`, `Tien_phat`, `Tien_ung`, `Tong`, `Thoi_gian`, `Tinh_trang`) VALUES
(1, 'NV01', 1, 24, 50000, 0, 100000, 3892857, '2022-12-30', 'Đã thanh toán'),
(2, 'NV02', 2, 23, 0, 0, 0, 3614286, '2022-12-30', 'Đã thanh toán'),
(3, 'NV04', 3, 23, 0, 0, 0, 3367857, '2022-12-30', 'Đã thanh toán'),
(4, 'NV05', 3, 23, 0, 0, 0, 3367857, '2022-12-30', 'Đã thanh toán'),
(5, 'NV06', 3, 23, 0, 0, 0, 3367857, '2022-12-30', 'Đã thanh toán'),
(10, 'NV01', 1, 3, 100000, 0, 200000, 442857, '2023-01-03', 'Đã thanh toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `Ma_nv` varchar(50) NOT NULL COMMENT 'Mã nhân viên',
  `Hoten` varchar(50) NOT NULL COMMENT 'Họ tên nhân viên',
  `Gioitinh` varchar(20) NOT NULL COMMENT 'Giới tính',
  `Ngaysinh` date NOT NULL COMMENT 'Ngày sinh',
  `Quequan` varchar(50) NOT NULL COMMENT 'Quê quán',
  `SDT` int(11) NOT NULL COMMENT 'Số điện thoại',
  `ID_bophan` int(11) NOT NULL,
  `ID_ca_lam` int(11) NOT NULL,
  `He_so_luong` int(11) NOT NULL COMMENT 'Hệ số lương',
  `Ngaylamviec` date NOT NULL COMMENT 'Ngày làm việc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhan_vien`
--

INSERT INTO `nhan_vien` (`Ma_nv`, `Hoten`, `Gioitinh`, `Ngaysinh`, `Quequan`, `SDT`, `ID_bophan`, `ID_ca_lam`, `He_so_luong`, `Ngaylamviec`) VALUES
('NV01', 'Nguyễn Thành Đạt', 'Nam', '2001-07-17', 'Quảng Bình', 123456789, 1, 2, 1, '2022-12-01'),
('NV02', 'Bùi Lê Nguyễn My', 'Nữ', '2000-01-01', 'Đà Nẵng', 124124128, 3, 2, 2, '2022-12-01'),
('NV03', 'Nguyễn Phạm Quốc Khôi', 'Nam', '1999-09-19', 'Bình Thuận', 324712581, 3, 1, 2, '2022-12-01'),
('NV04', 'Đặng Thanh Phương', 'Nữ', '2002-02-20', 'Đà Nẵng', 999999999, 2, 1, 3, '2022-12-01'),
('NV05', 'Trần Thái Hậu', 'Nam', '2002-01-10', 'Quảng Nam', 88888888, 4, 1, 3, '2022-12-01'),
('NV06', 'Trúc Phương', 'Nữ', '2001-01-01', 'Huế', 77777777, 2, 2, 3, '2022-12-01'),
('NV07', 'Lê Xuân Hoàng', 'Nam', '2001-02-02', 'Quảng Trị', 6666666, 4, 5, 4, '2022-12-01'),
('NV08', 'Trần Bảo Ngọc', 'Nữ', '2003-12-11', 'Quảng Trị', 55555555, 4, 2, 3, '2022-12-01'),
('NV09', 'Thuý Kiều', 'Nữ', '2003-01-01', 'Đà Nẵng', 123123123, 4, 2, 3, '2022-12-01'),
('NV10', 'Đỗ Duy Khang', 'Nam', '2022-12-07', 'Bình Định', 123654789, 4, 2, 3, '2022-11-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuong_phat`
--

CREATE TABLE `thuong_phat` (
  `ID_thuong_phat` int(11) NOT NULL COMMENT 'ID thưởng phạt',
  `Ma_nv` varchar(50) NOT NULL COMMENT 'Mã nhân viên',
  `Loai_hinh` varchar(50) NOT NULL COMMENT 'Loại hình',
  `So_tien` int(11) NOT NULL COMMENT 'Số tiền',
  `Li_do` varchar(50) NOT NULL COMMENT 'Lí do',
  `Ngay_thuc_hien` date NOT NULL COMMENT 'Ngày thực hiện'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thuong_phat`
--

INSERT INTO `thuong_phat` (`ID_thuong_phat`, `Ma_nv`, `Loai_hinh`, `So_tien`, `Li_do`, `Ngay_thuc_hien`) VALUES
(1, 'NV01', 'Thưởng', 50000, ' ', '2022-12-15'),
(2, 'NV01', 'Thưởng', 50000, ' ', '2023-01-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ung_luong`
--

CREATE TABLE `ung_luong` (
  `ID` int(11) NOT NULL,
  `Ma_nv` varchar(50) NOT NULL,
  `So_tien` int(11) NOT NULL,
  `Ngay_ung` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ung_luong`
--

INSERT INTO `ung_luong` (`ID`, `Ma_nv`, `So_tien`, `Ngay_ung`) VALUES
(1, 'NV01', 100000, '2022-12-16'),
(2, 'NV01', 100000, '2023-01-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('admin', 'admin'),
('rus', '123456');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bo_phan`
--
ALTER TABLE `bo_phan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Ten` (`Ten`);

--
-- Chỉ mục cho bảng `ca_lam_viec`
--
ALTER TABLE `ca_lam_viec`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `cham_cong`
--
ALTER TABLE `cham_cong`
  ADD PRIMARY KEY (`ID_cham_cong`),
  ADD KEY `fk_nhanvien` (`Ma_nv`);

--
-- Chỉ mục cho bảng `luong`
--
ALTER TABLE `luong`
  ADD PRIMARY KEY (`He_so_luong`);

--
-- Chỉ mục cho bảng `nhan_luong`
--
ALTER TABLE `nhan_luong`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`Ma_nv`),
  ADD KEY `ID_bophan` (`ID_bophan`),
  ADD KEY `fk_nhanvien_calam` (`ID_ca_lam`),
  ADD KEY `He_so_luong` (`He_so_luong`);

--
-- Chỉ mục cho bảng `thuong_phat`
--
ALTER TABLE `thuong_phat`
  ADD PRIMARY KEY (`ID_thuong_phat`),
  ADD KEY `fk_thuong_phat` (`Ma_nv`),
  ADD KEY `So_tien` (`So_tien`);

--
-- Chỉ mục cho bảng `ung_luong`
--
ALTER TABLE `ung_luong`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Ma_nv` (`Ma_nv`),
  ADD KEY `So_tien` (`So_tien`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bo_phan`
--
ALTER TABLE `bo_phan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `ca_lam_viec`
--
ALTER TABLE `ca_lam_viec`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `cham_cong`
--
ALTER TABLE `cham_cong`
  MODIFY `ID_cham_cong` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID chấm công', AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT cho bảng `nhan_luong`
--
ALTER TABLE `nhan_luong`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID nhân lương', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `thuong_phat`
--
ALTER TABLE `thuong_phat`
  MODIFY `ID_thuong_phat` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID thưởng phạt', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `ung_luong`
--
ALTER TABLE `ung_luong`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cham_cong`
--
ALTER TABLE `cham_cong`
  ADD CONSTRAINT `fk_nhanvien` FOREIGN KEY (`Ma_nv`) REFERENCES `nhan_vien` (`Ma_nv`);

--
-- Các ràng buộc cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD CONSTRAINT `fk_luong` FOREIGN KEY (`He_so_luong`) REFERENCES `luong` (`He_so_luong`),
  ADD CONSTRAINT `fk_nhanvien_bophan` FOREIGN KEY (`ID_bophan`) REFERENCES `bo_phan` (`ID`),
  ADD CONSTRAINT `fk_nhanvien_calam` FOREIGN KEY (`ID_ca_lam`) REFERENCES `ca_lam_viec` (`ID`);

--
-- Các ràng buộc cho bảng `thuong_phat`
--
ALTER TABLE `thuong_phat`
  ADD CONSTRAINT `fk_thuong_phat` FOREIGN KEY (`Ma_nv`) REFERENCES `nhan_vien` (`Ma_nv`);

--
-- Các ràng buộc cho bảng `ung_luong`
--
ALTER TABLE `ung_luong`
  ADD CONSTRAINT `fk_ungtien` FOREIGN KEY (`Ma_nv`) REFERENCES `nhan_vien` (`Ma_nv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
