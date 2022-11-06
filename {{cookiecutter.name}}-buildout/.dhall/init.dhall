{-
-}

let template = https://raw.githubusercontent.com/gotcha/plone-buildout-template/master/buildout.dhall sha256:e62bf37c3affe1cde955eed3efe651db49f14967484465deece7f7f62825c74e

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
        plone = "{{cookiecutter.plone_version}}", setuptools = None Text, pip = None Text, wheel = None Text, buildout = Some "3.0.0" }

in  template.render versions
