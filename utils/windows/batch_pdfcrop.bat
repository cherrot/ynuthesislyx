@REM Crop pdf files
@echo off
for %%i in (*.pdf) do (
  ren %%~ni.pdf %%~ni-orig.pdf
  pdfcrop %%~ni-orig.pdf %%~ni.pdf
)
pause
