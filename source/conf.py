# -- Project information -----------------------------------------------------


project = 'Inoculator User Guide'
copyright = '2025, SignatureIP'
author = 'SignatureIP'
release = '3.9'

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
    "announcement": "Inoculator User Guide v3.9",
    "home_page_in_toc": True,
    "repository_url": "https://github.com/signatureip/inoculator-guide",
    "repository_branch": "main",
    "path_to_docs": "source",
    "toc_title": "On this page",
    
    # Visual improvements
    "logo": {
        "image_light": "_static/logo-light.png",
        "image_dark": "_static/logo-dark.png",
    },
    "navbar_footer_text": "Inoculator User Guide by SignatureIP",
    "navbar_align": "left",
    "navbar_center": ["navbar-nav"],
    "navbar_end": ["navbar-icon-links"],
    
    # Theme customization
    "primary_color": "#2B6CB0",
    "secondary_color": "#4299E1",
    "accent_color": "#63B3ED",
    "font_family": "system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif",
    
    # Additional features
    "search_bar_text": "Search documentation...",
    "search_bar_position": "navbar",
    "search_include_pat": "**",
    "search_exclude_pat": "**/build/**",
    "search_show_suggestions": True,
    
    # Code blocks
    "code_font_size": "0.9em",
    "code_line_numbers": True,
    "code_copy_button": True,
}

html_title = "Inoculator User Guide"
html_favicon = "_static/favicon.ico"
html_last_updated_fmt = "%b %d, %Y"

# Add custom CSS variables for consistent styling
html_css_files = [
    'custom.css',
    'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css'
]

# Enable permalinks with a more modern symbol
html_add_permalinks = "🔗"
