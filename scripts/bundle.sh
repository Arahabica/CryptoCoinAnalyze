#!/bin/bash

# Require: pip,pyenv, pyenv-virtualenv
DIR=`dirname $0`
PYTHON_VERSION=`cat ${DIR}/../python-version`
PYTHON_UNIQUE_VERSION=`cat ${DIR}/../.python-version`
pyenv install ${PYTHON_VERSION} -s
pyenv virtualenv ${PYTHON_VERSION} ${PYTHON_UNIQUE_VERSION}
pyenv local ${PYTHON_UNIQUE_VERSION}

pip install -r requirements.txt
