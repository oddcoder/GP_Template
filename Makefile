BUILDFOLDER = build
BUILD = $(shell pwd)/$(BUILDFOLDER)
OUTPUT_FILENAME = thesis
BIB_FILE=thesis.bib
CHAPTERS = chapters/*.md
LATEX_CLASS = report
MATH_FORMULAS = --webtex
TEMPLATE = --template=template.tex
NATBIB = --natbib -V biblio-files:$(shell pwd)/$(BIB_FILE)
A5SIZE = -V papersize:a5
ARGS = $(NATBIB) $(MATH_FORMULAS) $(TEMPLATE)
ARTIFACT=$(shell date).zip
all: dir A4

zip: clean dir A4
	zip -r "$(ARTIFACT)" $(BUILD)
	mv "$(ARTIFACT)" $(BUILD)


dir:
	mkdir -p $(BUILD)/pdf
	mkdir -p $(BUILD)/tex
clean:
	rm -rf $(BUILD)


A4:
	pandoc $(ARGS) -V documentclass=$(LATEX_CLASS) -V linkcolor=blue --highlight-style pygments $(CHAPTERS) -o $(BUILD)/tex/$(OUTPUT_FILENAME)_A4.tex
	(cd $(BUILD)/ && xelatex -output-directory=$(BUILD)/tex/ $(BUILD)/tex/$(OUTPUT_FILENAME)_A4.tex)
	(cd $(BUILD)/tex/ && bibtex $(OUTPUT_FILENAME)_A4.aux)
	(cd $(BUILD)/ && xelatex -output-directory=$(BUILD)/tex/ $(BUILD)/tex/$(OUTPUT_FILENAME)_A4.tex)
	(cd $(BUILD)/ && xelatex -output-directory=$(BUILD)/tex/ $(BUILD)/tex/$(OUTPUT_FILENAME)_A4.tex)
	cp $(BUILD)/tex/$(OUTPUT_FILENAME)_A4.pdf $(BUILD)/pdf/$(OUTPUT_FILENAME)_A4.pdf
	
