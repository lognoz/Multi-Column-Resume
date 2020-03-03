# See LICENSE file for copyright and license details.

all: pdf clean image

pdf:
	@cd src/ && lualatex resume.tex
	@mv src/resume.pdf ./

clean:
	@rm -f src/*.{aux,log,out}

image:
	@rm -f asset/resume.*.png
	@python src/script/doc.py
	@rm -f asset/resume.png

commit:
	@git add asset/ resume.pdf README.md
	@git commit -m "Update resume documentation and pdf file"

.PHONY: clean pdf image all
