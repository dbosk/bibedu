BIBEDU_BIB+=learning.bib
BIBEDU_STY+=learning.sty

BIBEDU_BIB+=assessment.bib
BIBEDU_STY+=assessment.sty

INCLUDE_BIBEDU?=.

${BIBEDU_BIB} ${BIBEDU_STY}:
	[ -e "./$@" ] || ln -s ${INCLUDE_BIBEDU}/$@ ./$@

.PHONY: clean-depends distclean
clean-depends distclean: clean-bibedu
clean-bibedu:
	find ${BIBEDU_BIB} ${BIBEDU_STY} -type l | xargs ${RM}


INCLUDE_BIBEDU?=.
include ${INCLUDE_BIBEDU}/learning.mk
include ${INCLUDE_BIBEDU}/assessment.mk
include ${INCLUDE_BIBEDU}/didactics.mk


define bibedu_display
.PHONY: $(1)
$(1):
	xdg-open ${URL-$(1)}
endef

$(foreach ref,${BIBEDU_REFKEY},$(eval $(call bibedu_display,${ref})))
