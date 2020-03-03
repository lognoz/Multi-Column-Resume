# See LICENSE file for copyright and license details.

all: pdf clean image commit

pdf:
	@cd src/ && lualatex resume.tex
	@mv src/resume.pdf output/

clean:
	@rm -f src/*.{aux,log,out}

image:
	@rm -f output/resume.*.png
	@python src/script/doc.py
	@rm -f output/resume.png

commit:
	@git add output/ README.md
	@git commit -m "Update resume pdf and documentation"

.PHONY: clean pdf image all
