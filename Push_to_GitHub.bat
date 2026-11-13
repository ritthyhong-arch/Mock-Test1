@echo off
title Push Mock Test 1 System to GitHub (Online System)
chcp 65001 > nul
cd /d "%~dp0"
cls
echo ========================================================
echo   Pushing Mock Test 1 System to GitHub Pages
echo   Repository: https://github.com/ritthyhong-arch/Mock-Test1.git
echo ========================================================
echo.
git config user.name "ritthyhong-arch"
git config user.email "ritthyhong-arch@users.noreply.github.com"
git remote remove origin > nul 2>&1
git remote add origin https://github.com/ritthyhong-arch/Mock-Test1.git
git add .
git commit -m "Update Mock Test 1 Online System" > nul 2>&1
git branch -M main
echo កំពុង Push ឡើងទៅកាន់ GitHub (Mock-Test1)...
git push -u origin main
echo.
if %errorlevel% equ 0 (
    echo ========================================================
    echo   [SUCCESS / ជោគជ័យ]
    echo   បានបញ្ជូនកូដឡើងទៅ GitHub (Mock-Test1) រួចរាល់ដោយជោគជ័យ!
    echo.
    echo   ឥឡូវនេះសូមត្រឡប់ទៅកាន់ Browser (ទំព័រ GitHub Settings) 
    echo   ហើយ Refresh (F5) នោះអ្នកនឹងឃើញពាក្យ 'main' នៅក្នុង Branch!
    echo ========================================================
) else (
    echo ========================================================
    echo   [ចំណាំ / NOTICE]
    echo   ប្រសិនបើ Git Push ទាមទារ Login សូមបំពេញ Username/Token របស់អ្នក។
    echo ========================================================
)
echo.
pause
