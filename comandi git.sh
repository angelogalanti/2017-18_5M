# #per installare git o gitk
# sudo apt update
# sudo apt install git

# #opzioni di configurazione da eseguire solo una volta
# git config --global user.name "Angelo Galanti"
# git config --global user.email angelogalanti@gmail.com

# #mostra lo stato del progetto da interfaccia grafica
# gitk --all
# #mostra lo stato del progetto da terminale
# git log --oneline
# git log --graph --all --oneline

# #mostra il branch su cui sono
# git branch

######################################################

#creo la cartella del progetto e le sottocartelle
#LIVELLO 1 i file sono nel filesystem
mkdir progetto
cd progetto
mkdir libs
touch libs/foo.txt
mkdir templates
touch templates/bar.txt

#voglio gestire la cartella progetto con git
git init

#LIVELLO 2 aggiungo due file all'index
git add libs/foo.txt
git add templates/bar.txt

#LIVELLO 3 aggiungo i file al repository
#COMMIT A
# A
git commit -m "commit A, il mio primo commit"
#assegno un etichetta al branch 
git branch A

#modifico il file e aggiorno l'index
echo "nel mezzo del cammin" >> libs/foo.txt
git add libs/foo.txt

#aggiungo un nuovo file all'index
echo "happy happy joy joy" > doh.html
git add doh.html

#aggiungo i file al repository
#COMMIT B
# A -- B
git commit -m "Commit B, Il mio secondo commit"
#assegno un etichetta al branch 
git branch B

#torno sul commit A
###git checkout 56674fb # modificare
git checkout A

#aggiungo un file, inserisco nel index e nel repo
#COMMIT C
# A -- B
#   \
#    C 
#assegno un etichetta al branch 
git branch C
#mi sposto su C
git checkout C
echo "ei fu siccome immobile" > README.md
git add README.md
git commit -m "Ecco il commit C"

#assegno un etichetta al branch (commit A)
###git branch bob 56674fb # qui sto usando la chiave del commit A

#assegno un etichetta al (commit C)
###git branch piccio

#elimino un etichetta
###git branch -d bob
###git branch -d piccio

#mi sposto sul branch principale (commit B)
git checkout master

#creo un nuovo branch (per ora coincide con il master)
git branch dev

#mi sposto su dev
git checkout dev

#creo file, aggiungo ad index ed al repo (commit D)
# A -- B -- D
#   \
#    C 
touch style.css
git add style.css
git commit -m "Adesso ho anche il css"
#assegno un etichetta al branch 
git branch D

#mi sposto su master (commit B)
git checkout master

#creo file, aggiungo ad index ed al repo (commit E)
# A -- B -- E
#   \    \
#    C    D
touch angular.js
git add angular.js
git commit -m "angular.js rocks"
#assegno un etichetta al branch 
git branch E
#indica le differenze tra i due commit
git diff dev master

#faccio un nuovo commit a partire da D
# A -- B -- E
#   \    \
#    C    D -- F
git checkout dev
git branch experiment
git checkout experiment
touch experiment
git add experiment
git commit -m "un commit con un esperimento"
git branch F

#mi sposto sul master
git checkout master

#copio il branch experiment sul master
git cherry-pick experiment

git checkout -b feature    # scorciatoia per fare branch + checkout

touch feature && git add feature
git commit -m "feature"
git branch G

touch orribile-baco && git add orribile-baco
git commit -m "orrore e raccapriccio"
git branch H

touch altra-feature && git add altra-feature
git commit -m "altra feature"
git branch I

git checkout master
git branch --force feature
git checkout feature
git cherry-pick G
git cherry-pick I

#spostare un ramo di sviluppo
echo "a { color:red; }" >> style.css
git commit -am "i link sono rossi"
git branch J

git rebase master

git checkout -b sviluppo
touch file1 && git add file1 && git commit -m "avanzamento 1"
git branch K
touch file2 && git add file2 && git commit -m "avanzamento 2"
git branch L
touch file3 && git add file3 && git commit -m "avanzamento 3"
git branch M

#cherry-pick
git checkout dev
touch dev1 && git add dev1 && git commit -m "developer 1"
git branch N
touch dev2 && git add dev2 && git commit -m "developer 2"
git branch O

git checkout sviluppo
git rebase dev

#correggere un bug
git checkout -b sviluppo
touch file1 && git add file1 && git commit -m "avanzamento 1"
touch file2 && git add file2 && git commit -m "avanzamento 2"
touch file3 && git add file3 && git commit -m "avanzamento 3"

#spostare un ramo di sviluppo
git checkout dev
touch dev1 && git add dev1 && git commit -m "developer 1"
touch dev2 && git add dev2 && git commit -m "developer 2"

git checkout sviluppo
git rebase dev

#merge
git checkout -b bugfix dev

touch fix1 && git add fix1 && git commit -m "bugfixing 1"
touch fix2 && git add fix2 && git commit -m "bugfixing 2"

git checkout sviluppo
git merge bugfix

#fast-forward merge
git checkout dev
git merge sviluppo


git checkout dev
git merge sviluppo


git branch uno
git branch due
git branch tre
git branch quattro

git checkout uno
touch uno && git add uno && git commit -m "uno"

git checkout due
touch due && git add due && git commit -m "due"

git checkout tre
touch tre&& git add tre && git commit -m "tre"

git checkout quattro
touch quattro && git add quattro && git commit -m "e quattro"

git checkout dev
git merge uno due tre quattro

#REPO REMOTO
cd ..
mkdir repo-remoto
cd repo-remoto
git init

cd ../progetto

git remote add foobar ../repo-remoto

git fetch foobar

git push foobar experiment



