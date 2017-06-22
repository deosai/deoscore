include .deosrc

.DEFAULT_GOAL := all
.PHONY: all build push wiki.pull
.SUBLIME_TARGETS: all

all:
	@-cd docs && $(MAKE)
build:
	@-cd docs && $(MAKE) build
push:
	@-git add . && git commit -S -m "$(msg)" && git push
wiki.pull:
	@-$(RM) $(VARWIKI)
	@-$(CD) $(VAR) && $(GITCLONE) $(COREWIKI) wiki
	@-$(RM) $(VARWIKI)/.git

#[endfi]
