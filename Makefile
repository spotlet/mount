
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

