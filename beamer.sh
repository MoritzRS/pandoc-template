mkdir -p dist
pandoc ./beamer/document.md \
    --from markdown \
    --to beamer \
    --filter pandoc-crossref \
    --standalone \
    --include-in-header ./beamer/.template/theme.tex \
    --resource-path ./beamer:./beamer/.template/theme \
    --metadata-file ./beamer/settings.yaml \
    --citeproc \
    --bibliography ./beamer/sources.bib \
    --csl ./beamer/.template/citation.csl \
    --output dist/beamer.pdf