#!/bin/sh

# $1 - input: corne layout json file
# $2 - output: contra layout json file

# Convert corne layers to match contra layout
jq '.layers |= map(.[0:36] + ["KC_NO", "KC_NO", "KC_NO"] + .[36:] + ["KC_NO", "KC_NO", "KC_NO"])
    | .keyboard = "contra"
    | .layout = "LAYOUT_ortho_4x12"' \
        "$1" > "$2"
