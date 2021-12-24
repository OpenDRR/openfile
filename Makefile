all: html pdf

html:
	asciidoctor -D public/en en/pathways-paper.adoc
	cp -av en/img public/en/
	asciidoctor -D public/fr fr/article-sur-les-voies-d’accès.adoc
	# cp -av fr/img public/fr/

pdf:
	asciidoctor-pdf -D public/en en/pathways-paper.adoc
	asciidoctor-pdf -D public/fr fr/article-sur-les-voies-d’accès.adoc

.PHONY: all html pdf
