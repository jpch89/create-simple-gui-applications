all: clean build

build:
	asciidoctor-pdf -o build/create-simple-gui-applications.pdf Book.adoc
	asciidoctor-epub3 -o build/create-simple-gui-applications.epub -a ebook-validate Book.adoc
	asciidoctor-epub3 -o build/create-simple-gui-applications.mobi -a ebook-format=kf8 Book.adoc
	asciidoctor-pdf -o build/sample.pdf Sample.adoc

clean:
	rm -r ./build
 
