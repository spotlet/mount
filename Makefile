
CWD ?= $(shell pwd)
PREFIX ?= /usr/local
TESTS ?= $(wildcard test/*)

.PHONY: docker
docker/: docker
docker:
	$(MAKE) -C $(@)

.PHONY: test
test/: test
test: $(TESTS)

.PHONY: $(TESTS)
$(TESTS):
	spotlet-mount $(shell pwd)/$(@)

install: uninstall
	cp -rf $(CWD) $(PREFIX)/spotlet

link:
	ln -sf $(CWD) $(PREFIX)/spotlet

uninstall:
	rm -rf $(PREFIX)/spotlet

