#!/usr/bin/env python
import os
from setuptools import setup, find_packages, Extension
from markdown import markdown

setup(name = 'thepackage',
      version = '0.1',
      description = 'Dummy package',
      long_description = markdown(open(os.path.join(os.path.dirname(__file__), "README.md")).read()),
      url = 'https://github.com/FrBrGeorge/PythonWinter2015-dist',
      author = 'Fr. Br. George',
      author_email = 'frbrgeorge@gmail.com',
      license = 'BSD',
      keywords = "dummy educational",
      packages = find_packages(),
      zip_safe = False,
      classifiers=[
        "Development Status :: 3 - Alpha",
        "Topic :: Utilities",
        "License :: OSI Approved :: BSD License",
      ],
      entry_points = {
         'console_scripts': 
             [ 'donotning = thepackage.core:install', ],
      },
      install_requires=[
          'markdown',
      ],
      ext_modules = [Extension('thepackage/repeat', sources = ['thepackage/thelib/repeat.c'])]
)
