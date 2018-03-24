# VERIFICA 5M 29/10/17
# NOME: Andrea
# COGNOME: Giulianelli

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
git commit -m "Commit A"
git branch A


#COMMIT B
#modifico file1.txt
echo "scrivo in file1" > file1.txt
git commit -am "commit B"
git branch B



#COMMIT C
#creo file2.txt
touch file2.txt
git add file2.txt
git commit -m "commit C"
git branch C


#COMMIT D
#creo file3.txt
git checkout A
git checkout -b D
touch file3.txt
git add file3.txt
git commit -m "commit D"



#COMMIT E
#modifico file3.txt
git checkout -b E
echo "scrivo in file3" > file3.txt
git commit -am "commit E"



#unisco le modifiche fatte sul ramo D al master
git checkout master
git merge E



#COMMIT F
#creo file4.txt
git checkout A
git checkout -b F
touch file4.txt
git add file4.txt
git commit -m "commit F"


#COMMIT G
#creo file5.txt
git checkout -b G
touch file5.txt
git add file5.txt
git commit -m "commit G"


#creo etichetta H e mi sposto su H
git checkout -b H

# sposto F e G ed H sul master
git rebase master

#sincronizzo il repository locale con il mio account github
git remote add origin https://github.com/AndreaGiulianelli/verifica291017.git
git push origin master

# invio una richiesta di collaborazione a angelogalanti
#https://help.github.com/articles/inviting-collaborators-to-a-personal-repository/