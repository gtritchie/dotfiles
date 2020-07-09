@echo off
echo About to delete all per-user RStudio state and settings, proceed with caution!
echo (Does not delete Project-specific state in .Rproj.user or global machine state)
set /p=Press [enter] to continue or Ctrl+C

if EXIST "%localappdata%\RStudio-Desktop\" (
    rd /q /s "%localappdata%\RStudio-Desktop"
)
if EXIST "%localappdata%\RStudio\" (
    rd /q /s "%localappdata%\RStudio"
)
if EXIST "%appdata%\RStudio\" (
    rd /q /s "%appdata%\RStudio"
)

for /f "tokens=*" %%i in ('powershell /command "[System.Environment]::GetFolderPath([Environment+SpecialFolder]::MyDocuments)"') do set MyDocsDir=%%i
if EXIST "%MyDocsDir%\.RData" (
    del "%MyDocsDir%\.RData"
)
if EXIST "%MyDocsDir%\.Rhistory" (
    del "%MyDocsDir%\.Rhistory"
)
if EXIST "%MyDocsDir%\.Renviron" (
    echo Note: "%MyDocsDir%\.Renviron" found, not deleting
)
echo Done cleaning RStudio settings and state
