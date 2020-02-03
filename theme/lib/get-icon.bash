#!/usr/bin/env bash
## Gets an icon from the specified icon theme, the specified icon category, and the specified filename (without extension).
ICON_DIR='/usr/share/icons'

## Verify arguments
## -----------------------------------------------------------------------------
function printErr {
    echo "ERROR: Invalid $1; please provide a valid $1$3 as the $2 argument to this script. Exiting..."
}
if [[ -z "$1" || ! -d "$ICON_DIR/$1" ]]; then
    printErr 'icon theme' 'first' " (as listed under '$ICON_DIR')"
    declare -i ERROR=1
fi
if [[ -z "$2" ]]; then
    printErr 'icon category' 'second'
    declare -i ERROR=2
fi
if [[ -z "$3" ]]; then
    printErr 'icon name' 'third' " (without extension)"
    declare -i ERROR=3
fi
[[ ! -z $ERROR ]] && exit $ERROR

## Find variants and save in array
## -----------------------------------------------------------------------------
## TODO
declare -a THEMES=("$1-Darkest" "$1-Darker" "$1-Dark" "$1" 'hicolor')

## Do the thing
## -----------------------------------------------------------------------------
function findIcon {
    find "$ICON_DIR/$1" -type f | grep "\/$2.*\/$3\." | sort | tail -n 1
}
for THEME in "${THEMES[@]}"; do
    [[ -z "$ICON" ]] && ICON=$(findIcon "$THEME" "$2" "$3")
done
echo "$ICON"
exit 0
