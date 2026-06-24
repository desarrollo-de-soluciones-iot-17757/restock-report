// scripts/generate-toc.js
const fs = require('fs');
const toc = require('markdown-toc');

const filePath = 'full_document.md';
if (!fs.existsSync(filePath)) {
  console.error(`Error: File ${filePath} not found.`);
  process.exit(1);
}

let content = fs.readFileSync(filePath, 'utf8');

// Regex to find "Tabla de contenidos" heading (case-insensitive, level 1-6)
const tocHeadingRegex = /^#{1,6}\s+Tabla\s+de\s+contenidos\s*\r?$/mi;
const match = content.match(tocHeadingRegex);

if (!match) {
  console.error("Error: No se encontró un título que coincida con 'Tabla de contenidos' en el documento.");
  process.exit(1);
}

console.log(`Found TOC heading match: "${match[0]}"`);

const headingEndIndex = match.index + match[0].length;

// Find the next heading after "Tabla de contenidos" to strip out the old hardcoded TOC
const restContent = content.substring(headingEndIndex);
const nextHeadingRegex = /^#{1,6}\s+\w+/m;
const nextHeadingMatch = restContent.match(nextHeadingRegex);

let oldTocEndIndex = content.length;
if (nextHeadingMatch) {
  oldTocEndIndex = headingEndIndex + nextHeadingMatch.index;
}

const before = content.substring(0, headingEndIndex);
const after = content.substring(oldTocEndIndex);

console.log('Generating dynamic Table of Contents...');
// Limit depth to 3 levels and exclude metadata headers that shouldn't appear in the index
const tocOptions = {
  maxdepth: 3,
  filter: (str, ele) => {
    const text = ele.content.toLowerCase();
    const ignoreList = ['contenido', 'tabla de contenidos', 'registro de versiones', 'student outcome'];
    return !ignoreList.some(ignore => text.includes(ignore));
  }
};

const generatedToc = toc(content, tocOptions).content;

// Reconstruct file with the generated TOC directly below the heading
const finalContent = before + '\n\n' + generatedToc + '\n\n' + after;

fs.writeFileSync(filePath, finalContent, 'utf8');
console.log('TOC successfully injected into full_document.md.');
