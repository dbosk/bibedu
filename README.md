BibEdu: Bibliographies and acronyms library in Education
===============================================================================

Contains BibTeX bibliography databases for different areas in Education. Also 
contains acronyms in these areas with citations to the seminal publications, 
where relevant.


Areas
-------------------------------------------------------------------------------

We cover the following areas:

 - *learning*: these files cover learning theories.
 - *assessment*: these files cover assessment in education.
 - *didactics*: these files cover didactics.


Usage
===============================================================================

The intended usage is to add this repo as a Git submodule to a project. Then 
the project `Makefile` should include `bibedu.mk`, then the .bib and .sty files 
can be added as dependencies and they will automatically be symlinked. For 
example:

```Makefile
paper.pdf: paper.tex learning.bib learning.sty

INCLUDE_BIBEDU=./bibedu
include ${INCLUDE_BIBEDU}/bibedu.mk
```
