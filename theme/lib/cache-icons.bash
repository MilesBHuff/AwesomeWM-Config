#!/usr/bin/env bash
## Generates an array of icon themes and compiles them into a new, combined theme.
## The first argument should be a valid icon theme.
## If a second argument is provided, then no matter what it is, dark-mode themes are preferred.
ICON_DIR='/usr/share/icons'
CACHE_DIR='../.icon-cache'

## Process arguments
## -----------------------------------------------------------------------------
if [[ -z "$1" || ! -d "$ICON_DIR/$1" ]]; then
    printErr "ERROR: Invalid icon theme; please provide a valid icon theme (as listed under '$ICON_DIR') as the first argument to this script. Exiting..."
    exit 1
fi

## Find variants and save in array
## -----------------------------------------------------------------------------
if [[ -z "$2" ]]; then
    declare -a THEMES=('hicolor' "$1")
else
    ## TODO
    declare -a THEMES=('hicolor' "$1" "$1-Dark" "$1-Darker" "$1-Darkest")
fi

## Compile cache
## -----------------------------------------------------------------------------
rm -rf "$CACHE_DIR"
mkdir "$CACHE_DIR"
for THEME in "${THEMES[@]}"; do
    echo "Copying '$THEME'..."
    for F in $(find "$ICON_DIR/$THEME" -type f | sort); do
        [[ "$F" == *.png ]] && cp -rsf "$F" "$CACHE_DIR/"$(echo "$F" | sed 's/.*\///') ##TODO: Prefer .svg over .png
    done
done

## -----------------------------------------------------------------------------
exit 0
