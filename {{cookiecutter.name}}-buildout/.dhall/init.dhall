{-
-}

let template = https://raw.githubusercontent.com/gotcha/plone-buildout-template/master/buildout.dhall
sha256:1fc7428e0828e00286d9b093b219cdb14e107400fe3f817f348570b6db7fb0f4

let PythonVersion = template.types.PythonVersion

let versions = { 
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
