mkdir -p dist
pandoc src/document.md \
    --from markdown \
    --to pptx \
    --filter pandoc-crossref \
    --standalone \
    --reference-doc lib/powerpoint/reference.pptx \
    --resource-path src \
    --metadata-file src/meta.yaml \
    --citeproc \
    --bibliography src/bibliography.bib \
    --csl lib/powerpoint/citation.csl \
    --toc \
    --output dist/powerpoint.pptx