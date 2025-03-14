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
	@echo "============================================================================="
	@echo "                      Inoculator Documentation Builder                       "
	@echo "============================================================================="
	@echo
	@echo "Usage: make [command]"
	@echo
	@echo "Available commands:"
	@echo
	@echo "  html         to build HTML documentation"
	@echo "  livehtml     to build and auto-rebuild HTML documentation when files change"
	@echo "  serve        to serve the built HTML documentation with a simple HTTP server"
	@echo "  clean        to remove all build artifacts and virtual environment"
	@echo
	@echo "Standard Sphinx commands:"
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Examples:"
	@echo "  make html         - Build HTML documentation once"
	@echo "  make livehtml     - Start auto-rebuild server with live preview"
	@echo "  make clean html   - Clean and then build HTML documentation"
	@echo "============================================================================="

.PHONY: help Makefile clean livehtml serve

# Virtual environment target
$(VENV_DIR):
	@echo "Creating a virtual environment ..."
	@python3 -m venv $(VENV_DIR)

# Clean target - removes build directory and virtual environment
clean:
	@echo "Removing build directory and virtual environment..."
	@rm -rf $(BUILDDIR) $(VENV_DIR)
	@echo "Clean complete."

# Live HTML auto-rebuild target
livehtml: $(VENV_DIR)
	@$(ACTIVATE_VENV)
	@echo "Installing dependencies..."
	@pip3 install -r $(REQUIREMENTS_FILE)
	@echo "Checking for sphinx-autobuild..."
	@pip3 install sphinx-autobuild
	@echo "Starting auto-rebuild server at http://localhost:8000/"
	@echo "Use Ctrl+C to stop."
	@sphinx-autobuild $(SOURCEDIR) $(BUILDDIR)/html $(SPHINXOPTS) $(O) --open-browser

# Serve the documentation with a simple HTTP server
serve: $(VENV_DIR)
	@$(ACTIVATE_VENV)
	@echo "Installing dependencies..."
	@pip3 install -r $(REQUIREMENTS_FILE)
	@if [ ! -d "$(BUILDDIR)/html" ]; then \
		echo "Documentation not yet built. Building now..."; \
		$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O); \
	fi
	@echo "Starting server at http://localhost:8000/"
	@echo "Use Ctrl+C to stop."
	@cd $(BUILDDIR)/html && python3 -m http.server 8000

# Catch-all target: route all unknown targets to Sphinx
%: $(VENV_DIR) Makefile
	@$(ACTIVATE_VENV)
	@pip3 install -r $(REQUIREMENTS_FILE)
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
