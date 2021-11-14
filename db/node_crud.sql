-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 28, 2021 lúc 06:14 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `node_crud`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_no`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'hao', 'hao@gmail.com', '123456789', 'Ở sân chơi vừa tầm U23 Việt Nam, “phép thuật” ông Park vẫn hữu hiệu', 'thu.jpg', 'Khi U23 Việt Nam áp đặt được thế trận thì hậu vệ cánh trở thành một mũi công thường trực bên hành lang biên. Họ chuyển đổi sơ đồ chiến thuật, lối chơi và tạo ra bước ngoặt trận đấu bằng các cầu thủ dự bị.  Những nguyên tắc của ông Park Hang Seo khi xây dựng đội hình, vận hành lối chơi và ứng biến trong một trận đấu lại được thể hiện, và ít nhiều phô diễn “phép thuật” của nó khi ông chuyển xuống cầm đội U23 Việt Nam đá ở vòng loại giải U23 châu Á với một đối thủ dưới tầm như U23 Đài Loan (TQ).', '2021-10-28 06:04:55', '2021-10-28 06:05:19'),
(2, 'hao', 'hao@gmail.com', '123456789', 'uu', 'thu.jpg', 'Khi U23 Việt Nam áp đặt được thế trận thì hậu vệ cánh trở thành một mũi công thường trực bên hành lang biên. Họ chuyển đổi sơ đồ chiến thuật, lối chơi và tạo ra bước ngoặt trận đấu bằng các cầu thủ dự bị.  Những nguyên tắc của ông Park Hang Seo khi xây dựng đội hình, vận hành lối chơi và ứng biến trong một trận đấu lại được thể hiện, và ít nhiều phô diễn “phép thuật” của nó khi ông chuyển xuống cầm đội U23 Việt Nam đá ở vòng loại giải U23 châu Á với một đối thủ dưới tầm như U23 Đài Loan (TQ).', '2021-10-28 06:04:55', '2021-10-28 06:05:19'),
(4, 'quang2', 'quang@gmail.com', '0966899000', 'gg', 'thu.jpg', 'Khi U23 Việt Nam áp đặt được thế trận thì hậu vệ cánh trở thành một mũi công thường trực bên hành lang biên. Họ chuyển đổi sơ đồ chiến thuật, lối chơi và tạo ra bước ngoặt trận đấu bằng các cầu thủ dự bị.  Những nguyên tắc của ông Park Hang Seo khi xây dựng đội hình, vận hành lối chơi và ứng biến trong một trận đấu lại được thể hiện, và ít nhiều phô diễn “phép thuật” của nó khi ông chuyển xuống cầm đội U23 Việt Nam đá ở vòng loại giải U23 châu Á với một đối thủ dưới tầm như U23 Đài Loan (TQ).', '2021-10-28 06:04:55', '2021-10-28 06:05:19'),
(6, 'quang@gmail.com', 'quang@gmail.com', '0966899000', 'gg', 'thu.jpg', 'Khi U23 Việt Nam áp đặt được thế trận thì hậu vệ cánh trở thành một mũi công thường trực bên hành lang biên. Họ chuyển đổi sơ đồ chiến thuật, lối chơi và tạo ra bước ngoặt trận đấu bằng các cầu thủ dự bị.  Những nguyên tắc của ông Park Hang Seo khi xây dựng đội hình, vận hành lối chơi và ứng biến trong một trận đấu lại được thể hiện, và ít nhiều phô diễn “phép thuật” của nó khi ông chuyển xuống cầm đội U23 Việt Nam đá ở vòng loại giải U23 châu Á với một đối thủ dưới tầm như U23 Đài Loan (TQ).', '2021-10-28 06:04:55', '2021-10-28 06:05:19'),
(9, 'nam3@gmail.com', 'nam3@gmail.com', '0966899000', 'hh', 'thu.jpg', 'Khi U23 Việt Nam áp đặt được thế trận thì hậu vệ cánh trở thành một mũi công thường trực bên hành lang biên. Họ chuyển đổi sơ đồ chiến thuật, lối chơi và tạo ra bước ngoặt trận đấu bằng các cầu thủ dự bị.  Những nguyên tắc của ông Park Hang Seo khi xây dựng đội hình, vận hành lối chơi và ứng biến trong một trận đấu lại được thể hiện, và ít nhiều phô diễn “phép thuật” của nó khi ông chuyển xuống cầm đội U23 Việt Nam đá ở vòng loại giải U23 châu Á với một đối thủ dưới tầm như U23 Đài Loan (TQ).', '2021-10-28 06:04:55', '2021-10-28 06:05:19'),
(14, 'quang@gmail.com', 'quang@gmail.com', '0966899000', '\"Đại ca\" Ronaldo kêu gọi cầu thủ MU ủng hộ Solskjaer, bị dư luận cười nhạo', 'thu.jpg', 'Khi U23 Việt Nam áp đặt được thế trận thì hậu vệ cánh trở thành một mũi công thường trực bên hành lang biên. Họ chuyển đổi sơ đồ chiến thuật, lối chơi và tạo ra bước ngoặt trận đấu bằng các cầu thủ dự bị.  Những nguyên tắc của ông Park Hang Seo khi xây dựng đội hình, vận hành lối chơi và ứng biến trong một trận đấu lại được thể hiện, và ít nhiều phô diễn “phép thuật” của nó khi ông chuyển xuống cầm đội U23 Việt Nam đá ở vòng loại giải U23 châu Á với một đối thủ dưới tầm như U23 Đài Loan (TQ).', '2021-10-28 07:29:15', '2021-10-28 07:29:15');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
