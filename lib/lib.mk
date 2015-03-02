###########
#
# Not to be used directly.
# To be included in other Makefiles
# that have determined variables for
# Raw, Lib, Out
#
#########

Dirs=$(Lib) $(Raw) $(Out)

define target
   $(subst $4,$5,\
      $(subst .$2,.$3,\
         $(shell ls $(Raw)/$1/*.$2)))
endef

ready : dirs files catting talks
	@echo "See $(Out)"

Skeleton=css plots slides
dirs: 
	@$(foreach d,$(Skeleton),mkdir -p $(Raw)/$d;)
	@mkdir -p $(Out)/css
	@mkdir -p $(Out)/slides
	@ mkdir -p $(Out)/plots

files:
	@cp -vrup $(Raw)/plots/* $(Out)/plots
	@cp -vrup $(Raw)/css/* $(Out)/css

talks:  $(call target,slides,md,html,$(Raw),$(Out))

debug:
	echo  $(call target,posts,md,html,$(Raw),$(Out))

catting:
	cat $(Raw)/slides/*/*.md > $(Raw)/slides/ProgressReport.md

$(Out)/slides/%.html :  $(Raw)/slides/%.md 
	pandoc -s \
              --webtex -i -t slidy \
              -r markdown+simple_tables+table_captions \
	      -c        ../css/slidy.css \
              -o $@ $<

