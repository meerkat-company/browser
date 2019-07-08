#!/bin/bash

LANG="$1"
TITLE="$2"
FILETILE=$(echo "$TITLE" | tr " " "-" | tr '[]' '[]')
POSTDATE=$(\date +"%Y-%m-%d")
POSTNAME=$POSTDATE-$FILETILE.md
POSTBODY="---
layout:     post
title:      $TITLE
date:       $POSTDATE $(\date +"%H:%M:%S")
summary:
categories:
lang:       $LANG
---"

cat <<EOF >> $POSTNAME
$POSTBODY
EOF

vim "$POSTNAME"
