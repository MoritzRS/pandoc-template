mkdir -p dist
pandoc ./presentation/document.md \
    --from markdown \
    --to beamer \
    --filter pandoc-crossref \
    --standalone \
    --include-in-header ./presentation/.template/theme.tex \
    --resource-path ./presentation:./presentation/.template/theme \
    --metadata-file ./presentation/settings.yaml \
    --citeproc \
    --bibliography ./presentation/sources.bib \
    --csl ./presentation/.template/citation.csl \
    --output dist/beamer.pdf