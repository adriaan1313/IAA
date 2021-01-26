
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
rem BrowseFiles
set Output=%result%
set result=0
set /p Output2=Output Name: 
copy /b %Img% + %File% %Output%\%Output2%.jpg
CLS
set /p tot=a for again and c to close 
goto %tot%
:c
:C