
CWD ?= $(shell pwd)
PREFIX ?= /usr/local
TESTS ?= $(wildcard test/*)

BINS ?= $(wildcard bin/*)

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
	install $(BINS) $(PREFIX)/bin

link: uninstall
	ln -sf $(CWD) $(PREFIX)/spotlet
	ln -sf $(CWD)/spotlet-mount $(PREFIX)/bin/spotlet-mount

uninstall:
	rm -rf $(PREFIX)/spotlet
	rm -f $(PREFIX)/bin/spotlet-mount

