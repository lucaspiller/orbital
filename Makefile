.PHONY: server dev

server:
	python -m SimpleHTTPServer

dev:
	# brew install node; npm -g install coffee-script
	coffee --watch --join lib/orbital.js --compile src/
