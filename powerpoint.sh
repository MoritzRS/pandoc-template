mkdir -p dist
pandoc ./presentation/document.md \
    --from markdown \
    --to pptx \
    --filter pandoc-crossref \
    --standalone \
    --resource-path ./presentation \
    --metadata-file ./presentation/settings.yaml \
    --citeproc \
    --bibliography ./presentation/sources.bib \
    --csl ./presentation/.template/citation.csl \
    --output dist/powerpoint.pptx