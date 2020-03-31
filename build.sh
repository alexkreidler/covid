#!/usr/bin/env bash

# todo: think about using github-style markdown (markdown_github)
# also think about TOC for markdown

csl=csls/chicago-fullnote-bibliography.csl # puts bibliography in footnotes.

for folder in $(ls src); do
    echo "$folder"
    cat src/$folder/fm.yaml >posts/$folder.html && pandoc src/$folder/in.md --toc -s --filter pandoc-citeproc --csl $csl --bibliography src/$folder/library.bib -t html >>posts/$folder.html
    pandoc src/$folder/in.md --filter pandoc-citeproc --bibliography src/$folder/library.bib -o resources/$folder.pdf --toc
done
