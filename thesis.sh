mkdir -p dist
pandoc ./thesis/document.md ./thesis/.template/bibliography.md \
    --from markdown \
    --to pdf \
    --filter pandoc-crossref \
    --standalone \
    --template ./thesis/.template/template.tex \
    --resource-path src \
    --metadata-file ./thesis/settings.yaml \
    --citeproc \
    --bibliography ./thesis/sources.bib \
    --csl ./thesis/.template/citation.csl \
    --toc \
    --output dist/thesis.pdf