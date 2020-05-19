let versions =
      { plone = "{{cookiecutter.plone_version}}", setuptools = None Text, buildout = Some "3.0.0a1" }

let template =
      https://raw.githubusercontent.com/gotcha/plone-buildout-template/master/buildout.dhall sha256:45f8aee72beb19748095c4d173978cc358637d4fe55fa229cfa2f92b3f01f282

in  template.render versions
