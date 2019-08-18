BIBEDU_BIB+=bibedu.bib
BIBEDU_STY+=bibedu.sty

INCLUDE_BIBEDU?=.

${BIBEDU_BIB} ${BIBEDU_STY}:
	[ -e "./$@" ] || ln -s ${INCLUDE_BIBEDU}/$@ ./$@

.PHONY: clean-depends distclean
clean-depends distclean: clean-bibedu
clean-bibedu:
	find ${BIBEDU_BIB} ${BIBEDU_STY} -type l | xargs ${RM}

define bibedu_display
.PHONY: $(1)
$(1):
	xdg-open ${URL-$(1)}
endef

$(foreach ref,${BIBEDU_REFKEY},$(eval $(call bibedu_display,${ref})))
