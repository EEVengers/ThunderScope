#Modified from https://github.com/GlasgowEmbedded/glasgow/blob/main/docs/manual/src/conf.py
import os, time
is_production = True if os.getenv("DOCS_IS_PRODUCTION", "").lower() in ('1', 'yes', 'true') else False

html_title = project = "ThunderScope"
release = version = ""
copyright = time.strftime("%Y, EEVengers Inc.")

extensions = [
    "myst_parser",
    "sphinx.ext.todo",
    "sphinx.ext.intersphinx",
    "sphinx_copybutton",
    "sphinx_inline_tabs",
]

todo_include_todos = True
todo_emit_warnings = True

intersphinx_mapping = {"python": ("https://docs.python.org/3", None)}

copybutton_prompt_is_regexp = True
copybutton_prompt_text = r">>> |\.\.\. |\$ |> "
copybutton_copy_empty_lines = False

html_use_modindex = False
html_use_index = False

html_theme = "furo"
html_baseurl = "https://eevengers.com/docs/thunderscope/latest/"
html_static_path = ["_static"]
html_css_files = [
      "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/fontawesome.min.css",
      "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/solid.min.css",
      "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/brands.min.css",
]
html_theme_options = {
    "top_of_page_button": "edit",
    "source_repository": "https://github.com/EEVengers/ThunderScope",
    "source_branch": "master",
    "source_directory": "docs/manual/src/",
    "footer_icons": [
        {
            "name": "GitHub",
            "url": "https://github.com/EEVengers/ThunderScope",
            "html": "",
            "class": "fa-brands fa-solid fa-github fa-2x",
        },
    ],
}
