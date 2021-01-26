@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=
REM BFCPEICON=
REM BFCPEICONINDEX=0
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=0
REM BFCPEVERVERSION=1.0.0.0
REM BFCPEVERPRODUCT=Product Name
REM BFCPEVERDESC=Product Description
REM BFCPEVERCOMPANY=Your Company
REM BFCPEVERCOPYRIGHT=Copyright Info
REM BFCPEOPTIONEND
@ECHO ON

@Echo off
:a
:A
Title IAA 1.0.0.3
cls
Echo Select Archive
rem BrowseFiles
set File=%result%
set result=0
cls
echo Select Image
rem BrowseFiles
set Img=%result%
Set result=0
cls
echo Select Output Location
rem BrowseFolder
set Output=%result%
set result=0
set /p Output2=Output Name: 
copy /b %Img% + %File% %Output%\%Output2%.jpg
CLS
set /p tot=a for again and c to close 
goto %tot%
:c
:C