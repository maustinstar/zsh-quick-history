#!/usr/bin/env zsh

# ZLE Interface
quick-history-execute() {
  region_highlight+=("$#BUFFER $(($#BUFFER + $#POSTDISPLAY)) fg=green")
  BUFFER+="$POSTDISPLAY"
  POSTDISPLAY=""
  zle .accept-line
}

quick-history-preview() {
  exec 2>/dev/null
  POSTDISPLAY="$(fc -ln "${BUFFER}" | head -n 1)"
  if [[ POSTDISPLAY =~ ".*event not found.*" ]] ; then
    POSTDISPLAY=""
  else
    POSTDISPLAY="${POSTDISPLAY:$#BUFFER}"
  fi
  region_highlight+=("$#BUFFER $(($#BUFFER + $#POSTDISPLAY)) fg=yellow")
  exec 2>/dev/tty
}

zle-line-pre-redraw() {
  quick-history-preview
}

zle -N quick-history-execute
zle -N quick-history-preview
zle -N zle-line-pre-redraw
# -*- mode: zsh; sh-indentation: 2; indent-tabs-mode: nil; sh-basic-offset: 2; -*-
# vim: ft=zsh sw=2 ts=2 et
