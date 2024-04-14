#!/bin/bash

# Check if an external keyboard is connected
if [ $(xinput list | grep -c "AT Translated Set 2 keyboard") -gt 0 ]; then
  # Detach the internal keyboard
  xinput float "AT Translated Set 2 keyboard"
else
  # Reattach the internal keyboard
  xinput reattach "AT Translated Set 2 keyboard"
fi
