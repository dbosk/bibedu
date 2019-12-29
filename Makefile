NWSRC= 			bibedu.nw necessary-conditions.nw
TEXSRC= 		${NWSRC:.nw=.tex}
.INTERMEDIATE: 	${TEXSRC}

NOWEB_SUFFIXES+= .bib


.PHONY: all
all: bibedu.bib bibedu.sty bibedu.mk

bibedu.bib bibedu.sty bibedu.mk: ${NWSRC}


.PHONY: all
all: bibedu.pdf

bibedu.pdf: ${TEXSRC}
bibedu.pdf: bibedu.sty bibedu.bib


.PHONY: clean
clean:
	${RM} bibedu.pdf


INCLUDE_MAKEFILES?=./makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
include ${INCLUDE_MAKEFILES}/tex.mk
