
Debian
====================
This directory contains files used to package umbrud/umbru-qt
for Debian-based Linux systems. If you compile umbrud/umbru-qt yourself, there are some useful files here.

## umbru: URI support ##


umbru-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install umbru-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your umbru-qt binary to `/usr/bin`
and the `../../share/pixmaps/umbru128.png` to `/usr/share/pixmaps`

umbru-qt.protocol (KDE)

