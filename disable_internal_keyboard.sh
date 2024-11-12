#!/bin/bash

# Get the ID of the internal keyboard
keyboard_id=$(xinput list | grep -Ei "Internal keyboard" | grep -Eo "id=[0-10]+" | cut -d= -f2)

# Disable the internal keyboard
xinput disable "$keyboard_id"

# Print a message to the user
echo "Internal keyboard disabled."
