#!/bin/bash

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# twm &
# xclock -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
# exec xterm -geometry 80x66+0+0 -name login

## some applications that should be run in the background
xscreensaver &
xsetroot -cursor_name left_ptr &

# The black/white grid as background doesn't suit my taste.
xsetroot -solid black &
# Ratpoison is compatible with xcompmgr! now you can have real transparency
xcompmgr -c -f -D 5 &
#fire up ratpoison!
exec /usr/bin/ratpoison
