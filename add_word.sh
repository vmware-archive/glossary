#!/usr/bin/env bash

if [ $# -eq 0 ]
  then
    echo "A headword must be specified"
    exit 1
fi

HEADWORD=$1
OUTFILE=entries/$HEADWORD.yml

echo "---
headword: $HEADWORD
expansion:
definition: 
links:
see_also:
" > "$OUTFILE"

echo "New entry template created in $OUTFILE"
