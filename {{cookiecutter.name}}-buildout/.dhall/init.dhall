{-
-}

let template = https://raw.githubusercontent.com/gotcha/plone-buildout-template/master/buildout.dhall
sha256:655ad871e0c96fc016818ad6f82553f72c7b79d594bd6a62d8744defcc177879

let PythonVersion = template.types.PythonVersion

let versions = { 
        {%- if cookiecutter.eggs != "Plone" %}
        eggs = "\n  Plone\n  {{cookiecutter.eggs}}",
        {%- endif %}
        {%- if cookiecutter.eggs == "Plone" %}
        eggs = "\n  Plone",
        {%- endif %}
        {%- if cookiecutter.plone_version.startswith('4.') %}
        python = PythonVersion.Python27,
        {%- endif %}
        {%- if cookiecutter.plone_version.startswith('5.1.') %}
        python = PythonVersion.Python27,
        {%- endif %}
        {%- if cookiecutter.plone_version.startswith('5.2.') %}
        python = PythonVersion.Python37,
        {%- endif %}
        {%- if cookiecutter.plone_version.startswith('6.') %}
        python = PythonVersion.Python311,
        {%- endif %}
        plone = "{{cookiecutter.plone_version}}", setuptools = Some "69.2.0", pip = None Text, wheel = None Text, buildout = Some "3.0.1" }

in  template.render versions
