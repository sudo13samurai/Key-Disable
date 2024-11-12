# Key-Disable

This script checks if an external keyboard is connected and detaches the internal keyboard if one is present. If no external keyboard is detected, it reattaches the internal keyboard.
Usage
Copy

./keydisable.sh

Requirements

    xinput command

Setup

Create a new file called disable_internal_keyboard.sh

Insert the following into the file and save:

#!/bin/bash

# Get the ID of the internal keyboard
keyboard_id=$(xinput list | grep -Ei "Internal keyboard" | grep -Eo "id=[0-10]+" | cut -d= -f2)

# Disable the internal keyboard
xinput disable "$keyboard_id"

# Print a message to the user
echo "Internal keyboard disabled."

Make sure the script is executable:

chmod +x keydisable.sh

Test by running ./disable_internal_keyboard.sh

Troubleshooting

If the script does not work, try the following:

    Ensure that the xinput command is installed.
    Check that the internal keyboard is properly connected.
    Verify that the external keyboard is properly connected.
    If the script still does not work, try restarting your computer.
