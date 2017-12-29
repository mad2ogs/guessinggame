all: README.md

README.md:
	echo "## Guessing Game for Coursera/JHU's The Unix Workbench course" > README.md
	echo "Create date: `date +%Y/%m/%d" "%T` \n" >> README.md
	echo "Number of lines in guessinggame.sh: `wc -l < ./guessinggame.sh`" >> README.md
clean:
	rm README.md
