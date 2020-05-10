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
  
  // Normalitzem el vector
  vector.normalize(vector);
  
  // Pintem el vector
  line(origen.x, origen.y, origen.x + vector.x, origen.y + vector.y);
  
  // Pintem el text
  
  text("La magnitud és: " + vector.mag(), 10, 20);
  println("X: " + (vector.normalize().x + origen.x) + "Y: " + (vector.normalize().y + origen.y));

}
