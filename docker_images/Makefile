DOCKERFILES=$(shell find . -name '*.dockerfile')
TARGETS=$(subst ./,,$(subst .dockerfile,,$(DOCKERFILES)))

help:
	@echo 'Targets: $(TARGETS)'
	@echo 'Or make all targets'

all: $(TARGETS)

%:
	@docker build -t dev:$@ -f $@.dockerfile .
	@docker images dev:$@
