# -- Project information -----------------------------------------------------


project = 'Inoculator User Guide'
copyright = '2025, SignatureIP'
author = 'SignatureIP'
release = '2.5'

# -- General configuration ---------------------------------------------------


extensions = ["sphinx.ext.autosectionlabel","sphinx.ext.autodoc","sphinx.ext.todo", ]
templates_path = ['_templates']
exclude_patterns = []


# -- Options for HTML output -------------------------------------------------


html_theme = 'classic'
html_static_path = ['_static']
html_css_files = ['custom.css']
html_theme_options = {
    "rightsidebar": "true",
    "relbarbgcolor": "black"
}
html_theme_path = ["."]
html_add_permalinks = "¶"
html_sidebars = {
   '**': ['globaltoc.html', 'sourcelink.html', 'searchbox.html'],
   'using/windows': ['windows-sidebar.html', 'searchbox.html'],
}
# html_sidebars = {
#      '**': ['sidebar.html', 'searchbox.html']
#}
