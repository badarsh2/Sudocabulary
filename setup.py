from os import path

import io

from setuptools import setup

from sudocabulary.install_entry import InstallEntry

here = path.abspath(path.dirname(__file__))

with io.open(path.join(here, 'README.md'), encoding='utf-8') as f:
    long_description = f.read()


setup(name='sudocabulary',
      version='1.0.0',
      description='Combine your love for terminal with the love for learning English Vocabulary',
      long_description=long_description,
      url='https://github.com/badarsh2/Sudocabulary',
      author='badarsh2',
      author_email='badarsh2@gmail.com',
      license='Apache-2.0',
      cmdclass={
          'install': InstallEntry,
          'develop': InstallEntry,
      },
      zip_safe=False)
