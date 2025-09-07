@echo off
echo Compilando con latexmk (metodo simplificado)...
echo.

REM Definir la ruta de MiKTeX
set MIKTEX_PATH=C:\Users\%USERNAME%\AppData\Local\Programs\MiKTeX\miktex\bin\x64

REM Verificar que MiKTeX existe
if not exist "%MIKTEX_PATH%\latexmk.exe" (
    echo ERROR: No se encontro latexmk en la ruta esperada.
    echo Usando el metodo tradicional...
    call compilar.bat
    exit /b
)

echo Usando latexmk para compilacion automatica...
"%MIKTEX_PATH%\latexmk.exe" -pdf -quiet main.tex

echo.
if exist main.pdf (
    echo ¡Compilacion completada con exito!
    echo El archivo PDF se encuentra en: main.pdf
    echo Abriendo PDF...
    start main.pdf
) else (
    echo ERROR: No se pudo generar el archivo PDF.
    echo Intentando con el metodo tradicional...
    call compilar.bat
)

pause
