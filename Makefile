
.PHONY: all clean

all:
	mkdir -p out out/include out/chapters
	latexmk -pdf -cd -outdir=../out -jobname=stochastic_analysis -interaction=nonstopmode -file-line-error ./src/main
	cp out/stochastic_analysis.pdf .

clean:
	rm -rf ./out
	rm -f stochastic_analysis.pdf
