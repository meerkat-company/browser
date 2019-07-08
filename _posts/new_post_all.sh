#!/bin/bash

REF=$(date)
TITLE_EN="$1"
TITLE_KO="$2"
sh new_post.sh en "$REF" "$TITLE_EN"
sh new_post.sh ko "$REF" "$TITLE_KO"
