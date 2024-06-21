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

The ``dhall`` template repository is at https://github.com/gotcha/plone-buildout-template

To compute the hash of the ``dhall`` template::

   just compute_dhall_sha

Then use the computed hash in ``{{cookiecutter.name}}-buildout/.dhall/init.dhall``.
