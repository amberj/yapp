# FILE        Makefile
# AUTHOR      Amber Jain <i.amber.jain@gmail.com>
# LICENSE     ISC
# DESCRIPTION A script to download, build, test, install and package OpenCog

# Thanks to John MacFarlane's Makefile tip (from which this Makefile is derived):
# http://stackoverflow.com/a/11030209 

# Input
INPUT_MARKDOWN_FILES=$(wildcard *.markdown)

# PDF output directory
OUTPUT_PDF_DIR=pdf

# Output
OUTPUT_PDFS=$(patsubst %.markdown,$(OUTPUT_PDF_DIR)/%.pdf, $(INPUT_MARKDOWN_FILES))

.PHONY : all

all : $(OUTPUT_PDFS)

$(OUTPUT_PDF_DIR) :
	mkdir $(OUTPUT_PDF_DIR)

$(OUTPUT_PDF_DIR)/%.pdf : %.markdown $(OUTPUT_PDF_DIR)
	pandoc -f markdown -t beamer -s $< -o $@
