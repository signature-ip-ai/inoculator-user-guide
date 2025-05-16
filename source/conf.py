# -- Project information -----------------------------------------------------


project = 'Inoculator User Guide'
copyright = '2025, SignatureIP'
author = 'SignatureIP'
release = '3.8'

# -- General configuration ---------------------------------------------------


extensions = [
    "sphinx.ext.autosectionlabel",
    "sphinx.ext.autodoc",
    "sphinx.ext.todo",
    "sphinx_copybutton",
    "sphinx.ext.intersphinx",
    "sphinx.ext.viewcode",
    "sphinx_design",
]
templates_path = ['_templates']
exclude_patterns = []


# -- Options for HTML output -------------------------------------------------


html_theme = 'sphinx_book_theme'
html_static_path = ['_static']
html_css_files = ['custom.css']

html_theme_options = {
    "use_download_button": True,
    "use_fullscreen_button": True,
    "use_sidenotes": True,
    "show_toc_level": 2,
    "announcement": "Inoculator User Guide v3.8",
    "home_page_in_toc": True,
    "repository_url": "https://github.com/signatureip/inoculator-guide",
    "repository_branch": "main",
    "path_to_docs": "source",
    "toc_title": "On this page",
}

html_title = "Inoculator User Guide"
html_favicon = "_static/favicon.ico"
html_last_updated_fmt = "%b %d, %Y"

# Sphinx Book Theme doesn't use html_sidebars in the same way as Material theme
# html_sidebars = {
#     "**": ["logo-text.html", "globaltoc.html", "localtoc.html", "searchbox.html"]
# }

html_add_permalinks = "¶"
