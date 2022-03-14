BIBEDU_FILES+=bibedu.bib
BIBEDU_FILES+=bibedu.sty

INCLUDE_BIBEDU?=.

${BIBEDU_FILES}:
	[ -e "./$@" ] || ln -sf ${INCLUDE_BIBEDU}/$@ ./$@

bibedu.sty: bibedu.bib
.PHONY: clean-depends distclean
clean-depends distclean: clean-bibedu
clean-bibedu:
	find ${BIBEDU_FILES} -type l | xargs ${RM}
define bibedu_display
.PHONY: $(1)
$(1):
	xdg-open ${URL-$(1)}
endef

$(foreach ref,${BIBEDU_REFKEY},$(eval $(call bibedu_display,${ref})))
BIBEDU_REFKEY+=Vygotsky
URL-Vygotsky=https://books.google.fr/books?id=Irq913lEZ1QC&lpg=PR13&ots=H9HoD5Gloa&dq=vygotsky&lr&pg=PP1\#v=onepage&q=vygotsky&f=false
BIBEDU_REFKEY+=Piaget
URL-Piaget=http://libris.kb.se/bib/10960369
BIBEDU_REFKEY+=Skinner
URL-Skinner=http://libris.kb.se/bib/10207516
BIBEDU_REFKEY+=LearningAndAwareness
URL-LearningAndAwareness=http://libris.kb.se/bib/8310448
BIBEDU_REFKEY+=VariationPossibleToLearn
URL-VariationPossibleToLearn=https://link.springer.com/article/10.1007/s11858-017-0858-4
BIBEDU_REFKEY+=BoskFormalizingMathsThesis
URL-BoskFormalizingMathsThesis=http://urn.kb.se/resolve?urn=urn:nbn:se:kth:diva-91398
BIBEDU_REFKEY+=Moura2011teachingCS
URL-Moura2011teachingCS=http://www.sciencedirect.com/science/article/pii/S0360131510002617
BIBEDU_REFKEY+=RigorousMathematicalThinking
URL-RigorousMathematicalThinking=https://libris.kb.se/bib/12688790
BIBEDU_REFKEY+=Verschaffel1999
URL-Verschaffel1999=https://publicatio.bibl.u-szeged.hu/11927/1/CsBeno_Teaching_1999.pdf#page=216
BIBEDU_REFKEY+=BiggsTeachingForQualityLearning
URL-BiggsTeachingForQualityLearning=https://www.umweltbildung-noe.at/upload/files/OEKOLOG%202014/2_49657968-Teaching-for-Quality-Learning-at-University.pdf
BIBEDU_REFKEY+=DisciplineAndPunish
URL-DisciplineAndPunish=http://libris.kb.se/bib/9344452
BIBEDU_REFKEY+=NecessaryConditionsOfLearning
URL=NecessaryConditionsOfLearning=http://libris.kb.se/bib/16950937
BIBEDU_REFKEY+=phenomenography
URL-phenomenography=https://link.springer.com/article/10.1007%2FBF00132516
BIBEDU_REFKEY+=VariationTheory
URL-VariationTheory=https://www.tandfonline.com/doi/abs/10.1080/07294360020021455
BIBEDU_REFKEY+=MeasuringActualOrFeelingOfLearning
URL-MeasuringActualOrFeelingOfLearning=https://www.pnas.org/content/116/39/19251.short
BIBEDU_REFKEY+=DevelopmentResearch
URL-DevelopmentResearch=https://doi.org/10.1007/978-94-011-4255-7_1
BIBEDU_REFKEY+=ActionResearch
URL-ActionResearch=https://doi.org/10.1007/978-1-4419-1428-6_488
BIBEDU_REFKEY+=DesignBasedResearch
URL-DesignBasedResearch=https://doi.org/10.3102/0013189X11428813
BIBEDU_REFKEY+=NecessaryConditionsOfLearning
URL=NecessaryConditionsOfLearning=http://libris.kb.se/bib/16950937
BIBEDU_REFKEY+=phenomenography
URL-phenomenography=https://link.springer.com/article/10.1007%2FBF00132516
BIBEDU_REFKEY+=VariationTheory
URL-VariationTheory=https://www.tandfonline.com/doi/abs/10.1080/07294360020021455
BIBEDU_REFKEY+= VariationTheoryInProgramming
URL-VariationTheoryInProgramming=https://www.tandfonline.com/doi/abs/10.1080/03043790902989374
