// ================= CẤU HÌNH TRANG VÀ NỀN TẢNG =================
#set page(
  paper: "a4",
  margin: (x: 1.5cm, top: 1.8cm, bottom: 2cm),
  header: align(right)[
    #text(size: 9pt, fill: rgb("#666666"), style: "italic")[Toán 12 - Chương trình GDPT 2018 | Thầy Tâm dạy Toán - Zalo: 0837715745]
  ],
  footer: context [
    #line(length: 100%, stroke: 0.5pt + rgb("#cccccc"))
    #align(center)[
      #text(size: 9pt, fill: rgb("#666666"))[Trang #counter(page).display()]
    ]
  ]
)

#set text(size: 11pt, lang: "vi")

// Khai báo bảng màu chuẩn
#let darkblue = rgb("#00246B")
#let lightblue = rgb("#EBF3FA")
#let borderblue = rgb("#0066cc")
#let lightyellow = rgb("#FEF9E7")
#let borderyellow = rgb("#F39C12")
#let lightred = rgb("#FDEDEC")
#let borderred = rgb("#E74C3C")

// ================= KHUNG TIÊU ĐỀ BÀI HỌC =================
#align(center)[
  #block(
    width: 100%,
    stroke: 2pt + darkblue,
    radius: 8pt,
    fill: rgb("#F4F7FA"),
    inset: 0pt,
    clip: true,
  )[
    #block(
      width: 100%,
      fill: darkblue,
      inset: (x: 15pt, y: 10pt),
    )[
      #text(fill: white, weight: "bold", size: 13pt)[CHƯƠNG 1: ỨNG DỤNG ĐẠO HÀM ĐỂ KHẢO SÁT VÀ VẼ ĐỒ THỊ HÀM SỐ]
    ]
    #block(
      width: 100%,
      fill: rgb("#FDE793"),
      inset: (x: 15pt, y: 10pt),
      stroke: (top: 1.5pt + borderyellow)
    )[
      #text(fill: darkblue, weight: "bold", size: 16pt)[Bài 1. ĐƠN ĐIỆU & CỰC TRỊ CỦA HÀM SỐ]
    ]
  ]
]

#v(10pt)

// ================= PHẦN A: LÝ THUYẾT =================
#text(fill: borderred, size: 18pt, weight: "bold")[A. LÝ THUYẾT]
#v(5pt)

// ================= 1. TÍNH ĐỒNG BIẾN, NGHỊCH BIẾN =================
= 1. Tính đồng biến, nghịch biến của hàm số

#rect(width: 100%, fill: lightyellow, stroke: 1.5pt + borderyellow, radius: 6pt, inset: 10pt)[
  *Định nghĩa:* \
  Kí hiệu $K$ là khoảng; đoạn; nửa khoảng. Giả sử hàm số $y = f(x)$ xác định trên $K$. \
  Hàm số $y = f(x)$
  - Gọi là _đồng biến_ trên $K$ nếu $forall x_1, x_2 in K$ mà $x_1 < x_2$ thì $f(x_1) < f(x_2)$.
  - Gọi là _nghịch biến_ trên $K$ nếu $forall x_1, x_2 in K$ mà $x_1 < x_2$ thì $f(x_1) > f(x_2)$.
]

#v(5pt)

#rect(width: 100%, fill: lightred, stroke: 1.5pt + borderred, radius: 6pt, inset: 10pt)[
  *Chú ý:* \
  $»$ Hàm số $y = f(x)$ đồng biến trên $K$ thì đồ thị _đi lên_ từ trái sang phải (Hình 1a). \
  $»$ Hàm số $y = f(x)$ nghịch biến trên $K$ thì đồ thị _đi xuống_ từ trái sang phải (Hình 1b).
  
  #v(10pt)
  #grid(
    columns: (1fr, 1fr),
    align: center,
    [
      // Dùng vòng lặp vẽ Hình 1a (tương thích mọi phiên bản Typst)
      #box(width: 140pt, height: 120pt, {
        place(dx: 10pt, dy: 100pt, line(length: 120pt, stroke: 0.7pt)) // Ox
        place(dx: 125pt, dy: 96.5pt, text(size: 10pt)[$arrow.r$])
        place(dx: 130pt, dy: 105pt, text(size: 9pt)[$x$])
        
        place(dx: 20pt, dy: 10pt, line(start: (0pt, 90pt), end: (0pt, 0pt), stroke: 0.7pt)) // Oy
        place(dx: 16.5pt, dy: 3pt, text(size: 10pt)[$arrow.t$])
        place(dx: 5pt, dy: 5pt, text(size: 9pt)[$y$])
        
        place(dx: 8pt, dy: 102pt, text(size: 9pt)[$O$])
        
        // Vẽ đồ thị y = x^2 bằng vòng lặp
        for i in range(20) {
          let x1 = i / 10
          let y1 = x1 * x1
          let x2 = (i + 1) / 10
          let y2 = x2 * x2
          place(dx: 0pt, dy: 0pt, line(
            start: (20pt + x1 * 40pt, 100pt - y1 * 20pt), 
            end: (20pt + x2 * 40pt, 100pt - y2 * 20pt), 
            stroke: 1.2pt + red
          ))
        }
        
        place(dx: 40pt, dy: 95pt, line(start: (0pt,0pt), end: (0pt, 5pt), stroke: (thickness: 0.7pt, dash: "dashed")))
        place(dx: 80pt, dy: 55pt, line(start: (0pt,0pt), end: (0pt, 45pt), stroke: (thickness: 0.7pt, dash: "dashed")))
        place(dx: 55pt, dy: 105pt, text(size: 9pt)[$K$])
      }) \
      _Hình 1a_
    ],
    [
      // Dùng vòng lặp vẽ Hình 1b
      #box(width: 140pt, height: 120pt, {
        place(dx: 10pt, dy: 100pt, line(length: 120pt, stroke: 0.7pt)) // Ox
        place(dx: 125pt, dy: 96.5pt, text(size: 10pt)[$arrow.r$])
        place(dx: 130pt, dy: 105pt, text(size: 9pt)[$x$])
        
        place(dx: 20pt, dy: 10pt, line(start: (0pt, 90pt), end: (0pt, 0pt), stroke: 0.7pt)) // Oy
        place(dx: 16.5pt, dy: 3pt, text(size: 10pt)[$arrow.t$])
        place(dx: 5pt, dy: 5pt, text(size: 9pt)[$y$])
        
        place(dx: 8pt, dy: 102pt, text(size: 9pt)[$O$])
        
        // Vẽ đồ thị y = 4 - x^2 bằng vòng lặp
        for i in range(20) {
          let x1 = i / 10
          let y1 = 4 - x1 * x1
          let x2 = (i + 1) / 10
          let y2 = 4 - x2 * x2
          place(dx: 0pt, dy: 0pt, line(
            start: (20pt + x1 * 40pt, 100pt - y1 * 20pt), 
            end: (20pt + x2 * 40pt, 100pt - y2 * 20pt), 
            stroke: 1.2pt + red
          ))
        }
        
        place(dx: 40pt, dy: 25pt, line(start: (0pt,0pt), end: (0pt, 75pt), stroke: (thickness: 0.7pt, dash: "dashed")))
        place(dx: 80pt, dy: 65pt, line(start: (0pt,0pt), end: (0pt, 35pt), stroke: (thickness: 0.7pt, dash: "dashed")))
        place(dx: 55pt, dy: 105pt, text(size: 9pt)[$K$])
      }) \
      _Hình 1b_
    ]
  )
]

// ================= 2. TÍNH ĐƠN ĐIỆU CỦA HÀM SỐ =================
= 2. Tính đơn điệu của hàm số

#rect(width: 100%, fill: lightblue, stroke: 1.5pt + borderblue, radius: 6pt, inset: 10pt)[
  *Định lý:* \
  Cho hàm số $y = f(x)$ có đạo hàm trên $K$.
  - Nếu $f'(x) > 0$ với mọi $x$ thuộc $K$ thì hàm số $y = f(x)$ đồng biến trên $K$.
  - Nếu $f'(x) < 0$ với mọi $x$ thuộc $K$ thì hàm số $y = f(x)$ nghịch biến trên $K$.
]

#v(5pt)

#rect(width: 100%, fill: lightred, stroke: 1.5pt + borderred, radius: 6pt, inset: 10pt)[
  *Chú ý:* \
  $»$ Định lí vẫn đúng trong trường hợp $f'(x) = 0$ tại một số hữu hạn điểm trong $K$. \
  $»$ Nếu $f'(x) = 0$ với mọi $x in K$ thì hàm số $f(x)$ không đổi trên khoảng $K$.
]

#v(10pt)

// ================= 3. KHÁI NIỆM CỰC TRỊ CỦA HÀM SỐ =================
= 3. Khái niệm cực trị của hàm số

#rect(width: 100%, fill: lightyellow, stroke: 1.5pt + borderyellow, radius: 6pt, inset: 10pt)[
  *Định nghĩa:* \
  Cho hàm số $y = f(x)$ xác định và liên tục trên khoảng $(a; b)$ ($a$ có thể là $-oo$, $b$ có thể là $+oo$) và điểm $x_0 in (a; b)$.
  - $exists h > 0$ sao cho $f(x) < f(x_0)$ với mọi $x in (x_0 - h; x_0 + h) subset (a; b)$ và $x != x_0$ thì ta nói hàm số $f(x)$ đạt *cực đại* tại $x_0$.
  - $exists h > 0$ sao cho $f(x) > f(x_0)$ với mọi $x in (x_0 - h; x_0 + h) subset (a; b)$ và $x != x_0$ thì ta nói hàm số $f(x)$ đạt *cực tiểu* tại $x_0$.
]

#v(5pt)

#rect(width: 100%, fill: lightred, stroke: 1.5pt + borderred, radius: 6pt, inset: 10pt)[
  *Chú ý:* \
  $»$ Hàm số $y = f(x)$ đạt cực đại tại $x_0$ thì $x_0$ được gọi là _điểm cực đại của hàm số_ $f(x)$. \
  Khi đó, $f(x_0)$ được gọi là _giá trị cực đại của hàm số_ $f(x)$ và kí hiệu là $f_(C D)$ hay $y_(C D)$. \
  Điểm $M_0(x_0; f(x_0))$ được gọi là _điểm cực đại của đồ thị hàm số_. \
  $»$ Hàm số $y = f(x)$ đạt cực tiểu tại $x_0$ thì $x_0$ được gọi là _điểm cực tiểu của hàm số_ $f(x)$. \
  Khi đó, $f(x_0)$ được gọi là _giá trị cực tiểu của hàm số_ $f(x)$ và kí hiệu là $f_(C T)$ hay $y_(C T)$. \
  Điểm $M_0(x_0; f(x_0))$ được gọi là _điểm cực tiểu của đồ thị hàm số_. \
  $»$ Các điểm cực đại và điểm cực tiểu được gọi chung là _điểm cực trị_. \
  Giá trị cực đại và giá trị cực tiểu được gọi chung là _giá trị cực trị_ (cực trị) của hàm số.
]

// ================= 4. CÁCH TÌM CỰC TRỊ CỦA HÀM SỐ =================
= 4. Cách tìm cực trị của hàm số

#rect(width: 100%, fill: lightblue, stroke: 1.5pt + borderblue, radius: 6pt, inset: 10pt)[
  *Định lý:* \
  Giả sử hàm số $y = f(x)$ liên tục trên khoảng $(a; b)$ chứa điểm $x_0$ và có đạo hàm trên các khoảng $(a; x_0)$ và $(x_0; b)$. Khi đó:
  - Nếu $f'(x) < 0$ với mọi $x in (a; x_0)$ và $f'(x) > 0$ với mọi $x in (x_0; b)$ thì $x_0$ là một điểm cực tiểu của hàm số $f(x)$.
  - Nếu $f'(x) > 0$ với mọi $x in (a; x_0)$ và $f'(x) < 0$ với mọi $x in (x_0; b)$ thì $x_0$ là một điểm cực đại của hàm số $f(x)$.
]

$»$ Định lí trên được viết gọn lại trong hai bảng biến thiên sau:
#v(5pt)
#grid(
  columns: (1fr, 1fr),
  align(center)[
    #table(
      columns: (30pt, 20pt, 1fr, 30pt, 1fr, 20pt),
      align: center + horizon,
      stroke: none,
      table.vline(x: 1, stroke: 0.7pt + black),
      table.hline(y: 1, stroke: 0.7pt + black),
      table.hline(y: 2, stroke: 0.7pt + black),
      [$x$], [$a$], [], [$x_0$], [], [$b$],
      [$f'(x)$], [], [$-$], [], [$+$], [],
      [$f(x)$], 
      align(top)[],
      $arrow.br$,
      align(bottom)[$f(x_0)$ \ _Cực tiểu_],
      $arrow.tr$,
      align(top)[]
    )
  ],
  align(center)[
    #table(
      columns: (30pt, 20pt, 1fr, 30pt, 1fr, 20pt),
      align: center + horizon,
      stroke: none,
      table.vline(x: 1, stroke: 0.7pt + black),
      table.hline(y: 1, stroke: 0.7pt + black),
      table.hline(y: 2, stroke: 0.7pt + black),
      [$x$], [$a$], [], [$x_0$], [], [$b$],
      [$f'(x)$], [], [$+$], [], [$-$], [],
      [$f(x)$], 
      align(bottom)[],
      $arrow.tr$,
      align(top)[$f(x_0)$ \ _Cực đại_],
      $arrow.br$,
      align(bottom)[]
    )
  ]
)

#v(5pt)

#rect(width: 100%, fill: lightred, stroke: 1.5pt + borderred, radius: 6pt, inset: 10pt)[
  *Chú ý:* \
  $»$ Từ định lí trên ta có các bước tìm cực trị của hàm số $y = f(x)$ như sau: \
    *(1)* Tìm tập xác định của hàm số. \
    *(2)* Tính $f'(x)$. Tìm các điểm mà tại đó $f'(x)$ bằng $0$ hoặc $f'(x)$ không tồn tại. \
    *(3)* Lập bảng biến thiên suy ra các cực trị của hàm số. \
  $»$ Nếu $f'(x_0) = 0$ nhưng $f'(x)$ không đổi dấu khi $x$ qua $x_0$ thì $x_0$ không phải là điểm cực trị của hàm số. \
    Chẳng hạn, hàm số $f(x) = x^3$ có $cases(f'(x) = 3x^2, f'(0) = 0)$, nhưng $x = 0$ không phải là điểm cực trị của hàm số.
    
  #v(10pt)
  #align(center)[
    // Dùng vòng lặp vẽ đồ thị y = x^3
    #box(width: 150pt, height: 150pt, {
      place(dx: 10pt, dy: 75pt, line(length: 130pt, stroke: 0.7pt)) // Ox
      place(dx: 135pt, dy: 71.5pt, text(size: 10pt)[$arrow.r$])
      place(dx: 140pt, dy: 80pt, text(size: 9pt)[$x$])
      
      place(dx: 75pt, dy: 10pt, line(start: (0pt, 130pt), end: (0pt, 0pt), stroke: 0.7pt)) // Oy
      place(dx: 71.5pt, dy: 3pt, text(size: 10pt)[$arrow.t$])
      place(dx: 60pt, dy: 5pt, text(size: 9pt)[$y$])
      
      place(dx: 63pt, dy: 77pt, text(size: 9pt)[$O$])
      
      for i in range(-15, 15) {
        let x1 = i / 10
        let y1 = x1 * x1 * x1
        let x2 = (i + 1) / 10
        let y2 = x2 * x2 * x2
        place(dx: 0pt, dy: 0pt, line(
          start: (75pt + x1 * 30pt, 75pt - y1 * 15pt), 
          end: (75pt + x2 * 30pt, 75pt - y2 * 15pt), 
          stroke: 1.2pt + red
        ))
      }
      place(dx: 95pt, dy: 25pt, text(fill: red, size: 9pt)[$y = x^3$])
    })
  ]
]

// ================= PHẦN B: CÁC DẠNG BÀI TẬP =================
#pagebreak()
#v(5pt)
#text(fill: borderred, size: 18pt, weight: "bold")[B. CÁC DẠNG BÀI TẬP]
#v(10pt)

// ================= DẠNG 1 =================
#text(fill: darkblue, size: 14pt, weight: "bold")[#text(fill: borderblue)[⚐ Dạng 1.] Xét tính đơn điệu của hàm số cho bởi một công thức]

#rect(width: 100%, fill: lightyellow, stroke: 1.5pt + borderyellow, radius: 6pt, inset: 10pt)[
  #text(fill: borderred, weight: "bold")[Phương pháp]
  #v(2pt)
  #line(length: 100%, stroke: 0.5pt + borderyellow)
  #v(2pt)
  $»$ *Bước 1:* Tìm tập xác định $D$ của hàm số. \
  $»$ *Bước 2:* Tính đạo hàm $f'(x)$ của các hàm số. Tìm các điểm $\{x_1; x_2; ...; x_n\} in D$ mà tại đó đạo hàm $f'(x)$ bằng $0$ hoặc không tồn tại. \
  $»$ *Bước 3:* Sắp xếp các điểm $x_1; x_2; ...; x_n$ theo thứ tự tăng dần. Xét dấu $f'(x)$ và lập bảng biến thiên. \
  $»$ *Bước 4:* Nêu kết luận về các khoảng đồng biến, nghịch biến của hàm số.
]

#v(5pt)
*Ví dụ 1:* Tìm các khoảng đơn điệu của hàm số $y = 1/3 x^3 - 2x^2 + 3x + 1$.
#rect(width: 100%, stroke: none, inset: 5pt)[
  *Lời giải:* \
  Tập xác định: $D = RR$. \
  Đạo hàm: $y' = x^2 - 4x + 3$. Cho $y' = 0 <=> cases(x = 1, x = 3)$. \
  Bảng biến thiên:
  #align(center)[
    #table(
      columns: (40pt, 30pt, 1fr, 30pt, 1fr, 30pt, 1fr, 30pt),
      rows: (auto, auto, 45pt),
      align: center + horizon,
      stroke: none,
      table.vline(x: 1, stroke: 0.7pt + black),
      table.hline(y: 1, stroke: 0.7pt + black),
      table.hline(y: 2, stroke: 0.7pt + black),
      [$x$], [$-oo$], [], [$1$], [], [$3$], [], [$+oo$],
      [$y'$], [], [$+$], [$0$], [$-$], [$0$], [$+$], [],
      [$y$],
      align(bottom)[$-oo$],
      $arrow.tr$,
      align(top)[$7/3$],
      $arrow.br$,
      align(bottom)[$1$],
      $arrow.tr$,
      align(top)[$+oo$]
    )
  ]
  *Kết luận:* 
  Hàm số đồng biến trên các khoảng $(-oo; 1)$ và $(3; +oo)$. Hàm số nghịch biến trên khoảng $(1; 3)$.
]

#v(10pt)

// ================= DẠNG 2 =================
#text(fill: darkblue, size: 14pt, weight: "bold")[#text(fill: borderblue)[⚐ Dạng 2.] Xét tính đơn điệu của hàm số cho bởi đồ thị - bảng biến thiên]

#rect(width: 100%, fill: lightyellow, stroke: 1.5pt + borderyellow, radius: 6pt, inset: 10pt)[
  #text(fill: borderred, weight: "bold")[Phương pháp]
  #v(2pt)
  #line(length: 100%, stroke: 0.5pt + borderyellow)
  #v(2pt)
  $»$ Với đồ thị hàm số, quan sát: hướng lên – xuống của _đường cong_ (chiều từ trái sang phải). \
  $»$ Với bảng biến thiên, quan sát: hướng lên – xuống của _mũi tên_ (chiều từ trái sang phải). \
  $»$ Với bảng xét dấu, quan sát: dấu âm - dương của $f'(x)$.
]

#v(5pt)
*Ví dụ 2:* Cho hàm số $y = f(x)$ có đồ thị như hình vẽ. Khẳng định nào sau đây là đúng? \
#grid(
  columns: (220pt, 1fr),
  align: horizon,
  [
    // Code vẽ trực tiếp đồ thị trắc nghiệm Dạng 2 (không dùng path)
    #box(width: 180pt, height: 120pt, {
      place(dx: 10pt, dy: 60pt, line(length: 160pt, stroke: 0.7pt)) // Ox
      place(dx: 165pt, dy: 56.5pt, text(size: 10pt)[$arrow.r$])
      place(dx: 170pt, dy: 65pt, text(size: 9pt)[$x$])
      
      place(dx: 90pt, dy: 10pt, line(start: (0pt, 100pt), end: (0pt, 0pt), stroke: 0.7pt)) // Oy
      place(dx: 86.5pt, dy: 3pt, text(size: 10pt)[$arrow.t$])
      place(dx: 75pt, dy: 5pt, text(size: 9pt)[$y$])
      
      place(dx: 78pt, dy: 62pt, text(size: 9pt)[$O$])
      
      for i in range(-22, 22) {
        let x1 = i / 10
        let y1 = x1 * x1 * x1 - 3 * x1
        let x2 = (i + 1) / 10
        let y2 = x2 * x2 * x2 - 3 * x2
        place(dx: 0pt, dy: 0pt, line(
          start: (90pt + x1 * 25pt, 60pt - y1 * 15pt), 
          end: (90pt + x2 * 25pt, 60pt - y2 * 15pt), 
          stroke: 1.2pt + red
        ))
      }
      
      place(dx: 65pt, dy: 60pt, line(start: (0pt,0pt), end: (0pt, -30pt), stroke: (thickness: 0.5pt, dash: "dashed")))
      place(dx: 65pt, dy: 30pt, line(start: (0pt,0pt), end: (25pt, 0pt), stroke: (thickness: 0.5pt, dash: "dashed")))
      
      place(dx: 115pt, dy: 60pt, line(start: (0pt,0pt), end: (0pt, 30pt), stroke: (thickness: 0.5pt, dash: "dashed")))
      place(dx: 90pt, dy: 90pt, line(start: (0pt,0pt), end: (25pt, 0pt), stroke: (thickness: 0.5pt, dash: "dashed")))
      
      place(dx: 60pt, dy: 65pt, text(size: 8pt)[$-1$])
      place(dx: 112pt, dy: 48pt, text(size: 8pt)[$1$])
      place(dx: 80pt, dy: 25pt, text(size: 8pt)[$2$])
      place(dx: 75pt, dy: 85pt, text(size: 8pt)[$-2$])
    })
  ],
  [
    *A.* Hàm số đồng biến trên khoảng $(0; 2)$. \
    *B.* Hàm số nghịch biến trên khoảng $(-oo; 0)$. \
    *C.* Hàm số nghịch biến trên khoảng $(0; 2)$. \
    *D.* Hàm số đồng biến trên khoảng $(2; +oo)$.
  ]
)

#v(10pt)

// ================= DẠNG 3 =================
#text(fill: darkblue, size: 14pt, weight: "bold")[#text(fill: borderblue)[⚐ Dạng 3.] Xác định cực trị của hàm số cho bởi công thức]

#rect(width: 100%, fill: lightyellow, stroke: 1.5pt + borderyellow, radius: 6pt, inset: 10pt)[
  #text(fill: borderred, weight: "bold")[Phương pháp]
  #v(2pt)
  #line(length: 100%, stroke: 0.5pt + borderyellow)
  #v(2pt)
  $»$ *Bước 1:* Tìm tập xác định $D$ của hàm số. \
  $»$ *Bước 2:* Tính đạo hàm $f'(x)$ của các hàm số. Tìm các điểm $\{x_1; x_2; ...; x_n\} in D$ mà tại đó đạo hàm $f'(x) = 0$ hoặc $f'(x)$ không tồn tại. \
  $»$ *Bước 3:* Sắp xếp các điểm $x_1; x_2; ...; x_n$ theo thứ tự tăng dần. Xét dấu $f'(x)$ và lập bảng biến thiên. \
  $»$ *Bước 4:* Kết luận hàm số đạt cực trị tại $x = ?, y = ?$ (nếu có).
]

#v(5pt)
*Ví dụ 3:* Tìm cực trị của hàm số $y = x^4 - 2x^2 + 1$.
#rect(width: 100%, stroke: none, inset: 5pt)[
  *Lời giải:* \
  Tập xác định: $D = RR$. \
  Đạo hàm: $y' = 4x^3 - 4x$. Cho $y' = 0 <=> cases(x = 0, x = 1, x = -1)$. \
  Bảng biến thiên:
  #align(center)[
    #table(
      columns: (40pt, 30pt, 1fr, 30pt, 1fr, 30pt, 1fr, 30pt, 1fr, 30pt),
      rows: (auto, auto, 45pt),
      align: center + horizon,
      stroke: none,
      table.vline(x: 1, stroke: 0.7pt + black),
      table.hline(y: 1, stroke: 0.7pt + black),
      table.hline(y: 2, stroke: 0.7pt + black),
      [$x$], [$-oo$], [], [$-1$], [], [$0$], [], [$1$], [], [$+oo$],
      [$y'$], [], [$-$], [$0$], [$+$], [$0$], [$-$], [$0$], [$+$], [],
      [$y$],
      align(top)[$+oo$],
      $arrow.br$,
      align(bottom)[$0$],
      $arrow.tr$,
      align(top)[$1$],
      $arrow.br$,
      align(bottom)[$0$],
      $arrow.tr$,
      align(top)[$+oo$]
    )
  ]
  *Kết luận:* 
  Hàm số đạt cực tiểu tại $x = plus.minus 1$, giá trị cực tiểu $y_(C T) = 0$. \
  Hàm số đạt cực đại tại $x = 0$, giá trị cực đại $y_(C D) = 1$.
]

#v(10pt)

// ================= DẠNG 4 =================
#text(fill: darkblue, size: 14pt, weight: "bold")[#text(fill: borderblue)[⚐ Dạng 4.] Xác định cực trị của hàm số cho bởi bảng biến thiên – đồ thị]

#rect(width: 100%, fill: lightyellow, stroke: 1.5pt + borderyellow, radius: 6pt, inset: 10pt)[
  #grid(
    columns: (60%, 40%),
    align: horizon,
    [
      #text(fill: borderred, weight: "bold")[Nhận xét:] \
      $»$ Hàm số $f(x)$
      #table(
        columns: (auto, auto),
        stroke: none,
        table.vline(x: 1, stroke: 1pt + black),
        [có cực trị], [$y'$ đổi dấu],
        table.hline(stroke: 0.5pt + black),
        [không cực trị], [$y'$ không đổi dấu],
        table.hline(stroke: 0.5pt + black),
        [chỉ có 1 cực trị], [$y'$ đổi dấu 1 lần],
        table.hline(stroke: 0.5pt + black),
        [có 2 cực trị], [$y'$ đổi dấu 2 lần],
        table.hline(stroke: 0.5pt + black),
        [có 3 cực trị], [$y'$ đổi dấu 3 lần]
      )
    ],
    [
      // Code đồ thị phân tích điểm cực trị Dạng 4 (không dùng path)
      #box(width: 200pt, height: 140pt, {
        place(dx: 10pt, dy: 70pt, line(length: 180pt, stroke: 0.7pt)) // Ox
        place(dx: 185pt, dy: 66.5pt, text(size: 10pt)[$arrow.r$])
        place(dx: 190pt, dy: 75pt, text(size: 9pt)[$x$])
        
        place(dx: 100pt, dy: 10pt, line(start: (0pt, 120pt), end: (0pt, 0pt), stroke: 0.7pt)) // Oy
        place(dx: 96.5pt, dy: 3pt, text(size: 10pt)[$arrow.t$])
        place(dx: 85pt, dy: 5pt, text(size: 9pt)[$y$])
        place(dx: 88pt, dy: 72pt, text(size: 9pt)[$O$])
        
        for i in range(-22, 22) {
          let x1 = i / 10
          let y1 = x1 * x1 * x1 - 3 * x1
          let x2 = (i + 1) / 10
          let y2 = x2 * x2 * x2 - 3 * x2
          place(dx: 0pt, dy: 0pt, line(
            start: (100pt + x1 * 25pt, 70pt - y1 * 15pt), 
            end: (100pt + x2 * 25pt, 70pt - y2 * 15pt), 
            stroke: 1.2pt + red
          ))
        }
        
        place(dx: 75pt, dy: 70pt, line(start: (0pt,0pt), end: (0pt, -30pt), stroke: (thickness: 0.5pt, dash: "dashed")))
        place(dx: 75pt, dy: 40pt, line(start: (0pt,0pt), end: (25pt, 0pt), stroke: (thickness: 0.5pt, dash: "dashed")))
        place(dx: 75pt, dy: 40pt, circle(radius: 2pt, fill: black)) // Chấm đỉnh
        
        place(dx: 125pt, dy: 70pt, line(start: (0pt,0pt), end: (0pt, 30pt), stroke: (thickness: 0.5pt, dash: "dashed")))
        place(dx: 100pt, dy: 100pt, line(start: (0pt,0pt), end: (25pt, 0pt), stroke: (thickness: 0.5pt, dash: "dashed")))
        place(dx: 125pt, dy: 100pt, circle(radius: 2pt, fill: black)) // Chấm đáy
        
        // Chú thích
        place(dx: 68pt, dy: 75pt, text(size: 8pt)[$x_(C D)$])
        place(dx: 105pt, dy: 36pt, text(size: 8pt)[$y_(C D)$])
        place(dx: 5pt, dy: 15pt, text(size: 8pt)[Điểm cực đại \ của đồ thị])
        place(dx: 35pt, dy: 28pt, line(start: (0pt, 0pt), end: (35pt, 10pt), stroke: 0.5pt))
        
        place(dx: 120pt, dy: 58pt, text(size: 8pt)[$x_(C T)$])
        place(dx: 75pt, dy: 96pt, text(size: 8pt)[$y_(C T)$])
        place(dx: 140pt, dy: 110pt, text(size: 8pt)[Điểm cực tiểu \ của đồ thị])
        place(dx: 145pt, dy: 108pt, line(start: (0pt, 0pt), end: (-15pt, -5pt), stroke: 0.5pt))
      })
    ]
  )
  
  #v(5pt)
  $»$ Đối với một hàm số bất kì, hàm số chỉ có thể đạt cực trị tại những điểm $x_0$ mà tại đó đạo hàm triệt tiêu $f'(x_0) = 0$ hoặc đạo hàm không xác định tại đó.
]

#v(5pt)
*Ví dụ 4:* Cho hàm số $y = f(x)$ có bảng biến thiên như sau. Đồ thị hàm số có bao nhiêu điểm cực trị? \
#grid(
  columns: (260pt, 1fr),
  align: horizon,
  [
    // Vẽ thẳng Bảng biến thiên (không cần chèn ảnh)
    #align(center)[
      #table(
        columns: (30pt, 25pt, 1fr, 30pt, 1fr, 30pt, 1fr, 25pt),
        rows: (auto, auto, 45pt),
        align: center + horizon,
        stroke: none,
        table.vline(x: 1, stroke: 0.7pt + black),
        table.hline(y: 1, stroke: 0.7pt + black),
        table.hline(y: 2, stroke: 0.7pt + black),
        [$x$], [$-oo$], [], [$-1$], [], [$1$], [], [$+oo$],
        [$y'$], [], [$+$], [$0$], [$-$], [$0$], [$+$], [],
        [$y$],
        align(bottom)[$-oo$],
        $arrow.tr$,
        align(top)[$3$],
        $arrow.br$,
        align(bottom)[$-1$],
        $arrow.tr$,
        align(top)[$+oo$]
      )
    ]
  ],
  [
    *A.* $1$. \
    *B.* $2$. \
    *C.* $3$. \
    *D.* $0$.
  ]
)
