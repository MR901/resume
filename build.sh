#!/bin/bash
# Build script with YAML validation

set -e  # Exit on error

echo ""
echo "🔍 Step 1: Validating YAML files..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ruby validate_yaml.rb

if [ $? -eq 0 ]; then
    echo ""
    echo "✓ YAML validation passed!"
    echo ""
    echo "🏗️  Step 2: Building Jekyll site..."
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    # Check if --serve flag is passed
    if [ "$1" == "--serve" ]; then
        jekyll serve --livereload --host 0.0.0.0 --baseurl ""
    else
        jekyll build
    fi
else
    echo ""
    echo "❌ YAML validation failed. Please fix the errors above."
    echo ""
    exit 1
fi

