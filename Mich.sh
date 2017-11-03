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
mkdir verifica291017
#voglio gestire la cartella progetto con git
cd verifica291017
git init
#COMMIT A
#creo file1.txt
mkdir file1
touch file1.txt
git add file1.txt
git commit -m "commit a"

#COMMIT B
#modifico file1.txt
echo "scrivo in file1" > file1.txt
git add file1.txt
git commit -m "commit b"
#COMMIT C
#creo file2.txt
mkdir file2
touch file2.txt
git add file2.txt
git commit -m "commit c"
git log --oneline
git checkout (chiave)
#COMMIT D
#creo file3.txt
mkdir file3
touch file3.txt
git add file3.txt
git commit -m "commit d"
#COMMIT E
#modifico file3.txt
echo "scrivo in file3" > file3.txt
git add file3.txt
git commit -m "commit e"
#unisco le modifiche fatte sul ramo D al master
git merge

#COMMIT F
#creo file4.txt
touch file4.txt


#COMMIT G
#creo file5.txt
touch file5.txt


#creo etichetta H e mi sposto su H


# sposto F e G ed H sul master


# sincronizzo il repository locale con il mio account github

  288  mkdir verifica291017
  289  cd verifica291017
  290  git commit -m "a"
  291  git init
  292  git commit -m "a"
  293  git config --global user.email "oscarmich9926@gmail.com"
  294  git config -- global user.name "oscar"
  295  git config --global user.name "oscar"
  296  git commit -m "a"
  297  git commit -m "b"
  298  git commit -m "c"
  299  gitk --all
  300  git
  301  sudo apt install gitk
  302  gitk --all
  303  gitk
  304  ls
  305  history 
  306  git log --oneline
  307  git commit -m "a"
  308  touch file1.txt
  309  gitk 
  310  mkdir file1
  311  touch file1.txt
  312  git add file1.txt
  313  git commit -m "commit a"
  314  gitk
  315  git commit -m "commit b"
  316  echo "scrivo in file1" > file1.txt
  317  gitk
  318  git add file1.txt
  319  git commit -m "commit b"
  320  gitk
  321  mkdir file2
  322  touch file2.txt
  323  git add file2.txt
  324  git commit -m "commit c"
  325  gitk
  326  mkdir file3
  327  touch file3.txt
  328  git add file3.txt
  329  git commit -m "commit d"
  330  gitk
  331  git log --oneline
  332  git checkout a58b6fe
  333  gitk



# invio una richiesta di collaborazione a angelogalanti
#https://help.github.com/articles/inviting-collaborators-to-a-personal-repository/
