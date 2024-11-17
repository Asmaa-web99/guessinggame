#!/bin/bash
function count_files {
echo "Combien de fichiers y a-t-il dans le répertoire courant ?"
read user_guess
actual_files=$(ls -1 | wc -l)
while [[ $user_guess -ne $actual_files ]]
do
if [[ $user_guess -lt $actual_files ]]
then
echo "Votre estimation est trop basse. Réessayez."
else
echo "Votre estimation est trop haute. Réessayez."
fi
read user_guess
done
echo "Bravo, vous avez deviné le bon nombre de fichiers !"
}
count_files
