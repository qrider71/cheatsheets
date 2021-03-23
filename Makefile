CONVERT=docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.9

%.pdf : %.md
	$(CONVERT) $< -o target/$@

prepare:
	mkdir target

all: prepare README.pdf Docker.pdf Keycloak.pdf Kustomize.pdf Maven.pdf Openshift.pdf

clean:
	rm -rf target
