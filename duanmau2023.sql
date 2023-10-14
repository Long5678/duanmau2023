-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th10 14, 2023 lúc 02:42 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmau2023`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idpro` int(11) NOT NULL,
  `ngaybinhluan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(1, 'dep', 2, 16, '13/10/2023');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(5, 'Đồng hồ'),
(6, 'Ba lô'),
(8, 'Sách - Tiểu Thuyết'),
(11, 'Laptop');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) DEFAULT 0,
  `img` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(11) DEFAULT 0,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(6, 'Bắt trẻ đồng xanh', 30, 'dongxanhhien1.jpg', 'ư1e1e', 25, 8),
(9, 'Casio', 26, 'casio.jpg', '12321', 10, 5),
(10, 'Lenovo Ideapad Gaming 3', 50, 'laptop1.jpg', 'Mình hoàn toàn bị em laptop Lenovo Ideapad Gaming 3 15ARH7 R5 6600H (82SB007LVN) này chinh phục bởi ngoại hình cuốn hút, mạnh mẽ chuẩn gaming đồng thời ẩn chứa một con hổ dũng mãnh đến từ bộ vi xử lý AMD Ryzen 5, xứng danh trợ thủ đắc lực cho mọi game thủ.', 30, 11),
(11, 'Asus ZenBook 14 ', 65, 'laptop2.jpg', 'Laptop Asus ZenBook 14 UX425EA-BM069T (i5-1135G7/RAM-8GB/SSD-512GB/14Inch/FHD/Win10/Xám) tuyệt đẹp đã trở nên gọn nhẹ hơn bao giờ hết. Sản phẩm mỏng hơn, nhẹ hơn và gọn gàng khó tin nhưng vẫn được trang bị HDMI, Thunderbolt™ 4 USB-C, USB Type-A và đầu đọc thẻ MicroSD cho sức mạnh linh hoạt vượt trội. Được thiết kế để mang lại hiệu năng mạnh mẽ, đây là lựa chọn hoàn hảo cho phong cách sống năng động.', 13, 11),
(12, 'Citizen NH8350-59L', 36, 'citizen.jpg', 'Nhìn tổng thể, đây là 1 thiết kế kinh điển khá quen thuộc với 3 kim chỉ giờ, phút giây cùng với tính năng lịch ngày, lịch thứ được đặt ở góc 3h. Đây gần như đã là chuẩn mực cơ bản nhất của những chiếc đồng hồ đeo tay truyền thống, điểm khác biệt nằm ở những chi tiết nhỏ. Đầu tiên hãy nói về mặt số, chắc chắn rằng với những ai mới tiếp xúc với đồng hồ sẽ thấy cực kỳ lạ lẫm với thiết kế cọc số kết hợp giữa những vạch chỉ giờ và kiểu sổ La Mã thuôn dài. Đây là 1 trong những đặc trưng của trường phái thiết kế Bauhaus đến từ Đức. Người Đức đã biến những cọc số La Mã truyền thống vốn là biểu tượng của sự cổ điển, vĩnh cửu trở nên hiện đại, tinh tế và đậm chất Đức hơn rất nhiều. Điều này có thể bắt nguồn từ việc những cọc số dạng vạch là dễ chế tác nhất nhưng chúng có thể trở nên nhàm chán và thiết kế này chính là sự phá cách để mang lại cảm hứng mới cho tổng thể của mặt số. Nếu ai hâm mộ những hãng đồng hồ Đức như Stowa hay Nomos thì hẳn sẽ hiểu rất rõ sự quyến rũ của kiểu cọc số này', 20, 5),
(13, 'Apple Watch SE 2022 GPS 44mm', 150, 'applewatch.jpg', 'Trong sự kiện ra mắt sản phẩm mới vào tháng 9/2022, Apple đã trình làng thế hệ tiếp theo của dòng Apple Watch SE mang tên Apple Watch SE 2022, với mục tiêu đem những trải nghiệm công nghệ cao cấp đến gần hơn với nhiều đối tượng người dùng.', 13, 5),
(14, 'Sự im lặng của bầy cừu', 26, 'sach1.jpg', 'Sự im lặng của bầy cừu là một tiểu thuyết trinh thám kinh dị được viết bởi tác giả Thomas Harris. Được xuất bản lần đầu tiên vào năm 1988, đây là phần tiếp theo của cuốn tiểu thuyết Rồng đỏ năm 1981 của Harris. Cả hai cuốn tiểu thuyết đều kể về kẻ giết người hàng loạt ăn thịt người, Tiến sĩ Hannibal Lecter. Bộ phim chuyển thể của đạo diễn Jonathan Demme được công chiếu vào năm 1991 với sự hoan nghênh rộng rãi của giới phê bình và thành công về doanh thu phòng vé. Nó đã trở thành bộ phim thứ ba trong lịch sử giành được 5 giải Oscar.', 11, 8),
(15, 'Những Vụ Án Của Sherlock Holmes', 26, 'sach2.jpg', 'Sherlock Holmes là tiểu thuyết của Sir Arthur Conan Doyle lần đầu xuất hiện vào năm 1887 trong cuốn tiểu thuyết trinh thám “A Study in Scarlet”. Từ đó, nhà văn Anh đã viết 4 tiểu thuyết và 55 truyện ngắn về Holmes. Qua hàng thế kỷ, vị thám tử đã trở thành một biểu tượng văn hóa và là nguồn cảm hứng của rất nhiều cây bút khác. Cuốn “Mary Russell” nổi tiếng của Laurie King từng tái hiện cuộc sống của Holmes sau khi “về hưu”.\r\n\r\nNhững Vụ Kỳ Án Của Sherlock Holmes đưa chúng ta sống cùng những vụ án ly kỳ, hóc búa, biến hoá vô cùng, và cũng lắm dữ dội, hiểm nguy, mà ở đó ông thể hiện tài ba phá án phi phàm của mình. Cuốn sách cuốn hút các bạn trẻ còn bởi lối kể chuyện nhẹ nhàng, nhưng bí hiểm và vô cùng thông minh. Và hơn thế nữa, còn nhiều THÍ DỤ TRẮC NGHIỆM, vừa giúp hiểu rõ hơn, khám phá lý thú hơn các vụ án lừng lẫy của Sherlock Holmes, vừa tăng cường khả năng phán đoán cho độc giả.', 9, 8),
(16, 'Balo laptop Sakos Morale', 15, 'balo1.png', 'Sakos Morale – Bứt phá giới hạn, chinh phục đỉnh cao\r\nNgày nay, do nhu cầu và tính tiện lợi, việc mang theo những thiết bị công nghệ như laptop, tablet,… trong quá trình làm việc, học tập hay du lịch cũng trở thành xu hướng quen thuộc.\r\n\r\nVới thiết kế gọn nhẹ, hệ thống ngăn chứa khoa học, đặc biệt tích hợp thêm cổng sạc USB thông minh, móc treo kính, đai gài cần kéo vali,… Sakos Morale là dòng balo laptop cao cấp sở hữu vẻ đẹp tinh tế, phong cách hiện đại cùng những tính năng đẳng cấp chinh phục được xu hướng của các bạn trẻ.', 5, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'long', '123', 'longnppd07528@fpt.edu.vn', '43 Nguyễn Duy Hiệu', '1231', 1),
(2, 'user', '456', 'nguyenlong2632001@gmail.com', NULL, NULL, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
