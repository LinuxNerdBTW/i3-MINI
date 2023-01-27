#!/bin/bash
#

wal -n -i ~/.config/i3/wallpapers/
feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"
