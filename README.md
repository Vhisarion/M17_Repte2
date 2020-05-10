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


### Exercici 3

La magnitud d'un vector es calcula amb el teorema de pitàgores, ja que tots els vectors formen un triangle amb els dos paràmetres i la magnitud com a costats. Per tant, seria a^2 = √b^2 + c^2

En processing, la classe PVector ja implementa el mètode mag() per a calcular-lo fàcilment.

### Exercici 4

La magnitud té un valor de 1 sempre. Utilitzar un vector unitari és precisament això, un vector de magnitud 1.

### Exercici 6

Com que treballa amb java, ens permet exprimir tot el potencial de l'OOP. Ja ha quedat molt clar a l'exercici 5 que el sistema d'herència funciona perfectament.


