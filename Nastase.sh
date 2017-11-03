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

mkdir verifica30102017
cd verifica30102017
#voglio gestire la cartella progetto con git
git init

#COMMIT A
#creo file1.txt
touch file1.txt

touch file1.txt
git add file1.txt
git commit -m "commit A"
#COMMIT B
#modifico file1.txt
echo "scrivo in file1" > file1.txt

echo "scrivo in file1" > file1.txt
git add file1.txt
git commit -m "commit B"
#COMMIT C
#creo file2.txt
touch file2.txt


#COMMIT D
#creo file3.txt
touch file3.txt


#COMMIT E
#modifico file3.txt
echo "scrivo in file3" > file3.txt


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

1278  mkdir verifica30102017
 1279  cd verifica30102017
 1280  git init
 1281  touch file1.txt
 1282  git add file1.txt
 1283  git commit -m "commit A"
 1284  echo "scrivo in file1" > file1.txt
 1285  git add file1.txt
 1286  git commit -m "commit B"
 1287  touch file2.txt
 1288  git add file2.txt
 1289  git commit -m "commit C"
 1290  gitk --all &
 1291  git log --oneline
 1292  git checkout 9e7132d
 1293  touch file3.txt
 1294  git add file3.txt
 1295  git commit -m "commit D"
 1296  echo "scrivo in file3" > file3.txt
 1297  git add file3.txt
 1298  git commit -m "commit E"
 1299  git log --oneline
 1300  git checkout master
 1301  git merge f2eef15
 1302  git branch B 95d7f61
 1303  git branch -d B
 1304  git merge acbf26b
 1305  history
 1306  git branch -d B
 1307  git log --oneline
 1308  git branch B bdd5dcb
 1309  git branch C f2eef15
 1310  git branch D 95d7f61
 1311  git branch E acbf26b
 1312  git branch remotes/origin/master ac3fb2a
 1313  git checkout 9e7132d
 1314  touch file4.txt
 1315* git add file5.txt
 1316  git commit -m "commit F"
 1317  touch file5.txt
 1318  git add file5.txt
 1319  git commit -m "commit G"
 1320  git log --oneline
 1321  git branch F d309f3b
 1322  git branch G 184b81a
 1323  git checkout master
 1324  git cherry-pick F
 1325  git cherry-pick G
 1326  git log --oneline
 1327  git branch H 1ebf7f5
 1328  git branch A 9e7132d

