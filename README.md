# Dự Án Chuyên Đề Chương 1: Ứng Dụng Đạo Hàm Để Khảo Sát Và Vẽ Đồ Thị Hàm Số

**Biên soạn:** Thầy Tâm dạy Toán  
**Liên hệ (Zalo):** 0837715745  
**Môn học:** Toán học lớp 12 (Chương trình GDPT 2018)  
**Nền tảng:** LaTeX / Typst  

---

## 📖 Giới thiệu Dự án
Đây là kho lưu trữ mã nguồn mở (repository) dành riêng cho **Chương 1: Ứng dụng đạo hàm để khảo sát và vẽ đồ thị hàm số** của môn Toán 12, bám sát định hướng phát triển năng lực của Chương trình GDPT 2018. 

Dự án này không chỉ cung cấp hệ thống lý thuyết chuẩn xác mà còn tích hợp các tình huống học tập thực tế, ứng dụng công nghệ (GeoGebra, Python, Manim) để giúp học sinh trực quan hóa các khái niệm trừu tượng của Giải tích. Hệ thống bài tập được phân loại từ cơ bản đến vận dụng cao, bao gồm cả các định dạng trắc nghiệm mới nhất (nhiều lựa chọn, đúng/sai, trả lời ngắn) chuẩn bị cho kỳ thi Tốt nghiệp THPT từ năm 2025.

## 🗂️ Cấu trúc thư mục chi tiết (Directory Tree)
```text
Chuong1-UngDungDaoHam/
├── main.tex                         # File gốc dùng để biên dịch toàn bộ chuyên đề Chương 1
├── README.md                        # Thông tin giới thiệu (File này)
├── PLAN.md                          # Kế hoạch bài giảng và tiến độ biên soạn chi tiết
│
├── 01-Ly-thuyet-va-Bai-tap/         # Thư mục chứa nội dung từng bài học
│   ├── Bai1-Tinh-don-dieu.tex
│   ├── Bai2-Cuc-tri-ham-so.tex
│   ├── Bai3-Gia-tri-lon-nhat-nho-nhat.tex
│   ├── Bai4-Duong-tiem-can.tex      # Nhấn mạnh tiệm cận đứng, ngang và xiên
│   └── Bai5-Khao-sat-va-ve-do-thi.tex
│
├── 02-Tinh-huong-hoc-tap/           # Ứng dụng CNTT và thực tiễn
│   ├── TH1-Toi-uu-hoa-kinh-te.tex   # Bài toán hộp không nắp, chi phí tối ưu
│   └── TH2-Mo-phong-Python.tex      # Code mẫu vẽ đồ thị và trực quan hóa hàm số
│
├── 03-Kiem-tra-Danh-gia/            # Hệ thống bài kiểm tra (Format mới 2025)
│   ├── Ma-tran-dac-ta-chuong1.tex   # Ma trận theo CV 7991/BGDĐT-GDTrH
│   ├── De-kiem-tra-15-phut.tex
│   └── De-kiem-tra-1-tiet.tex
│
├── images/                          # Hình ảnh (TikZ, GeoGebra xuất PDF/PNG)
└── styles/                          # Định dạng (preambles.tex, macros.tex có tcolorbox)
