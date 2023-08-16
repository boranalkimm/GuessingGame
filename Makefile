all: README.md
README.md: guessinggame.sh
	echo "GuessingGame" > README.md
	echo $$(date) >> README.md
	echo $$(cat guessinggame.sh | wc -l) >> README.md
clean:
	rm README.md