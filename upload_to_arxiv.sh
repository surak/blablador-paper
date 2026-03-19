#!/bin/bash
# arXiv upload helper script for Blablador paper
# Usage: ./upload_to_arxiv.sh

echo "========================================"
echo "Blablador arXiv Upload Helper"
echo "========================================"
echo ""

# Check if main.pdf exists
if [ ! -f "main.pdf" ]; then
    echo "Error: main.pdf not found. Please run LaTeX first: make"
    exit 1
fi

# Create a clean source package
rm -rf arxiv_package
mkdir -p arxiv_package
cp main.tex arxiv_package/
cp references.bib arxiv_package/
cp main.pdf arxiv_package/

# Create arXiv manifest
cat > arxiv_package/manifest.txt <<EOF
Blablador: A Privacy-Focused LLM Inference Server for Scientific Research

This package contains:
- main.tex: Main LaTeX source
- references.bib: Bibliography
- main.pdf: Compiled PDF
EOF

echo "Package created at arxiv_package/"
echo ""
echo "========================================"
echo "Upload instructions:"
echo "========================================"
echo "1. Go to https://arxiv.org/"
echo "2. Sign in to your arXiv account"
echo "3. Click 'Contribute to arXiv" 
echo "4. Choose 'I am uploading for the first time' or 'I've previously uploaded'"
echo "5. Upload files from arxiv_package/"
echo "6. Fill in metadata:"
echo "   - Title: Blablador: A Privacy-Focused LLM Inference Server for Scientific Research"
echo "   - Authors: Alexandre Strube, Stefan Kesselheim, Peter Steinbach, Konstantin Rushchanskii, Benedikt von St. Vieth"
echo "   - Abstract: (use abstract from main.tex)"
echo "   - Categories: cs.AI, cs.LG, cs.DC"
echo "7. Review and Submit"
echo ""
echo "========================================"
