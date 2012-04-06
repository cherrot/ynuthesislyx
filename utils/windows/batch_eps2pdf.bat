@REM Convert all eps files to pdf
@echo off
for %%i in (*.eps) do (
  echo %%i
  epstopdf %%~ni.eps
)
pause
