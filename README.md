aa.bat 是系統內建的；把xxx資料夾 +到環境變數；win+R => aa=> enter 即可
---------;
bb.ps1 PowerShell 
支持數位簽章；打開 PowerShell（快捷鍵：Win + X 然後選 PowerShell）。
關鍵邏輯：你必須指定路徑。即便你在該資料夾，也必須加上 ./。
./myscript.ps1；
不關視窗
powershell -NoExit -ExecutionPolicy Bypass -File "D:\script\hello.ps1";
---------;
用bat開ps1；bb.bat
@powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0bb.ps1";
記得.ps1最後一行要加
Read-Host "執行完成，按 Enter 鍵結束..."



