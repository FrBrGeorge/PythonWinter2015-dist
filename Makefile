DEST=$$HOME/DEST
GENERATED=build dist bdist *.egg-info

testinstall:
	mkdir -p $(DEST)/bin $(DEST)/lib/python2.7/site-packages
	PYTHONPATH=$(DEST)/lib/python2.7/site-packages python setup.py install --prefix=$(DEST) --exec-prefix=$(DEST)/bin

clean:
	python setup.py clean
	rm -rf $(GENERATED) $(DEST)

show:
	find $(DEST)
