[[ -f .env ]] && source .env

mkdir -p dist

# Thesis
if [ "$THESIS" == "TRUE" ]
then
    pandoc ./thesis/document.md ./thesis/.template/bibliography.md \
        --from markdown \
        --to pdf \
        --filter pandoc-crossref \
        --standalone \
        --template ./thesis/.template/template.tex \
        --resource-path ./thesis \
        --metadata-file ./thesis/settings.yaml \
        --citeproc \
        --bibliography ./thesis/sources.bib \
        --csl ./thesis/.template/citation.csl \
        --toc \
        --output dist/thesis.pdf
fi

# Powerpoint
if [ "$POWERPOINT" == "TRUE" ]
then
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
fi

# Beamer
if [ "$BEAMER" == "TRUE" ]
then
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
fi

# RevealJS
if [ "$REVEALJS" == "TRUE" ]
then
    pandoc ./presentation/document.md \
        --from markdown \
        --to revealjs \
        --filter pandoc-crossref \
        --embed-resources \
        --standalone \
        --variable theme=white \
        --resource-path ./presentation \
        --metadata-file ./presentation/settings.yaml \
        --citeproc \
        --bibliography ./presentation/sources.bib \
        --csl ./presentation/.template/citation.csl \
        --output dist/reveal.html
fi
