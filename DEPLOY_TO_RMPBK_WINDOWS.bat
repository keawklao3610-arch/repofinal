@echo off
setlocal
cd /d "%~dp0"
echo OR Safety Intelligence V2.3.1 - EXISTING rmpbk site
echo This script will NOT create a new Netlify site.
where node >nul 2>nul
if errorlevel 1 (echo Node.js LTS missing. & pause & exit /b 1)
call npm test
if errorlevel 1 (echo Tests failed. & pause & exit /b 1)
call npm run build
if errorlevel 1 (echo Build failed. & pause & exit /b 1)
call npx --yes netlify-cli login
if errorlevel 1 (echo Netlify login failed. & pause & exit /b 1)
echo.
echo Choose the EXISTING site rmpbk when asked to link.
call npx --yes netlify-cli link
if errorlevel 1 (echo Netlify link failed. & pause & exit /b 1)
echo.
echo IMPORTANT: Confirm linked site is rmpbk in Netlify before continuing.
pause
call npx --yes netlify-cli deploy --prod
if errorlevel 1 (echo Deploy failed. & pause & exit /b 1)
echo Deployed. GitHub continuous deployment may overwrite this version on next push.
echo Remember to replace repository files on main with this version to keep deployments consistent.
pause
