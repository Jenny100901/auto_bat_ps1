# ==========================================
# 1. 資料獲取階段 (Input)
# ==========================================
$currentTime = Get-Date
$hour = $currentTime.Hour
# 獲取當前 Windows 使用者名稱（只取名字部分，不含網域）
$userName = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name.Split("\")[-1]

# ==========================================
# 2. 邏輯判斷階段 (Processing)
# ==========================================
$greeting = ""
$advice = ""
$color = "White"

if ($hour -ge 5 -and $hour -lt 12) {
    $greeting = "早安"
    $advice = "一日之計在於晨，來題 Codeforces 暖暖身吧！"
    $color = "Yellow"
}
elseif ($hour -ge 12 -and $hour -lt 18) {
    $greeting = "午安"
    $advice = "已經過中午了，記得站起來活動一下，保護眼睛。"
    $color = "Cyan"
}
else {
    $greeting = "晚安"
    $advice = "夜深了，大腦需要休息才能內化今天的 C++ 邏輯。"
    $color = "Magenta"
}

# ==========================================
# 3. 視覺輸出階段 (Output)
# ==========================================
Clear-Host # 清除畫面，讓輸出更乾淨
Write-Host "==========================================" -ForegroundColor Gray
Write-Host "  你好，$userName ！ $greeting " -ForegroundColor $color -NoNewline
Write-Host " (現在時間：$($currentTime.ToString('HH:mm')))" 
Write-Host "==========================================" -ForegroundColor Gray
Write-Host " [小幫手提醒]：$advice" -ForegroundColor Green
Write-Host ""

# ==========================================
# 4. 暫停與互動
# ==========================================
Read-Host "任務執行完成，按 Enter 鍵結束..."