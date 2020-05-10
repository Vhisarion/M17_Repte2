class Walker {
  int x, y;
  
  Walker() {
   x = width/2;
   y = width/2;
  }
  
  void walk() {
    switch(int(random(4))) {
     case 0:
       x++;
       break;
     case 1:
       x--;
       break;
     case 2: 
       y++;
       break;
     case 3:
       y--;
       break;
    }
  }
  
  void display() {
   stroke(0);
   point(x, y);
  }
}

class Character extends Walker{
  int r,g,b;
  int hp;
  String name;
  int distanceFrom;
  
  Character(int x, int y, int r, int g, int b, String name, int hp) {
   super();
   this.x = x;
   this.y = y;
   this.r = r;
   this.g = g;
   this.b = b;
   this.name = name;
   this.hp = hp;
  }
  void display() {
    if (hp > 0) {
     stroke(0);
     strokeWeight(1);
     fill(r, g, b);
     ellipse(x, y, 30, 30);
     
     // Text
     fill(0);
     text(name, x - 20, y - 20);
     text("Vides: " + hp, x - 20, y - 30);
    }
  }
  
  void display(Character other) {
    if (hp > 0) {
     stroke(0);
     strokeWeight(1);
     fill(r, g, b);
     ellipse(x, y, 30, 30);
    }
    
     // Text
     fill(0);
     text(name, x - 20, y - 20);
     text("Vides: " + hp, x - 20, y - 30);
     text("" + dist(x, y, other.x, other.y), x - 20, y - 40);
    
  }
}


PFont font;
Character warrior;
Character enemy;
boolean gameover;

void setup() {
  // frameRate(500); // Per testejar a més velocitat
  size(1280, 640);
  background(255);
  // Preparem el text que es mostrarà amb la magnitud del vector
  font = createFont("Arial", 10, true);
  textFont(font);
  
  // Creem al Warrior
  warrior = new Character(width/2 - 30, height/2, 0, 255, 0, "Warrior", 5);
  
  // Creem l'Enemy
  enemy = new Character(width/2 + 30, height/2, 255, 0, 0, "Enemy", 3);
}

void draw() {
  // Netejem la pantalla
    background(255);
    
  // Movem els Characters si no s'ha acabat la partida
  if (!gameover) {
    warrior.walk();
    enemy.walk();
  }
  
  // Calculem si han col·lisionat
  if (dist(warrior.x, warrior.y, enemy.x, enemy.y) < 30) {
    warrior.hp--;
    resetPositions();
  }
  
  // Calculem si el warrior s'ha allunyat 100 pixels
  if (dist(warrior.x, warrior.y, enemy.x, enemy.y) > 100) {
    enemy.hp--;
    resetPositions();
  }
  
  // Calculem si algú s'ha quedat sense vides
  if (enemy.hp < 1) {
    gameover = true; 
    enemy.name = "Loser"; 
    warrior.name = "Winner";
    resetPositions();
  } else if (warrior.hp < 1) {
    gameover = true;
    enemy.name = "Winner";
    warrior.name = "Loser";
    resetPositions();
  }
  
  // Mostrem els characters a la pantalla
  warrior.display();
  enemy.display(warrior);
  
}

void resetPositions() {
 warrior.x =  width/2 - 30;
 warrior.y = height/2;
 enemy.x = width/2 + 30;
 enemy.y = height/2;
}
