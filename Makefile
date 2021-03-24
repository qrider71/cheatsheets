CONVERT=docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.9 -V geometry:margin=1cm

SRC = $(wildcard *.md)               	# list of source files
OBJS = $(patsubst %.md, %.pdf, $(SRC)) 	# list of object files

%.pdf : %.md
	$(CONVERT) $< -o target/$@

all : clean prepare $(OBJS)

clean:
	rm -rf target

prepare:
	mkdir target


