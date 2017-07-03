include .deosrc

.DEFAULT_GOAL := all
.PHONY: all atd.allbuild docs.build docs.start graphviz wikid push run sync \
	venv wiki.pull wiki.push xcompile
.SUBLIME_TARGETS: all

all:
	@echo $(call l,${BLUE},$@: new)
	@-$(MAKE) xcompile
	@-$(MAKE) atd.all
	@-$(MAKE) build
	@-$(MAKE) run
	@echo $(call l,${BLUE},$@: end)

atd.all:
	@echo $(call l,${CYAN},$@: new)
	@echo $(call l,${CYAN},$@: end)

build:
	@echo $(call l,${GREEN},$@: new)
	@-$(MAKE) venv
	@-$(MAKE) docs.build
	@echo $(call l,${GREEN},$@: end)

docs.build:
	@-$(CD) docs && $(MAKE) build

docs.start:
	$(MAKE) docs.build
	@-$(CD) docs && $(MAKE)

graphviz:
	@echo $(call l,${PURPLE},$@: new)
	@-$(ACTVENV) && $(CD) src && $(PY) graphviz.py
	-dot -Tpng var/dot/g.dot > var/img/g.png
	@echo $(call l,${PURPLE},$@: end)

wikid:
	@$(CD) meta/wikid && $(MAKE)

push:
	@-$(GITADD) && $(GITCOMMIT) "$(msg)" && $(GITPUSH)

run:
	@echo $(call l,${YELLOW},$@: new)
	@-$(MAKE) graphviz
	@echo $(call l,${YELLOW},$@: end)

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
	@#$(RM) meta/wikid/static/
	@#$(MKDIR) meta/wikid/static/
	@#$(CD) meta/wikid/static && $(GITCLONE) $(COREWIKI) .
	@#$(RM) meta/wikid/static/.git

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

xcompile:
	@echo $(call l,${BLUE},$@: new)
	-cd src && $(PYTHON) xcompile.py
	@echo $(call l,${BLUE},$@: end)

#[endfi]
