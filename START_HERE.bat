@echo off
title AI Job Hunt Engine - Launcher
color 0A
cls
echo.
echo  =====================================================
echo   AI JOB HUNT ENGINE v8 - Complete Career Platform
echo  =====================================================
echo.
echo  Checking available methods to open the tool...
echo.

:: ── METHOD 1: Python (best) ──
python --version >nul 2>&1
if %errorlevel%==0 (
    echo  [METHOD 1] Python found! Starting server...
    echo  Opening: http://localhost:8080/index.html
    timeout /t 2 >nul
    start "" "http://localhost:8080/index.html"
    python -m http.server 8080
    goto end
)

py --version >nul 2>&1
if %errorlevel%==0 (
    echo  [METHOD 1] Python found! Starting server...
    timeout /t 2 >nul
    start "" "http://localhost:8080/index.html"
    py -m http.server 8080
    goto end
)

python3 --version >nul 2>&1
if %errorlevel%==0 (
    echo  [METHOD 1] Python3 found! Starting server...
    timeout /t 2 >nul
    start "" "http://localhost:8080/index.html"
    python3 -m http.server 8080
    goto end
)

:: ── METHOD 2: Node.js (if installed) ──
node --version >nul 2>&1
if %errorlevel%==0 (
    echo  [METHOD 2] Node.js found! Starting server...
    timeout /t 2 >nul
    start "" "http://localhost:3000/index.html"
    npx serve . -p 3000 -s
    goto end
)

:: ── METHOD 3: PHP (often pre-installed) ──
php --version >nul 2>&1
if %errorlevel%==0 (
    echo  [METHOD 3] PHP found! Starting server...
    timeout /t 2 >nul
    start "" "http://localhost:8080/index.html"
    php -S localhost:8080
    goto end
)

:: ── METHOD 4: Open in VS Code ──
code --version >nul 2>&1
if %errorlevel%==0 (
    echo  [METHOD 4] VS Code found!
    echo  Opening in VS Code — then click Go Live at bottom right.
    code index.html
    echo.
    echo  In VS Code: Press Ctrl+Shift+X, install "Live Server", then click "Go Live"
    pause
    goto end
)

:: ── NOTHING FOUND ──
cls
echo.
echo  =====================================================
echo   SETUP REQUIRED — Choose one option below:
echo  =====================================================
echo.
echo  OPTION 1 (Easiest): Install Python
echo  ─────────────────────────────────
echo  1. Open browser, go to: python.org/downloads
echo  2. Click Download Python 3.x (big yellow button)
echo  3. Run the installer
echo  4. IMPORTANT: Check the box "Add Python to PATH"  ← very important!
echo  5. Click Install Now
echo  6. Close this window and double-click START_HERE.bat again
echo.
echo  OPTION 2: Use VS Code Live Server
echo  ──────────────────────────────────
echo  1. Install VS Code from: code.visualstudio.com
echo  2. Open VS Code
echo  3. Press Ctrl+O → select index.html
echo  4. Press Ctrl+Shift+X → search "Live Server" → Install
echo  5. Click "Go Live" at bottom right of VS Code
echo.
echo  OPTION 3: Use Node.js
echo  ──────────────────────
echo  1. Install from: nodejs.org
echo  2. Open Command Prompt in this folder (Shift+Right-click → Open PowerShell)
echo  3. Type: npx serve .
echo  4. Open: http://localhost:3000
echo.
pause
:end
