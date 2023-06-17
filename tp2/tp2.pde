/*
COMISION 5
MARIA INES JUNCO 88346/2
https://youtu.be/TFMki-JVrng
*/

PImage obra;
PGraphics lineasA, lineasB, lineasC, lineasD, lineasF;
PGraphics mascaraA, mascaraB, mascaraC, mascaraD, mascaraF;
int cantidadX = 40;
int cantidadY = 40;
int ancho, alto;
boolean enableColor = false;

void setup() {
  size (800, 400);
  ancho = width/cantidadX;
  alto = width/cantidadY;

  obra = loadImage ("OBRA.png");
  lineasA = createGraphics (400, 400);
  mascaraA= createGraphics (400, 400);
  lineasB = createGraphics (400, 400);
  mascaraB= createGraphics (400, 400);
  lineasC = createGraphics (400, 400);
  mascaraC= createGraphics (400, 400);
  lineasD = createGraphics (400, 400);
  mascaraD= createGraphics (400, 400);
  lineasF = createGraphics (400, 400);
  mascaraF= createGraphics (400, 400);


  dibujo(0, 0);
  lineas();
  mask1();
  lineas2();
  mask2();
  lineas3();
  mask3();
  lineas4();
  mask4();
  lineas5();
  mask5();
}

void draw () {

  // println (ejecutando());
  obra.resize (400, 400);
  image (obra, 0, 0);
  image (mascaraA, 400, 0);
  image (lineasA, 400, 0);
  image (mascaraB, 400, 0);
  image (lineasB, 400, 0);
  image (mascaraC, 400, 0);
  image (lineasC, 400, 0);
  image (mascaraD, 400, 0);
  image (lineasD, 400, 0);
  image (mascaraF, 400, 0);
  image (lineasF, 400, 0);


  if (enableColor == true) {
    float d = dist(600, 200, mouseX, mouseY);
    float limite = dist(0, 0, width, height);
    float tono = map(d, 0, limite, 0, 200);

    for (int i = 0; i < cantidadX; i++) {
      for (int j = 0; j < cantidadY; j++) {
        push();
        rectMode (CENTER);
        translate(i*ancho+ancho, j*alto);
        fill(255, tono);
        rect(400, 0, 30, 30);
        pop();
      }
    }
  }
}
void mousePressed () {
  enableColor = true;
}
