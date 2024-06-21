// https://youtu.be/sion2zYfUWc
int tamano = 60; // tamaño de cada cuadro
int cols, rows;
float mapmouse;
PImage imagen;

void setup(){
  size(800, 400);
  imagen = loadImage("ilusion.jpg");
  cols = width / tamano;
  rows = height / tamano;
}

void draw (){
  background(200);
  println(mouseX, mouseY);
  background(255);
  mapmouse = map(mouseX, 0, width, 0, 2); // Ajustar el mapeo para usar el ancho del canvas
  noStroke();
  image(imagen, 0, 0, width/2, height); // Ajustar la posición y tamaño de la imagen
  
  for(int y = 0; y < rows; y++){
    for(int x = 0; x < cols; x++){
      int posicionxdelcuadrado = x * tamano + width/2;
      int posicionydelcuadrado = y * tamano;
      int posicionxdelcirculo = x * tamano + width/2;
      int posicionydelcirculo = y * tamano;
      
      // Alterar color del cuadro
      if ((x + y) % 2 == 0){
        fill(#FC1F40); // rojo
      } else {
        fill(255); // blanco
      }
      
      rect(posicionxdelcuadrado, posicionydelcuadrado, tamano, tamano);
      ellipse(posicionxdelcirculo * mapmouse, posicionydelcirculo, 9, 9);
    }
  }
}
