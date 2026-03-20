# Blablador: A Privacy-Focused LLM Inference Server for Scientific Research

## About the Paper

This paper introduces **Blablador**, a Large Language Model (LLM) inference server developed by the Helmholtz Foundation and operated at Forschungszentrum Jülich. Blablador is designed to meet the unique needs of the scientific community, offering:

- **Privacy-preserving features** - Data never stays on servers unnecessarily
- **API accessibility** - RESTful interfaces for programmatic access
- **Custom model support** - Flexibility to run specialized research models
- **Open-source collaboration** - Active contributions to FastChat and the broader AI community

### Key Applications

The paper discusses LLM applications across diverse scientific domains:

- **Bioinformatics:** Protein structure prediction and genomic sequence analysis
- **Chemistry:** Molecular property prediction and drug discovery
- **Climate Science:** Climate model interpretation and extreme event prediction
- **Astrophysics:** Celestial object classification and anomaly detection

### Repository

The source code is available at [HelmholtzAI-FZJ/FastChat](https://github.com/HelmholtzAI-FZJ/FastChat) under the Apache 2.0 license.

## Building the Paper

This document uses LaTeX with the IEEEtran conference template.

### Requirements

- TeX Live (or any complete LaTeX distribution)
- biblatex/bibtex for bibliography management

### Makefile Commands

```bash
# Build the PDF
make

# Clean build artifacts and restore source files to pristine state
make clean
```

### How the Makefile Works

- **`make`**: Compiles the paper using pdflatex (4 passes) and bibtex for proper citation handling
- **`make clean`**: 
  - Removes all generated files: main.pdf, .aux, .log, .out, .bbl, .blg
  - Uses `git checkout` to restore main.tex and references.bib to their original state

### Building Manually

If you prefer not to use make, the paper can be built with:

```bash
pdflatex main.tex
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

## Citation

If you use this work, please cite the paper:

```bibtex
@misc{strube2026blablador,
    title={Blablador: A Privacy-Focused LLM Inference Server for Scientific Research},
    author={Strube, Alexandre and Kesselheim, Stefan and Steinbach, Peter and Rushchanskii, Konstantin Z. and von St. Vieth, Benedikt},
    howpublished={\url{https://arxiv.org/abs/}},
    year={2026}
}
```

Note: This paper is available on arXiv.

## Authors

- **Alexandre Strube** - Helmholtz AI, Jülich Supercomputing Centre
- **Stefan Kesselheim** - Helmholtz AI, Jülich Supercomputing Centre
- **Peter Steinbach** - Helmholtz AI, Helmholtz-Zentrum Dresden-Rossendorf
- **Konstantin Z. Rushchanskii** - Helmholtz AI, Jülich Supercomputing Centre
- **Benedikt von St. Vieth** - Jülich Supercomputing Centre
