# Script para agregar MiKTeX al PATH del sistema
# Ejecutar como administrador

$miktexPath = "C:\Users\$env:USERNAME\AppData\Local\Programs\MiKTeX\miktex\bin\x64"

# Verificar que la ruta existe
if (Test-Path $miktexPath) {
    Write-Host "✅ MiKTeX encontrado en: $miktexPath" -ForegroundColor Green
    
    # Obtener el PATH actual del usuario
    $currentPath = [Environment]::GetEnvironmentVariable("PATH", "User")
    
    # Verificar si ya está en el PATH
    if ($currentPath -split ';' -contains $miktexPath) {
        Write-Host "ℹ️  MiKTeX ya está en el PATH del usuario" -ForegroundColor Yellow
    } else {
        # Agregar al PATH del usuario
        $newPath = $currentPath + ";" + $miktexPath
        [Environment]::SetEnvironmentVariable("PATH", $newPath, "User")
        Write-Host "✅ MiKTeX agregado al PATH del usuario" -ForegroundColor Green
        Write-Host "🔄 Reinicia VS Code o PowerShell para usar los comandos directamente" -ForegroundColor Cyan
    }
    
    # Mostrar comandos disponibles
    Write-Host "`n📋 Comandos LaTeX disponibles:" -ForegroundColor Magenta
    Write-Host "   pdflatex main.tex    - Compilar documento"
    Write-Host "   bibtex main          - Procesar bibliografía"
    Write-Host "   latexmk -pdf main    - Compilación automática"
    
} else {
    Write-Host "❌ No se encontró MiKTeX en la ruta esperada" -ForegroundColor Red
    Write-Host "Ruta buscada: $miktexPath" -ForegroundColor Yellow
}

Write-Host "`nPresiona cualquier tecla para continuar..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
