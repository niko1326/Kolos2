#!/bin/bash

# a. Stworz folder o nazwie przekazanej jako parametr
folder_name=$1
mkdir "$folder_name"

# b. Przejdz do powstalego folderu
cd "$folder_name"

# c. Ustaw polaczenie ze zdalnym repozytorium
git init
git remote add origin git@github.com:niko1326/Kolos2.git

# d. Skopiuj oba skrypty do folderu z repozytorium
cp ../kolokwium_config.sh .
cp ../kolokwium.sh .

# e. Stworz plik ReadMe.MD z numerem indeksu studenta
echo "Numer indeksu: s31702" > ReadMe.MD

# f. Dodaj pliki do sledzenia
git add kolokwium_config.sh kolokwium.sh ReadMe.MD

# g. Zacommituj pliki z komentarzem "First commit"
git commit -m "First commit"

# h. Stworz galaz o nazwie "Test"
git branch Test
git checkout Test

# i. Dodaj nowe pliki o nazwach "Add.txt" i "Skip.txt"
echo "# Add.txt - 10 pierwszych linii skryptu kolokwium.sh" > Add.txt
head -n 10 kolokwium.sh >> Add.txt

echo "# Skip.txt - 10 ostatnich linii skryptu kolokwium.sh" > Skip.txt
tail -n 10 kolokwium.sh >> Skip.txt

# j. Wypelnij pliki i dodaj je do sledzenia
git add Add.txt Skip.txt

# k. Stworz plik gitignore, pomijajacy plik "Skip.txt"
echo "Skip.txt" > .gitignore

# l. Dodaj nowe pliki do sledzenia
git add .gitignore

# m. Zacommituj pliki z komentarzem "Test commit"
git commit -m "Test commit"

# n. Wrzuc zmiany na zdalne repozytorium do galezi "Test"
git push origin Test

# o. Przelacz sie na galeź główną
git checkout main

# p. Wrzuc zmiany na zdalne repozytorium do galezi głównej (main albo master)
git push origin main