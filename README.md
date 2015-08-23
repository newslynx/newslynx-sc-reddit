[![Build status](https://travis-ci.org/newslynx/newslynx-sc-reddit.svg)](https://travis-ci.org/newslynx/newslynx-sc-reddit) [![Documentation Status](https://readthedocs.org/projects/newslynx-sc-reddit/badge/?version=latest)](https://readthedocs.org/projects/newslynx-sc-reddit/?badge=latest)

newslynx-sc-reddit
==========================================================================================



## Installation

### Production

To install `newslynx-sc-reddit` for an active installation of `newslynx-core`, clone it and copy into `~/.newslynx/sous-chefs`

```bash
$ git clone https://github.com/newslynx/newslynx-sc-reddit.git
$ mv newslynx-sc-reddit/ ~/.newslynx/sous-chefs/
```

Now install it within the same virtual environment as `newslynx`:

```bash
$ cd ~/.newslynx/sous-chefs/newslynx-sc-reddit/
$ pip install .
```

... and if you're running `newslynx` as `sudo`


```bash
$ cd ~/.newslynx/sous-chefs/newslynx-sc-reddit/ 
$ sudo pip install .
```

Finally, run `newslynx sc-sync` to `newslynx-sc-reddit`'s Sous Chefs for all organizations.

```bash
$ newslynx sc-sync
```

### Development 

If you want to run this SousChef on it's own environment, install it in a separate virutal environ 

## Tests

Requires `nose`

```bash
$ make all_tests
```

## Documentation

Documentation for `newslynx-sc-reddit` is hosted on [Read The Docs](http://newslynx-sc-reddit.readthedocs.org/).

It's generated via the following steps

* converts this file (`README.md`) into a ReStructured Text file, saving it to [docs/index.rst](https://github.com/newslynx/newslynx-sc-reddit/blob/master/docs/index.rst)
* runs `newslynx sc-docs newslynx_sc_reddit -f rst` to generate documentation for all the Sous Chefs in `newslynx-sc-reddit` and saves the output to [docs/sous-chefs.rst](https://github.com/newslynx/newslynx-sc-reddit/blob/master/docs/sous-chefs.rst)
* Builds Sphinx Documentation from these files.


## Continuous Integration

Builds for `newslynx-sc-reddit` can be found on [Travis](https://travis-ci.org/newslynx/newslynx-sc-reddit)

## Contributing

See the [contributing guidelines](https://github.com/newslynx/newslynx-sc-reddit/blob/master/CONTRIBUTING.md).


## What's in this module ?

- [README.md](https://github.com/newslynx/newslynx-sc-reddit/blob/master/README.md)
	* This file 

- [VERSION](https://github.com/newslynx/newslynx-sc-reddit/blob/master/VERSION)
	* `newslynx-sc-reddit`'s source-of-truth version.

- [requirements.txt](https://github.com/newslynx/newslynx-sc-reddit/blob/master/requirements.txt)
	* `newslynx-sc-reddit`'s python dependencies.

- [MANIFEST.in](https://github.com/newslynx/newslynx-sc-reddit/blob/master/MANIFEST.in)
	* Specifications for which files to include in the PyPI distribution.
	* See the docs on this [here](https://docs.python.org/2/distutils/sourcedist.html#specifying-the-files-to-distribute).

- [setup.py](https://github.com/newslynx/newslynx-sc-reddit/blob/master/setup.py)
	* Specification's for building `newslynx-sc-reddit`'s PyPI distribution.

- [.travis.yml](https://github.com/newslynx/newslynx-sc-reddit/blob/master/.travis.yml)
	* Configurations for Travis Continuous Integration
	* You must activate this project on [travis-ci.org](https://github.com/newslynx/newslynx-sc-reddit/blob/master/http://travis-ci.org/) for this to run on subsequent updates.

- [Makefile](https://github.com/newslynx/newslynx-sc-reddit/blob/master/Makefile)
	* Helpers for managing `newslynx-sc-reddit`.
	* Includes:
		- `make clean`: 
			* Cleans out cruft from this directory.
		- `make install`: 
			* Installs `newslynx-sc-reddit`. Assumes that you're in a virtual environment.
		- `make all_tests`: 
			* Runs the tests.
		- `make readme`
			* Converts this file to `.rst`, including a table of contents, and saves it to [docs/index.rst](https://github.com/newslynx/newslynx-sc-reddit/blob/master/docs/index.rst)
		- `make sous_chef_docs`
			* Programmtically generates [Sous Chef documentation](https://github.com/newslynx/newslynx-sc-reddit/blob/master/docs/sous-chefs.rst) by running `newslynx sc-docs newslynx_sc_reddit/ --format=rst > docs/sous-chefs.rst`.
		- `make all_docs`: 
			* Builds the sphinx docs for `newslynx-sc-reddit` by running the above two commands.
		- `make view_docs`
			* Serves documentation at [localhost:8000](http://localhost:8000)
		- `make register`: 
			* Registers `newslynx-sc-reddit` on [PyPI](https://pypi.python.org/pypi).
		- `make distribute`: 
			* Publishes a new version of `newslynx-sc-reddit` to PyPI.

- [CONTRIBUTING.md](https://github.com/newslynx/newslynx-sc-reddit/blob/master/CONTRIBUTING.md)

- [newslynx_sc_reddit](https://github.com/newslynx/newslynx-sc-reddit/blob/master/newslynx_sc_reddit/)
	* `newslynx-sc-reddit`'s source code and Sous Chef configuration files.

- [docs](https://github.com/newslynx/newslynx-sc-reddit/blob/master/docs/)
	* Sphnix documentation for `newslynx-sc-reddit`

- [tests](https://github.com/newslynx/newslynx-sc-reddit/blob/master/tests/)
	* `nose` tests for `newslynx-sc-reddit`

