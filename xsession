# .xsession - Script run when you log into X.
#
# This script should contain everything you want run when you log into X.
# The last command should be whatever window manager you want to run, and
# any processes you want to run for the duration of you X session (eg
# xscreensaver, idesk) should be backgrounded with &, otherwise your window
# manager will not start. See X(7) for more details.

# Load X application resources.
xrdb ~/.xresources

# Turn off beeps.
xset -b

# Load keyboard map modifications.
xmodmap ~/.xmodmaprc

# Start xscreensaver.
/usr/local/bin/xscreensaver &


# Set mouse speed
/usr/X11R6/bin/xset m 5 &

# Start xrootconsole.
#/usr/local/bin/xrootconsole -fg white -bg black -geometry 80x4+0+720 \
#/var/log/messages -fn -*-terminus-*-*-*-*-12-*-*-*-*-*-*-* &

# Start fluxbox.
/usr/local/bin/fluxbox -log .fluxbox/log

# Start ion3.
#/usr/local/bin/ion3

# Start kde.
#/usr/local/bin/startkde
