#!/usr/bin/env bash

# todo: think about using github-style markdown (markdown_github)
# also think about TOC for markdown

# TODO: make this script run as a pre-commit git hook

biblio_foot_csl=csls/chicago-fullnote-bibliography.csl # puts bibliography in footnotes.

mla_csl=csls/modern-language-association-8th-ed.csl

for folder in $(ls src); do
    echo "$folder"
    
    echo "Generating HTML"
    # Generate HTML version for Website
    cat src/$folder/fm.yaml > posts/$folder.html;
    pandoc src/$folder/in.md --toc -s --filter pandoc-citeproc --csl $biblio_foot_csl --bibliography src/$folder/library.bib -t html --metadata=suppress-bibliography:true >> posts/$folder.html
    
    echo "Generating PDF"
    # Generate PDF version
    cat src/$folder/in.md > src/$folder/tmp.md
    echo >> src/$folder/tmp.md
    echo "# Works Cited" >> src/$folder/tmp.md
    pandoc src/$folder/tmp.md --toc -s --filter pandoc-citeproc --csl $mla_csl --bibliography src/$folder/library.bib -o resources/$folder.pdf --metadata=link-citations:true
    rm src/$folder/tmp.md
done
