@Echo off
:1
Title IAA 1.0.0.3
cls
set /p File=Archive(File path): 
set /p Img=Image(File path):
set /p Output=Output location(File path): 
set /p Output2=Output Name: 
copy /b %Img% + %File% %Output%\%Output2%.jpg
CLS
set /p tot=1 for again and 2 to close 
goto %tot%
:2