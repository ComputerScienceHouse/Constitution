# Source files
TEXFILES=articles.tex bylaws.tex

# Binaries
PDFLATEX=pdflatex

# Generated files
PDFFILES=$(TEXFILES:.tex=.pdf)

.PHONY: all clean pdf

all: pdf

pdf: $(PDFFILES)

clean:
	$(RM) $(PDFFILES)

%.pdf %.log: %.tex
	$(PDFLATEX) `git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{Revision %h on %ad}'` '\input{$<}'
	$(PDFLATEX) `git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{Revision %h on %ad}'` '\input{$<}'
