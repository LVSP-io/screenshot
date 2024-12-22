# Makefile for @xata.io/screenshot

.PHONY: install build clean test

install:
	npm install --legacy-peer-deps

build:
	npm run build

clean:
	npm run build:clean

test:
	# Add your test commands here
	echo "No tests specified"

release: build
	git add .
	git commit -m "Release new version"
	git push origin main
	npm publish
