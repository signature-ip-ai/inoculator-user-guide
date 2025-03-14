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
]

templates_path = ['_templates']
exclude_patterns = []

# -- Options for HTML output -------------------------------------------------

html_theme = 'classic'  
html_static_path = ['_static']
html_css_files = ['custom.css']  
html_theme_options = {
    "navigation_depth": 3,  
    "collapse_navigation": False, 
    "sticky_navigation": True,  
    "style_external_links": True,
    "display_version": True,  
}


html_sidebars = {
    '**': ['globaltoc.html', 'sourcelink.html', 'searchbox.html'],
}

html_show_sourcelink = False  
html_show_sphinx = False  


html_add_permalinks = "¶"
