# BÀI LÀM – ÔN TẬP NGÀY 2

- **Họ tên:** Nguyễn Hồng Vũ
- **Lớp:** CNTT1
- **Link repository:** https://github.com/nguyenvu220806-alt/CNTT1_NguyenHongVu_Nhap-Mon-CNTT_OnTap-Ngay2/tree/main
- **Hệ điều hành (Windows/macOS):** Windown

## Bài 1. Lọc log thủ công

### Lệnh đã chạy

```shell
Get-Content logs/access.log | Select-String "ERROR" | Out-File -Encoding utf8 logs/error_report.txt
Get-Content logs/error_report.txt
```

### 2 dòng lỗi đầu tiên trong error_report.txt

```text
2025-10-18 08:05:35 [INFO] Tai tai lieu bai hoc
2025-10-18 08:09:03 [INFO] Xem lich hoc tuan nay
```

## Bài 2. Đếm bằng pipeline

### Lệnh

```shell
(Get-Content logs/access.log | Select-String "WARNING").Count
(Get-Content logs/payment.log | Select-String "ERROR").Count
```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
WARNING trong access.log: 4
ERROR trong payment.log: 3

```

## Bài 3. Chạy script auto_warning (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\script_ngay2.ps1

```

### Nội dung file logs/warning_report.txt

```text
=== CANH BAO THANH TOAN ===
2025-10-18 09:19:13 [WARNING] Cong thanh toan phan hoi cham
2025-10-18 09:28:16 [WARNING] Nhieu lan nhap sai ma OTP
2025-10-18 09:43:01 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:46:22 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:49:43 [WARNING] So du vi gan bang hoc phi

```

## Bài 4. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
echo "=== TONG HOP ACCESS LOG ===" > logs/tong_hop_ngay2.txt
Get-Content logs/access.log | Select-String "ERROR" | Out-File -Append -Encoding utf8 logs/tong_hop_ngay2.txt
(Get-Content logs/payment.log | Select-String "WARNING").Count | Out-File -Append -Encoding utf8 logs/tong_hop_ngay2.txt

```

### Nội dung file logs/tong_hop_ngay2.txt

```text
=== TONG HOP ACCESS LOG ===
[2026-10-21 10:01:15] [ERROR] [Auth] Failed login attempt for user_id: 1042 - Invalid password
[2026-10-21 10:04:22] [ERROR] [Database] Connection timeout while querying student records
3

```

## Bài 5. Câu hỏi ngắn

- **a)** Dấu > dùng để ghi đè nội dung mới vào file (nếu file đã có sẵn nội dung cũ sẽ bị xóa hết). Dấu >> dùng để ghi nối tiếp (append) nội dung mới vào cuối file mà không làm mất nội dung cũ
- **b)** Tiêu đề "=== TONG HOP ACCESS LOG ===" ở dòng đầu tiên sẽ bị ghi đè/xóa mất, và file sẽ chỉ còn lại các dòng ERROR
- **c)** Giúp script có tính di động cao (portable), có thể chạy đúng trên bất kỳ máy tính nào khác hoặc khi đổi thư mục làm việc mà không bị lỗi sai đường dẫn.

## Tự chấm (điền sau khi có đáp án)

- **Điểm tự chấm:** ..../100
- **Lỗi mình đã mắc và cách sửa:**
