include .deosrc

all:
	@-cd docs && $(MAKE)

build:
	@-cd docs && $(MAKE) build

push:
	@-git add . && git commit -S -m "$(msg)" && git push
