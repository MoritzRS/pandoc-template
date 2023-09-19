mkdir -p dist
pandoc ./powerpoint/document.md \
    --from markdown \
    --to pptx \
    --filter pandoc-crossref \
    --standalone \
    --resource-path src \
    --metadata-file ./powerpoint/settings.yaml \
    --citeproc \
    --bibliography ./powerpoint/sources.bib \
    --csl ./powerpoint/.template/citation.csl \
    --output dist/powerpoint.pptx