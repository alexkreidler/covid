#!/usr/bin/env bash

# todo: think about using github-style markdown (markdown_github)
# also think about TOC for markdown

# ls src/ | xargs -i pandoc src/'{}'/in.md -o posts/'{}'.md -t gfm+yaml_metadata_block --toc -s --filter pandoc-citeproc --bibliography src/'{}'/library.bib


ls src/ | xargs -i sh -c "cat src/'{}'/fm > posts/'{}'.html && pandoc src/'{}'/in.md --toc -s --filter pandoc-citeproc --bibliography src/'{}'/library.bib -t html >> posts/'{}'.html;"

# pandoc covid-testing.md -o out.pdf --filter pandoc-citeproc --toc


ls src/ | xargs -i sh -c "pandoc src/'{}'/in.md --filter pandoc-citeproc --bibliography src/'{}'/library.bib -o resources/'{}'.pdf --toc"
