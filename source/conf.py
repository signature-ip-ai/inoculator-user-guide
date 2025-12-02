# -- Project information -----------------------------------------------------


project = 'Inoculator User Guide'
copyright = '2025, SignatureIP'
author = 'SignatureIP'
release = '5.4.1'

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
    # Navigation and UI
    "use_download_button": True,
    "use_fullscreen_button": True,
    "use_sidenotes": True,
    "show_toc_level": 3,
    "announcement": "Inoculator User Guide 5.4.1",
    "home_page_in_toc": True,
    "repository_url": "https://github.com/signatureip/inoculator-guide",
    "repository_branch": "main",
    "path_to_docs": "source",
    "toc_title": "On this page",
    
    # Visual improvements
    "navbar_align": "left",
    "navbar_center": ["navbar-nav"],
    "navbar_end": ["navbar-icon-links"],
    
    # Theme customization
    "show_navbar_depth": 1,
    "show_toc_level": 2,
    "use_edit_page_button": True,
    "use_issues_button": True,
    "use_repository_button": True,
    "use_source_button": True
}

html_title = "Inoculator User Guide"
html_favicon = "_static/favicon.ico"
html_last_updated_fmt = "%b %d, %Y"

# Add custom CSS for styling
html_css_files = [
    'custom.css',
    'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css'
]

# Add custom JavaScript for scroll to top issue
html_js_files = [
    'custom.js'
]

# Enable permalinks with a more modern symbol
html_add_permalinks = "🔗"
