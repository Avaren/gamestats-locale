#!/bin/bash

FILEPATH_WITH_GLOB="*/LC_MESSAGES/gamestats.po"
LANGS=$(dirname $(dirname "$FILEPATH_WITH_GLOB"))
echo "Updatating:" $LANGS

for LANG in $LANGS; do
    pybabel update --no-wrap -l $LANG -i gamestats.pot -d . -D gamestats --update-header-comment
done
