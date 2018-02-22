readme.md:
	touch README.md
	touch guessinggame.sh
	echo "# Bash, Make, Git, and GitHub" >> README.md
	echo "## guessing game" >> README.md
	echo ""
	echo "Date and Time:" >> README.md
	echo `date` >> README.md
	echo ""
	echo "Number of code lines contained in **guessinggame.sh**:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
