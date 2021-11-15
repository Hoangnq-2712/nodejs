-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 15, 2021 lúc 03:24 AM
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
(9, 1, 1, 'Dội bom từ chân trái sang chân phải, Reece James chọn bàn thắng hay hơn', 'NH1.jpg', 'Hậu vệ Chelsea phấn khích khi ghi bàn bằng cả chân trái lẫn chân phải: \"Tôi nghĩ bàn thắng đầu tiên có lẽ hay hơn. 1 cú dứt điểm tốt bằng chân không thuận của tôi. Bóng đến chỗ tôi trong vòng cấm và lúc đầu tôi tính sút ngay, nhưng đã quyết định chạm trướ', 'Hậu vệ Chelsea phấn khích khi ghi bàn bằng cả chân trái lẫn chân phải: \"Tôi nghĩ bàn thắng đầu tiên có lẽ hay hơn. 1 cú dứt điểm tốt bằng chân không thuận của tôi. Bóng đến chỗ tôi trong vòng cấm và lúc đầu tôi tính sút ngay, nhưng đã quyết định chạm trước. Bóng lăn qua bên trái, nên tôi tiến vào phía trong và dứt điểm bằng chân trái. 1 cú sút tốt, ngay khi bóng rời chân trái, tôi đã biết đó là 1 bàn thắng.\"\r\nHậu vệ Chelsea phấn khích khi ghi bàn bằng cả chân trái lẫn chân phải: \"Tôi nghĩ bàn thắng đầu tiên có lẽ hay hơn. 1 cú dứt điểm tốt bằng chân không thuận của tôi. Bóng đến chỗ tôi trong vòng cấm và lúc đầu tôi tính sút ngay, nhưng đã quyết định chạm trước. Bóng lăn qua bên trái, nên tôi tiến vào phía trong và dứt điểm bằng chân trái. 1 cú sút tốt, ngay khi bóng rời chân trái, tôi đã biết đó là 1 bàn thắng.\"\r\nHậu vệ Chelsea phấn khích khi ghi bàn bằng cả chân trái lẫn chân phải: \"Tôi nghĩ bàn thắng đầu tiên có lẽ hay hơn. 1 cú dứt điểm tốt bằng chân không thuận của tôi. Bóng đến chỗ tôi trong vòng cấm và lúc đầu tôi tính sút ngay, nhưng đã quyết định chạm trước. Bóng lăn qua bên trái, nên tôi tiến vào phía trong và dứt điểm bằng chân trái. 1 cú sút tốt, ngay khi bóng rời chân trái, tôi đã biết đó là 1 bàn thắng.\"\r\nHậu vệ Chelsea phấn khích khi ghi bàn bằng cả chân trái lẫn chân phải: \"Tôi nghĩ bàn thắng đầu tiên có lẽ hay hơn. 1 cú dứt điểm tốt bằng chân không thuận của tôi. Bóng đến chỗ tôi trong vòng cấm và lúc đầu tôi tính sút ngay, nhưng đã quyết định chạm trước. Bóng lăn qua bên trái, nên tôi tiến vào phía trong và dứt điểm bằng chân trái. 1 cú sút tốt, ngay khi bóng rời chân trái, tôi đã biết đó là 1 bàn thắng.\"', '2021-10-31 13:18:30'),
(10, 1, 2, 'Chelsea thực sự đáng gờm khi Tuchel trình làng vũ khí mới', 'NH2.jpg', 'Có vẻ việc vắng mặt Romelu Lukaku và Timo Werner không khiến Thomas Tuchel mấy bận tâm. Chelsea vẫn giữ được chuỗi thắng và thậm chí là thắng đậm khi không có họ.', 'Thống kê cho thấy, trong 4 trận gần nhất, Chelsea đã ghi được tới 15 bàn thắng. Ngoại trừ tình huống Lukaku mang về quả phạt đền ở cuộc đấu với Malmo, tất cả các pha lập công còn lại đều không có dấu giày của những tiền đạo cắm thực thụ. Có vẻ Thomas Tuchel đã làm quen được với điều này và ứng biến một cách tài tình. \r\nTheo đó, Reece James trong vai trò của một biên thủ (wing-back) đã được phép chơi tự do và tạo ra vô vàn khó khăn cho hàng thủ Chích chòe. Cụ thể, theo biểu đồ nhiệt của Whoscored ghi lại, James gần như chơi bóng ở bên phần sân đối phương và bó vào trung tâm khá nhiều. Lắm lúc ta có cảm tưởng cầu thủ người Anh là một tiền vệ con thoi chứ không phải là một biên thủ thuần túy. \r\n\r\nChưa hết, điểm cách tân của Tuchel còn ở chỗ ông thúc đẩy James có mặt nhiều hơn ở các điểm nóng, đặc biệt là vòng cấm đối phương để đón những đường bóng hai. Bàn về điều này sau trận đấu, Tuchel cho biết: \"Chelsea có các cầu thủ có mặt ở mọi khoảng trống mà chúng tôi muốn tạo ra nguy hiểm. Vì vậy nếu các tiền đạo cánh dạt biên, hậu vệ cánh hoàn toàn được cho phép tấn công vào hành lang trong.\"\r\n\r\n\"Về tổng thể, tôi nghĩ mọi đội bóng có hệ thống tương tự đều làm thế. Chúng tôi cần các hậu vệ cánh tiếp cận vòng cấm đối thủ trong giai đoạn cuối đợt tấn công, để gia tăng cơ hội ghi bàn cũng như tạo ra thêm thời cơ dứt điểm.\r\n\r\nBàn thắng đầu tiên xuất phát từ pha đi bóng chói sáng của Hudson-Odoi bên cánh trái. Loftus-Cheek có mặt ở vị trí nguy hiểm, Havertz cũng ở trong vòng cấm và có thể mở ra cơ hội ghi bàn thứ 2 để James tận dụng,\" Tuchel kết lại.\r\nTrước đó, ở các trận đấu gặp Norwich và Arsenal, James đều đã ghi bàn ở những vị trí tương tự (góc phải trong vòng cấm). Rõ ràng, cách thức tấn công của Chelsea có đôi chút thay đổi khi họ mất đi hai tiền đạo cắm là Lukaku và Werner. Tuy nhiên, nhờ vậy, Tuchel đã mạnh dạn hơn trong chuyện thúc đẩy James, trở thành một quân bài chủ lực của Chelea thời điểm này.\r\n\r\nCó lẽ, không thể để James bám mãi trong vòng cấm đối thủ. Về lâu dài, đó là một con dao hai lưỡi. Có điều, trong ngắn hạn, nó cho thấy tài thao lược tuyệt vời của Tuchel. Nó giúp ông trở nên khác biệt với những Frank Lampard hay Antonio Conte trước đây.  ', '2021-10-31 13:21:11'),
(11, 1, 2, '\'Arsenal sẽ có suất dự C1 nhờ Man United\'', 'NH3.jpg', 'Jack Wilshere đã phát biểu trên talkSPORT về Arsenal và cơ hội giành vé dự Champions League mùa này của họ.', 'Jack Wilshere tin rằng Arsenal cuối cùng cũng có thể trở lại Champions League sau mùa giải này. Đáng chú ý hơn, cầu thủ 29 tuổi tin rằng Pháo thủ sẽ lấy được suất đó của Manchester United.\r\n\r\nKhi được hỏi liệu anh có nghĩ Arsenal sẽ kết thúc trong top 4 hay không, Wilshere nói với talkSPORT: \"Tôi nghĩ là có thể, nhờ United. Tôi xin lỗi, tôi không nghĩ United tệ, nhưng với tất cả áp lực lên họ và những thứ xung quanh Ole, cuộc đua này sẽ rất thú vị.\"\r\nCựu sao Arsenal có lý do để nhận định như vậy. Quỷ đỏ hiện đang là một mớ hỗn độn dưới thời Ole Gunnar Solskjaer, họ cũng đang phải phân tâm cho Champions League dù không có nhiều hy vọng ở đây. Trong khi đó, Arsenal đang tập trung cho đấu trường quốc nội và có phong độ đáng kinh ngạc.\r\nNgay cả khi không có sự trợ giúp từ sự sa sút của Manchester United, Pháo thủ vẫn có hy vọng giành vé dự C1. Họ đã thắng 5 và hòa 2 trong 7 trận gần nhất tại Premier League, đi từ cuối bảng xếp hạng lên vị trí thứ 6, có cùng điểm với Man United và West Ham nhưng thua về hiệu số bàn thắng bại.\r\n\r\n3 suất còn lại trong top 4 được coi như sẽ dành cho Manchester City, Liverpool và Chelsea, những đội bóng cạnh tranh chính cho danh hiệu.', '2021-10-31 13:22:25'),
(14, 1, 1, 'Tháng Giêng giông bão quyết định thành bại của Liverpool', 'liver1.jpg', 'Trong cuộc đua quyết liệt với Man City và Chelsea để giành ngôi vương Premier League, Liverpool sắp bước vào giai đoạn then chốt. Đáng chú ý, giai đoạn này đến ngay từ đầu năm sau chứ không phải chặng nước rút kéo dài trong vài tháng cuối mùa.', 'Với riêng HLV Juergen Klopp và Liverpool, tháng Giêng tới thực sự rất quan trọng bởi nó quyết định đến thành bại của The Kopp khi mùa giải 2021/22 khép lại. Lịch sử chỉ ra rằng, Liverpool thường gặp khó khăn trong tháng đầu năm mới kể từ khi HLV Klopp chuyển đến Anfield vào tháng 10/2015.\r\n\r\nRiêng 3 mùa gần đây, thành tích của Liverpool vào tháng Giêng luôn quyết định đến việc họ sẽ đứng ở đầu vào cuối giải. Còn nhớ ở mùa 2016/17, Liverpool do chơi không tốt trong quãng thời gian này đã tụt từ vị trí thứ 2 (kém Chelsea 6 điểm) xuống tận vị trí thứ 10 (kém The Blues 10 điểm) chỉ sau 30 ngày.\r\n\r\nTrong 9 trận diễn ra trong tháng Giêng năm ấy, đội bóng của HLV Klopp giành được đúng 1 chiến thắng trước Plymouth Argyle (đá lại vòng 3 cúp FA). Đó là thành tích chẳng đáng tự hào khi Plymouth Argyle chỉ là đội bóng có 6 mùa liên tiếp chinh chiến ở giải hạng 4 nước Anh.\r\n\r\nTiếp đó là ở mùa 2018/19, Liverpool tuy duy trì được vị trí dẫn đầu trên BXH, song họ lại để cho Leicester City cầm hòa ngay trên sân nhà đúng vào ngày 30/1. Kết quả ấy cộng với việc Liverpool để thua đối thủ chính Man City 1-2 hôm 4/1 đủ khiến \"Lữ đoàn đỏ\" chỉ cán đích thứ 2 sau The Citizens dù họ giành được tới 97 điểm (kém Man City 1 điểm).', '2021-11-15 00:46:14'),
(15, 2, 2, 'ĐT Italia: Nỗi ám ảnh play-off đang hiện về', 'italia1.jpg', 'Trong cùng một ngày, hàng loạt nỗi ám ảnh trở lại với ĐT Italia. Bị Thụy Sĩ cầm hòa 1-1 tại Rome, Azzurri phải chia đôi quyền tự quyết tấm vé vào thẳng VCK World Cup 2022 với chính đối thủ.', 'Khi trận Italia vs Thụy Sĩ diễn ra (12/11 theo giờ châu Âu), chỉ còn vài giờ đồng hồ nữa là ĐT Italia kỷ niệm đúng 4 năm ngày họ trượt ngã ở vòng loại World Cup 2018. Như một sự trêu đùa của định mệnh, vị HLV tội đồ của thất bại đó, Giampiero Ventura tuyên bố giải nghệ ở tuổi 73 vào đúng ngày hôm ấy giữa lúc phần đông tifosi vẫn không thể tha thứ cho ông (và cả những người lựa chọn ông ngồi ghế chỉ đạo Azzurri).\r\n\r\nVà tính drama của câu chuyện ĐT Italia ở vòng loại World Cup vẫn còn tiếp tục khi đúng vào phút cuối, Jorginho, người từng bị HLV Ventura liên tục ghẻ lạnh trong thời gian tại vị tai họa của ông ở Azzurri, đá hỏng quả penalty trước Thụy Sĩ. Đó là quả 11m thứ ba liên tiếp mà Jorginho thực hiện không thành công cùng ĐTQG, sau lần bị Yann Sommer đánh bại ở trận lượt đi hòa 0-0 và khi không thắng nổi Jordan Pickford trong loạt luân lưu trận chung kết EURO 2020. \r\n\r\nỞ chung kết EURO 2020, quả luân lưu hỏng ăn của Jorginho được quên đi dễ dàng bởi thủ môn Gianluigi Donnarumma đã phá được quả 11m tiếp theo của người Anh giúp Italia đăng quang. Nhưng các tifosi khó có thể tiếp tục thứ tha cho Jorginho, khi 2 quả penalty sút hỏng của anh đều trước Thụy Sĩ đã trực tiếp lấy đi của ĐT Italia tới 4 điểm. \r\n\r\nLần này Jorginho không còn nhảy chân sáo khi bài vở này của tiền vệ gốc Brazil đã bị nhiều thủ môn bắt bài. Nhưng chính việc quyết định sút bổng khi cảm giác bóng còn chưa đạt độ thuần thục đã khiến Jorginho đá vọt xà ngang, làm gợi nhớ lại quá luân lưu tai họa của Roberto Baggio trong trận chung kết World Cup 1994. ', '2021-11-15 00:49:42'),
(16, 2, 2, 'Tammy Abraham, tiền đạo \'đen\' nhất Serie A?', 'italia2.jpg', 'Gia nhập Roma sau khi tạo dựng được chút ít danh tiếng trong màu áo Chelsea, nhưng Tammy Abraham lại đang gây thất vọng khi mới ghi vỏn vẹn 5 bàn thắng trên mọi đấu trường mùa này. Chỉ có điều, phong độ thấp như vậy chỉ do đen thôi, chứ đỏ thì quên đi.', '3 tháng ở Roma xui gấp đôi 5 năm ở Anh\r\n12 bàn thắng, 6 kiến tạo sau 1.533 phút thi đấu (trên tất cả các đấu trường, trung bình 85,1 phút/1 đóng góp) cho Chelsea mùa 2020/21 là tiền đề để Tammy Abraham được Roma mua với giá 34 triệu bảng vào tháng 8 vừa qua. Đây chính là mức giá chuyển nhượng cao nhất trong sự nghiệp của Abraham.\r\n\r\nTưởng đời sắp lên hương, có ngờ đâu dù góp mặt không thiếu trận nào tại Serie A mùa này, Abraham chỉ ghi được vỏn vẹn 3 bàn thắng. Nếu tính trên tất cả các đấu trường, chân sút người Anh mới ghi 5 bàn sau 17 trận đấu. Đây rõ ràng là hiệu suất không thể chấp nhận được của chân sút có giá chuyển nhượng cao thứ nhì lịch sử Roma.\r\n\r\nNếu số bàn thắng khiêm tốn này là hệ quả của phong độ sa sút thì Abraham xứng đáng bị chỉ trích. Chỉ có điều, Abraham vẫn chơi hay, dứt điểm tốt, chịu khó di chuyển nhưng khổ nỗi, anh đen đủi. Trên tất cả các đấu trường mùa này, Abraham đã dứt điểm trúng cột dọc và xà ngang tới… 7 lần. Riêng tại Serie A, anh đã hỏi thăm khung gỗ của Venezia, Fiorentina, Sassuolo và Empoli. Không có bất kỳ cầu thủ Serie A nào dứt điểm trúng khung gỗ nhiều như Abraham trong mùa này. \r\n\r\nĐể hình dung về mức độ đen đủi của việc sút trúng cột dọc xà ngang 7 lần sau 17 trận, chúng ta thử so sánh với quãng thời gian Abraham còn thi đấu ở Anh.\r\n\r\nTiền đạo này có tổng cộng 89 trận thi đấu tại Premier League trong màu áo 3 CLB Chelsea, Swansea và Aston Villa và trong 89 trận đấu đó, anh chỉ bị khung gỗ từ chối bàn thắng vỏn vẹn 3 lần. Như vậy trong chỉ 3 tháng khoác áo Roma, Abraham đã sút trúng khung gỗ đối thủ nhiều gấp đôi 5 năm trước đó cộng lại.', '2021-11-15 00:51:09'),
(17, 3, 2, 'Luis Enrique và vấn đề \'phe nhóm\' trong ĐTQG', 'taybanha.jpg', 'Trả lời phỏng vấn của tờ Marca cách đây vài ngày, hậu vệ Dani Carvajal (Real Madrid) phản đối dư luận cho rằng HLV Luis Enrique “ghét” các cầu thủ Real.', 'Có phải Carvajal nói vậy vì anh là cầu thủ Real duy nhất được Enrique triệu tập ở loạt trận này? Đây là câu hỏi… vô nghĩa. Tóm lại, gọi hay không gọi cầu thủ của một CLB cụ thể vào ĐTQG - đấy đã là một vấn đề chung trong bóng đá quốc tế (tức loại hình bóng đá của các ĐTQG) từ bao đời nay rồi.\r\n\r\nĐấy có thể là vấn đề chuyên môn, hoặc quan điểm cá nhân - chẳng hề quan trọng, nếu như HLV thành công. Người ta từng chỉ trích HLV huyền thoại Valery Lobanovsky về việc bê nguyên CLB Dynamo Kiev của ông vào đội tuyển Liên Xô dự VCK World Cup 1986 (kèm theo đó là ý kiến cho rằng Lobanovsky ghét các cầu thủ Spartak Moscow).\r\n\r\nPhải nhắc lại trường hợp này là bởi khi ấy, đội tuyển Liên Xô của Lobanovsky thường xuyên có đến 12 cầu thủ Dynamo Kiev, tức hơn nửa danh sách đội. Trường hợp tương tự nhưng không đến mức “áp đảo” như thế, thì liệt kê không xuể. HLV Enzo Bearzot bị chỉ trích rằng quá ưu ái cầu thủ Juventus trước thêm World Cup 1982, rút cuộc thì ông lập chiến công hiển hách ở giải đấu ấy. Tất nhiên, ưu tiên sử dụng cầu thủ của CLB này thì hệ lụy tất yếu là phải bỏ bớt cầu thủ từ CLB khác, mà trong trường hợp tương đương về đẳng cấp thì thành ra là “ghét” CLB nào đó trong cuộc.\r\nBỉ là quốc gia không chỉ phân hóa bởi 3 ngôn ngữ khác nhau, mà đi kèm theo đó còn là vấn đề văn hóa, tập tính sinh hoạt, từ đó liên quan chặt chẽ đến một tình trạng nặng nề suốt vài chục năm trước đây: HLV trưởng… nói tiếng gì, từ đó chỉ thích dùng cầu thủ thuộc cộng đồng ngôn ngữ nào. HLV trưởng đội Bỉ hiện nay, Roberto Martinez, quyết định dùng… tiếng Anh làm ngôn ngữ chính mỗi khi Quỷ đỏ tập trung đội tuyển.\r\n\r\nTùy từng thời điểm cụ thể mà “phe còn lại” trong đội tuyển Đức là các thành viên của CLB nào (lúc là Dortmund, lúc là Leverkusen…), trong khi “phe kia” hẳn nhiên là các cầu thủ Bayern Munich. Cuối cùng, hơn mọi trường hợp, đội tuyển Tây Ban Nha có bao giờ thoát khỏi “vấn đề Barcelona - Real Madrid”. Chỉ khác nhau là nặng nhẹ, tùy lúc mà thôi.\r\n\r\nHLV mà thành công thì trở thành người hùng, thất bại thì bị sa thải, hoặc phải chịu điều gì đó tương tự. Tóm lại, dùng ai thì đấy là việc của Enrique. Ông không thích dùng cầu thủ Real vì một lý do chuyên môn: cầu thủ người Tây Ban Nha trong hàng ngũ Real thường không thi đấu nhiều, đáng nói hơn là họ không giữ vai trò trụ cột để HLV xây dựng lối chơi xung quanh.\r\n\r\nCàng là CLB lớn, lối chơi càng có nét riêng đặc trưng, từng đó càng dễ xung đột với lối chơi của ĐTQG. Cho nên, tình trạng cầu thủ giỏi của một CLB cụ thể không được HLV ĐTQG ưa chuộng (hoặc ngược lại), là điều hết sức bình thường.\r\n\r\nChỉ cần không thua Thụy Điển thì Tây Ban Nha lấy vé chính thức dự VCK World Cup. Nghĩa là HLV Enrique đang thành công. Ông thích hay ghét CLB nào (chứ không phải cầu thủ nào), tùy ý!', '2021-11-15 00:53:53'),
(18, 3, 2, 'Hai bộ mặt của Gareth Bale', 'taybanha2.jpg', '“Wales. Golf. Madrid. In that order” (Xứ Wales, môn golf, Real Madrid. Theo thứ tự trên). Các CĐV Xứ Wales từng chăng một lá cờ với dòng chữ trên sau khi đội tuyển nước này giành vé dự EURO 2020, để chế giễu việc truyền thông Tây Ban Nha vẫn chỉ trích Gar', 'Và cầu thủ chạy cánh này thậm chí còn chụp cả một bức ảnh với lá cờ đặc biệt này.\r\n\r\nTất nhiên, Bale khẳng định anh không hề có ý khiêu khích hay châm chọc Real Madrid khi làm vậy. Nhưng nó đã nói lên một sự thật là đội chủ sân Bernabeu đang nuôi báo cô cầu thủ 32 tuổi, để anh dành thời gian phục vụ cho ĐTQG. Đó hoàn toàn là chuyện thực tế. Bale đã không chơi trận nào cho Real Madrid suốt hơn 2 tháng qua, kể từ trận gặp Betis ngày 28/08 vì chấn thương đầu gối. Nhưng ngay khi bình phục, anh lại lập tức có tên trong danh sách của ĐT Xứ Wales ở đợt tập trung lần này.\r\n\r\nỞ tuổi 32, Bale đã trở thành một huyền thoại của đội bóng mang biệt danh “Những chú rồng” (The Dragons). Anh đang là chân sút số 1 trong lịch sử, và là cầu thủ thi đấu nhiều thứ 2 của ĐT Xứ Wales. Nhưng tại Real Madrid, mùa này Bale chỉ xếp thứ 19 về số phút thi đấu, kém cả những cầu thủ trẻ như Eduardo Camavinga hay Miguel Gutierrez. Tính từ đầu mùa, anh cũng mới có 1 bàn thắng sau 3 trận đấu cho Los Blancos. Và có lẽ các Madridista sẽ càng có lý do để tức giận hơn nữa, nếu sắp tới Bale trở lại Bernabeu với một chấn thương.', '2021-11-15 00:56:56'),
(19, 4, 1, 'Dortmund ra \'chiêu\' giữ chân Haaland trước sự dòm ngó của đại gia', 'Haaland.jpg', 'Dortmund sẽ cho chân sút Erling Haaland hưởng mức thu nhập cao nhất CLB để hi vọng có thể giữ chân cầu thủ người Na Uy trước sự chèo kéo của các đội bóng hàng đầu châu Âu.', 'Erling Haaland đang là \"hàng hot\" ở thời điểm hiện tại và thu hút sự chú ý từ các câu lạc bộ hàng đầu trên toàn châu Âu. Đội bóng chủ quản của anh là Dortmund nhận thức được tầm quan trọng của Haaland và đang làm tất cả những gì có thể để tránh mất ngôi sao của họ trong kỳ chuyển nhượng mùa hè 2022.\r\n\r\nTheo đó, Dortmund tính trả cho Haaland mức lương cao nhất CLB với 18 triệu euro mỗi năm. Tờ Bild (Đức) đưa tin, nếu Haaland đồng ý, anh sẽ chính thức trở thành người có thù lao cao nhất đội bóng vùng Ruhr bởi 2 người đồng đội Marco Reus và Mats Humels đều đang nhận 10 triệu euro mỗi năm. Điều này đồng nghĩa với việc Haaland có lương gần gấp đôi 2 đàn anh.\r\n\r\nNhư Marca đưa tin, trường hợp Haaland gật đầu, những Real Madrid, Chelsea và Man City sẽ buộc phải đợi đến mùa giải 2023/24 nếu họ muốn có được sự phục vụ của anh.\r\n\r\nCầu thủ 21 tuổi này đã không thi đấu kể từ ngày 19/10, và Dortmund sẽ phải tiếp tục thi đấu mà không có Haaland trong vài tuần nữa. Thông tin ban đầu cho hay Haaland, người đã có 13 bàn sau 10 trận mùa này, có vẻ sẽ phải ngồi ngoài cho đến năm mới 2022.\r\n\r\nMới đây, chính bố của Haaland xác nhận thông tin trên. Ông Alf-Inge Haaland cho biết con trai bị chấn thương hông: \"Mọi thứ đang tiến triển với Haaland nhưng con trai tôi sẽ phải ngồi ngoài một thời gian ngắn. Sẽ là tuyệt vời nếu Haaland trở lại trước Giáng Sinh nhưng chắc chắn điều đó không thể xảy ra\".', '2021-11-15 00:57:53'),
(20, 4, 1, 'ĐT Đức vùi dập Liechtenstein 9-0: Ngày chia tay đáng nhớ của Joachim Loew', 'loew.jpg', 'Ở Wolfsburg, HLV Joachim Loew có buổi lễ chia tay khó quên với ĐT Đức. Các học trò cũ của ông đã đè bẹp đối thủ Liechtenstein với tỷ số… 9-0.', 'Bốn tháng sau khi rời ghế HLV trưởng ĐT Đức, Joachim Loew mới có buổi lễ chia tay chính thức. Việc DFB chọn đối thủ nhược tiểu Liechtenstein cho dịp trọng đại của vị HLV từng 15 năm dẫn dắt Die Mannschaft làm dư luận thắc mắc. Theo GĐ Oliver Bierhoff, DFB muốn chọn một trận cầu lớn hơn vào tháng 9 vừa qua song không thành, đành phải chọn Liechtenstein vì đây là trận cuối cùng trên sân nhà trong năm 2021.\r\n\r\n25.984 khán giả trên sân Volkswagen Arena, cùng các cầu thủ Đức, đã dành tràng pháo tay tôn vinh vị HLV từng mang về chức vô địch World Cup 2014, 124 trận thắng sau 197 trận nắm quyền tại ĐT Đức. DFB tặng Joachim Loew một bức hình đúng khung trong đó ông cầm cúp vô địch World Cup 2014. Còn 90 phút sau đó, các cầu thủ Đức dành tặng ông thầy cũ chiến thắng giòn giã 9-0 trong trận cầu chỉ có ý nghĩa thủ tục (do Đức đã chắc suất ngôi đầu bảng J).\r\n\r\nĐây là chiến thắng đậm nhất của ĐT Đức trong 15 năm qua, kể từ trận thắng 13-0 trước San Marino vào năm 2006 dưới thời Joachim Loew. Ngồi trên khán đài theo dõi trận đấu cùng cựu chủ tịch DFB Wolfgang Niersbach, Joachim Loew có thể tin tưởng vào ĐT Đức của Hansi Flick. Họ đã sớm giành vé tới World Cup từ lượt đấu trước, trong bảng đấu mà Đức tỏ ra quá mạnh với phần còn lại (8 thắng, 1 thua). Thế hệ cựu binh đang được Flick hòa trộn khéo léo với lực lượng trẻ để tiếp thêm sức sống cho ĐT Đức.', '2021-11-15 00:58:52'),
(21, 1, 3, 'a', 'logo.png', 'a', 'a', '2021-11-15 01:19:57');

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
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`u_id`, `username`, `password`, `author`, `avatar`) VALUES
(1, 'admin@gmail.com', 'admin', 'Hao Manu', 'ava1.jpg'),
(2, 'undefined@gmail.com', 'quanqq', 'quan ASEN', 'ava2.jpg'),
(3, 'quan', '1234', 'sdf', 'ava2.jpg');

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
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`u_id`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
