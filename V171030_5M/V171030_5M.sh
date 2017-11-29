# VERIFICA 5M 29/10/17
# NOME:
# COGNOME:

# A -- B -- C

# A -- B -- C -- master 
#   \    		/
#    D -- E --- 

# A -- B -- C -- master 
#  \      		/
#    D -- E --- 
#  \
#	 F -- G -- H

# sposto F e G e H sul master
# H non e' un vero commit ma solo un etichetta
# serve solo per evitare di spostare l'etichetta G

# A -- B -- C -- master -- F -- G -- H
#   \    		/
#    D -- E --- 
#  \
#	 F -- G -- H


#creo la cartella del progetto
mkdir verifica301017
#voglio gestire la cartella progetto con git


#COMMIT A
#creo file1.txt
touch file1.txt


#COMMIT B
#modifico file1.txt
echo "scrivo in file1" > file1.txt


#COMMIT C
#creo file2.txt
touch file2.txt


#COMMIT D
#creo file3.txt
touch file3.txt


#COMMIT E
#modifico file3.txt
echo "scrivo in file3" > file3.txt


#unisco le modifiche fatte sul ramo E al master


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