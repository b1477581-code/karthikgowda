@echo off
setlocal
cd /d "%~dp0"
where javac >nul 2>nul
if errorlevel 1 (
  echo Java 17 or newer JDK is required. Install a JDK, then run this file again.
  pause
  exit /b 1
)
if not exist build mkdir build
javac --add-modules jdk.httpserver -encoding UTF-8 -d build src\Main.java
if errorlevel 1 (
  echo Build failed. Check that Java 17 or newer is installed.
  pause
  exit /b 1
)
echo Starting Meghana Events and Management at http://localhost:8080
start "Meghana Events website" http://localhost:8080
java --add-modules jdk.httpserver -cp build Main
