# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
.ONESHELL:

VENV_DIR := .pyvenv
ACTIVATE_VENV = source $(VENV_DIR)/bin/activate
REQUIREMENTS_FILE := requirements.txt

SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: $(VENV_DIR) Makefile
	@ $(ACTIVATE_VENV)
	@ pip3 install -r $(REQUIREMENTS_FILE)
	@ $(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

$(VENV_DIR):
	@ echo "Creating a virtual environment ..."
	@ python3 -m venv $(VENV_DIR)

clean:
	@ rm -rf .pyvenv $(BUILDDIR)
