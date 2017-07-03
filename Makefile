include .deosrc

all:
	@echo $(call l,\n${BLUE},${GREEN}$@)
	@-$(MAKE) build
	@#$(MAKE) $(EXECUTABLE)
	@echo ":: $@"

build: clean
	@echo $(call l,${BLUE},${GREEN}$@)
	@-$(MAKE) venv
	@-$(MAKE) xcompile
	@-$(MAKE) docs.build
	@echo ":: $@"

clean:
	@echo $(call l,${BLUE},${GREEN}$@)
	@echo ":: $@"

docs.build:
	@echo $(call l,${BLUE},${GREEN}$@)
	@#-$(CD) docs && $(MAKE) build
	@echo ":: $@"

docs.start:
	@echo $(call l,${BLUE},${GREEN}$@)
	@$(MAKE) docs.build
	@#-$(CD) docs && $(MAKE)
	@echo ":: $@"

$(EXECUTABLE):
	@echo $(call l,${PURPLE},$@: new)
	@#-$(CC) $(WARNINGS) -Wall -I. -I$(MACRO_DIR) -std=$(STD) \
		`$(VENV_MAC_DIR)/bin/python-config --cflags` \
		./$(MAIN_C) $(OUTPUT) \
		`$(VENV_MAC_DIR)/bin/python-config --ldflags`
	@echo ":: $@"

graphviz:
	@echo $(call l,${PURPLE},$@: new)
	@#-$(ACTVENV) && $(CD) src && $(PY) graphviz.py
	@#-dot -Tpng var/dot/g.dot > var/img/g.png
	@echo ":: $@"

push:
	@echo $(call l,${BLUE},${GREEN}$@)
	@-$(GITADD) && $(GITCOMMIT) "$(msg)" && $(GITPUSH)
	@echo ":: $@"

run:
	@echo $(call l,${YELLOW},$@: new)
	@-$(MAKE) graphviz
	@echo ":: $@"

sync:
	@echo $(call l,${BLUE},${GREEN}$@)
	@#-$(MAKE) wiki.pull
	@#-$(MAKE) msg="make sync" push
	@echo ":: $@"

venv:
	@echo $(call l,${BLUE},${GREEN}$@)
	@#-$(RM) $(DOTVENV)
	@#-$(MKDIR) $(DOTVENV)
	@#-$(VENV) $(DOTVENV)
	@#-$(ACTVENV) && $(PIPINSTALL) -r $(PYREQ)
	@echo ":: $@"

wiki.pull:
	@echo $(call l,${BLUE},${GREEN}$@)
	@-$(RM) $(VARWIKI)
	@-$(CD) $(VAR) && $(GITCLONE) $(COREWIKI) wiki
	@-$(RM) $(VARWIKI)/.git
	@#$(RM) meta/wikid/static/
	@#$(MKDIR) meta/wikid/static/
	@#$(CD) meta/wikid/static && $(GITCLONE) $(COREWIKI) .
	@#$(RM) meta/wikid/static/.git
	@echo ":: $@"

wiki.push:
	@echo $(call l,${BLUE},${GREEN}$@)
	@-$(RM) $(DOTSWAP)
	@-$(MKDIR) $(DOTSWAP)
	@-$(CD) $(DOTSWAP) && $(GITCLONE) $(COREWIKI) wiki
	@-$(RM) $(SWAPWIKI)/*.md
	@-$(CP) $(VARWIKI)/*.md $(SWAPWIKI)/
	@-$(CD) $(SWAPWIKI) && mkdir img
	@-$(CP) -a $(VARWIKI)/img/. $(SWAPWIKI)/img/
	@-$(CD) $(SWAPWIKI) && $(GITADD) && $(GITCOMMIT) "$(WIKIMSG)" && $(GITPUSH)
	@-$(RM) $(DOTSWAP)
	@echo ":: $@"

xcompile:
	@echo $(call l,${BLUE},${GREEN}$@)
	@#-cd src && $(PYTHON) xcompile.py
	@echo ":: $@"
