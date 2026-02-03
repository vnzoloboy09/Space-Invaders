@echo off

set ROOT=%~dp0

if not exist "%ROOT%\vendor\vcpkg\vcpkg.exe" (
    echo Bootstrapping vcpkg...
    cd /d "%ROOT%\vendor\vcpkg"
    call bootstrap-vcpkg.bat
    cd /d "%ROOT%"
)

if not exist "%ROOT%\build\CMakeCache.txt" (
    echo Configuring project with preset vcpkg...
    cmake --preset release
)

echo Building project...
cmake --build build\release

echo.
echo === Build finished successfully ===
cd /d "%ROOT%\build\release"
main.exe
