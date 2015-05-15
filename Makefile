DESTPYTON=$$HOME/.python
DEST=$(DESTPYTON)/lib/python2.7/site-packages
GENERATED=build dist bdist *.egg-info

testinstall:
	mkdir -p $(DESTPYTON)/bin $(DEST)
	PYTHONPATH=$(DEST) python setup.py install --prefix=$(DESTPYTON) --exec-prefix=$(DESTPYTON)/bin

clean:
	python setup.py clean
	rm -rf $(GENERATED) $(DEST)

show:
	find $(DESTPYTON)
