@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=
REM BFCPEICON=
REM BFCPEICONINDEX=-1
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
:1
Title IAA 1.0.0.3
cls
set /p Arch=Archive(File path): 
set /p Img=Image(File path):
set /p Output=Output location(File path): 
set /p Output2=Output Name: 
copy /b %Img% + %Arch% %Output%\%Output2%.jpg
CLS
set /p tot=1 for again and 2 to close 
goto %tot%
:2