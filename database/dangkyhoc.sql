-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 31, 2023 lúc 05:12 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dangkyhoc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dsdangky`
--

CREATE TABLE `dsdangky` (
  `mamonhoc` varchar(50) NOT NULL,
  `masinhvien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dstenmonhoc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dsgiangvien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dssotinchi` int(10) NOT NULL,
  `dshocphi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dsdangky`
--

INSERT INTO `dsdangky` (`mamonhoc`, `masinhvien`, `dstenmonhoc`, `dsgiangvien`, `dssotinchi`, `dshocphi`) VALUES
('7080112', '3452352432', 'Trí tuệ nhân tạo', '', 3, ''),
('7080116', '3452352432', 'Phát triển ứng dụng web + BTL', '', 3, ''),
('7080206', '3452352432', 'Cấu trúc dữ liệu&Giải thuật', '', 3, ''),
('7080323', '3452352432', 'Dịch vụ dựa trên địa điểm', '', 3, ''),
('7080403', '3452352432', 'Đồ án CNTT Địa học', '', 2, ''),
('7080410', '3452352432', 'Nhập môn nghành Khoa học Dữ liệu', '', 3, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `makhoa` varchar(50) NOT NULL,
  `tenkhoa` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`makhoa`, `tenkhoa`) VALUES
('7060', 'Dầu khí'),
('7080', 'Trắc địa - Bản đồ và quản lý đất đai'),
('7100', 'Xây dựng]'),
('8050', 'Công nghệ thông Tin'),
('8070', 'Kinh tế & QTKD'),
('CNTT', 'Công nghệ thông tin'),
('CT', 'Công Trình'),
('KT', 'Kế Toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc`
--

CREATE TABLE `lophoc` (
  `lop` varchar(50) NOT NULL,
  `makhoa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lophoc`
--

INSERT INTO `lophoc` (`lop`, `makhoa`) VALUES
('DCCTCT66B1', '7060'),
('DCCTKH65B', '7060'),
('DCCTKT63A', '7060'),
('DCCTKT64A', '7060'),
('DCCTKT66A', '7060'),
('DCCTKT67A', '7060'),
('DCCTCT66A1', '7080'),
('DCCTCT66D1', '7080'),
('DCCTKT65B', '7080'),
('DCCTMM63C', '7080'),
('DCCTMM65A', '7080'),
('DCCTCT66H1', '7100'),
('DCCTKH65C', '7100'),
('DCCTKT63E', '7100'),
('DCCTKT64B', '7100'),
('DCCTKT66D', '7100'),
('DCCTKT69A', '7100'),
('DCCTCT66I1', '8050'),
('DCCTCT66K1', '8050'),
('DCCTCT66L1', '8050'),
('DCCTCT66M1', '8050'),
('DCCTDH63A', '8050'),
('DCCTDH64', '8050'),
('DCCTDH65A', '8050'),
('DCCTHT65B', '8050'),
('DCCTKH64A', '8050'),
('DCCTKH64B', '8050'),
('DCCTKH54B', '8070'),
('DCCTKH60B', '8070'),
('DCCTKH61B', '8070'),
('DCCTKH62B', '8070'),
('DCCTKH63B', '8070'),
('68DCHT22', 'CNTT'),
('68DCHT23', 'CNTT'),
('68DCCT21', 'CT'),
('68DCCT22', 'CT'),
('68DCCT23', 'CT'),
('68DCKT21', 'KT'),
('68DCKT22', 'KT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `mamonhoc` varchar(50) NOT NULL,
  `tenmonhoc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `giangvien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lichhoc` varchar(50) DEFAULT NULL,
  `sotinchi` int(10) NOT NULL,
  `hocphi` varchar(50) DEFAULT NULL,
  `makhoa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`mamonhoc`, `tenmonhoc`, `giangvien`, `lichhoc`, `sotinchi`, `hocphi`, `makhoa`) VALUES
('7080116', 'Phát triển ứng dụng web + BTL', '', NULL, 3, '', '8050'),
('CNTT2', 'Lập trình di động', '', NULL, 3, '', '8070'),
('7080116', 'Phát triển ứng dụng web + BTL', '', NULL, 3, '', '8050'),
('7080118', 'Thiết kế website', '', NULL, 2, '', '7080'),
('7080206', 'Cấu trúc dữ liệu&Giải thuật', '', NULL, 3, '', '7080'),
('7080323', 'Dịch vụ dựa trên địa điểm', '', NULL, 3, '', '7080'),
('7080410', 'Nhập môn nghành Khoa học Dữ liệu', '', NULL, 3, '', '7080'),
('7080112', 'Trí tuệ nhân tạo', '', NULL, 3, '', '7100'),
('7080319', 'Trực quan hóa dữ liệu', '', NULL, 3, '', '7100'),
('7080512', 'Lập trình hướng đối tượng với Java', '', NULL, 3, '', '7060'),
('7080403', 'Đồ án CNTT Địa học', '', NULL, 2, '', '8070'),
('7080116', 'Phát triển ứng dụng web + BTL', '', NULL, 3, '', '8050'),
('CNTT2', 'Lập trình di động', '', NULL, 3, '', '8050'),
('7080116', 'Phát triển ứng dụng web + BTL', '', NULL, 3, '', '8050'),
('7080118', 'Thiết kế website', '', NULL, 2, '', '8050'),
('7080206', 'Cấu trúc dữ liệu&Giải thuật', '', NULL, 3, '', '8050'),
('7080323', 'Dịch vụ dựa trên địa điểm', '', NULL, 3, '', '8050'),
('7080410', 'Nhập môn nghành Khoa học Dữ liệu', '', NULL, 3, '', '8050'),
('7080112', 'Trí tuệ nhân tạo', '', NULL, 3, '', '8050'),
('7080319', 'Trực quan hóa dữ liệu', '', NULL, 3, '', '8050'),
('7080512', 'Lập trình hướng đối tượng với Java', '', NULL, 3, '', '8050'),
('7080403', 'Đồ án CNTT Địa học', '', NULL, 2, '', '8050'),
('7080116', 'Phát triển ứng dụng web + BTL', '', NULL, 3, '', '8070'),
('CNTT2', 'Lập trình di động', '', NULL, 3, '', '8070'),
('7080116', 'Phát triển ứng dụng web + BTL', '', NULL, 3, '', '8070'),
('7080118', 'Thiết kế website', '', NULL, 2, '', '8070'),
('7080206', 'Cấu trúc dữ liệu&Giải thuật', '', NULL, 3, '', '8070'),
('7080323', 'Dịch vụ dựa trên địa điểm', '', NULL, 3, '', '8070'),
('7080410', 'Nhập môn nghành Khoa học Dữ liệu', '', NULL, 3, '', '8070'),
('7080112', 'Trí tuệ nhân tạo', '', NULL, 3, '', '8070'),
('7080319', 'Trực quan hóa dữ liệu', '', NULL, 3, '', '8070'),
('7080512', 'Lập trình hướng đối tượng với Java', '', NULL, 3, '', '8070'),
('7080403', 'Đồ án CNTT Địa học', '', NULL, 2, '', '8070'),
('7080116', 'Phát triển ứng dụng web + BTL', '', NULL, 3, '', '7100'),
('CNTT2', 'Lập trình di động', '', NULL, 3, '', '7100'),
('7080116', 'Phát triển ứng dụng web + BTL', '', NULL, 3, '', '7100'),
('7080118', 'Thiết kế website', '', NULL, 2, '', '7100'),
('7080206', 'Cấu trúc dữ liệu&Giải thuật', '', NULL, 3, '', '7100'),
('7080323', 'Dịch vụ dựa trên địa điểm', '', NULL, 3, '', '7100'),
('7080410', 'Nhập môn nghành Khoa học Dữ liệu', '', NULL, 3, '', '7100'),
('7080112', 'Trí tuệ nhân tạo', '', NULL, 3, '', '7100'),
('7080319', 'Trực quan hóa dữ liệu', '', NULL, 3, '', '7100'),
('7080512', 'Lập trình hướng đối tượng với Java', '', NULL, 3, '', '7100'),
('7080403', 'Đồ án CNTT Địa học', '', NULL, 2, '', '7100'),
('7080116', 'Phát triển ứng dụng web + BTL', '', NULL, 3, '', '7080'),
('CNTT2', 'Lập trình di động', '', NULL, 3, '', '7080'),
('7080116', 'Phát triển ứng dụng web + BTL', '', NULL, 3, '', '7080'),
('7080118', 'Thiết kế website', '', NULL, 2, '', '7080'),
('7080206', 'Cấu trúc dữ liệu&Giải thuật', '', NULL, 3, '', '7080'),
('7080323', 'Dịch vụ dựa trên địa điểm', '', NULL, 3, '', '7080'),
('7080410', 'Nhập môn nghành Khoa học Dữ liệu', '', NULL, 3, '', '7080'),
('7080112', 'Trí tuệ nhân tạo', '', NULL, 3, '', '7080'),
('7080319', 'Trực quan hóa dữ liệu', '', NULL, 3, '', '7080'),
('7080512', 'Lập trình hướng đối tượng với Java', '', NULL, 3, '', '7080'),
('7080403', 'Đồ án CNTT Địa học', '', NULL, 2, '', '7080'),
('7080116', 'Phát triển ứng dụng web + BTL', '', NULL, 3, '', '7060'),
('CNTT2', 'Lập trình di động', '', NULL, 3, '', '7060'),
('7080116', 'Phát triển ứng dụng web + BTL', '', NULL, 3, '', '7060'),
('7080118', 'Thiết kế website', '', NULL, 2, '', '7060'),
('7080206', 'Cấu trúc dữ liệu&Giải thuật', '', NULL, 3, '', '7060'),
('7080323', 'Dịch vụ dựa trên địa điểm', '', NULL, 3, '', '7060'),
('7080410', 'Nhập môn nghành Khoa học Dữ liệu', '', NULL, 3, '', '7060'),
('7080112', 'Trí tuệ nhân tạo', '', NULL, 3, '', '7060'),
('7080319', 'Trực quan hóa dữ liệu', '', NULL, 3, '', '7060'),
('7080512', 'Lập trình hướng đối tượng với Java', '', NULL, 3, '', '7060'),
('7080403', 'Đồ án CNTT Địa học', '', NULL, 2, '', '7060'),
('7080116', 'Phát triển ứng dụng web + BTL', '', NULL, 3, '', '7060'),
('CNTT2', 'Lập trình di động', '', NULL, 3, '', '7060'),
('7080116', 'Phát triển ứng dụng web + BTL', '', NULL, 3, '', '7060'),
('7080118', 'Thiết kế website', '', NULL, 2, '', '7060'),
('7080206', 'Cấu trúc dữ liệu&Giải thuật', '', NULL, 3, '', '7060'),
('7080323', 'Dịch vụ dựa trên địa điểm', '', NULL, 3, '', '7060'),
('7080410', 'Nhập môn nghành Khoa học Dữ liệu', '', NULL, 3, '', '7060'),
('7080112', 'Trí tuệ nhân tạo', '', NULL, 3, '', '7060'),
('7080319', 'Trực quan hóa dữ liệu', '', NULL, 3, '', '7060'),
('7080512', 'Lập trình hướng đối tượng với Java', '', NULL, 3, '', '7060'),
('7080403', 'Đồ án CNTT Địa học', '', NULL, 2, '', '7060');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `masinhvien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(50) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `lop` varchar(50) NOT NULL,
  `quequan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`masinhvien`, `username`, `password`, `hoten`, `ngaysinh`, `gioitinh`, `lop`, `quequan`, `avatar`, `email`) VALUES
('1921050080', 'tranphuanh', '123', 'Trần Phú Anh', '0000-00-00', 'Nam', 'DCCTCT66D1', '', '', '1921050080@student.humg.edu.vn'),
('1921050114', 'duyencuong', '123', 'Nguyễn Duyên Cường', '0000-00-00', 'Nam', 'DCCTCT66I1', '', '', '1921050114@student.humg.edu.vn'),
('2021050113', 'tranchau', '123', 'Trần Hải Châu', '0000-00-00', 'Nam', 'DCCTCT66H1', '', '', '2021050113@student.humg.edu.vn'),
('2021050151', 'minhduy', '123', 'Lê Minh Duy', '0000-00-00', 'Nam', '68DCHT23', '', '', '2021050151@student.humg.edu.vn'),
('2021050153', 'nguyenduy', '123', 'Nguyễn Hải Duy', '0000-00-00', 'Nam', 'DCCTCT66B1', 'Nghệ An', '', '2021050153@student.humg.edu.vn'),
('2021050160', 'ducduong', '123', 'Hà Hoàng Đức Dương', '0000-00-00', 'Nam', 'DCCTCT66B1', '', '../model/uploads/', '2021050160@student.humg.edu.vn'),
('2021050181', 'tiendat', '123', 'Nguyễn Tiến Đạt', '0000-00-00', 'Nam', '68DCHT23', 'Hà Nội', '', '2021050181@student.humg.edu.vn'),
('2121050769', 'tovietanh', '123', 'Tô Vệt Anh', '0000-00-00', 'Nam', 'DCCTCT66A1', '', '', '2121050769@student.humg.edu.vn'),
('2121051137', 'lybach', '123', 'Lý Ngọc Bách', '0000-00-00', 'Nam', 'DCCTCT66H1', '', '', '2121051137@student.humg.edu.vn'),
('2121051196', 'hoduyanh', '123', 'Hồ Duy Anh', '0000-00-00', 'Nam', 'DCCTCT66I1', '', '', '2121051196@student.humg.edu.vn'),
('2121051416', 'manhdung', '123', 'Nguyễn Mạnh Dũng', '0000-00-00', 'Nam', '68DCHT22', '', '', '2121051416@student.humg.edu.vn'),
('34234332', 'nghia123', '123', 'Cao Thế Anh', '0000-00-00', 'Nam', '68DCKT21', '2021050852@student.humg.edu.vn', '', 'nghiacccc@gmail.com'),
('3452352432', 'nghia3009', '123', 'Lê Chí Nghĩa', '2002-09-30', 'Nam', 'DCCTCT66I1', 'Nghệ An', '', 'nghia2@gmail.com'),
('44334', 'thaiga', '123', 'Thái Phan Doãn', '0000-00-00', 'Nam', 'DCCTCT66K1', 'Nghệ An', '', 'thaiga@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lopchuyennganh`
--

CREATE TABLE `tbl_lopchuyennganh` (
  `id` int(11) NOT NULL,
  `malop` varchar(255) NOT NULL,
  `tenlop` varchar(255) NOT NULL,
  `nienkhoa` varchar(50) NOT NULL,
  `siso` int(11) NOT NULL,
  `makhoa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_lopchuyennganh`
--

INSERT INTO `tbl_lopchuyennganh` (`id`, `malop`, `tenlop`, `nienkhoa`, `siso`, `makhoa`) VALUES
(1, 'DCCTCT66A1 ', 'Đại học_Công nghệ thông tin_K66A1', 'k66', 67, '7080'),
(2, 'DCCTCT66A1', 'Đại học_Công nghệ thông tin_K66A1', 'K66', 67, '7080'),
(3, 'DCCTCT66B1', 'Đại học_Công nghệ thông tin_K66B1', 'K66', 62, '7080'),
(4, 'DCCTCT66D1', 'Đại học_Công nghệ thông tin_K66D1', 'K66', 64, '7080'),
(5, 'DCCTCT66H1', 'Đại học_Công nghệ thông tin_K66H1', 'K66', 61, '7080'),
(6, 'DCCTCT66I1', 'Đại học_Công nghệ thông tin_K66I1', 'K66', 68, '7080'),
(7, 'DCCTCT66K1', 'Đại học_Công nghệ thông tin_K66K1', 'K66', 60, '7080'),
(8, 'DCCTCT66L1', 'Đại học_Công nghệ thông tin_K66L1', 'K66', 62, '7080'),
(9, 'DCCTCT66M1', 'Đại học_Công nghệ thông tin_K66M1', 'K66', 65, '7080'),
(10, 'DCCTDH63A', 'Đại học - Công nghệ thông tin địa học A - K63', 'K63', 25, '7080'),
(11, 'DCCTDH64', 'Đại học - Công ngệ thông tin địa học - K64', 'K64', 28, '7080'),
(12, 'DCCTDH65A', 'Đại học - Công nghệ thông tin địa học A - K65', 'K65', 27, '7080'),
(13, 'DCCTHT63B', 'Đại học - Hệ thống thông tin B - K63', 'K63', 40, '7080'),
(14, 'DCCTHT65A', 'Đại học - Hệ thông thông tin A- K65', 'K65', 35, '7080'),
(15, 'DCCTHT65B', 'Đại học - Hệ thông thông tin B- K65', 'K65', 30, '7080'),
(16, 'DCCTKH64A', 'Đại học - Khoa học máy tính ứng dụng A- K64', 'K64', 39, '7080'),
(17, 'DCCTKH64B', 'Đại học - Khoa học máy tính ứng dụng B- K64', 'K64', 36, '7080'),
(18, 'DCCTKH65A', 'Đại học - Khoa học máy tính ứng dụng A- K65', 'K65', 38, '7080'),
(19, 'DCCTKH65B', 'Đại học - Khoa học máy tính ứng dụng B- K65', 'K65', 34, '7080'),
(20, 'DCCTKT62', 'Đại học - Tin học Kinh tế - K62', 'K62', 40, '7080'),
(21, 'DCCTKT63A', 'Đại học - Tin học kinh tế A - K63', 'K63', 42, '7080'),
(22, 'DCCTKT64A', 'Đại học - Tin học kinh tế A- K64', 'K64', 46, '7080'),
(23, 'DCCTKT65A', 'Đại học - Tin học kinh tế A- K65', 'K65', 41, '7080'),
(24, 'DCCTKT65B', 'Đại học - Tin học kinh tế B- K65', 'K65', 40, '7080'),
(25, 'DCCTMM63C', 'Đại học - Mạng máy tính C - K63', 'K63', 36, '7080'),
(26, 'DCCTMM65A', 'Đại học - Mạng máy tính A- K65', 'K65', 38, '7080'),
(27, 'DCCTMM65B', 'Đại học - Mạng máy tính B- K65', 'K65', 37, '7080'),
(28, 'DCCTPM62A', 'Đại học - Công nghệ phần mềm A - K62', 'K62', 42, '7080'),
(29, 'DCCTPM63A', 'Đại học - Công nghệ phần mềm A - K63', 'K63', 45, '7080'),
(30, 'DCCTPM64A', 'Đại học - Công nghệ phần mềm A- K64', 'K64', 48, '7080'),
(31, 'DCCTPM65C', 'Đại học - Công nghệ phần mềm C- K65', 'K65', 52, '7080'),
(32, 'DCCTCT63', 'Đại học - Công nghệ thông tin_K63', 'K63', 26, '7080'),
(33, 'DCCTCT65B1', 'Đại học_Công nghệ thông tin B1_K65', 'K65', 30, '7080'),
(34, 'DCCTCT66C2', 'Đại học_Công nghệ thông tin_K66C2', 'K66', 36, '7080'),
(35, 'DCCTDH65B', 'Đại học - Công nghệ thông tin địa học B - K65', 'K65', 32, '7080'),
(36, 'DCCTPM65A', 'Đại học - Công nghệ phần mềm A- K65', 'K65', 48, '7080'),
(37, 'DCCTPM65B', 'Đại học - Công nghệ phần mềm B- K65', 'K65', 50, '7080');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dsdangky`
--
ALTER TABLE `dsdangky`
  ADD PRIMARY KEY (`mamonhoc`),
  ADD KEY `masinhvien` (`masinhvien`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`makhoa`);

--
-- Chỉ mục cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`lop`),
  ADD KEY `makhoa` (`makhoa`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD KEY `makhoa` (`makhoa`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`masinhvien`),
  ADD KEY `malop` (`lop`);

--
-- Chỉ mục cho bảng `tbl_lopchuyennganh`
--
ALTER TABLE `tbl_lopchuyennganh`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_lopchuyennganh`
--
ALTER TABLE `tbl_lopchuyennganh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dsdangky`
--
ALTER TABLE `dsdangky`
  ADD CONSTRAINT `dsdangky_ibfk_1` FOREIGN KEY (`masinhvien`) REFERENCES `sinhvien` (`masinhvien`);

--
-- Các ràng buộc cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD CONSTRAINT `lophoc_ibfk_1` FOREIGN KEY (`makhoa`) REFERENCES `khoa` (`makhoa`);

--
-- Các ràng buộc cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD CONSTRAINT `monhoc_ibfk_1` FOREIGN KEY (`makhoa`) REFERENCES `khoa` (`makhoa`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`lop`) REFERENCES `lophoc` (`lop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
