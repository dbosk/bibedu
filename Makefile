.PHONY: all
all: bibedu.bib bibedu.sty bibedu.mk

bibedu.bib bibedu.sty bibedu.mk: bibedu.nw

%.bib: %.nw
	${NOTANGLE.sty}


.PHONY: all
all: bibedu.pdf

bibedu.pdf: bibedu.nw bibedu.sty bibedu.bib


.PHONY: clean
clean:
	${RM} bibedu.pdf


INCLUDE_MAKEFILES?=./makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
include ${INCLUDE_MAKEFILES}/tex.mk
