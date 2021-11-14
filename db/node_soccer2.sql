-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 31, 2021 lúc 06:02 PM
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
-- Cơ sở dữ liệu: `node_soccer`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `user_id`, `name`, `image`, `summary`, `content`, `created_at`) VALUES
(1, 4, 1, 'Barca sẽ thi đấu như thế nào dưới thời Xavi?\r\n', 'thu.jpg', 'Xavi Hernandez nhiều khả năng sẽ trở lại Nou Camp dẫn dắt Barca. Vậy dưới trướng huyền thoại 41 tuổi, gã khổng lồ xứ Catalan liệu sẽ thi đấu như thế nào?', 'Hiện tại, tất cả kinh nghiệm, vốn liếng mà Xavi có là 2 năm dẫn dắt CLB Al Sadd tại Qatar. Dĩ nhiên, nắm quyền ở Barca nói riêng hay La Liga nói chung là một thử thách khác hẳn so với những gì chiến lược gia người Tây Ban Nha đang trải nghiệm.\r\n\r\nDù vậy, sau một thời gian dõi theo Xavi tại Qatar, tờ Marca đã đúc rút ra nhiều điều từ phong cách huấn luyện cũng như thi đấu của cựu cầu thủ 41 tuổi.\r\n\r\n#1 KIỂM SOÁT BÓNG\r\n\"Đội bóng của tôi gây sát thương cho đối phương thông qua kiểm soát bóng. Cầm bóng trong chân chính là cách để bạn phòng ngự\", Xavi thổ lộ trên chương trình The Coaches\' Voice. CLB Al Sadd do Xavi dẫn dắt sở hữu tỷ lệ kiểm soát bóng rất lớn, bất chấp điều này có thể đến nhờ chất lượng đội hình vượt trội của đội bóng so với những đối thủ khác.\r\n\r\n#2 SỬ DỤNG CÁC CẦU THỦ CHẠY CÁNH\r\nThêm một ý tưởng rất rõ ràng nữa từ Xavi là ông muốn tận dụng tối đa chiều rộng của sân bằng những cầu thủ chạy cánh năng động, một điều ít phổ biến hơn trong bóng đá hiện đại khi vai trò của cầu thủ chạy cánh truyền thống đã lỗi thời. Ở Al Sadd, Xavi ưa thích dùng Akram Afif, cầu thủ xuất sắc nhất của Qatar hiện tại, bên cánh trái. Tại Barca, ông cũng sẽ sử dụng các cầu thủ chạy cánh để tấn công đối thủ.\r\n\r\n#3 GÂY ÁP LỰC LỚN\r\nỞ Al Sadd, mọi cầu thủ đều tham gia phòng ngự khi đội bóng không nắm quyền kiểm soát bóng, với đội hình dâng cao gây áp lực áp lên đối phương. \"Càng lấy lại bóng nhiều, chúng tôi càng tiến gần hơn đến vòng cấm của đối phương\", Xavi nói.\r\n\r\n#4 SỰ DI CHUYỂN LINH HOẠT\r\nSự di chuyển linh hoạt là một trong những yếu tố then chốt trong DNA của Barca, và tất cả đã được thể hiện xuất sắc trong thời kỳ của Pep Guardiola - HLV mà Xavi đánh giá là hay nhất thế giới lúc này. Sự di chuyển linh hoạt bao gồm việc tạo ra sự vượt trội về quân số trên khắp mặt sân để làm tổn thương đối thủ, và Xavi sẽ tìm cách thiết lập điều đó một lần nữa ở Camp Nou.\r\n\r\n#5 TRIỂN KHAI TẤN CÔNG TỪ HÀNG THỦ\r\nĐó là một trong những dấu ấn đặc trưng của Al Sadd dưới tay Xavi. Đội bóng này luôn tìm cách triển khai bóng từ hàng thủ, mặc dù thực tế là các cầu thủ của họ kém chất lượng hơn nhiều so với những đồng nghiệp ở Tây Ban Nha.\r\n\r\nXavi nói: \"Khi triển khai bóng từ hàng thủ, cầu thủ thứ 3 sẽ không thể bị ngăn chặn. Tưởng tượng như này nhé. Gerard Pique muốn chuyền bóng cho tôi nhưng tôi bị một cầu thủ đối phương kèm rất sát. Trong tình huống này, Pique rõ ràng không thể đưa bóng cho tôi rồi, nên tôi sẽ di chuyển đi chỗ khác, kéo cả người kèm đi theo. \r\n\r\nKhi ấy, Lionel Messi sẽ lùi xuống và trở thành cầu thủ thứ 2. Pique là người đầu tiên, Messi thứ 2 và tôi là thứ 3. Đó là cách việc luân chuyển bóng diễn ra liên tục. Triển khai bóng từ hàng thủ như vậy luôn tạo ra sự vượt trội\".', '2021-10-30 02:08:18'),
(2, 4, 2, 'Barca sẽ thi đấu như thế nào dưới thời Xavi?\r\n', 'thu.jpg', 'Xavi Hernandez nhiều khả năng sẽ trở lại Nou Camp dẫn dắt Barca. Vậy dưới trướng huyền thoại 41 tuổi, gã khổng lồ xứ Catalan liệu sẽ thi đấu như thế nào?', 'Hiện tại, tất cả kinh nghiệm, vốn liếng mà Xavi có là 2 năm dẫn dắt CLB Al Sadd tại Qatar. Dĩ nhiên, nắm quyền ở Barca nói riêng hay La Liga nói chung là một thử thách khác hẳn so với những gì chiến lược gia người Tây Ban Nha đang trải nghiệm.\r\n\r\nDù vậy, sau một thời gian dõi theo Xavi tại Qatar, tờ Marca đã đúc rút ra nhiều điều từ phong cách huấn luyện cũng như thi đấu của cựu cầu thủ 41 tuổi.\r\n\r\n#1 KIỂM SOÁT BÓNG\r\n\"Đội bóng của tôi gây sát thương cho đối phương thông qua kiểm soát bóng. Cầm bóng trong chân chính là cách để bạn phòng ngự\", Xavi thổ lộ trên chương trình The Coaches\' Voice. CLB Al Sadd do Xavi dẫn dắt sở hữu tỷ lệ kiểm soát bóng rất lớn, bất chấp điều này có thể đến nhờ chất lượng đội hình vượt trội của đội bóng so với những đối thủ khác.\r\n\r\n#2 SỬ DỤNG CÁC CẦU THỦ CHẠY CÁNH\r\nThêm một ý tưởng rất rõ ràng nữa từ Xavi là ông muốn tận dụng tối đa chiều rộng của sân bằng những cầu thủ chạy cánh năng động, một điều ít phổ biến hơn trong bóng đá hiện đại khi vai trò của cầu thủ chạy cánh truyền thống đã lỗi thời. Ở Al Sadd, Xavi ưa thích dùng Akram Afif, cầu thủ xuất sắc nhất của Qatar hiện tại, bên cánh trái. Tại Barca, ông cũng sẽ sử dụng các cầu thủ chạy cánh để tấn công đối thủ.\r\n\r\n#3 GÂY ÁP LỰC LỚN\r\nỞ Al Sadd, mọi cầu thủ đều tham gia phòng ngự khi đội bóng không nắm quyền kiểm soát bóng, với đội hình dâng cao gây áp lực áp lên đối phương. \"Càng lấy lại bóng nhiều, chúng tôi càng tiến gần hơn đến vòng cấm của đối phương\", Xavi nói.\r\n\r\n#4 SỰ DI CHUYỂN LINH HOẠT\r\nSự di chuyển linh hoạt là một trong những yếu tố then chốt trong DNA của Barca, và tất cả đã được thể hiện xuất sắc trong thời kỳ của Pep Guardiola - HLV mà Xavi đánh giá là hay nhất thế giới lúc này. Sự di chuyển linh hoạt bao gồm việc tạo ra sự vượt trội về quân số trên khắp mặt sân để làm tổn thương đối thủ, và Xavi sẽ tìm cách thiết lập điều đó một lần nữa ở Camp Nou.\r\n\r\n#5 TRIỂN KHAI TẤN CÔNG TỪ HÀNG THỦ\r\nĐó là một trong những dấu ấn đặc trưng của Al Sadd dưới tay Xavi. Đội bóng này luôn tìm cách triển khai bóng từ hàng thủ, mặc dù thực tế là các cầu thủ của họ kém chất lượng hơn nhiều so với những đồng nghiệp ở Tây Ban Nha.\r\n\r\nXavi nói: \"Khi triển khai bóng từ hàng thủ, cầu thủ thứ 3 sẽ không thể bị ngăn chặn. Tưởng tượng như này nhé. Gerard Pique muốn chuyền bóng cho tôi nhưng tôi bị một cầu thủ đối phương kèm rất sát. Trong tình huống này, Pique rõ ràng không thể đưa bóng cho tôi rồi, nên tôi sẽ di chuyển đi chỗ khác, kéo cả người kèm đi theo. \r\n\r\nKhi ấy, Lionel Messi sẽ lùi xuống và trở thành cầu thủ thứ 2. Pique là người đầu tiên, Messi thứ 2 và tôi là thứ 3. Đó là cách việc luân chuyển bóng diễn ra liên tục. Triển khai bóng từ hàng thủ như vậy luôn tạo ra sự vượt trội\".', '2021-10-30 02:08:18'),
(3, 2, 2, 'Evra: \'Tình yêu thực sự của Ronaldo là MU\'\r\n', 'thu.jpg', 'Trước những chỉ trích nhắm vào người đồng đội cũ Cristiano Ronaldo thời còn ở Juventus, Patrice Evra đã lên tiếng phản bác.', 'Dù giúp Juventus giành được 2 Scudetto nhưng sự ra đi của Ronaldo không hề yên bình một chút nào trong mùa hè vừa qua. CR7 bị coi là nguyên nhân khiến Lão bà đi xuống trong mùa trước.\n\nLà một người từng thi đấu bên cạnh Ronaldo ở Man United và cũng kinh qua Juventus, Evra có đủ tư cách để biện minh:\n\n\"Ronaldo cần tình yêu và sự tôn trọng. Nhưng thay vào đó, họ biến anh ấy thành một vật tế thần ở Juventus. \n\nNhững chỉ trích nhắm vào Ronaldo ở Italia rất nực cười và có phần đạo đức giả. Thật là một sai lầm khi Max Allegri nói rằng: \"Ronaldo sẽ không thi đấu mọi trận\". Không cần thiết phải nói điều này trước công chúng. Trong mọi trường hợp, tình yêu thực sự của Ronaldo chỉ là MU mà thôi\".\n\nNói về ông thầy cũ Allegri, Evra nhận xét: \"Ông ấy có một sự tinh tế đáng kinh ngạc, hơn cả Sir Alex Ferguson. Allegri luôn biết trận đấu sẽ diễn ra thế nào từ trước khi nó bắt đầu. Nhưng ở Italia, người ta tập luyện quá nhiều.\n\nNếu tìm được điểm cân bằng, các đội Italia sẽ vô địch Champions League thường xuyên hơn. Nhưng họ luôn đẩy mọi thứ tới cực đoan. Với tôi, đó là dấu hiệu của sự thiếu chắc chắn\".', '2021-10-30 02:08:18'),
(9, 1, 1, 'Dội bom từ chân trái sang chân phải, Reece James chọn bàn thắng hay hơn', 'NH1.jpg', 'Hậu vệ Chelsea phấn khích khi ghi bàn bằng cả chân trái lẫn chân phải: \"Tôi nghĩ bàn thắng đầu tiên có lẽ hay hơn. 1 cú dứt điểm tốt bằng chân không thuận của tôi. Bóng đến chỗ tôi trong vòng cấm và lúc đầu tôi tính sút ngay, nhưng đã quyết định chạm trướ', 'Hậu vệ Chelsea phấn khích khi ghi bàn bằng cả chân trái lẫn chân phải: \"Tôi nghĩ bàn thắng đầu tiên có lẽ hay hơn. 1 cú dứt điểm tốt bằng chân không thuận của tôi. Bóng đến chỗ tôi trong vòng cấm và lúc đầu tôi tính sút ngay, nhưng đã quyết định chạm trước. Bóng lăn qua bên trái, nên tôi tiến vào phía trong và dứt điểm bằng chân trái. 1 cú sút tốt, ngay khi bóng rời chân trái, tôi đã biết đó là 1 bàn thắng.\"\r\nHậu vệ Chelsea phấn khích khi ghi bàn bằng cả chân trái lẫn chân phải: \"Tôi nghĩ bàn thắng đầu tiên có lẽ hay hơn. 1 cú dứt điểm tốt bằng chân không thuận của tôi. Bóng đến chỗ tôi trong vòng cấm và lúc đầu tôi tính sút ngay, nhưng đã quyết định chạm trước. Bóng lăn qua bên trái, nên tôi tiến vào phía trong và dứt điểm bằng chân trái. 1 cú sút tốt, ngay khi bóng rời chân trái, tôi đã biết đó là 1 bàn thắng.\"\r\nHậu vệ Chelsea phấn khích khi ghi bàn bằng cả chân trái lẫn chân phải: \"Tôi nghĩ bàn thắng đầu tiên có lẽ hay hơn. 1 cú dứt điểm tốt bằng chân không thuận của tôi. Bóng đến chỗ tôi trong vòng cấm và lúc đầu tôi tính sút ngay, nhưng đã quyết định chạm trước. Bóng lăn qua bên trái, nên tôi tiến vào phía trong và dứt điểm bằng chân trái. 1 cú sút tốt, ngay khi bóng rời chân trái, tôi đã biết đó là 1 bàn thắng.\"\r\nHậu vệ Chelsea phấn khích khi ghi bàn bằng cả chân trái lẫn chân phải: \"Tôi nghĩ bàn thắng đầu tiên có lẽ hay hơn. 1 cú dứt điểm tốt bằng chân không thuận của tôi. Bóng đến chỗ tôi trong vòng cấm và lúc đầu tôi tính sút ngay, nhưng đã quyết định chạm trước. Bóng lăn qua bên trái, nên tôi tiến vào phía trong và dứt điểm bằng chân trái. 1 cú sút tốt, ngay khi bóng rời chân trái, tôi đã biết đó là 1 bàn thắng.\"', '2021-10-31 13:18:30'),
(10, 1, 2, 'Chelsea thực sự đáng gờm khi Tuchel trình làng vũ khí mới', 'NH2.jpg', 'Có vẻ việc vắng mặt Romelu Lukaku và Timo Werner không khiến Thomas Tuchel mấy bận tâm. Chelsea vẫn giữ được chuỗi thắng và thậm chí là thắng đậm khi không có họ.', 'Thống kê cho thấy, trong 4 trận gần nhất, Chelsea đã ghi được tới 15 bàn thắng. Ngoại trừ tình huống Lukaku mang về quả phạt đền ở cuộc đấu với Malmo, tất cả các pha lập công còn lại đều không có dấu giày của những tiền đạo cắm thực thụ. Có vẻ Thomas Tuchel đã làm quen được với điều này và ứng biến một cách tài tình. \r\nTheo đó, Reece James trong vai trò của một biên thủ (wing-back) đã được phép chơi tự do và tạo ra vô vàn khó khăn cho hàng thủ Chích chòe. Cụ thể, theo biểu đồ nhiệt của Whoscored ghi lại, James gần như chơi bóng ở bên phần sân đối phương và bó vào trung tâm khá nhiều. Lắm lúc ta có cảm tưởng cầu thủ người Anh là một tiền vệ con thoi chứ không phải là một biên thủ thuần túy. \r\n\r\nChưa hết, điểm cách tân của Tuchel còn ở chỗ ông thúc đẩy James có mặt nhiều hơn ở các điểm nóng, đặc biệt là vòng cấm đối phương để đón những đường bóng hai. Bàn về điều này sau trận đấu, Tuchel cho biết: \"Chelsea có các cầu thủ có mặt ở mọi khoảng trống mà chúng tôi muốn tạo ra nguy hiểm. Vì vậy nếu các tiền đạo cánh dạt biên, hậu vệ cánh hoàn toàn được cho phép tấn công vào hành lang trong.\"\r\n\r\n\"Về tổng thể, tôi nghĩ mọi đội bóng có hệ thống tương tự đều làm thế. Chúng tôi cần các hậu vệ cánh tiếp cận vòng cấm đối thủ trong giai đoạn cuối đợt tấn công, để gia tăng cơ hội ghi bàn cũng như tạo ra thêm thời cơ dứt điểm.\r\n\r\nBàn thắng đầu tiên xuất phát từ pha đi bóng chói sáng của Hudson-Odoi bên cánh trái. Loftus-Cheek có mặt ở vị trí nguy hiểm, Havertz cũng ở trong vòng cấm và có thể mở ra cơ hội ghi bàn thứ 2 để James tận dụng,\" Tuchel kết lại.\r\nTrước đó, ở các trận đấu gặp Norwich và Arsenal, James đều đã ghi bàn ở những vị trí tương tự (góc phải trong vòng cấm). Rõ ràng, cách thức tấn công của Chelsea có đôi chút thay đổi khi họ mất đi hai tiền đạo cắm là Lukaku và Werner. Tuy nhiên, nhờ vậy, Tuchel đã mạnh dạn hơn trong chuyện thúc đẩy James, trở thành một quân bài chủ lực của Chelea thời điểm này.\r\n\r\nCó lẽ, không thể để James bám mãi trong vòng cấm đối thủ. Về lâu dài, đó là một con dao hai lưỡi. Có điều, trong ngắn hạn, nó cho thấy tài thao lược tuyệt vời của Tuchel. Nó giúp ông trở nên khác biệt với những Frank Lampard hay Antonio Conte trước đây.  ', '2021-10-31 13:21:11'),
(11, 1, 2, '\'Arsenal sẽ có suất dự C1 nhờ Man United\'', 'NH3.jpg', 'Jack Wilshere đã phát biểu trên talkSPORT về Arsenal và cơ hội giành vé dự Champions League mùa này của họ.', 'Jack Wilshere tin rằng Arsenal cuối cùng cũng có thể trở lại Champions League sau mùa giải này. Đáng chú ý hơn, cầu thủ 29 tuổi tin rằng Pháo thủ sẽ lấy được suất đó của Manchester United.\r\n\r\nKhi được hỏi liệu anh có nghĩ Arsenal sẽ kết thúc trong top 4 hay không, Wilshere nói với talkSPORT: \"Tôi nghĩ là có thể, nhờ United. Tôi xin lỗi, tôi không nghĩ United tệ, nhưng với tất cả áp lực lên họ và những thứ xung quanh Ole, cuộc đua này sẽ rất thú vị.\"\r\nCựu sao Arsenal có lý do để nhận định như vậy. Quỷ đỏ hiện đang là một mớ hỗn độn dưới thời Ole Gunnar Solskjaer, họ cũng đang phải phân tâm cho Champions League dù không có nhiều hy vọng ở đây. Trong khi đó, Arsenal đang tập trung cho đấu trường quốc nội và có phong độ đáng kinh ngạc.\r\nNgay cả khi không có sự trợ giúp từ sự sa sút của Manchester United, Pháo thủ vẫn có hy vọng giành vé dự C1. Họ đã thắng 5 và hòa 2 trong 7 trận gần nhất tại Premier League, đi từ cuối bảng xếp hạng lên vị trí thứ 6, có cùng điểm với Man United và West Ham nhưng thua về hiệu số bàn thắng bại.\r\n\r\n3 suất còn lại trong top 4 được coi như sẽ dành cho Manchester City, Liverpool và Chelsea, những đội bóng cạnh tranh chính cho danh hiệu.', '2021-10-31 13:22:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `position`) VALUES
(1, 'Ngoại Hạng Anh', 0),
(2, 'Bóng Đá Ý', 0),
(3, 'Tây Ba Nha', 0),
(4, 'Bóng Đá Đức', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `author`, `avatar`) VALUES
(1, 'admin', 'admin', 'Hao Manu', 'ava1.jpg'),
(2, 'quan', 'quanase', 'quan ASE', 'ava2.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
