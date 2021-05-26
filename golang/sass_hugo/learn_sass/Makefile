SHELL := /bin/bash
ACTUAL := $(shell pwd)

export ACTUAL

build: clean
	@hugo

view: build
	@cd public && python -m SimpleHTTPServer 5000

clean:
	@rm -rf public/
