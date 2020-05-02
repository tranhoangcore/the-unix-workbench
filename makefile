README:
	touch README.md
	echo "#Guessing Game" > README.md
	echo >> README.md
	echo "Time and Date: " >> README.md
	date >> README.md
	echo >> README.md
	echo "Number of line: " >> README.md
	wc -l guessinggame.sh >> README.md
