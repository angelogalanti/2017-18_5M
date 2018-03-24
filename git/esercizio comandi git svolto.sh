#creo la cartella del progetto e le sottocartelle
mkdir esercizio1
cd esercizio1

#voglio gestire la cartella progetto con git
git init

#COMMIT A
#creo file vuoto
touch index.html
git add index.html
git commit -m "creato il file vuoto index.html"
git branch A

#COMMIT B
#modifico il file e aggiorno l'index
echo "<head><link rel="stylesheet" type="text/css" href="style.css"><script src="functions.js"></script></head>" >> index.html
echo "<div id="1">ciao</div>" >> index.html
echo "<div id="2">mondo</div>" >> index.html
git add index.html
git commit -m "modificato index.html"
git branch B

#COMMIT C
#aggiungo il css rosso
echo "div { color:red;}" >> style.css
git add style.css
git commit -m "primo paragrafo rosso"
git branch C

#COMMIT D
#torno su b e creo un altro branch con css verde
git checkout B
git branch D
git checkout D
echo "div { color:green;}" >> style.css
git add style.css
git commit -m "secondo paragrafo verde"

#COMMIT D
#aggiungo un file javascript
git branch E
git checkout E
echo "alert('ciao');" >> functions.js
git add functions.js
git commit -m "aggiunto il javascript"

git checkout master
git cherry-pick E



