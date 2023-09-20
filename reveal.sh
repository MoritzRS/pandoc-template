mkdir -p dist
pandoc ./presentation/document.md \
    --from markdown \
    --to revealjs \
    --filter pandoc-crossref \
    --embed-resources \
    --standalone \
    --variable theme=white \
    --resource-path ./presentation \
    --metadata-file ./presentation/settings.yaml \
    --citeproc \
    --bibliography ./presentation/sources.bib \
    --csl ./presentation/.template/citation.csl \
    --output dist/reveal.html