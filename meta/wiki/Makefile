export MAKEFLAGS=--no-print-directory

OS_TYPE = $(shell uname -s)

#[common environment variables]
include .env-common

ifeq ($(OS_TYPE), Darwin)
	#[mac environment variables]
	include .env-mac
	#[mac make rules]
	include make-mac.mk
endif

ifeq ($(OS_TYPE), Linux)
	#[linux environment variables]
	include .env-linux
	#[linux make rules]
	include make-linux.mk
endif

#[common make rules]
include make-common.mk
all:
	@-echo "Hello, world!"
