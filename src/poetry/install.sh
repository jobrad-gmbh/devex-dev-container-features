#!/bin/sh
set -e

# install curl
apt-get update && apt-get install --no-install-recommends --yes curl

# Install poerty
curl -sSL https://install.python-poetry.org | python3 -

# Fix PATH issues
ln -snf $POETRY_HOME/bin/poetry /usr/local/bin/poetry
echo "Activating feature 'poetry'"
