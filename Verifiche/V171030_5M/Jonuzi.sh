# VERIFICA 5M 29/10/17
# NOME: Hazret
# COGNOME: Jonuzi

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
cd verifica291017
git init 


#COMMIT A
#creo file1.txt
git branch A
touch file1.txt
git add file1.txt
git commit -m "Commit A, creo file1"


#COMMIT B
#modifico file1.txt
git branch B
git checkout B
echo "scrivo in file1" > file1.txt
git add file1.txt
git commit -m "Commit B, modifico file1"


#COMMIT C
#creo file2.txt
git branch C
git checkout C
touch file2.txt
git add file2.txt
git commit -m "Commit C, creo file2"


#COMMIT D
#creo file3.txt
git checkout A
git branch D
git checkout D
touch file3.txt
git add file3.txt
git commit -m "Commit D, creo file3"


#COMMIT E
#modifico file3.txt
git branch E
git checkout E
echo "scrivo in file3" > file3.txt
git add file3.txt
git commit -m "Commit E, modifico file3"


#unisco le modifiche fatte sul ramo E al master
git checkout master
git merge E


#COMMIT F
#creo file4.txt
git checkout A
git branch F
git checkout F
touch file4.txt
git add file4.txt
git commit -m "Commit F, creo file4"


#COMMIT G
#creo file5.txt
git branch G
git checkout G
touch file5.txt
git add file5.txt
git commit -m "Commit G, creo file5"


#creo etichetta H e mi sposto su H
git branch H
git checkout H


# sposto F e G ed H sul master
git rebase master

git branch FILE
git checkout FILE
git touch fileverifica.txt
echo "(ho copiato il contenuto di questo file)" > fileverifica.txt
git add fileverifica.txt
git commit -m "Commit contenente il file della verifica"


# sincronizzo il repository locale con il mio account github


# invio una richiesta di collaborazione a angelogalanti
#https://help.github.com/articles/inviting-collaborators-to-a-personal-repository/
