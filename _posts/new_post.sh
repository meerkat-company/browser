#!/bin/bash

LANG="$1"
REF="$2"
TITLE="$3"
FILETILE=$(echo "$TITLE" | tr " " "-" | tr '[]' '[]')
POSTDATE=$(\date +"%Y-%m-%d")
POSTNAME=$POSTDATE-$FILETILE.md
POSTBODY="---
layout:     post
title:      $TITLE
date:       $POSTDATE $(\date +"%H:%M:%S %z")
summary:
categories:
ref:        $REF
lang:       $LANG
---"

cat <<EOF >> $POSTNAME
$POSTBODY
EOF
