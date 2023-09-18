mkdir -p dist
pandoc src/document.md \
    --from markdown \
    --to pdf \
    --standalone \
    --template lib/template.tex \
    --resource-path src \
    --metadata-file src/meta.yaml \
    --bibliography src/bibliography.bib \
    --toc \
    --output dist/thesis.pdf