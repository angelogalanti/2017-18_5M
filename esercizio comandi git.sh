#creo la cartella del progetto e le sottocartelle
mkdir esercizio1
cd esercizio1

#voglio gestire la cartella progetto con git
...

#COMMIT A
#creo file vuoto index.html

#COMMIT B
#modifico il file e aggiorno l'index
echo "<head><link rel="stylesheet" type="text/css" href="style.css"><script src="functions.js"></script></head>" >> index.html
echo "<div id="1">ciao</div>" >> index.html
echo "<div id="2">mondo</div>" >> index.html


#COMMIT C
#aggiungo il css rosso
echo "div { color:red;}" >> style.css

#COMMIT D
#torno su b e creo un altro branch d con css verde
echo "div { color:green;}" >> style.css

#COMMIT E
#aggiungo un file javascript
echo "alert('ciao');" >> functions.js

#torno sul master e faccio il cherry-pick del commit E



