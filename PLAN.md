# Bản Kế Hoạch Chi Tiết - Chương 1: Ứng Dụng Đạo Hàm Để Khảo Sát Hàm Số

Đây là lộ trình chi tiết để biên soạn, thiết kế và hoàn thiện toàn bộ học liệu cho Chương 1 của môn Toán 12. Tiến độ sẽ được cập nhật liên tục thông qua các ô checkbox.

---

## 📈 Tiến độ tổng quan Chương 1
- [x] Lên ý tưởng và thiết lập cấu trúc file module.
- [x] Tạo template LaTeX (Khung trang, Header: Thầy Tâm dạy Toán, Footer: Zalo 0837715745).
- [ ] Hoàn thiện 100% phần Lý thuyết & Ví dụ minh họa.
- [ ] Hoàn thiện phần Bài tập vận dụng (Phân loại theo mức độ nhận thức).
- [ ] Hoàn thiện các chuyên đề Ứng dụng thực tiễn & Công nghệ.
- [ ] Thiết kế Ma trận và Đề kiểm tra bám sát định dạng 2025.

---

## 📋 Chi tiết các bài học và nội dung cần soạn

### Bài 1: Tính đơn điệu của hàm số
- [ ] Soạn lý thuyết: Mối liên hệ giữa dấu của đạo hàm và tính đơn điệu.
- [ ] Dạng 1: Xét tính đơn điệu của hàm số cho bởi công thức (Đa thức, phân thức).
- [ ] Dạng 2: Tìm khoảng đơn điệu dựa vào bảng biến thiên hoặc đồ thị của $f(x)$ và $f'(x)$.
- [ ] Dạng 3: Bài toán chứa tham số $m$ (hàm bậc 3, hàm phân thức bậc 1 / bậc 1).
- [ ] Dạng 4: Hàm hợp $f(u(x))$ ở mức độ Vận dụng cao.

### Bài 2: Cực trị của hàm số
- [ ] Soạn lý thuyết: Khái niệm cực trị, Quy tắc 1 (Lập BBT), Quy tắc 2 (Dùng đạo hàm cấp 2).
- [ ] Dạng 1: Tìm cực trị của các hàm số cơ bản.
- [ ] Dạng 2: Tìm cực trị qua đồ thị/bảng biến thiên.
- [ ] Dạng 3: Bài toán tham số $m$ với cực trị (Đường thẳng đi qua 2 điểm cực trị, định lý Vi-ét).
- [ ] Dạng 4: Cực trị của hàm ẩn, hàm chứa dấu giá trị tuyệt đối.

### Bài 3: Giá trị lớn nhất và Giá trị nhỏ nhất
- [ ] Soạn lý thuyết: Phân biệt GTLN/GTNN trên một khoảng và trên một đoạn.
- [ ] Dạng 1: Tìm GTLN, GTNN của hàm số trên một đoạn $[a; b]$.
- [ ] Dạng 2: Tìm GTLN, GTNN trên một khoảng hoặc trên tập xác định.
- [ ] Dạng 3: Bài toán tối ưu hóa trong thực tiễn (Cực kỳ quan trọng cho CT 2018):
    - *Bài toán hình học:* Cắt gập hộp giấy sao cho thể tích lớn nhất.
    - *Bài toán kinh tế:* Tối thiểu hóa chi phí nguyên vật liệu, tối đa hóa lợi nhuận.

### Bài 4: Đường tiệm cận của đồ thị hàm số
- [ ] Soạn lý thuyết: Định nghĩa tiệm cận ngang, tiệm cận đứng.
- [ ] Mới (CT 2018): Tiệm cận xiên của đồ thị hàm số (Đặc biệt là hàm phân thức bậc 2 / bậc 1).
- [ ] Dạng 1: Tìm các đường tiệm cận của hàm số cho bởi công thức.
- [ ] Dạng 2: Nhận diện tiệm cận qua bảng biến thiên.
- [ ] Dạng 3: Bài toán chứa tham số liên quan đến số lượng đường tiệm cận.

### Bài 5: Khảo sát sự biến thiên và vẽ đồ thị hàm số
- [ ] Soạn sơ đồ các bước khảo sát hàm số chung.
- [ ] Thực hành khảo sát: Hàm đa thức bậc 3.
- [ ] Thực hành khảo sát: Hàm phân thức bậc 1 / bậc 1.
- [ ] Thực hành khảo sát: Hàm phân thức bậc 2 / bậc 1.
- [ ] Dạng: Đọc đồ thị, nhận dạng dấu của các hệ số $a, b, c, d$.
- [ ] Dạng: Bài toán tương giao của hai đồ thị (Biện luận số nghiệm của phương trình).

---

## 💻 Thiết kế Tình huống học tập & Tích hợp Công nghệ
- [ ] **GeoGebra:** Tạo các applet động minh họa tiếp tuyến trượt trên đồ thị để giải thích ý nghĩa hình học của đạo hàm.
- [ ] **Python:** Soạn 1 đoạn code mẫu sử dụng thư viện `matplotlib` và `sympy` để học sinh có thể lập trình tự động tìm đạo hàm, cực trị và vẽ đồ thị hàm số.
- [ ] **Manim:** Lên kịch bản (Script) cho một video hoạt hình toán học giải thích trực quan về Bài toán tối ưu (GTLN, GTNN).

---

## 📝 Xây dựng Ngân hàng Kiểm tra - Đánh giá
Tuân thủ cấu trúc đề thi Tốt nghiệp THPT từ năm 2025:
- [ ] **Phần I:** Trắc nghiệm nhiều phương án lựa chọn (4 đáp án, chọn 1).
- [ ] **Phần II:** Trắc nghiệm Đúng/Sai (Đòi hỏi hiểu bản chất sâu sắc của tính đơn điệu, cực trị).
- [ ] **Phần III:** Câu trắc nghiệm trả lời ngắn (Tính toán kết quả chính xác cho bài toán cực trị, bài toán thực tế).
- [ ] Soạn Ma trận đặc tả bám sát Công văn 7991 của BGDĐT.
