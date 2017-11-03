# VERIFICA 5M 29/10/17
# NOME: DAVIDE
# COGNOME: TENTONI

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
mkdir file1
touch file1.txt
add file1.txt
commit -m"commit A"
git branch A

#COMMIT B
#modifico file1.txt
echo "scrivo in file1" > file1.txt
git add file1.txt
commit -m"commit B"
git branch B

#COMMIT C
#creo file2.txt
mkdir file2
touch file2.txt
add file2.txt
commit -m"commit C"
git branch C

#COMMIT D
#creo file3.txt
//ho fatto il commit D senza tornare su A
mkdir file3
touch file3.txt
add file3.txt
commit -m"commit D"
git branch D


//torno su A
git log --oneline
f3b4db9 commit A
git checkout f3b4db9

//creo un nuovo commit D1 che sostituisce il D
mkdir file4
touch file4.txt
add file4.txt
commit -m"commit D1"
git branch D1

#COMMIT E
#modifico file3.txt
echo "scrivo in file3" > file3.txt
git add file3.txt
commit -m"commit E"
git branch E


#unisco le modifiche fatte sul ramo D al master


#COMMIT F
#creo file4.txt
touch file4.txt


#COMMIT G
#creo file5.txt
touch file5.txt


#creo etichetta H e mi sposto su H


# sposto F e G ed H sul master


# sincronizzo il repository locale con il mio account github


# invio una richiesta di collaborazione a angelogalanti
#https://help.github.com/articles/inviting-collaborators-to-a-personal-repository/
