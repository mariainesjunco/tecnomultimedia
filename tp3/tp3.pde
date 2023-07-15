/*
COMISION 5
MARIA INES JUNCO 88346/2
https://youtu.be/femq_2EY0dE
*/
int pantallaN;
boolean paso;

String [] textos;
PImage [] imagenes;
String [] textoBotones;
int ancho, alto;

void setup () {
  size (600, 600);
  ancho = 200;
  alto = 50;

  textos = new String [14];
  imagenes = new PImage [14];
  textoBotones = new String [16];

  textos = loadStrings ("txt/texto.txt");
  textoBotones = loadStrings ("txt/botones.txt");

  for (int i = 0; i <14; i++) {
    imagenes[i] = loadImage("img/" +i+ ".png");
    imagenes[i].resize(width, height);
  }
}

void draw() {
  background(255);
  image(imagenes[pantallaN], 0, 0);
  push();
  textSize (17);
  fill (0);
  textos[pantallaN] = textos[pantallaN].replaceAll("\\\\n", "\n");
  text (textos [pantallaN], 10, 340);
  pop();

  transparencia();
  imagen();
  ubicarBotones();
}

void mouseMoved() {
  paso = true;
}
