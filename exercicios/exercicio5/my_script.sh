#!/bin/bash

echo "$DESKTOP_SESSION" > machine.inf
echo "$USERNAME" >> machine.inf
echo "$LANG" >> machine.inf
echo "$XDG_SESSION_DESKTOP" >> machine.inf