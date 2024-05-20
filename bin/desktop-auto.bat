@echo off

set RSTUDIO_WHICH_R=C:\R\R-3.6.3\bin\R.exe
set PYTHONPATH=%USERPROFILE%\rstudio-ide-automation\rstudio_server_pro
set CHROMEDRIVER_PATH=%USERPROFILE%/bin/chromedriver
set ELECTRON_PATH="C:\Program Files\RStudio\rstudio.exe"
set RS_NO_SPLASH=1

cd %USERPROFILE%\rstudio-ide-automation
make desktop-test PYTESTOPTS="-m 'desktop and wip'"