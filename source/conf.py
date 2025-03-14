# -- Project information -----------------------------------------------------


project = 'Inoculator User Guide'
copyright = '2025, SignatureIP'
author = 'SignatureIP'
release = '3.4'

# -- General configuration ---------------------------------------------------


extensions = [
    "sphinx.ext.autosectionlabel",
    "sphinx.ext.autodoc",
    "sphinx.ext.todo",
    "sphinx_copybutton",
    "sphinx.ext.intersphinx",
    "sphinx.ext.viewcode",
]
templates_path = ['_templates']
exclude_patterns = []


# -- Options for HTML output -------------------------------------------------


html_theme = 'furo'
html_static_path = ['_static']
html_css_files = ['custom.css']

html_theme_options = {
    "sidebar_hide_name": False,
    "navigation_with_keys": True,
    "announcement": "Inoculator User Guide v3.4",
    "light_css_variables": {
        "color-brand-primary": "#2980B9",
        "color-brand-content": "#2980B9",
    },
    "dark_css_variables": {
        "color-brand-primary": "#4DB6AC",
        "color-brand-content": "#4DB6AC",
    },
}

html_title = "Inoculator User Guide"
html_favicon = "_static/favicon.ico"
html_last_updated_fmt = "%b %d, %Y"

html_add_permalinks = "¶"
html_sidebars = {
   '**': ['globaltoc.html', 'sourcelink.html', 'searchbox.html'],
   'using/windows': ['windows-sidebar.html', 'searchbox.html'],
}
