include .deosrc



all:
#-----------------------------------------------------------------------------#
#	Description: The default rule.
#	Usage: `make` and/or `make all`
#-----------------------------------------------------------------------------#
	@echo $(call l,\n${cBl},${cGr}[${cPu}0${cGr}] ${cCy}$@)
	@-$(M) build
	@-$(M) $(EXECUTABLE)
#-----------------------------------------------------------------------------#



build: clean
#-----------------------------------------------------------------------------#
#	Description: The build rule.
#	Usage: `make build`
#-----------------------------------------------------------------------------#
	@echo $(call l,${cBl},${cGr}[${cPu}2${cGr}] ${cCy}$@)
	@-$(M) venv
	@-$(M) xcompile
	@-$(M) docs.build
#-----------------------------------------------------------------------------#



clean:
#-----------------------------------------------------------------------------#
#	Description: The clean rule.
#	Usage: `make clean`
#-----------------------------------------------------------------------------#
	@echo $(call l,${cBl},${cGr}[${cPu}1${cGr}] ${cCy}$@)
	@-rm -rf .venv/
#-----------------------------------------------------------------------------#



docs.build:
#-----------------------------------------------------------------------------#
#	Description: The `docs` build rule.
#	Usage: `make docs.build`
#-----------------------------------------------------------------------------#
	@echo $(call l,${cBl},${cGr}[${cPu}5${cGr}] ${cCy}$@)
	@#$(CD) docs && $(M) build
#-----------------------------------------------------------------------------#



docs.start:
##
#	Description: The `docs` start rule.
#
#	Usage: `make docs.start`
##
	@echo $(call l,${cBl},${cGr}$@)

	@#$(M) docs.build

	@#-$(CD) docs && $(M)
##


$(EXECUTABLE):
	@echo $(call l,${cBl},${cGr}[${cPu}6${cGr}] ${cCy}$@)
	@#-$(CC) $(WARNINGS) -Wall -I. -I$(MACRO_DIR) -std=$(STD) \
		`$(VENV_MAC_DIR)/bin/python-config --cflags` \
		./$(MAIN_C) $(OUTPUT) \
		`$(VENV_MAC_DIR)/bin/python-config --ldflags`
##


graphviz:
	@echo $(call l,${cBl},${cGr}$@)
	@#-$(ACTVENV) && $(CD) src && $(PY) graphviz.py
	@#-dot -Tpng var/dot/g.dot > var/img/g.png
##


push:
	@echo $(call l,${cBl},${cGr}$@)
	@-$(GITADD) && $(GITCOMMIT) "$(msg)" && $(GITPUSH)
##


run:
	@echo $(call l,${cBl},${cGr}$@)
	@-$(M) graphviz
##


sync:
	@echo $(call l,${cBl},${cGr}$@)
	@#-$(M) wiki.pull
	@#-$(M) msg="make sync" push
##


venv:
	@echo $(call l,${cBl},${cGr}[${cPu}3${cGr}] ${cCy}$@)
	@#-$(RM) $(DOTVENV)
	@#-$(MKDIR) $(DOTVENV)
	@#-$(VENV) $(DOTVENV)
	@#-$(ACTVENV) && $(PIPINSTALL) -r $(PYREQ)
##


wiki.pull:
##
#	Description: The wiki.pull rule.
#
#	Usage: `make wiki.pull`
##
	@echo $(call l,${cBl},${cGr}$@)

	@-$(RM) $(VARWIKI)

	@-$(CD) $(VAR) && $(GITCLONE) $(COREWIKI) wiki

	@-$(RM) $(VARWIKI)/.git

	@#$(RM) meta/wikid/static/

	@#$(MKDIR) meta/wikid/static/

	@#$(CD) meta/wikid/static && $(GITCLONE) $(COREWIKI) .

	@#$(RM) meta/wikid/static/.git
##


wiki.push:
##
#	Description: The wiki.push rule.
#
#	Usage: `make wiki.push`
##
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
##


xcompile:
##
#	Description: The xcompile rule.
#
#	Usage: `make xcompile`
##
	@echo $(call l,${cBl},${cGr}[${cPu}4${cGr}] ${cCy}$@)

	@#-cd src && $(PYTHON) xcompile.py
##
