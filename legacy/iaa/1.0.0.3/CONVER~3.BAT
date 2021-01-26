@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=C:\Users\Zwemer\Documents\Adriaan\CWPrograms\iaa\1.0.0.4\IaA-1.0.0.4.exe
REM BFCPEICON=C:\Users\Zwemer\Documents\Adriaan\ico.ico
REM BFCPEICONINDEX=-1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=1.0.0.4
REM BFCPEVERPRODUCT=Image and Archive
REM BFCPEVERDESC=Combine images and archives together
REM BFCPEVERCOMPANY=Bunnyprojects, Bunnyproductions
REM BFCPEVERCOPYRIGHT=©Adriaan Zwemer
REM BFCPEOPTIONEND
@ECHO ON

@Echo off
mode con: cols=20 lines=3
setlocal enabledelayedexpansion
color f0

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
Echo Save File

:: chooser.bat
:: launches a save file dialog and outputs choice to the console

:: Does powershell.exe exist within %PATH%?
for %%I in (powershell.exe) do if "%%~$PATH:I" neq "" (
    set chooser=powershell "Add-Type -AssemblyName System.windows.forms|Out-Null;$f=New-Object System.Windows.Forms.SaveFileDialog;$f.InitialDirectory='%cd%';$f.Filter='All Files (*.*)|*.*';$f.showHelp=$true;$f.ShowDialog()|Out-Null;$f.FileName"
) else (
rem :: If not, compose and link C# application to open file browser dialog
    set chooser=%temp%\chooser.exe
    >"%temp%\c.cs" echo using System;using System.Windows.Forms;
    >>"%temp%\c.cs" echo class dummy{
    >>"%temp%\c.cs" echo public static void Main^(^){
    >>"%temp%\c.cs" echo SaveFileDialog f=new SaveFileDialog^(^);
    >>"%temp%\c.cs" echo f.InitialDirectory=Environment.CurrentDirectory;
    >>"%temp%\c.cs" echo f.Filter="All Files (*.*)|*.*";
    >>"%temp%\c.cs" echo f.ShowHelp=true;
    >>"%temp%\c.cs" echo f.ShowDialog^(^);
    >>"%temp%\c.cs" echo Console.Write^(f.FileName^);}}
    for /f "delims=" %%I in ('dir /b /s "%windir%\microsoft.net\*csc.exe"') do (
        if not exist "!chooser!" "%%I" /nologo /out:"!chooser!" "%temp%\c.cs" 2>NUL
    )
    del "%temp%\c.cs"
    if not exist "!chooser!" (
        echo Error: Please install .NET 2.0 or newer, or install PowerShell.
        goto :EOF
    )
)

:: capture choice to a variable
for /f "delims=" %%I in ('%chooser%') do set "filename=%%I"

echo You chose %filename%


:: Clean up the mess
del "%temp%\chooser.exe" 2>NUL
:: goto :EOF

copy /b %Img% + %File% %Filename%.jpg
CLS
set /p tot=a for again and c to close 
goto %tot%
:c
:C