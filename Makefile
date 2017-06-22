include .deosrc

.DEFAULT_GOAL := all
.PHONY: all build venv
.SUBLIME_TARGETS: all

all:; @-cd docs && $(MAKE)
build:; @-cd docs && $(MAKE) build
push:; @-git add . && git commit -S -m "$(msg)" && git push

#[endfi]
