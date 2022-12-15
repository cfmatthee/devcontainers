DOCKERFILES=$(shell find . -name '*.dockerfile')
DOCKERBUILD=docker build -t dev:$@
TARGETS=node-16-slim node-18-slim python-3.8-slim

help:
	@echo 'Targets: $(TARGETS)'
	@echo 'Or make all targets'

all: $(TARGETS)

neutralino: node-18-slim
	@$(DOCKERBUILD) -f neutralino.dockerfile .

node-16-slim:
	@$(DOCKERBUILD) --build-arg VERSION=16-slim -f node.dockerfile .

node-18-slim:
	@$(DOCKERBUILD) --build-arg VERSION=18-slim -f node.dockerfile .

python-3.7-slim:
	@$(DOCKERBUILD) --build-arg VERSION=3.7-slim -f python.dockerfile .

python-3.8-slim:
	@$(DOCKERBUILD) --build-arg VERSION=3.8-slim -f python.dockerfile .
