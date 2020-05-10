class PVector {
 float x;
 float y;
 
 PVector(float x, float y) {
  this.x = x;
  this.y = y;
 }
 
 void add (PVector v) {
  y += v.y;
  x += v.x;
 }
}

PFont font;
PVector origen;
PVector vector;
float magnitud;

void setup() {
  size(1280, 640);
  background(255);
  // Preparem el text que es mostrarà amb la magnitud del vector
  font = createFont("Arial", 16, true);
  textFont(font);
  
  // Preparem el vector
  vector = new PVector(width/2, height/2);
  
  // Faig un vector amb el punt d'origen per comoditat
  origen = new PVector(width/2, height/2);
  
  // Preparem el color amb el que ho pintarem tot
  fill(0);
}

void draw() {
  // Netejem la pantalla
    background(255);
    
  // Guardem la posicio del mouse al vector
  vector.x = mouseX;
  vector.y = mouseY;
  
  // Pintem el vector
  line(width/2, height/2, vector.x, vector.y);
  
  // Calculem la magnitud
  magnitud = sqrt(pow((vector.x - origen.x), 2) + pow(vector.y - origen.y, 2));
  
  // Pintem el text
  
  text("La magnitud és: " + magnitud, 10, 20);
  println("X: " + vector.x + "Y: " + vector.y);

}
