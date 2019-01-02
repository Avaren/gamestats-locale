#!/bin/bash

FILEPATH_WITH_GLOB="*/LC_MESSAGES/gamestats.po"
LANGS=$(dirname $(dirname "$FILEPATH_WITH_GLOB"))
echo "Compiling:" $LANGS

for LANG in $LANGS; do
    pybabel compile -D gamestats -d . -l $LANG -f
done
