.PHONY: help validate build serve clean

help: ## Show this help message
	@echo "Available commands:"
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'
	@echo ""

validate: ## Validate all YAML files in _data directory
	@ruby validate_yaml.rb

build: validate ## Validate YAML and build Jekyll site
	@echo ""
	@echo "🏗️  Building Jekyll site..."
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@jekyll build

serve: validate ## Validate YAML and serve Jekyll site with live reload
	@echo ""
	@echo "🚀 Starting Jekyll server..."
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@jekyll serve --livereload --host 0.0.0.0 --baseurl ""

clean: ## Clean generated site files
	@echo "🧹 Cleaning _site directory..."
	@rm -rf _site .jekyll-cache .jekyll-metadata
	@echo "✓ Clean complete!"

