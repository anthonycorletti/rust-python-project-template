# Contributing

Assuming you have cloned this repository to your local machine, you can follow these guidelines to make contributions.

## Rust

Make sure you have the latest stable version of Rust installed. You can check this by running `rustc --version`. If you don't have it installed, you can get it from [here](https://www.rust-lang.org/tools/install).

## Python

**First, please install pyenv https://github.com/pyenv/pyenv to manage your python environment.**

Install the version of python as mentioned in this repo.

```sh
pyenv install $(cat .python-version)
```

### Use a virtual environment

```sh
python -m venv .venv
```

This will create a directory `.venv` with python binaries and then you will be able to install packages for that isolated environment.

Next, activate the environment.

```sh
source .venv/bin/activate
```

To check that it worked correctly;

```sh
which python pip
```

You should see paths that use the .venv/bin in your current working directory.

### Installing dependencies

```sh
./scripts/install.sh
pyenv rehash
```

### Formatting

```sh
./scripts/format.sh
```

### Linting and Testing

```sh
./scripts/test.sh
```
