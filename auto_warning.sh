script_ngay2.ps1)
# Tác giả: Nguyễn Hồng Vũ
# Ngày tạo: 21/10/2026

echo "=== BAT DAU LOC CANH BAO THANH TOAN ==="
Get-Content logs/payment.log | Select-String "WARNING" | Out-File -Encoding utf8 logs/warning_report.txt
echo "Hoan thanh!"