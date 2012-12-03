BYTECOMPILE=emacs --batch -f batch-byte-compile

EL_FILES = $(shell find .emacs.d -name "*.el")
ELC_FILES = $(EL_FILES:.el=.elc)

.PHOENY: diff compile clean

compile: $(ELC_FILES)

clean:
	-rm -f $(ELC_FILES)

diff:
	diff -u .emacs ~/.emacs
	diff -u -r .emacs.d ~/.emacs.d

.el.elc:
	$(BYTECOMPILE) $<
