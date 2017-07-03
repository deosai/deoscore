include .deosrc

all:
	@echo $(call l,\n${cBl},${cGr}$@)
	@-$(M) build
	@#$(M) $(EXECUTABLE)
	@echo ":: $@"

build: clean
	@echo $(call l,${cBl},${cGr}$@)
	@-$(M) venv
	@-$(M) xcompile
	@-$(M) docs.build
	@echo ":: $@"

clean:
	@echo $(call l,${cBl},${cGr}$@)
	@echo ":: $@"

docs.build:
	@echo $(call l,${cBl},${cGr}$@)
	@#-$(CD) docs && $(M) build
	@echo ":: $@"

docs.start:
	@echo $(call l,${cBl},${cGr}$@)
	@$(M) docs.build
	@#-$(CD) docs && $(M)
	@echo ":: $@"

$(EXECUTABLE):
	@echo $(call l,${cBl},${cGr}$@)
	@#-$(CC) $(WARNINGS) -Wall -I. -I$(MACRO_DIR) -std=$(STD) \
		`$(VENV_MAC_DIR)/bin/python-config --cflags` \
		./$(MAIN_C) $(OUTPUT) \
		`$(VENV_MAC_DIR)/bin/python-config --ldflags`
	@echo ":: $@"

graphviz:
	@echo $(call l,${cBl},${cGr}$@)
	@#-$(ACTVENV) && $(CD) src && $(PY) graphviz.py
	@#-dot -Tpng var/dot/g.dot > var/img/g.png
	@echo ":: $@"

push:
	@echo $(call l,${cBl},${cGr}$@)
	@-$(GITADD) && $(GITCOMMIT) "$(msg)" && $(GITPUSH)
	@echo ":: $@"

run:
	@echo $(call l,${cBl},${cGr}$@)
	@-$(M) graphviz
	@echo ":: $@"

sync:
	@echo $(call l,${cBl},${cGr}$@)
	@#-$(M) wiki.pull
	@#-$(M) msg="make sync" push
	@echo ":: $@"

venv:
	@echo $(call l,${cBl},${cGr}$@)
	@#-$(RM) $(DOTVENV)
	@#-$(MKDIR) $(DOTVENV)
	@#-$(VENV) $(DOTVENV)
	@#-$(ACTVENV) && $(PIPINSTALL) -r $(PYREQ)
	@echo ":: $@"

wiki.pull:
	@echo $(call l,${cBl},${cGr}$@)
	@-$(RM) $(VARWIKI)
	@-$(CD) $(VAR) && $(GITCLONE) $(COREWIKI) wiki
	@-$(RM) $(VARWIKI)/.git
	@#$(RM) meta/wikid/static/
	@#$(MKDIR) meta/wikid/static/
	@#$(CD) meta/wikid/static && $(GITCLONE) $(COREWIKI) .
	@#$(RM) meta/wikid/static/.git
	@echo ":: $@"

wiki.push:
	@echo $(call l,${cBl},${cGr}$@)
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
	@echo $(call l,${cBl},${cGr}$@)
	@#-cd src && $(PYTHON) xcompile.py
	@echo ":: $@"
