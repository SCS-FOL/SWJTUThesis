MAIN    = main
NAME    = swjtuthesis

LATEXMK = latexmk -xelatex
SHELL   = bash

CLSFILES = swjtuthesis.cls swjtuthesis.sty
BSTFILES = swjtuthesis-numerical.bst
BIBFILE = ref/swjtu-ref.bib

SOURCES = \
	$(wildcard *.tex) \
	$(wildcard chapters/*.tex) \
	$(CLSFILES)

TEXMF = $(shell kpsewhich --var-value TEXMFHOME)

.PHONY: all main fast clean distclean install zip FORCE_MAKE

all: main

main: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex $(SOURCES) $(BSTFILES) $(BIBFILE) FORCE_MAKE
	$(LATEXMK) $<

fast:
	xelatex -interaction=nonstopmode -synctex=1 $(MAIN)

clean:
	$(LATEXMK) -c $(MAIN).tex

distclean:
	$(LATEXMK) -C $(MAIN).tex

install:
	mkdir -p $(TEXMF)/tex/latex/$(NAME)
	mkdir -p $(TEXMF)/bibtex/bst/$(NAME)
	cp $(CLSFILES) $(TEXMF)/tex/latex/$(NAME)
	cp $(BSTFILES) $(TEXMF)/bibtex/bst/$(NAME)
	@echo ">> Installed to $(TEXMF)"

zip: main
	ln -sf . $(NAME)
	zip -r $(NAME).zip \
		$(NAME)/main.tex \
		$(NAME)/chapters \
		$(NAME)/figures \
		$(NAME)/font \
		$(NAME)/ref \
		$(NAME)/*.cls \
		$(NAME)/*.sty \
		$(NAME)/*.bst \
		$(NAME)/Makefile \
		$(NAME)/README.md \
		$(NAME)/$(MAIN).pdf
	rm $(NAME)

FORCE_MAKE: