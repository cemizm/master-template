#!/bin/sh
IMAGE=cemizm/latex
MAIN=thesis.tex

docker build -q -t "$IMAGE" . 
docker run --rm -i -v "$PWD":/data "$IMAGE" /bin/bash -c "latexmk -pdf $MAIN; latexmk -c"