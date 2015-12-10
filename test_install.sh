#!/bin/sh -ex

pip install $DEPENDENCY

timeout 20m pip install -vvvv chainer/dist/*.tar.gz

# check if cupy is installed
python -c 'import cupy'

