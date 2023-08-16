all: README.md
README.md: guessinggame.sh
	echo "GuessingGame<br>" > README.md
	echo $$(date)"<br>" >> README.md
	echo $$(cat guessinggame.sh | wc -l) >> README.md
clean:
	rm README.md
