//https://youtu.be/pFTd3ss-HIM
int tamanoOriginal = 60; // tamaño de cada cuadro
int tamanoActual = tamanoOriginal; 
int cols, rows;
float mapmouse;
PImage imagen;
boolean colorVerde = false; // cambio a color verde

void setup(){
  size(800, 400);
  imagen = loadImage("ilusion.jpg");
  cols = width / tamanoActual;
  rows = height / tamanoActual;
}

void draw(){
  background(200);
  background(255);
  mapmouse = map(mouseX, 0, width, 0, 2); // Ajustar el mapeo para usar el ancho del canvas
  noStroke();
  image(imagen, 0, 0, width/2, height); // Ajustar la posición y tamaño de la imagen
  
  for(int y = 0; y < rows; y++){
    for(int x = 0; x < cols; x++){
      int posicionxdelcuadrado = x * tamanoActual + width/2;
      int posicionydelcuadrado = y * tamanoActual;
      int posicionxdelcirculo = x * tamanoActual + width/2;
      int posicionydelcirculo = y * tamanoActual;
      
      // Alterar color del cuadro
      if ((x + y) % 2 == 0){
        fill(obtenerColor(color(252, 31, 64))); // Rojo
      } else {
        fill(255); // blanco
      }
      
      rect(posicionxdelcuadrado, posicionydelcuadrado, tamanoActual, tamanoActual);
      ellipse(posicionxdelcirculo * mapmouse, posicionydelcirculo, 9, 9);
    }
  }
}

void keyPressed() {
  if (key == 'M' || key == 'm') {
    if (!colorVerde) {
      cambiarColorVerde();
    }
  }
   
  if (key == 'Z' || key == 'z') {
    if (tamanoActual == tamanoOriginal) {
      cambiarTamano(80);
    } else {
      restaurarTamanoOriginal();
    }
  }
  
  if (key == ' ') {
    cambiarColorRojo();
  }
}

void cambiarColorVerde() {
  colorVerde = true;
}

void cambiarColorRojo() {
  colorVerde = false;
}

void cambiarTamano(int nuevoTamano) {
  tamanoActual = nuevoTamano;
  cols = width / tamanoActual;
  rows = height / tamanoActual;
}

void restaurarTamanoOriginal() {
  tamanoActual = tamanoOriginal;
  cols = width / tamanoActual;
  rows = height / tamanoActual;
}
  
color obtenerColor(color colorRojo) {
  if (colorVerde) {
    return color(0, 255, 0);
  } else {
    return colorRojo;
  }
}
