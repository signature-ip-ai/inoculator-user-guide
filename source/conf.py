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

html_theme = 'basic'  # Use Read the Docs theme for better UX
html_static_path = ['_static']
html_css_files = ['custom.css']  # Ensure this CSS file is properly styled

html_theme_options = {
    "navigation_depth": 3,  # Show up to 3 levels in the sidebar
    "collapse_navigation": False,  # Keep navigation expanded
    "sticky_navigation": True,  # Sticky sidebar for better UX
    "style_external_links": True,
    "display_version": True,  # Display version number
}

#html_logo = "_static/logo.png"  # Add your logo (place in _static directory)
#html_favicon = "_static/favicon.ico"  # Add favicon

html_sidebars = {
    '**': ['globaltoc.html', 'sourcelink.html', 'searchbox.html'],
}

html_show_sourcelink = False  # Hide source link for a cleaner look
html_show_sphinx = False  # Remove "Built with Sphinx" footer

# Enable permalinks for sections (good for sharing direct links)
html_add_permalinks = "¶"
