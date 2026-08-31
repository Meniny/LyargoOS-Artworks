PREFIX ?= /usr
DESTDIR ?=

install: install-wallpapers install-logos install-splash install-grub install-kde

install-wallpapers:
	install -d $(DESTDIR)$(PREFIX)/share/wallpapers
	cp -a wallpapers-plasma/* $(DESTDIR)$(PREFIX)/share/wallpapers/

install-logos:
	install -d $(DESTDIR)$(PREFIX)/share/pixmaps
	cp -a logos/* $(DESTDIR)$(PREFIX)/share/pixmaps/
	install -d $(DESTDIR)$(PREFIX)/share/icons/hicolor/scalable/apps
	cp -a logos/lyargoos-logo.svg $(DESTDIR)$(PREFIX)/share/icons/hicolor/scalable/apps/

install-splash:
	install -d $(DESTDIR)$(PREFIX)/share/lyargoos
	cp -a splash/* $(DESTDIR)$(PREFIX)/share/lyargoos/

install-grub:
	install -d $(DESTDIR)/boot/grub
	cp -a grub/grub.png $(DESTDIR)/boot/grub/grub-background.png

install-kde: install-kde-colors install-kde-sddm install-kde-desktop

install-kde-colors:
	install -d $(DESTDIR)$(PREFIX)/share/color-schemes
	cp -a kde/color-schemes/* $(DESTDIR)$(PREFIX)/share/color-schemes/

install-kde-sddm:
	install -d $(DESTDIR)$(PREFIX)/share/sddm/themes/lyargoos
	cp -a kde/sddm-theme/* $(DESTDIR)$(PREFIX)/share/sddm/themes/lyargoos/

install-kde-desktop:
	install -d $(DESTDIR)$(PREFIX)/share/plasma/desktoptheme/lyargoos
	cp -a kde/desktop-theme/* $(DESTDIR)$(PREFIX)/share/plasma/desktoptheme/lyargoos/

.PHONY: install install-wallpapers install-logos install-splash \
	install-grub install-kde install-kde-colors install-kde-sddm install-kde-desktop
