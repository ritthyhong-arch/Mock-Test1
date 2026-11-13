@echo off
title Push Examination System to GitHub (Online System)
chcp 65001 > nul
cd /d "%~dp0"
cls
echo ========================================================
echo   Pushing Examination System to GitHub Pages
echo   Repository: https://github.com/ritthyhong-arch/Examination-Preparation-.git
echo ========================================================
echo.
git config user.name "ritthyhong-arch"
git config user.email "ritthyhong-arch@users.noreply.github.com"
git add .
git commit -m "Update Examination Management System Online" > nul 2>&1
git branch -M main
echo កំពុង Push ឡើងទៅកាន់ GitHub...
git push -u origin main
echo.
if %errorlevel% equ 0 (
    echo ========================================================
    echo   [SUCCESS / ជោគជ័យ]
    echo   បានបញ្ជូនឡើងទៅ GitHub Pages រួចរាល់ដោយជោគជ័យ!
    echo.
    echo   តំណភ្ជាប់ Online សម្រាប់ចែកជូនលោកគ្រូ-អ្នកគ្រូវាយបញ្ចូលពិន្ទុ៖
    echo   https://ritthyhong-arch.github.io/Examination-Preparation-/?role=user
    echo ========================================================
) else (
    echo ========================================================
    echo   [ចំណាំ / NOTICE]
    echo   ប្រសិនបើ Git Push ទាមទារ Login សូមបំពេញ Credentials/Token របស់អ្នក។
    echo ========================================================
)
echo.
pause
