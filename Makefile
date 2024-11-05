#!/bin/make

SHELL := /bin/bash
.DEFAULT_GOAL := all

esbuildflags := --platform=node --target=esnext --packages=external

all: build

build: dist/permute.mjs dist/permute.cjs

dist/permute.mjs: src/*.js | dist
	npx esbuild src/index.js --bundle --format=esm $(esbuildflags) --outfile=./dist/permute.mjs

dist/permute.cjs: src/*.js | dist
	npx esbuild src/index.js --bundle --format=cjs $(esbuildflags) --outfile=./dist/permute.cjs

dist:
	mkdir dist

clean:
	rm -rdf dist

.PHONY: all build clean
