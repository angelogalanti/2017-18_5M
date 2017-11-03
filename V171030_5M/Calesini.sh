# VERIFICA 5M 29/10/17
# NOME:Federico
# COGNOME:Calesini

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


#creo la cartella del progetto
mkdir verifica291017
#voglio gestire la cartella progetto con git
git init

#COMMIT A
#creo file1.txt
touch file1.txt
git add file1.txt
git commit -m "commit A"
git branch A 54ce018

#COMMIT B
#modifico file1.txt
echo "scrivo in file1" > file1.txt
git add file1.txt
git commit -m "commit B"
git branch B 2d3cdb8


#COMMIT C
#creo file2.txt
touch file2.txt
git add file2.txt
git commit -m "commit C"
git branch C 9a54559


git checkout 54ce018
#COMMIT D
#creo file3.txt
touch file3.txt
git add file3.txt
git commit -m "commit D"
git branch D bc5daff


#COMMIT E
#modifico file3.txt
echo "scrivo in file3" > file3.txt
git add file3.txt
git commit -m "commit E"
git branch E a7f268

git merge E
#unisco le modifiche fatte sul ramo D al master
git checkout A

#COMMIT F
#creo file4.txt
touch file4.txt
git add file4.txt
git commit -m "commit F"
git branch F d484ac2

#COMMIT G
#creo file5.txt
touch file5.txt
git add file5.txt
git commit -m "commit G"
git branch G 5deea23

git checkout master
git cherry-pick G
#creo etichetta H e mi sposto su H


# sposto F e G ed H sul master


# sincronizzo il repository locale con il mio account github


# invio una richiesta di collaborazione a angelogalanti
#https://help.github.com/articles/inviting-collaborators-to-a-personal-repository/
