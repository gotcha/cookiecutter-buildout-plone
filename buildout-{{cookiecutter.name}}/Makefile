bin/pip:
	virtualenv .

bin/buildout: bin/pip
	bin/pip install -r requirements.txt
	touch bin/buildout

bootstrap: bin/buildout

bin/instance: bin/buildout
	bin/buildout -Nv
	touch bin/instance

buildout: bin/instance

fg: bin/instance
	bin/instance fg
