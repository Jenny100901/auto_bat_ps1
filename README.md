aa.bat 是系統內建的；把xxx資料夾 +到環境變數；win+R => aa=> enter 即可<br>
---------;<br>
bb.ps1 PowerShell <br>
支持數位簽章；打開 PowerShell（快捷鍵：Win + X 然後選 PowerShell）。<br>
關鍵邏輯：你必須指定路徑。即便你在該資料夾，也必須加上 ./。<br>
./bb.ps1；<br>
不關視窗<br>
powershell -NoExit -ExecutionPolicy Bypass -File "D:\script\bb.ps1";<br>
---------;<br>
用bat開ps1；bb.bat<br>
@powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0bb.ps1";<br>
記得.ps1最後一行要加<br>
[Read-Host "執行完成，按 Enter 鍵結束..."]<br>



