help : ; @cat Makefile 
yudit_pdf := $(wildcard yudit_*.pdf)

txt : $(yudit_pdf:.pdf=.txt)

# yudit_*.pdf stazeno z vyuka Jiri Zacpal
vpath ./media
%.txt : %.pdf ; pdftotext $< $@

mediadir = $(HOME)/bule.cz/data/media/YUDIT
install :
	test -d $(mediadir) || mkdir -p $(mediadir)
	cp *.pdf $(mediadir)
