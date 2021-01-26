@Echo off
:1
set /p File=Archive(File path): 
set /p Img=Image(File path):
set /p Output=Output location(File path): 
set /p Output2=Output Name: 
copy /b %Img% + %File% %Output%\%Output2%.jpg
set /p tot=1 for again and 2 to close 
goto %tot%
:2