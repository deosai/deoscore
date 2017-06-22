include .deosrc

.DEFAULT_GOAL := all
.PHONY: all build docs.start push run sync venv wiki.pull wiki.push
.SUBLIME_TARGETS: all

all:
	@-$(MAKE) build
	@-$(MAKE) run

run:
	@-$(ACTVENV) && $(CD) src && $(PY) graphviz.py
	@-dot -Tpng var/dot/g.dot > var/img/g.png

docs.start:
	$(MAKE) docs.build
	@-$(CD) docs && $(MAKE)

docs.build:
	@-$(CD) docs && $(MAKE) build

build:
	@-$(MAKE) venv
	@-$(MAKE) docs.build

push:
	@-$(GITADD) && $(GITCOMMIT) "$(msg)" && $(GITPUSH)

sync:
	@-$(MAKE) wiki.pull
	@-$(MAKE) msg="make sync" push

venv:
	@-$(RM) $(DOTVENV)
	@-$(MKDIR) $(DOTVENV)
	@-$(VENV) $(DOTVENV)
	@-$(ACTVENV) && $(PIPINSTALL) -r $(PYREQ)

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
