
DOCKERS ?= $(filter-out Makefile, $(shell ls .))

all: $(DOCKERS)

.PHONY: $(DOCKERS)
$(DOCKERS):
	docker build -t $(@) $(@)

