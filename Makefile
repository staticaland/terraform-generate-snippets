CODEBRAID_DOCS := $(shell find . -name '*.cbmd')
MARKDOWN_DOCS = $(CODEBRAID_DOCS:.cbmd=.md)

bold := $(shell tput bold)
sgr0 := $(shell tput sgr0)

.PHONY: cbmd watch

# Must cd into the target file directory so Pandoc and Codebraid are
# able to use relative paths as one would expect
%.md : %.cbmd
	@echo
	@echo '$(shell date -u +"%Y-%m-%d %H:%M") - $(bold)Running codebraid on $@$(sgr0)'
	cd $(@D); codebraid pandoc --from markdown --to gfm --filter=mermaid-filter --output $(notdir $@) --overwrite $(notdir $^) 2>&1 | grep -v "designed for" | cat
	@echo '$(shell date -u +"%Y-%m-%d %H:%M") - $(bold)Finished running codebraid on $@$(sgr0)'

cbmd : $(MARKDOWN_DOCS)

entr_warn:
	@echo "-------------------------------------------------"
	@echo " ! File watching functionality non-operational ! "
	@echo "                                                 "
	@echo " Install entr(1) to run tasks on file change.    "
	@echo " See http://entrproject.org/                     "
	@echo "-------------------------------------------------"


watch:
	if command -v entr > /dev/null; then find . -name '*.cbmd' | \
	entr make cbmd; else make cbmd entr_warn; fi
