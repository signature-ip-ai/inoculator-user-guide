# -- Project information -----------------------------------------------------

project = 'Inoculator User Guide'
copyright = '2026, SignatureIP'
author = 'SignatureIP'
release = '6.3.3'

# -- General configuration ---------------------------------------------------

extensions = [
    'sphinx.ext.napoleon',
    "sphinx.ext.autosectionlabel",
    "sphinx.ext.autodoc",
    "sphinx.ext.todo",
    "sphinx_copybutton",
    "sphinx.ext.intersphinx",
    "sphinx.ext.viewcode",
    "sphinx_design",
    "sphinx.ext.mathjax" 

]

templates_path = ['_templates']
exclude_patterns = []

# -- Options for HTML output -------------------------------------------------

html_theme = 'sphinx_book_theme'
html_static_path = ['_static']

html_theme_options = {
    # Navigation and UI
    "use_download_button": True,
    "use_fullscreen_button": True,
    "use_sidenotes": True,
    "show_toc_level": 3,
    "announcement": "📘 Inoculator User Guide v6.3.3",
    "home_page_in_toc": True,
    "repository_url": "https://github.com/signatureip/inoculator-guide",
    "repository_branch": "main",
    "path_to_docs": "source",
    "toc_title": "On this page",

    # Navigation bar layout
    "navbar_align": "left",
    "navbar_center": ["navbar-nav"],
    "navbar_end": ["navbar-icon-links", "theme-switcher"],

    # Sidebar
    "show_navbar_depth": 2,         # Show two levels in the left nav by default
    "show_toc_level": 3,            # Show headings h2 + h3 in the right TOC

    # Edit / repo buttons
    "use_edit_page_button": True,
    "use_issues_button": True,
    "use_repository_button": True,
    "use_source_button": True,

    # Primary color —
    "primary_sidebar_end": ["indices.html", "sidebar-ethical-ads.html"],

    # Footer
    "footer_start": ["copyright"],
    "footer_end": ["last-updated"],

    # Icon links in the navbar
    "icon_links": [
        {
            "name": "Inoculator",
            "url": "https://inoculator.ai/home",
            "icon": "fa-brands fa-globe",
            "type": "fontawesome",
        },
        {
            "name": "SignatureIP",
            "url": "https://signatureip.ai",
            "icon": "fa-solid fa-house",
            "type": "fontawesome",
        },
        {
        "name": "Support",
        "url": "mailto:support@signatureip.ai",
        "icon": "fa-solid fa-envelope",
        "type": "fontawesome"
        },
        
    ],
}

html_title = "Inoculator User Guide"
html_favicon = "_static/favicon.ico"
html_last_updated_fmt = "%B %d, %Y"


html_permalinks_icon = '<span class="sig-permalink" aria-label="Permalink" title="Copy link to section">⬡</span>'


html_css_files = [
    'https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600&family=DM+Mono:wght@400;500&family=Playfair+Display:wght@600&display=swap',
    'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css',
    'custom.css',
]

html_js_files = [
    'custom.js',
]
