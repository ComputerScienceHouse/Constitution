# Source files
TEXFILES=articles.tex bylaws.tex

# Binaries
PDFLATEX=pdflatex

# Generated files
PDFFILES=$(TEXFILES:.tex=.pdf)

.PHONY: all clean

all:
	$(PDFLATEX) `git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{Revision %h on %ad}'` '\input{articles.tex}'
	$(PDFLATEX) `git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{Revision %h on %ad}'` '\input{bylaws.tex}'
	$(PDFLATEX) `git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{Revision %h on %ad}'` '\input{articles.tex}'
	$(PDFLATEX) `git log -1 --date=short --format=format:'\newcommand{\RevisionInfo}{Revision %h on %ad}'` '\input{bylaws.tex}'

clean:
	$(RM) $(PDFFILES)
