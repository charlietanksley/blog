build:  ## Build version to commit and publish
	hugo -D -t contrast-hugo

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

publish: ## Build and push to github
	build
	git commit -am "$(date -u) build"

server: ## Run development server
	hugo server -D

