@echo off
setlocal enabledelayedexpansion

:: 1. 設定目標資料夾路徑 (維持你堅持的絕對路徑)
set "TARGET_DIR=D:\Cthis"

:: 2. 存在性檢查邏輯
if not exist "%TARGET_DIR%" (
    echo [錯誤] 找不到資料夾: %TARGET_DIR%
    pause
    exit /b
)

echo ========================================
echo [第一階段：預覽] 以下檔案即將被刪除：
echo ----------------------------------------
:: 使用 dir 指令列出所有符合的檔案名稱
dir /s /b /a-d "%TARGET_DIR%\*.exe"
echo ----------------------------------------

echo [第二階段：緩衝] 請檢查清單是否正確。
echo 如果發現不該刪的檔案，請直接""關閉視窗""或""按 Ctrl+C""。
echo 倒數 6秒後將啟動不可逆刪除...
echo ========================================

:: 3. 等待 6 秒 (不接受任意鍵中斷，確保有完整 6 秒反應時間)
timeout /t 6 /nobreak


echo ========================================

:: 3. 核心邏輯：先列出、後刪除
set /a count=0
for /r "%TARGET_DIR%" %%f in (*.exe) do (
    echo [清理中] %%f
    del /f /q "%%f"
    set /a count+=1
)

:: 4. 執行結果彙報
echo ----------------------------------------
if %count% equ 0 (
    echo [通知] 沒有發現任何需要清理的 .exe 檔案。
) else (
    echo [完成] 總計已從 %TARGET_DIR% 移除 %count% 個執行檔。
)
echo ========================================

timeout /t 1
