all: guessinggame.sh
bash guessinggame.sh
clean:
rm -f README.md
README.md: guessinggame.sh
echo "# Jeu de devinette" > README.md
echo "" >> README.md
echo "Généré le $(shell date)" >> README.md
echo "" >> README.md
echo "Le script 'guessinggame.sh' contient $(shell wc -l < guessinggame.sh) lignes de code." >> README.md
