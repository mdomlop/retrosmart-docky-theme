pkgname=retrosmart-docky-theme
pkgver=1
installdir=/usr/share/docky/themes/

install:
	install -Dm644 src/background.svg "/usr/share/docky/themes/$(pkgname)/"
	install -Dm644 src/menu.svg "/usr/share/docky/themes/$(pkgname)/"
	install -Dm644 src/tooltip.svg "/usr/share/docky/themes/$(pkgname)/"
	install -Dm644 COPYING "/usr/share/licenses/$(pkgname)/LICENSE"
	install -Dm644 AUTHORS "/usr/share/doc/$(pkgname)/"
	install -Dm644 INSTALL "/usr/share/doc/$(pkgname)/"
	install -Dm644 README "/usr/share/doc/$(pkgname)/"
uninstall:
	rm -r "/usr/share/docky/themes/$(pkgname)/"
	rm -r "/usr/share/licenses/$(pkgname)/"
	rm -r "/usr/share/doc/$(pkgname)/"
togit:
	git add .
	git commit -m "Updated from makefile"
	git push origin
