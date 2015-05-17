DESTPYTON=$$HOME/.local/
DEST= $$HOME/.local/lib/python2.7/site-packages/thepackage
GENERATED=build dist bdist *.egg-info

testinstall:
	mkdir -p $(DESTPYTON)/bin $(DEST)
	PYTHONPATH=$(DEST) python setup.py install --user

clean:
	python setup.py clean
	rm -rf $(GENERATED) $(DEST)

show:
	find $(DESTPYTON) | grep -v share
