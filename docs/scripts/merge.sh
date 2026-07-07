#!/bin/bash
# scripts/merge.sh
set -e

echo "Starting document compilation..."

# Clean old outputs if any
rm -f full_document.md

# Collect all markdown files in the root folder, excluding README.md and full_document.md
shopt -s nullglob
files=()
for f in *.md; do
  if [[ "$f" != "README.md" && "$f" != "full_document.md" ]]; then
    files+=("$f")
  fi
done

# Sort alphabetically
IFS=$'\n' sorted_files=($(sort <<<"${files[*]}"))
unset IFS

if [ ${#sorted_files[@]} -eq 0 ]; then
  echo "Error: No markdown files found to merge."
  exit 1
fi

# Concatenate all sorted markdown files into full_document.md
for file in "${sorted_files[@]}"; do
  echo "Merging: $file"
  cat "$file" >> full_document.md
  # Append a single newline to prevent merging lines without creating extra empty paragraphs
  echo "" >> full_document.md
done

echo "Successfully merged files into full_document.md"

echo "Generating separate changelog.md..."
# Create the separate changelog.md
{
  echo -e "# Registro de Cambios (Autogenerado)\n"
  echo -e "Este reporte fue generado automáticamente. A continuación se detallan los últimos cambios registrados en el repositorio:\n"
  echo -e "## Información de Compilación\n"
  echo -e "- **Fecha:** $(date -u '+%Y-%m-%d %H:%M:%S UTC')"
  echo -e "- **Commit:** \`$(git rev-parse --short HEAD 2>/dev/null || echo "N/A")\`"
  echo -e "- **Rama:** \`$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "N/A")\`\n"
  
  echo -e "## Últimos Commits\n"
  git log -n 5 --pretty=format:"- **%h** - *%an* (%ad): %s" --date=short 2>/dev/null || echo "No git history found"
  echo -e "\n\n"
  
  echo -e "## Archivos Modificados en el Último Commit\n"
  git diff-tree --no-commit-id --name-only -r HEAD 2>/dev/null || echo "No modified files found"
  echo -e "\n"
} > changelog.md

echo "Successfully generated changelog.md"
