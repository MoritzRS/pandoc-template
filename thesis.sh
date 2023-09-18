mkdir -p dist
pandoc src/document.md lib/thesis/bibliography.md \
    --from markdown \
    --to pdf \
    --filter pandoc-crossref \
    --standalone \
    --template lib/thesis/template.tex \
    --resource-path src \
    --metadata-file src/meta.yaml \
    --citeproc \
    --bibliography src/bibliography.bib \
    --csl lib/thesis/citation.csl \
    --toc \
    --output dist/thesis.pdf