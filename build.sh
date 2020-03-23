#!/usr/bin/env bash

# todo: think about using github-style markdown (markdown_github)
# also think about TOC for markdown

csl=csls/chicago-fullnote-bibliography.csl # puts bibliography in footnotes.

ls src/ | xargs -I '{}' sh -c "cat src/'{}'/fm > posts/'{}'.html && pandoc src/'{}'/in.md --toc -s --filter pandoc-citeproc --csl $csl --bibliography src/'{}'/library.bib -t html >> posts/'{}'.html;"

# pandoc covid-testing.md -o out.pdf --filter pandoc-citeproc --toc

# todo: generate bibliography for this one
# have a metadata switching option
ls src/ | xargs -I '{}' sh -c "pandoc src/'{}'/in.md --filter pandoc-citeproc --bibliography src/'{}'/library.bib -o resources/'{}'.pdf --toc"
