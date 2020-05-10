# M17_Repte2

### Exercici 1:

##### Walker class:

Objecte amb atributs x i y que representen la posició.

Té un constructor sense paràmetres que l'instancia amb valors x i y que es correponen al centre de la pantalla.

Té un metode **walk()** que el desplaça 1 pixel en direcció aleatoria.

Té un mètode **display()** que pinta un punt en la posició en la que està el walker

##### PVector class:

Objecte amb atributs x i y que representa la direcció del vector

Té un contructor amb paràmetres x_ i y_ per instanciar-lo amb els valors que s'indiquin

Té un mètode **add(Pvector v)** per sumar-li un vector

### Exercici 2:

Faria un PVector velocitat i un Pvector posicio, i fins i tot podria fer-ne un per les mides de la imatge. Un cop creats, es pot utilitzar el mètode add per a sumar el vector velocitat al de posició per moure la imatge en comptes de sumar individualment la x i la y. 

Evidentment, s'hauràn de canviar totes les referències a les variables de posicio, velocitat i mides per els seus respectius *PVector*.x i *PVector*.y
