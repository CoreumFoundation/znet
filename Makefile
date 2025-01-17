ZNET = ./bin/znet

.PHONY: znet
znet:
	$(ZNET) znet

.PHONY: znet-start
znet-start:
	$(ZNET) znet start --profiles=3cored

.PHONY: znet-start-ibc
znet-start-ibc:
	$(ZNET) znet start --profiles=3cored,ibc

.PHONY: znet-start-stress
znet-start-stress:
	$(ZNET) znet start --profiles=3cored,dex

.PHONY: znet-remove
znet-remove:
	$(ZNET) znet remove

.PHONY: lint
lint:
	$(ZNET) build lint

.PHONY: tidy
tidy:
	$(ZNET) build tidy

.PHONY: build
build:
	$(ZNET) build znet
