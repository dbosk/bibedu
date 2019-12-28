.PHONY: all
all: bibedu.bib bibedu.sty bibedu.mk

bibedu.bib bibedu.sty bibedu.mk: bibedu.nw

NOWEB_SUFFIXES+= .bib


.PHONY: all
all: bibedu.pdf

bibedu.pdf: bibedu.tex bibedu.sty bibedu.bib
bibedu.pdf: necessary-conditions.tex


.PHONY: clean
clean:
	${RM} bibedu.pdf


INCLUDE_MAKEFILES?=./makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
include ${INCLUDE_MAKEFILES}/tex.mk
