@echo off

cd %USERPROFILE%\rstudio-ide-automation
make desktop-test PYTESTOPTS="-m 'desktop and wip'"
