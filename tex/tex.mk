TEX_NAME := $(TITLE)_$(DATE).tex
PDF_NAME := $(TEX_NAME:.tex=.pdf)
TEX_FILES := $(TEX_NAME) header.tex

TEX_DIR := ../tex

PDFS := $(PDF_NAME) application.pdf
CCBY := $(TEX_DIR)/by.eps

RM := rm -f
SED := sed
CP  := cp
TEX := pdflatex
RST2PDF := rst2pdf

.PHONY: all pdf clean distclean

all: pdf

pdf: $(PDFS)

clean:
	$(RM) $(TEX_FILES)
	$(RM) $(notdir $(CCBY)) *-converted-to.pdf
	$(RM) *.out *.aux *.nav *.log *.snm *.toc

distclean: clean
	$(RM) $(PDFS)
	$(RM) *~

header.tex: $(TEX_DIR)/header.tex
	$(SED) -e's/@DATE@/$(DATE)/' $< > $@
	$(CP) $(CCBY) .

$(TEX_NAME): $(TITLE).tex
	$(CP) $< $@

$(PDF_NAME): $(TEX_FILES)
	$(TEX) $(TEX_NAME)
	$(TEX) $(TEX_NAME)
	$(TEX) $(TEX_NAME)

%.pdf: %.rst
	$(RST2PDF) $<
