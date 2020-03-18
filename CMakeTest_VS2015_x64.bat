@echo off

set SOURCE_PATH=%~dp0
set TARGET=CMakeLearming
set VS_VER=VS2015
set PLATFORM=x64

set BUILD_PATH=%SOURCE_PATH%%TARGET%_%VS_VER%\%PLATFORM%

@echo on

cd %~dp0
if not exist %BUILD_PATH% mkdir %BUILD_PATH%
cd %BUILD_PATH%
cmake -G "Visual Studio 14 2015 Win64" -D GGP_USE_CONAN=ON %SOURCE_PATH%
