CONVERT=docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.9

SRC = $(wildcard *.md)               	# list of source files
OBJS = $(patsubst %.md, %.pdf, $(SRC)) 	# list of object files

%.pdf : %.md
	$(CONVERT) $< -o target/$@

prepare:
	mkdir target

all : clean prepare $(OBJS)

clean:
	rm -rf target
