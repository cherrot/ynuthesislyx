@REM Convert all eps files to pdf, and crop them
@echo off
for %%i in (*.eps) do (
  echo %%i
  epstopdf %%~ni.eps
  ren %%~ni.pdf %%~ni-tmp.pdf
  pdfcrop %%~ni-tmp.pdf %%~ni.pdf
  del %%~ni-tmp.pdf
)
pause
