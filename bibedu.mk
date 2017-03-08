BIBEDU_BIB+=learning.bib
BIBEDU_STY+=learning.sty

INCLUDE_BIBEDU?=.

${BIBEDU_BIB} ${BIBEDU_STY}:
	[ -e "./$@" ] || ln -s ${INCLUDE_BIBEDU}/$@ ./$@

.PHONY: clean-depends
clean-depends: clean-bibedu
clean-bibedu:
	find ${BIBEDU_BIB} ${BIBEDU_STY} -type l | xargs ${RM}

include ${INCLUDE_BIBEDU}/learning.mk

define bibedu_display
.PHONY: $(1)
$(1):
	xdg-open ${URL-$(1)}
endef

$(foreach ref,${BIBEDU_REFKEY},$(eval $(call bibedu_display,${ref})))
