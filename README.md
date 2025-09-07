# Proyecto LaTeX: Historia de los Sistemas Operativos

Este proyecto contiene un documento LaTeX sobre la historia y evolución de los sistemas operativos.

## Estructura del Proyecto

```
historia-so/
├── main.tex          # Archivo principal del documento
├── referencias.bib   # Referencias bibliográficas en formato BibTeX
├── images/          # Carpeta para imágenes y figuras
├── .gitignore       # Archivos a ignorar en control de versiones
└── README.md        # Este archivo
```

## Requisitos

Para compilar este documento necesitas:

- **MiKTeX** (Windows) o **TeX Live** (multiplataforma)
- Un editor de LaTeX como:
  - TeXstudio (recomendado)
  - Overleaf (online)
  - VS Code con extensión LaTeX Workshop

## Cómo Compilar

### Método 1: Desde el editor LaTeX
1. Abre `main.tex` en tu editor de LaTeX
2. Presiona F5 o el botón de compilar
3. El editor generará automáticamente el PDF

### Método 2: Desde la línea de comandos

```bash
# Compilación básica
pdflatex main.tex

# Compilación completa con bibliografía
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

### Método 3: Usando latexmk (recomendado)
```bash
latexmk -pdf main.tex
```

## Estructura del Documento

El documento incluye:

1. **Portada** con título, autor y fecha
2. **Tabla de contenidos** automática
3. **Secciones principales**:
   - Introducción
   - Los Primeros Sistemas (Mainframes, Sistemas por Lotes)
   - Era de los Minicomputadores (UNIX)
   - Sistemas Operativos Personales (DOS, Windows, Mac OS)
   - Sistemas Modernos (Linux, Móviles)
   - Conclusiones
4. **Bibliografía** automática desde `referencias.bib`

## Paquetes Incluidos

- **babel**: Soporte para español
- **geometry**: Configuración de márgenes
- **graphicx**: Inserción de imágenes
- **hyperref**: Enlaces y referencias clickeables
- **listings**: Inserción de código fuente
- **amsmath**: Ecuaciones matemáticas
- **booktabs**: Tablas profesionales

## Agregar Contenido

### Imágenes
Coloca tus imágenes en la carpeta `images/` y úsalas así:

```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=0.7\textwidth]{nombre_imagen}
    \caption{Descripción de la imagen}
    \label{fig:etiqueta}
\end{figure}
```

### Referencias
Agrega nuevas referencias al archivo `referencias.bib` y cítalas con:

```latex
\cite{clave_referencia}
```

### Código
Inserta código usando:

```latex
\begin{lstlisting}[language=C, caption=Ejemplo de código]
#include <stdio.h>
int main() {
    printf("Hello World!");
    return 0;
}
\end{lstlisting}
```

## Consejos

1. **Compila frecuentemente** para detectar errores temprano
2. **Usa etiquetas** para referencias cruzadas: `\label{}` y `\ref{}`
3. **Backup regular** de tu trabajo
4. **Usa comentarios** en LaTeX: `% esto es un comentario`

## Solución de Problemas

- **Error de compilación**: Revisa el archivo `.log` para detalles
- **Referencias no aparecen**: Ejecuta `bibtex` seguido de dos compilaciones más
- **Imágenes no se muestran**: Verifica que estén en la carpeta `images/`

¡Disfruta escribiendo en LaTeX! 📄✨
