@echo off
setlocal

call mvn --batch-mode clean verify
if errorlevel 1 exit /b %ERRORLEVEL%

if not exist "target\apks-lab1-variant11-1.0-SNAPSHOT.jar" (
    echo Expected runnable JAR was not produced: target\apks-lab1-variant11-1.0-SNAPSHOT.jar 1>&2
    exit /b 1
)
