@echo off
setlocal

rem Redirect away from %USER%\.nuget\packages to avoid picking up a stale package.
set NUGET_PACKAGES=c:\packages-cache
set TFM=netcoreapp2.1
dotnet publish -c Release -r win-x64 -f %TFM% || exit /b 1

%~dp0\bin\Release\%TFM%\win-x64\publish\Microsoft.AspNetCore.Mvc.Performance.exe --config profile 1

