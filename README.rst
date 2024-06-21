cookiecutter-buildout-plone
===========================

This is a ``cookiecutter`` template that produces a development buildout ready to run Plone.

Run ``cookiecutter gh:gotcha/cookiecutter-buildout-plone`` to produce a directory
``name-buildout``.

Then ``cd`` in that newly created directory.

And run ``just fg`` to run Plone.

You can access the Plone server via ``http://localhost:8080`` with the user
``admin`` and password ``admin``. (This is obviously not meant to be used on any
production server.) 


Development
-----------

To update the hash of the template, compute the hash of the last pushed revision
in::

   dhall hash <<< 'https://raw.githubusercontent.com/gotcha/plone-buildout-template/2b88f0cf47a619ec0bf17c892798c6e0f718f01b/buildout.dhall'

Then use the computed hash in ``{{cookiecutter.name}}-buildout/.dhall/init.dhall``.
