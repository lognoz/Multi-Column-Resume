# See LICENSE file for copyright and license details.

all: pdf clean image

pdf:
	@cd src/ && lualatex resume.tex
	@mv src/resume.pdf output/

clean:
	@rm -f src/*.{aux,log,out}

image:
	@python src/script/doc.py

.PHONY: clean pdf image all
