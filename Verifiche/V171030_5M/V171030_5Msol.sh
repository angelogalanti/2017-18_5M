# A -- B -- C

# A -- B -- C -- master 
#   \    		/
#    D -- E --- 

# A -- B -- C -- master 
#   \    		/
#    D -- E --- 
#	  \
#	   F -- G -- H

# sposto F e G e H sul master
# H non e' un vero commit ma solo un etichetta
# serve solo per evitare di spostare l'etichetta G

# A -- B -- C -- master -- F -- G -- H
#   \    		/
#    D -- E --- 
#	  \
#	   F -- G -- H


#creo la cartella del progetto e le sottocartelle
#voglio gestire la cartella progetto con git
mkdir esercizio2
cd esercizio2
git init

#COMMIT A
#creo file1.txt
touch file1.txt
git add -A
git commit -am "commit A"
git branch A
#git add -A: add all files to stage
#git commit -a: Tell the command to automatically stage files that have been modified and deleted, but new files you have not told Git about are not affected.

#COMMIT B
#modifico file1.txt
echo "scrivo in file1" > file1.txt
git commit -am "commit B"
git branch B

#COMMIT C
#creo file2.txt
touch file2.txt
git add -A
git commit -am "commit C"
git branch C

#COMMIT D
#creo file3.txt
git checkout -b D A
touch file3.txt
git add -A
git commit -am "commit D"

#COMMIT E
#modifico file3.txt
git branch E
git checkout E
echo "scrivo in file3" > file3.txt
git commit -am "commit E"

#unisco le modifiche fatte sul ramo D al master
git checkout master
git merge E

#COMMIT F
#creo file4.txt
git checkout -b F A
touch file4.txt
git add -A
git commit -am "commit F"

#COMMIT G
#creo file5.txt
git checkout -b G
touch file5.txt
git add -A
git commit -am "commit G"
git checkout -b H

# sposto F e G ed H sul master
git rebase master

# sincronizzo il repository locale con il mio account github
git remote add origin https://github.com/angelogalanti/esercizio2.git
git push -u origin master

# invio una richiesta di collaborazione a angelogalanti
#https://help.github.com/articles/inviting-collaborators-to-a-personal-repository/
