//DECLARACION DE VARIABLE CASE
int  pantallas;
//DECLARACION DE VARIABLES BOTON
float posXDelBoton = 320;
float posYDelBoton = 240;
float tamBoton = 50;
float tamBotonX = 200;
float tamBotonY = 150;
color colorBoton = color (127);
//DECLARACION DE VARIABLES -IMG Y FUENTES
PImage imagen1, imagen2, imagen3;
PFont fuente1, fuente2, fuente3;
//DECLARACION DE VARIABLES PARA TEXTO, MOVIMIENTO Y PROPIEDADES
int posInTxtX, posInTxtY, posTxtX, posTxtY, VelX, VelY;
int tamFuente = 10;
color colorTxt = color (225);
String texto1, texto2, texto3, volver;
int contador;
int cambio;
int limite;
//BOOLEAN PARA REINICIO
boolean reinicia;

//VOID SET UP
void setup () {
  size (640, 480);
  //ASIGNACION PARA IMAGENES Y FUENTES
  imagen1 = loadImage ("pinza4.png");
  imagen2 = loadImage ("pinza5.jpg");
  imagen3 = loadImage ("pinza6.png");
  fuente1 = loadFont ("Ebrima-Bold-40.vlw");
  fuente2 = loadFont ("SegoeUI-BoldItalic-40.vlw");
  fuente3 = loadFont ("Calibri-Bold-40.vlw");
  //ASIGNACION PARA TEXTO Y POSICIONAMIENTO
  texto1 = ("Pinza \nde punta");
  texto2 = ("Es una herramienta \nde corte y sujeción");
  texto3 = ("Usada para doblar, \nreposicionar y \ncortar alambre.");
  volver = ("reiniciar");
  posInTxtX = width -640;
  posInTxtY = height - height/4;
  posTxtX = posInTxtX;
  posTxtY = posInTxtY;
  //ASIGNACION PARA VELOCIDAD y CASE
  VelX = 2;
  VelY = 2;
  cambio = 300;
  limite = 370;
  pantallas = 0;
  contador = 0;
}

void draw () {
  println (contador);
  contador++;
  switch (pantallas) {
  case 0:
    if (contador >= cambio) {
      contador = 0;
      pantallas = 1;
      posTxtX = posInTxtX;
    } else if (contador < cambio) {
      image (imagen1, 0, 0);
      imagen1.resize (640, 480);
      push();
      fill (colorTxt = 195, 214, 0);
      text (texto1, posTxtX, posTxtY);
      pop();
      textFont (fuente1, tamFuente*4);
      posTxtX = posTxtX + VelX;
    }

    if (posTxtX >= limite + 50) {
      VelX = 0;
    }
    break;

  case 1:
    if (contador >= cambio) {
      contador = 0;
      pantallas = 2;
      VelX = 2;
      VelY=2;
      posTxtY = posInTxtY - height/2;
    } else if (contador < cambio) {
      image (imagen2, 0, 0);
      imagen2.resize (640, 480);
      push ();
      fill (colorTxt = 0);
      text (texto2, posTxtX+20, posTxtY-height/3);
      pop();
      textFont (fuente2, 40);
      posTxtY = posTxtY + VelY;
    }

    if (posTxtY >= limite+200) {
      VelY = 0;
    }
    break;

  case 2:
    if (contador >= cambio) {
      contador = 0;
      pantallas = 3;
      posTxtX = posInTxtX;
      posTxtY = posInTxtY;
    } else if (contador < cambio) {
      image (imagen3, 0, 0);
      imagen3.resize (640, 480);
      text(texto3, posTxtX+20, posTxtY + 240);
      textFont (fuente3, tamFuente++);

      if (tamFuente>=40) {
        tamFuente = 40;
      }
    }
    break;

  case 3:
    background (60, 70, 66);
    fill (colorBoton);
    ellipse(posXDelBoton, posYDelBoton, tamBotonX, tamBotonY);
    fill(colorTxt);
    textAlign (CENTER, CENTER);
    textSize (30);
    text (volver, posXDelBoton, posYDelBoton);
    contador=0;
    break;
  }
}

void mouseMoved () {
  if (pantallas == 3 && reinicia == false) {
    colorBoton = color (127);
  }

  if (pantallas == 3 && dist (posXDelBoton, posYDelBoton, mouseX, mouseY)< tamBotonX/2) {
    reinicia = true;
    colorBoton = color (195, 214, 0);
  } else if (dist (mouseX, mouseY, posXDelBoton, posYDelBoton)> tamBotonX/2) {
    reinicia = false;
  }
}

void mousePressed () {

  if (reinicia == true) {
    pantallas = 0;
    textAlign (posInTxtX, posInTxtY);
    fill (225);
    tamFuente =10;
  }
}
