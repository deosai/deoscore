include .deosrc

.DEFAULT_GOAL := all
.PHONY: all build push wiki.pull wiki.push
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

wiki.push:
	@-$(RM) $(DOTSWAP)
	@-$(MKDIR) $(DOTSWAP)
	@-$(CD) $(DOTSWAP) && $(GITCLONE) $(COREWIKI) wiki
	@-$(RM) $(SWAPWIKI)/*.md
	@-$(CP) $(VARWIKI)/*.md $(SWAPWIKI)/
	@-$(CD) $(SWAPWIKI) && mkdir img
	@-$(CP) -a $(VARWIKI)/img/. $(SWAPWIKI)/img/
	@-$(CD) $(SWAPWIKI) && $(GITADD) && $(GITCOMMIT) "$(WIKIMSG)" && $(GITPUSH)
	@-$(RM) $(DOTSWAP)

#[endfi]
