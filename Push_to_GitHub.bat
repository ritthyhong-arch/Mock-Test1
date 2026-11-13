@echo off
title Push Mock Test 1 System to GitHub (Online System)
chcp 65001 > nul
cd /d "%~dp0"
cls
echo ========================================================
echo   Pushing Mock Test 1 System to GitHub Pages
echo   ប្រព័ន្ធគ្រប់គ្រងការប្រឡងសាកល្បងលើកទី១
echo ========================================================
echo.
set /p REPO_URL="សូមបញ្ចូល URL Repository លើ GitHub របស់អ្នក (ចុច Enter ដើម្បីយក https://github.com/ritthyhong-arch/Mock-Test1.git): "
if "%REPO_URL%"=="" set REPO_URL=https://github.com/ritthyhong-arch/Mock-Test1.git

echo.
echo [Repository កំពុងប្រើ]: %REPO_URL%
echo.
git remote remove origin > nul 2>&1
git remote add origin %REPO_URL%
git config user.name "ritthyhong-arch"
git config user.email "ritthyhong-arch@users.noreply.github.com"
git add .
git commit -m "Update Mock Test 1 Online System" > nul 2>&1
git branch -M main
echo កំពុង Push ឡើងទៅកាន់ GitHub...
git push -u origin main
echo.
if %errorlevel% equ 0 (
    echo ========================================================
    echo   [SUCCESS / ជោគជ័យ]
    echo   បានបញ្ជូនឡើងទៅ GitHub Pages រួចរាល់ដោយជោគជ័យ!
    echo ========================================================
) else (
    echo ========================================================
    echo   [ចំណាំ / NOTICE]
    echo   ប្រសិនបើមិនទាន់បានបង្កើត Repository នៅលើ GitHub សូមបង្កើត
    echo   Repository ថ្មីមួយសិន (ឧ. ឈ្មោះ Mock-Test1)។
    echo ========================================================
)
echo.
pause
