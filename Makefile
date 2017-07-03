include .deosrc

l = "$(1)[ $(2) ]$(COLOR)"

all:
	@echo $(call l,${GREEN},$@)
	@-$(MAKE) build
	@-$(MAKE) $(EXECUTABLE)

build:
	@echo $(call l,${GREEN},$@)
	@-$(MAKE) venv
	@-$(MAKE) xcompile
	@-$(MAKE) docs.build

docs.build:
	@echo $(call l,${GREEN},$@)
	@-$(CD) docs && $(MAKE) build

docs.start:
	$(MAKE) docs.build
	@-$(CD) docs && $(MAKE)

$(EXECUTABLE):
	@echo $(call l,${PURPLE},$@: new)
	@-$(CC) $(WARNINGS) -Wall -I. -I$(MACRO_DIR) -std=$(STD) \
		`$(VENV_MAC_DIR)/bin/python-config --cflags` \
		./$(MAIN_C) $(OUTPUT) \
		`$(VENV_MAC_DIR)/bin/python-config --ldflags`
	@echo $(call l,${PURPLE},$@: end)

graphviz:
	@echo $(call l,${PURPLE},$@: new)
	@-$(ACTVENV) && $(CD) src && $(PY) graphviz.py
	-dot -Tpng var/dot/g.dot > var/img/g.png
	@echo $(call l,${PURPLE},$@: end)

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
	@echo $(call l,${GREEN},$@)
	-cd src && $(PYTHON) xcompile.py
