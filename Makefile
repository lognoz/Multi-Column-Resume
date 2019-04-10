# See LICENSE file for copyright and license details.

pdf:
	@echo Compile resume.tex
	cd src/ && lualatex resume.tex

clean:
	@echo Remove compilation files
	rm -f src/*.{aux,log,out}

.PHONY: clean pdf
