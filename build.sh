#!/usr/bin/env bash
set -euo pipefail
mkdir -p public
node -e "const fs=require('fs'),z=require('zlib');const b=Buffer.from(fs.readFileSync('site.tar.br.base64','utf8').trim(),'base64');fs.writeFileSync('/tmp/animalsfans.tar',z.brotliDecompressSync(b))"
tar -xf /tmp/animalsfans.tar -C public
printf 'ANIMALSFANS: frontend extraído para public/\n'
