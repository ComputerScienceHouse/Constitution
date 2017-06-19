# Source files
TEXFILES=articles.tex bylaws.tex

# Binaries
PDFLATEX=pdflatex

# Generated files
PDFFILES=$(TEXFILES:.tex=.pdf)

.PHONY: all clean

all:
	$(PDFLATEX) articles.tex `git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{Revision %h on %ad}'` '\input{$<}'
	$(PDFLATEX) bylaws.tex `git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{Revision %h on %ad}'` '\input{$<}'
	$(PDFLATEX) articles.tex `git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{Revision %h on %ad}'` '\input{$<}'
	$(PDFLATEX) bylaws.tex `git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{Revision %h on %ad}'` '\input{$<}'

clean:
	$(RM) $(PDFFILES)
