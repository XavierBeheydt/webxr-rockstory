DEFAULT_GOAL := all

.PHONY: all
all:  ## R  ## Install dev dependencie  ## Install dev dependencie  ## Install dev dependenciesssecipe for run the project as dev env
all: deps

.PHONY: dev
dev:  ## Recipe helps to run the dev session locally
dev: deps
dev: serve

.PHONY: deps
deps: ## Install dev dependencies
deps: node_modules
node_modules:
	npm install

.PHONY: serve
serve:  ## Run locally the dev server
serve: deps
	npm run dev