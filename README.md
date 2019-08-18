# BibEdu: Bibliographies and acronyms library in Education

Contains BibTeX bibliography databases for different areas in Education. Also 
contains acronyms in these areas with citations to the seminal publications, 
where relevant.


## Usage

The intended usage is to add this repo as a Git submodule to a project. Then 
the project `Makefile` should include `bibedu.mk`. The PDF should have 
`bibedu.sty` or `bibedu.bib` as dependencies. The preamble of the TeX document 
should add `\usepackage{bibedu}`, which will automatically add `bibedu.bib` as 
a BibLaTeX resource.
```Makefile
paper.pdf: paper.tex bibedu.sty

INCLUDE_BIBEDU=./bibedu
include ${INCLUDE_BIBEDU}/bibedu.mk
```
