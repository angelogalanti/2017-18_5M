# VERIFICA 5M 29/10/17
# NOME:
# COGNOME:

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
mkdir verifica301017
cd verifica301017
git init

#voglio gestire la cartella progetto con git


#COMMIT A
#creo file1.txt
touch file1.txt
git add file1.txt
git commit -m "Commit A"
git branch A 
#c1bc6f0


#COMMIT B
#modifico file1.txt
echo "scrivo in file1" > file1.txt
git add file1.txt
git commit -m "Commit B"
git branch B 
#ca23aeb


#COMMIT C
#creo file2.txt
touch file2.txt
git add file2.txt
git commit -m "Commit C"
git branch C 
#504bad3

#COMMIT D
#creo file3.txt
git checkout A
touch file3.txt
git add file3.txt
git commit -m "Commit D"
git branch D 0e4254d


#COMMIT E
#modifico file3.txt
echo "scrivo in file3" > file3.txt
git add file3.txt
git commit -m "Commit E"
git branch E c4f5607

#unisco le modifiche fatte sul ramo D al master
git checkout master
git merge E

#COMMIT F
#creo file4.txt
git checkout A (me lo sono dimenticato nella verifica)
touch file4.txt
git add file4.txt
git commit -m "Commit F"
git branch F

#COMMIT G
#creo file5.txt
touch file5.txt
git add file5.txt
git commit -m "Commit G"
git branch G


#creo etichetta H e mi sposto su H
git branch H
git checkout H

# sposto F e G ed H sul master
git checkout master
git merge F G H

# sincronizzo il repository locale con il mio account github


# invio una richiesta di collaborazione a angelogalanti
#https://help.github.com/articles/inviting-collaborators-to-a-personal-repository/
