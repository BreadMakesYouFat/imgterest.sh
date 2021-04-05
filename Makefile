PREFIX = /usr/local
EXE = imgterest.sh

.PHONY: install
install: $(EXE)
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp $< $(DESTDIR)$(PREFIX)/bin/$(EXE)

.PHONY: local
local: $(EXE)
	mkdir -p ~/bin
	cp $< ~/bin/$(EXE)

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(EXE)

