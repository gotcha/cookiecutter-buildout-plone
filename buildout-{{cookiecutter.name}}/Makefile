bin/instance: bin/buildout buildout.cfg
	bin/buildout -Nv
	touch bin/instance

bin/pip:
	virtualenv .

bin/buildout: bin/pip requirements.txt
	bin/pip install -r requirements.txt
	touch bin/buildout
