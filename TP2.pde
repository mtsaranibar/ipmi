String Pantalla;

PImage imagen, imagen2, imagen3;
int y; // velocidad de movimiento del texto
int speed = 2; // velocidad de movimiento del texto
int contadorFrames = 0; // contador de cuadros
int intervaloFrames = 300; // 5 segundos en cuadros (300 cuadros a 60 fps)

void setup() {
  size(640,480); // tamaño de la ventana
  y = height; // posición inicial del texto (parte inferior de la ventana)
  textAlign(CENTER, CENTER);
  textSize(32);
  imagen = loadImage("one piece.jpg");
  imagen2 = loadImage("tripulacion.jpg");
  imagen3 = loadImage("live-accion.jpg");
  Pantalla = "1";
}

void draw() {
  contadorFrames++;
  
  if (contadorFrames > intervaloFrames) {
    cambiarPantalla();
    contadorFrames = 0; // reiniciar el contador de cuadros
  }

  if (Pantalla == "1") {
    background(255); // fondo blanco
    image(imagen, 0, 0, 640, 480);
    fill(#FFF708); // Color del texto (amarillo)
    text("bienvenidos a one piece un mundo de piratas", width / 2, y); // dibujar el texto
    text("donde esta llena de aventuras y peligros", width / 2, y + 50); // dibujar el texto
    text("esta historia trata de mokey di luffy", width / 2, y + 100); // dibujar el texto
    text("que quiere covertirse en el rey de los piratas", width / 2, y + 150); // dibujar el texto
    text("y encontrar el one piece", width / 2, y + 200); // dibujar el texto
    y -= speed; // mover el texto hacia arriba
    if (y < -200) { // reiniciar la posición cuando el texto sale de la ventana
      y = height;
    }
  } else if (Pantalla == "2") {
    background(255);
    image(imagen2, 0, 0, 640, 480);
    text("todo por un pirata llamado shaks", width / 2, y); // dibujar el texto
    text("que lo inspiro a covertirse en pirata", width / 2, y + 50); // dibujar el texto
    text("quiere reunir una tripulacion de 10", width / 2, y + 100); // dibujar el texto
    text("zoro, nami, usopp, sanji, chopper, robin, franky, brook y jinbe", width / 2, y + 150); // dibujar el texto 
    y -= speed; // mover el texto hacia arriba
    if (y < -150) { // reiniciar la posición cuando el texto sale de la ventana
      y = height;
    }
  } else if (Pantalla == "3") {
    background(255);
    image(imagen3, 0, 0, 640, 480);
    text("ahora por tantos años de aventuras juntos", width / 2, y); // dibujar el texto
    text("el creador del manga decidio crear un live-accion de one piece", width / 2, y + 50); // dibujar el texto
    text("que se volvio muy popular en la plataforma de netflix", width / 2, y + 100); // dibujar el texto
    rect(0,0,50,50);
    y -= speed; // mover el texto hacia arriba
    if (y < -100) { // reiniciar la posición cuando el texto sale de la ventana
      y = height;
    }
  }
}

void cambiarPantalla() {
  if (Pantalla == "1") {
    Pantalla = "2";
  } else if (Pantalla == "2") {
    Pantalla = "3";
  } else if (Pantalla == "3") {
    Pantalla = "1";
  }
}

void mouseClicked() {
  if (Pantalla == "1") {
    Pantalla = "2";
  } else if (Pantalla == "2") {
    Pantalla = "3";
  } else if (mouseX > 0 && mouseX < 50 && mouseY > 0 && mouseY < 50 && Pantalla == "3") {
    Pantalla = "1";
  }
}
 
 
