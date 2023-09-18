mkdir -p dist
pandoc src/document.md lib/bibliography.md \
    --from markdown \
    --to pdf \
    --filter pandoc-crossref \
    --standalone \
    --template lib/template.tex \
    --resource-path src \
    --metadata-file src/meta.yaml \
    --citeproc \
    --bibliography src/bibliography.bib \
    --csl lib/citation.csl \
    --toc \
    --output dist/thesis.pdf