# compute dhall template sha
compute_dhall_sha:
        dhall hash <<< https://raw.githubusercontent.com/gotcha/plone-buildout-template/$(just lastrev)//buildout.dhall

# get last git revision from dhall template repository
lastrev:
        git ls-remote https://github.com/gotcha/plone-buildout-template.git HEAD | awk '{ print $1}'
