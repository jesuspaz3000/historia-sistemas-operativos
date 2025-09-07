@echo off
echo Compilando documento LaTeX...
echo.

REM Definir la ruta de MiKTeX
set MIKTEX_PATH=C:\Users\%USERNAME%\AppData\Local\Programs\MiKTeX\miktex\bin\x64

REM Verificar que MiKTeX existe
if not exist "%MIKTEX_PATH%\pdflatex.exe" (
    echo ERROR: No se encontro MiKTeX en la ruta esperada.
    echo Ruta buscada: %MIKTEX_PATH%
    echo.
    echo Soluciones:
    echo 1. Abrir MiKTeX Console y completar la instalacion
    echo 2. Reinstalar MiKTeX desde: https://miktex.org/
    pause
    exit /b 1
)

echo [1/4] Primera compilacion...
"%MIKTEX_PATH%\pdflatex.exe" main.tex

echo [2/4] Procesando bibliografia...
"%MIKTEX_PATH%\bibtex.exe" main

echo [3/4] Segunda compilacion...
"%MIKTEX_PATH%\pdflatex.exe" main.tex

echo [4/4] Compilacion final...
"%MIKTEX_PATH%\pdflatex.exe" main.tex

echo.
echo ¡Compilacion completada!
if exist main.pdf (
    echo El archivo PDF se encuentra en: main.pdf
    echo Abriendo PDF...
    start main.pdf
) else (
    echo ERROR: No se pudo generar el archivo PDF.
    echo Revisa los mensajes de error arriba.
)

pause
