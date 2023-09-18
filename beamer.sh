mkdir -p dist
pandoc src/document.md \
    --from markdown \
    --to beamer \
    --filter pandoc-crossref \
    --standalone \
    --include-in-header lib/beamer/theme.tex \
    --resource-path src:lib/beamer/theme \
    --metadata-file src/meta.yaml \
    --citeproc \
    --bibliography src/bibliography.bib \
    --csl lib/thesis/citation.csl \
    --output dist/beamer.pdf