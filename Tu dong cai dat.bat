

@echo off
title Tu dong cai dat Phan mem - Thu vien v1.1
mode con: cols=80 lines=30
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Dang yeu cau quyen Admin...
    powershell -Command "Start-Process cmd -ArgumentList '/c \"%~f0\"' -Verb RunAs"
    exit
)
cls
echo Da chay voi quyen Admin!
setlocal enabledelayedexpansion
set "download_dir=%TEMP%\Downloaded_Files"
mkdir "%download_dir%" 2>nul
set "downloads_folder=%USERPROFILE%\Downloads"
for /f "tokens=2 delims=:" %%A in ('chcp') do set "original_cp=%%A"
:caidat
cls
echo --------------------------------------------------------------------------------
echo ========================= CAI DAT PHAN MEM VA THU VIEN =========================
echo 			        Minh Hai Computer
echo --------------------------------------------------------------------------------
echo   1. Cai dat Visual C++						[Bam phim  1]
echo   2. cai dat .NET Framework 3.5					[Bam phim  2]
echo   3. Cai dat .NET Framework 4.8					[Bam phim  3]
echo   4. Cai dat Office 2024					[Bam phim  4]
echo   5. Cai dat Office 365						[Bam phim  5]
echo   6. Cai dat Kaspersky Free					[Bam phim  6]
echo   7. Cai dat Kaspersky Small Office				[Bam phim  7]
echo   8. Cai dat Full Font						[Bam phim  8]
echo   9. Cai - Kich hoat Winrar					[Bam phim  9]
echo  10. Cai dat K Lite Code Pack 					[Bam phim 10]
echo  11. Cai dat bo go tieng Viet					[Bam phim 11]
echo  12. Cai dat Phan mem Doc/Sua PDF				[Bam phim 12]
echo  13. Cai dat Math Type						[Bam phim 13]
echo  14. Cai dat P/m quay man hinh					[Bam phim 14]
echo  15. Cai dat P/m doi duoi					[Bam phim 15]
echo  16. Cap nhat phien ban moi				[Bam phim 15]
echo   E. Thoat							[Bam phim  e]
echo --------------------------------------------------------------------------------
set /p choice="Nhap lua chon: "


if "%choice%"=="1" goto cai_visual
if "%choice%"=="2" goto cai_dotnet35
if "%choice%"=="3" goto cai_dotnet48
if "%choice%"=="4" goto cai_office24
if "%choice%"=="5" goto cai_office365
if "%choice%"=="6" goto cai_kaspersky
if "%choice%"=="7" goto cai_kas_small
if "%choice%"=="8" goto cai_font
if "%choice%"=="9" goto cai_winrar
if "%choice%"=="10" goto cai_klite
if "%choice%"=="11" goto cai_bogo
if "%choice%"=="12" goto cai_foxit
if "%choice%"=="13" goto cai_mathtype
if "%choice%"=="14" goto cai_quaymanhinh
if "%choice%"=="15" goto cai_formatfactory
if "%choice%"=="16" goto capnhat
if "%choice%"=="e" exit

echo Lua chon khong hop le, vui long thu lai!
pause
goto caidat

:cai_visual
for /f "tokens=2 delims=:" %%A in ('chcp') do set "original_cp=%%A"
 echo Dang tai tep cai dat Visual C++...
    curl -L -o "%download_dir%\package.zip" "https://download2268.mediafire.com/jolbmjh7r7agJC1aunnN6y-ZVjNRbWzAWoXEeyTjVMwPEFiPhOz5wpfysS9jUMnInfLldj83gWU2CP0aXpZT-T7IBJQXcBQ3UdoDv1RMVBT8sI4A5VM7K0wDLNN9vOWs_osexnlYH5w2ry9G2zaH9vTwZIGYwZBykj4_wj8AMqsnA5Y/sy12bfi6e7ov642/Visual-C-Runtimes-All-in-One-Nov-2024.zip1"

    echo Dang giai nen...
    powershell -Command "Expand-Archive -Path '%download_dir%\package.zip' -DestinationPath '%download_dir%' -Force"

    echo Dang cai dat Visual C++...
    for %%F in ("%download_dir%\*.exe") do (
        echo Dang chay: %%F
        start /wait %%F /quiet /norestart
    )

   
    echo Xoa cac file da cai Visual C++...
    rd /s /q "%download_dir%"
)
pause
goto caidat


:cai_dotnet35
for /f "tokens=2 delims=:" %%A in ('chcp') do set "original_cp=%%A"
echo Dang tai .NET Framework 3.5...
curl -L -o "%downloads_folder%\dotnetfx35.exe" "https://download.microsoft.com/download/2/0/e/20e90413-712f-438c-988e-fdaa79a8ac3d/dotnetfx35.exe"

echo Mo trinh cai dat .NET Framework 3.5...
start "" "%downloads_folder%\dotnetfx35.exe"

echo File da luu trong Downloads: %downloads_folder%\dotnetfx35.exe
pause
goto caidat


:cai_dotnet48
for /f "tokens=2 delims=:" %%A in ('chcp') do set "original_cp=%%A"
echo Dang tai .NET Framework 4.8...
curl -L -o "%downloads_folder%\dotnetfx48.exe" "https://download.microsoft.com/download/f/3/a/f3a6af84-da23-40a5-8d1c-49cc10c8e76f/NDP48-x86-x64-AllOS-ENU.exe"

echo Mo trinh cai dat .NET Framework 4.8...
start "" "%downloads_folder%\dotnetfx48.exe"

echo File da luu trong Downloads: %downloads_folder%\dotnetfx48.exe
pause
goto caidat


:cai_kaspersky
for /f "tokens=2 delims=:" %%A in ('chcp') do set "original_cp=%%A"
set "zip_file=%download_folder%\Kaspersky_Free.zip"
set "extract_folder=%download_folder%\KFA21.2.16.590.0.1402.0"

echo Dang tai Kaspersky Free...
curl -L -o "%zip_file%" "https://download1321.mediafire.com/qowettuylikgnmrCK-obT1sKvdOP7yPUt2Po-LMZ3scPyvc0XSLWErv35vax7oINtTMDF5PeXOXWwEBNrXt4ZJQc-TGtFC5YHshTT3WV-f-dhsKrNM2HN405myR6LWthvPDphnF5aXpsXEzdFxuMr2Kc1xcVaeh-rqzmTNp3wiQ1QBA/xbnqmvsk2jnfbmj/KFA21.2.16.590.0.1402.0.zip"

if not exist "%zip_file%" (
    echo Loi: Khong tai duoc file! Kiem tra ket noi Internet.
    pause
    goto caidat
)

echo Dang giai nen Kaspersky Free...
powershell -Command "Expand-Archive -Path '%zip_file%' -DestinationPath '%download_folder%' -Force"

if not exist "%extract_folder%" (
    echo Loi: Khong tim thay thu muc giai nen!
    pause
    goto caidat
)

del "%zip_file%"
echo Da xoa file ZIP.

set "install_file=%extract_folder%\startup.exe"

if not exist "!install_file!" (
    echo Loi: Khong tim thay file startup.exe!
    pause
    goto caidat
)

echo Dang chay trinh cai dat Kaspersky Free...
start "" "!install_file!"

echo Da hoan tat cai dat Kaspersky Free!
pause
goto caidat



:cai_kas_small
for /f "tokens=2 delims=:" %%A in ('chcp') do set "original_cp=%%A"
echo Dang tai Kaspersky Small Office...
curl -L -o "%downloads_folder%\startup small.exe" "https://download843.mediafire.com/cn58a8bc8zlgID3LgDqF4ma7OCLTmtC_WCga_CGLUYtlFkAYxNesQ_mocvJhbIUxoy3NwEnxtItn8-crC3i31GUd4zzRFFoRVgk05UsMt2cwuFWNr-vTSYSCLq9AssW7SkmAURzFwQXxUpB9hVNXe-FAiJVCKBPEZKbiDPWKcP12n3Q/ykax5ycgkokoear/startup+small.exe"

echo Mo trinh cai dat Kaspersky Small Office...
start "" "%downloads_folder%\startup small.exe"

echo File da luu trong Downloads: %downloads_folder%\startup small.exe
pause
goto caidat


:cai_office24
@echo off
setlocal enabledelayedexpansion


set "download_folder=%USERPROFILE%\Downloads"
set "zip_file=%download_folder%\Office_2024.zip"
set "extract_folder=%download_folder%\Office_2024"


echo Dang tai Office 2024...
curl -L -o "%zip_file%" "https://download1589.mediafire.com/yzgbff79cgrgAqlBn_qpBReDY_86Uo76J2UCvJhZBjcMHfsKD2kvflCmgUf3mCI6cdEX9vuPkF1iCEECaO-wc6O1pF2-WbBGnIEAbfwNjnBkEoxdG_myqwACS4A_BtHbPzDFk5KogS8IHX4RmQJyH_rQQlcu9xdzYMR4Snrv0pc9R6c/znrc8gwg67zybve/Cai+dat+Office+2024+Online+1.2.zip"


if not exist "%zip_file%" (
    echo Loi: Khong tai duoc file! Kiem tra ket noi Internet.
    pause
    exit
)

:: Gi?i nén file ZIP
echo Dang giai nen Office 2024...
powershell -Command "Expand-Archive -Path '%zip_file%' -DestinationPath '%extract_folder%' -Force"


if not exist "%extract_folder%" (
    echo Loi: Khong tim thay thu muc giai nen!
    pause
    exit
)


del "%zip_file%"
echo Da xoa file ZIP.


set "install_file="
for /r "%extract_folder%" %%F in ("Caidatoffice2024.cmd") do (
    set "install_file=%%F"
    goto found
)

echo Loi: Khong tim thay file Caidatoffice2024.cmd trong thu muc da giai nen!
pause
exit

:found
echo Dang chay trinh cai dat Office 2024...
start "" "!install_file!"

echo Da hoan tat cai dat Office 2024!
goto caidat



:cai_office365
@echo off
setlocal enabledelayedexpansion


set "download_folder=%USERPROFILE%\Downloads"
set "zip_file=%download_folder%\Office_365.zip"
set "extract_folder=%download_folder%\Office_365"


echo Dang tai Office 365...
curl -L -o "%zip_file%" "https://download1638.mediafire.com/1hf9hz18iytg4tcgoGLuyJD7NAf7ugf2PgmElQ7T3A5qu0SRddQzxZllQZKJcChtmWICFLQPvRsGORYm_M3gsKLCssXyoBrrQuSbDxolTkUFpoeog0sGVOel00Xq9uJhDpXNXjY34OeQSgDU6BHWFUJyQs4S1A38aIGkVgscLzlBJ-c/n7khhitjasr7bdp/Cai+dat+Office+365+Online+1.2.zip"


if not exist "%zip_file%" (
    echo Loi: Khong tai duoc file! Kiem tra ket noi Internet.
    pause
    exit
)


echo Dang giai nen Office 365...
powershell -Command "Expand-Archive -Path '%zip_file%' -DestinationPath '%extract_folder%' -Force"


if not exist "%extract_folder%" (
    echo Loi: Khong tim thay thu muc giai nen!
    pause
    exit
)


del "%zip_file%"
echo Da xoa file ZIP.


set "install_file="
for /r "%extract_folder%" %%F in ("Caidatoffice365.cmd") do (
    set "install_file=%%F"
    goto found
)

echo Loi: Khong tim thay file Caidatoffice365.cmd trong thu muc da giai nen!
pause
exit

:found
echo Dang chay trinh cai dat Office 365...
start "" "!install_file!"

echo Da hoan tat cai dat Office 365!
goto caidat


:cai_font
for /f "tokens=2 delims=:" %%A in ('chcp') do set "original_cp=%%A"

setlocal enabledelayedexpansion

én
set "temp_dir=C:\Temp_Fonts"
set "zip_file=%temp_dir%\font-chu.zip"


if not exist "%temp_dir%" mkdir "%temp_dir%"

echo Dang tai file ZIP chua font chu...
curl -L -o "%zip_file%" "https://download1349.mediafire.com/ouiqvbme4iagAjYFsQtO4SHnUF4IshovAuyx06NbA4fAgJP7AaJc-LOiO5IL5K48t_uml7Su3tTmpHv_Yc0_Frc_-DW-qK33ANiDaA53MeJqmp3Oj-EjPtbsV1WQ_zlkfiqSvEA_SikwtBrPVre1LKLlXC5XMo0hgH9UA_56n-CcHO0/xu7b39apgt4f7hg/font+chu.zip"

a
if not exist "%zip_file%" (
    echo Loi: Khong tai duoc file ZIP! Kiem tra ket noi Internet.
    pause
    exit
)

echo Dang giai nen font chu...
powershell -Command "Expand-Archive -Path '%zip_file%' -DestinationPath '%temp_dir%' -Force"


if not exist "%temp_dir%" (
    echo Loi: Khong tim thay thu muc giai nen!
    pause
    exit
)


echo Dang cai dat font chu...
for %%F in ("%temp_dir%\*.ttf") do (
    echo Dang cai: %%F
    copy "%%F" "%WINDIR%\Fonts\" >nul
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "%%~nF (TrueType)" /t REG_SZ /d "%%~nxF" /f
)

for %%F in ("%temp_dir%\*.otf") do (
    echo Dang cai: %%F
    copy "%%F" "%WINDIR%\Fonts\" >nul
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "%%~nF (OpenType)" /t REG_SZ /d "%%~nxF" /f
)


echo Dang xoa file ZIP...
del "%zip_file%"


echo Dang xoa thu muc tam...
rd /s /q "%temp_dir%"

echo Hoan tat cai dat font chu!
pause
goto caidat

:cai_winrar
set "download_folder=%USERPROFILE%\Downloads"
set "winrar_installer=%download_folder%\winrar-x64-701vn.exe"
set "rarreg_key=%download_folder%\rarreg.key"


echo =========================== CAI VA KICH HOAT WINRAR ============================
   
echo --------------------------------------------------------------------------------
echo  1. Tai va chay WinRAR					       [Bam phim  1]
echo  2. Kich hoat WinRAR				      	       [Bam phim  2]
echo  3. Quay lai Cai dat phan mem				       [Bam phim  E]
echo --------------------------------------------------------------------------------
set /p choice=Nhap lua chon: 

if "%choice%"=="1" goto cai_winrar
if "%choice%"=="2" goto kich_hoat_winrar
if "%choice%"=="e" goto caidat

echo Lua chon khong hop le, vui long nhap lai!
pause
goto caidat


:cai_winrar
cls
echo Dang tai WinRAR...
curl -L -o "%winrar_installer%" "https://www.rarlab.com/rar/winrar-x64-701vn.exe"

if not exist "%winrar_installer%" (
    echo Loi: Khong tai duoc WinRAR!
    pause
    goto cai_winrar
)

echo Dang mo trinh cai dat WinRAR...
start "" "%winrar_installer%"

echo Hoan tat cai dat WinRAR.
pause
goto cai_winrar


:kich_hoat_winrar
set "URL=https://raw.githubusercontent.com/minhhai87/tienichcaiwindao/refs/heads/main/rarreg.key"

set "TEMP_DIR=%TEMP%\WinRAR_Key"

set "RAR_DIR=C:\Program Files\WinRAR"

:: Kiểm tra Windows 32-bit hay 64-bit để xác định thư mục WinRAR
if exist "C:\Program Files (x86)\WinRAR" set "RAR_DIR=C:\Program Files (x86)\WinRAR"

:: Tạo thư mục tạm
mkdir "%TEMP_DIR%" 2>nul

:: Tải file bằng PowerShell
echo Dang tai file key...
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%URL%', '%TEMP_DIR%\rarreg.key')"


if not exist "%TEMP_DIR%\rarreg.key" (
    echo Loi: Khong tai duoc file key.
    pause
    exit /b
)


echo Sao chep file key vao thu muc WinRAR...
copy /Y "%TEMP_DIR%\rarreg.key" "%RAR_DIR%" >nul

:: Kiểm tra xem file đã được sao chép thành công chưa
if exist "%RAR_DIR%\rarreg.key" (
    echo Kich hoat WinRAR thanh cong!
) else (
    echo Loi: Khong the sao chep file key vao WinRAR.
)

:: Xóa thư mục tạm
rd /s /q "%TEMP_DIR%"

pause
goto cai_winrar


:cai_klite
for /f "tokens=2 delims=:" %%A in ('chcp') do set "original_cp=%%A"
echo Dang tai K Lite Code Pack ...
curl -L -o "%downloads_folder%\K-Lite_Codec_Pack_1880_Full.exe" "https://files2.codecguide.com/K-Lite_Codec_Pack_1880_Full.exe"

echo Mo trinh cai dat K Lite Code Pack...
start "" "%downloads_folder%\K-Lite_Codec_Pack_1880_Full.exe"

echo File da luu trong Downloads: %downloads_folder%\K-Lite_Codec_Pack_1880_Full.exe
pause
goto caidat

:cai_bogo

echo ============================= CAI BO GO TIENG VIET==============================
   
echo Chon phan mem ban muon cai dat:
echo   1. Unikey
echo   2. EVKey
echo   3. Quay lai

set /p choice=Nhap lua chon (1, 2 hoac 3): 

if "%choice%"=="1" (
    set "APP_NAME=Unikey"
    set "URL=https://www.unikey.org/assets/release/unikey46RC2-230919-win64.zip"
    set "EXE_NAME=UniKeyNT.exe"
) else if "%choice%"=="2" (
    set "APP_NAME=EVKey"
    set "URL=https://github.com/lamquangminh/EVKey/releases/download/Release/EVKey.zip"
    set "EXE_NAME=EVKey64.exe"
) else if "%choice%"=="3" (
    echo Quay lai menu cai dat
     goto caidat
) else (
    echo Lua chon khong hop le!
    pause
    goto cai_bogo
)
:: Thu muc cai dat
set "INSTALL_DIR=C:\Program Files\%APP_NAME%"

:: Thu muc tam de tai ve
set "TEMP_DIR=%TEMP%\%APP_NAME%Temp"

:: Duong dan desktop
set "DESKTOP=%USERPROFILE%\Desktop"

:: Tao thu muc tam
mkdir "%TEMP_DIR%" 2>nul

:: Tai file ve thu muc tam
echo Dang tai %APP_NAME%...
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%URL%', '%TEMP_DIR%\%APP_NAME%.zip')"

:: Giai nen vao thu muc cai dat
echo Dang giai nen...
powershell -Command "Expand-Archive -Path '%TEMP_DIR%\%APP_NAME%.zip' -DestinationPath '%INSTALL_DIR%' -Force"

:: Xoa file zip da tai ve
del "%TEMP_DIR%\%APP_NAME%.zip"

:: Chay chuong trinh
echo Dang chay %APP_NAME%...
start "" "%INSTALL_DIR%\%EXE_NAME%"

:: Thiet lap khoi dong cung Windows
echo Dang them vao khoi dong cung Windows...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v %APP_NAME% /t REG_SZ /d "\"%INSTALL_DIR%\%EXE_NAME%\"" /f

:: Tao shortcut tren desktop
echo Tao shortcut tren desktop...
powershell -Command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%DESKTOP%\%APP_NAME%.lnk');$s.TargetPath='%INSTALL_DIR%\%EXE_NAME%';$s.Save()"

:: Thong bao hoan tat
echo Cai dat hoan tat!
pause
goto caidat


:cai_mathtype
set "download_folder=%USERPROFILE%\Downloads"
set "mathtype_installer=%download_folder%\MathType-win-en-7.8.0.0.exe"
set "activation_file=%download_folder%\MathType.exe"

:: Thu muc cai dat MathType
set "install_path=C:\Program Files (x86)\MathType"


echo --------------------------------------------------------------------------------
echo ============================ CAI VA KICH HOAT MATH TYPE ========================

echo  1. Tai va cai dat MathType            			[Bam phim  1]
echo  2. Kich hoat MathType          			[Bam phim  2]
echo  3. Quay lai                           			[Bam phim  3]
echo.
set /p choice=Nhap lua chon (1, 2 hoac 3): 

if "%choice%"=="1" goto cai_mathtype
if "%choice%"=="2" goto kich_hoat_mathtype
if "%choice%"=="3" goto caidat
echo Lua chon khong hop le, vui long nhap lai!
pause
goto caidat

:cai_mathtype
cls
echo Dang tai MathType...
curl -L -o "%mathtype_installer%" "https://raw.githubusercontent.com/minhhai87/tienichcaiwindao/refs/heads/main/MathType-win-en-7.8.0.0.exe"

if not exist "%mathtype_installer%" (
    echo Loi: Khong tai duoc MathType!
    pause
    goto caidat
)

echo Dang mo trinh cai dat MathType...
start "" "%mathtype_installer%"

echo Vui long hoan tat qua trinh cai dat roi bam phim bat ky de tiep tuc.
pause
goto cai_mathtype

:kich_hoat_mathtype
cls
echo Dang tai file kich hoat MathType...
curl -L -o "%activation_file%" "https://raw.githubusercontent.com/minhhai87/tienichcaiwindao/refs/heads/main/MathType.exe"

if not exist "%activation_file%" (
    echo Loi: Khong tai duoc file kich hoat!
    pause
    goto cai_mathtype
)

if not exist "%install_path%" (
    echo Loi: Khong tim thay thu muc cai dat MathType!
    pause
    goto cai_mathtype
)

echo Dang sao chep file kich hoat vao %install_path%...
copy /Y "%activation_file%" "%install_path%" >nul

if exist "%install_path%\MathType.exe" (
    echo Da kich hoat thanh cong MathType!
) else (
    echo Loi: Khong sao chep duoc file kich hoat!
)

del "%activation_file%"
echo Da xoa file kich hoat tai ve.

pause
goto cai_mathtype



:cai_foxit

echo =========================CAI VA KICH HOAT PHAN MEM PDF==========================
   
echo --------------------------------------------------------------------------------
echo  1. Cai dat Foxit Reader				       	  [Bam phim  1]
echo  2. Cai dat Foxit Editor				      	  [Bam phim  2]
echo  3. Cai dat Nitro PDF				      	  	[Bam phim  3]
echo  4. Quay lai 					  	  	[Bam phim  4]
echo --------------------------------------------------------------------------------
set /p choice=Nhap lua chon: 

if "%choice%"=="1" goto cai_foxit_reader
if "%choice%"=="2" goto cai_foxit_edit
if "%choice%"=="3" goto cai_nitro
if "%choice%"=="4" goto caidat

echo Lua chon khong hop le, vui long nhap lai!
pause
goto caidat

:cai_foxit_reader
for /f "tokens=2 delims=:" %%A in ('chcp') do set "original_cp=%%A"
echo Dang tai Foxit Reader...
curl -L -o "%downloads_folder%\FoxitPDFReader20244_enu_Setup_Prom.exe" "https://cdn01.foxitsoftware.com/product/reader/desktop/win/2024.4.0/FoxitPDFReader20244_enu_Setup_Prom.exe"

echo Mo trinh cai dat Forxit Reader...
start "" "%downloads_folder%\FoxitPDFReader20244_enu_Setup_Prom.exe"

echo File da luu trong Downloads: %downloads_folder%\FoxitPDFReader20244_enu_Setup_Prom.exe
pause
goto caidat


:cai_foxit_edit
cls
echo ================================================================================
echo ======================== CAI VA KICH HOAT FOXIT EDITOR==========================
   
echo --------------------------------------------------------------------------------
echo  1. Cai dat Foxit Editor				        [Bam phim  1]
echo  2. Kich hoat Foxit Editor				      	[Bam phim  2]
echo  3. Quay lai 							[Bam phim  3]
echo --------------------------------------------------------------------------------
set /p choice=Nhap lua chon: 

if "%choice%"=="1" goto cai_fotxit_edit2
if "%choice%"=="2" goto kich_fotxit
if "%choice%"=="3" goto caidat

echo Lua chon khong hop le, vui long nhap lai!
pause
goto caidat


:cai_fotxit_edit2

for /f "tokens=2 delims=:" %%A in ('chcp') do set "original_cp=%%A"
echo Dang tai Foxit Editor...
curl -L -o "%downloads_folder%\Setup_edit.msi" "https://my.microsoftpersonalcontent.com/personal/f4ccaf671b1f5928/_layouts/15/download.aspx?UniqueId=609907d7-c33c-480d-9c46-67adb50e913d&Translate=false&tempauth=v1e.eyJzaXRlaWQiOiJjZTcxNjA3Yy03YjA5LTQwZjUtOTEyZi02ZjFiZDFmZjJlNzciLCJhcHBpZCI6IjAwMDAwMDAwLTAwMDAtMDAwMC0wMDAwLTAwMDA0ODE3MTBhNCIsImF1ZCI6IjAwMDAwMDAzLTAwMDAtMGZmMS1jZTAwLTAwMDAwMDAwMDAwMC9teS5taWNyb3NvZnRwZXJzb25hbGNvbnRlbnQuY29tQDkxODgwNDBkLTZjNjctNGM1Yi1iMTEyLTM2YTMwNGI2NmRhZCIsImV4cCI6IjE3NDE1MDA3NzYifQ.SuCKnoLrWIOWydFKDzJJMJa80uyJDDACBY_VzVts564J2Uc46ikvuCuc31VkQ96Ha3sIQkzV0jVPP0yrZuaZ0YKNiB12Juh108eSsVhkur4o6hQ1KNjr_ChWfBsZD4nJLec2HzNGQ4ZwWMbLd5TshvcsVJvce2CY6JbaS7L26_0cvvFq1AgCIrVlODQ3wU0hE-v4sVCVKbV-vvT9fpJ7gNyy4wTrpMmxUSZrWodIo1TW4vZnAc5-qcoIhGBc-dadOlCY2QOLDIPRYeYst0pa5th-3ia6G7WFCw6awpqdgv9gu13pc8sOzGqyP8_OSSJKQ-A-4xlR4tkbbQi8p0Z30TiNHvYivxlvvIJCAoKk5fDDYE4hmSTWW2eb_h84AifIyPeZYF-jOU37j0dp3RDSALZi7yAyS8NRFAPwyII_0y8.vWOZxz2SE1VkjuFACk6OMBLeWWLFu6QJOmAeS7zRbek&ApiVersion=2.0&AVOverride=1"

echo Mo trinh cai dat Forxit Editor...
start "" "%downloads_folder%\Setup_edit.msi"

echo File da luu trong Downloads: %downloads_folder%\Setup_edit.msi
pause
goto cai_foxit_edit


:kich_fotxit
for /f "tokens=2 delims=:" %%A in ('chcp') do set "original_cp=%%A"
echo Dang tai Foxit Editor...
start "" "http://1drv.ms/u/c/f4ccaf671b1f5928/EVRJNuuDQr9Mt3YtcpIqI7YBfcIImn2XqUkhMrOdGq66kQ?e=hrsa9D"
echo Tai file kich hoat, giai nen voi password 123, chay va bam Patch de kich hoat
pause
goto cai_foxit_edit


:cai_nitro
cls
echo ================================================================================
echo ========================= CAI VA KICH HOAT NITRO PDF ===========================
   
echo --------------------------------------------------------------------------------
echo  1. Cai dat Nitro PDF				        [Bam phim  1]
echo  2. Kich hoat Nitro PDF				      	[Bam phim  2]
echo  3. Quay lai 						[Bam phim  3]
echo --------------------------------------------------------------------------------
set /p choice=Nhap lua chon: 

if "%choice%"=="1" goto cai_nitro2
if "%choice%"=="2" goto kich_nitro
if "%choice%"=="3" goto caidat

echo Lua chon khong hop le, vui long nhap lai!
pause
goto caidat


:cai_nitro2

for /f "tokens=2 delims=:" %%A in ('chcp') do set "original_cp=%%A"
echo Dang tai Nitro PDF...
curl -L -o "%downloads_folder%\nitro_pro14_x64.msi" "https://download938.mediafire.com/7qjr2b5697hgboFCgmHswioQCNW1jeMoA_BZayDu83afZeELqE8J4uxk4yodPkVqraJ7SdnSgs0pNJMpAD7EXwVaqAub9joKeF64jhw7aFqoKQoxJnAHTFF5yh0pmUYTWEtRCb-xwsI9QtdFoapIXoOFdHPueZbO-FK_9rkfW3i7dyU/irh8oycl4umi80y/nitro_pro14_x64.msi"
echo Mo trinh cai dat Nitro PDF...
start "" "%downloads_folder%\nitro_pro14_x64.msi"

echo File da luu trong Downloads: %downloads_folder%\nitro_pro14_x64.msi
pause
goto cai_nitro



:kich_nitro
for /f "tokens=2 delims=:" %%A in ('chcp') do set "original_cp=%%A"
echo Dang tai Foxit Editor...
start "" "https://my.microsoftpersonalcontent.com/personal/f4ccaf671b1f5928/_layouts/15/download.aspx?UniqueId=f44a86d4-22dd-4277-9735-94614a5a57d0&Translate=false&tempauth=v1e.eyJzaXRlaWQiOiJjZTcxNjA3Yy03YjA5LTQwZjUtOTEyZi02ZjFiZDFmZjJlNzciLCJhcHBpZCI6IjAwMDAwMDAwLTAwMDAtMDAwMC0wMDAwLTAwMDA0ODE3MTBhNCIsImF1ZCI6IjAwMDAwMDAzLTAwMDAtMGZmMS1jZTAwLTAwMDAwMDAwMDAwMC9teS5taWNyb3NvZnRwZXJzb25hbGNvbnRlbnQuY29tQDkxODgwNDBkLTZjNjctNGM1Yi1iMTEyLTM2YTMwNGI2NmRhZCIsImV4cCI6IjE3NDE0OTk5NDgifQ.Q5Vb74KK5wmAuEdwop4dcZ5MUHcgnEl51vDwSZeUGbLQEsYbM19Wxdu-A6YM-mO8ekSykGHOpukbsduqzgZD5pLLGPU7cauB11Hbw5-on5ti6BglPQBhmQkdgsP5pWddyB_sTjcRqlJKVu4PBb5VUDue3Jc7_1iezKeCcPiL919YaOm7wQtZntU0ZCMD72ClO7ivDXMLmM23jbyQeA-R8fpkyD6DCW7H5L6H6PHvunZ1B3hDGQaBK4Aho6l1O_PYkobmLIzUNgFC9sbOrppxOSvNnWPmJUDwLPq_lKa4B7w38YW2w1XR8CUdjmbDRHcCqR0cjadE4sOURx7ePIM7BZCPBND6gyNFcrvYN6nFpiSEU9FUFPMvw45mlimtsbXIjeCbqLjCs_o8qj-5R668JKbKPHMyUbXorNfFfs1lhJQ.3b5vjhDLGidIzl6UmqP5TgrUPBTjAq1Qt7-CgSu1qeg&ApiVersion=2.0&AVOverride=1"
echo Tai file kich hoat, giai nen voi password 123, chay va bam Patch de kich hoat
pause
goto cai_foxit_edit



:cai_quaymanhinh
echo ================================================================================
echo =========================CAI DAT PHAN MEM QUAY MAN HINH=========================
   
echo --------------------------------------------------------------------------------
echo  1. Cai dat Bandicam				       	  [Bam phim  1]
echo  2. Cai dat FSCapture				      	  [Bam phim  2]
echo  3. Quay lai 					  	  [Bam phim  3]
echo --------------------------------------------------------------------------------
set /p choice=Nhap lua chon: 

if "%choice%"=="1" goto cai_bandicam
if "%choice%"=="2" goto cai_fscapture
if "%choice%"=="3" goto caidat

echo Lua chon khong hop le, vui long nhap lai!
pause
goto caidat


:cai_bandicam
set "url=https://download1322.mediafire.com/4c1hzqkhwc2gpGRjEtmAbLT-es6U7avkwtwToa8xAktSq8VjOgF1oM1sbW1VUtt-v-j3RGZBOEiWKGVtGP5oBBCahqPr5EqSIAhO_hQyVBhWvwXmGRo0Yeo2yqbOTtxdHaV8GmdwIp4ta1OQyAteyJsuvf8Gr12SHLThYqMc8ezQGsw/8vge8ovxscgeor6/Bandicam.zip"
set "zipFile=%TEMP%\bandicam.zip"
set "extractFolder=%ProgramFiles%\Bandicam"


curl -L -o "%zipFile%" "%url%"


if exist "%zipFile%" (
    echo Giai nen vao %extractFolder%
    powershell -Command "Expand-Archive -Path '%zipFile%' -DestinationPath '%extractFolder%' -Force"


    set "shortcut=%Public%\Desktop\Bandicam.lnk"
    set "target=%extractFolder%\Bandicam.exe"

    powershell -Command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%shortcut%'); $s.TargetPath='%target%'; $s.Save()"

 
    del "%zipFile%"

  
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v link /t REG_BINARY /d 00000000 /f
    taskkill /f /im explorer.exe & start explorer.exe

    echo Da hoan thanh.
) else (
    echo Tai file that bai!
)

pause
goto cai_quaymanhinh

:cai_formatfactory
set "url=https://download1322.mediafire.com/57qo3z8q01ygku46neUWmSZS-nKip6OtTQyhxOYaOaS8qqwM0HRy8XbamlxWYieXEOf_TMqsp6o_rs7aqw_xcXnJaVQl-3tvkUv3cmUfvOL2v_bew5dKJWsOLrZOqdUKpJuM9RI5qCGGMYtezNwGZJ-ND6duxreUWEkq3tXGlAGzeKw/m8qzirvxtw66j2r/FormatFactory.exe"


set "fileName=FormatFactory.exe"
set "savePath=%ProgramFiles%\%fileName%"


echo Dang tai file FormatFactory.exe...
curl -o "%savePath%" "%url%"
if %errorlevel% neq 0 (
    echo Loi khi tai file. Kiem tra lai URL.
    exit /b
)

set "shortcutPath=%UserProfile%\Desktop\FormatFactory.lnk"

echo Set WshShell = WScript.CreateObject("WScript.Shell") > "%temp%\create_shortcut.vbs"
echo Set shortcut = WshShell.CreateShortcut("%shortcutPath%") >> "%temp%\create_shortcut.vbs"
echo shortcut.TargetPath = "%savePath%" >> "%temp%\create_shortcut.vbs"
echo shortcut.Save >> "%temp%\create_shortcut.vbs"
cscript "%temp%\create_shortcut.vbs"
del "%temp%\create_shortcut.vbs"

echo Hoan thanh!
pauser
goto caidat


:capnhat
set "URL=https://raw.githubusercontent.com/minhhai87/tienichcaiwindao/refs/heads/main/Tu%20dong%20cai%20dat.bat"

:: Đường dẫn lưu file trên máy tính (cùng thư mục với script đang chạy)
set "FILE=Tu dong cai dat.bat"

:: Tải file mới từ GitHub
echo Dang tai file moi tu GitHub...
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%URL%', '%FILE%')"

:: Kiểm tra nếu tải thành công thì chạy lại file
if exist "%FILE%" (
    echo Da tai xong! Dang chay lai file moi...
    start "" "%FILE%"
    exit
) else (
    echo Loi: Khong tai duoc file tu GitHub!
    pause
)