#!/bin/bash

PY_MINOR_VERSION=6

# See Dockerfile for more details
if [ "$PY_MINOR_VERSION" == "8" ]; \
    then PY_SUFFIX=; \
    else PY_SUFFIX=m; \
fi 

DOCKER_BUILDKIT=1 docker build --build-arg PYTHON3_MINOR_VERSION=$PY_MINOR_VERSION \
    --build-arg PYTHON_SUFFIX=$PY_SUFFIX \
    --tag last2010_py3$PY_MINOR_VERSION .

