void botones (String tipodeforma, float posX, float posY, int movimiento, String textoBoton) {

  if (tipodeforma == "rectangulo") {
    push ();
    rectMode (CENTER);
    rect (300, 530, ancho, alto);
    pop();
    push();
    textAlign (CENTER, CENTER);
    textSize (30);
    fill (0);
    text (textoBoton, 300, 530);
    pop();
  }
  if (tipodeforma == "siguiente") {
    push ();
    rectMode (CENTER);
    rect (500, 530, ancho/2, alto);
    pop();
    push();
    textAlign (CENTER, CENTER);
    textSize (15);
    fill (0);
    text (textoBoton, 500, 530);
    pop();
  }

  if (tipodeforma == "anterior") {
    push ();
    rectMode (CENTER);
    rect (100, 530, ancho/2, alto);
    pop();
    push();
    textAlign (CENTER, CENTER);
    textSize (15);
    fill (0);
    text (textoBoton, 100, 530);
    pop();
  }
  if (mousePressed && paso) {
    if (mouseX > posX - ancho/2
      && mouseX < posX + ancho/2
      && mouseY > posY - alto/2
      && mouseY < posY + alto/2) {
      pantallaN = movimiento;
      paso = false;
    }
  }
}

void ubicarBotones () { // defino botones por pantalla y a cual llevan

  // pantalla 0
  if (pantallaN == 0) {
    botones ("rectangulo", 300, 530, 1, textoBotones[0]);
  }
  // pantalla 1
  if (pantallaN == 1) {
    botones ("rectangulo", 300, 530, 2, textoBotones[1]);
  }
  // pantalla 2
  if (pantallaN == 2) {
    botones ("siguiente", 500, 530, 3, textoBotones[2]);
    botones ("anterior", 100, 530, 11, textoBotones[3]);
  }
  //pantalla 3
  if (pantallaN == 3) {
    botones ("siguiente", 500, 530, 4, textoBotones[2]);
    botones ("anterior", 100, 530, 11, textoBotones[3]);
  }
  // pantalla 4
  if (pantallaN == 4) {
    botones ("rectangulo", 300, 530, 5, textoBotones[1]);
  }
  // pantalla 5
  if (pantallaN == 5) {
    botones ("siguiente", 500, 530, 6, textoBotones[2]);
    botones ("anterior", 100, 530, 12, textoBotones[3]);
  }
  // pantalla 6
  if (pantallaN == 6) {
    botones ("rectangulo", 300, 530, 7, textoBotones[1]); // defino botones por pantalla
  }
  // pantalla 7
  if (pantallaN == 7) {
    botones ("siguiente", 500, 530, 8, textoBotones[2]);
    botones ("anterior", 100, 530, 12, textoBotones[3]); // defino botones por pantalla
  }
  // pantalla 8
  if (pantallaN == 8) {
    botones ("siguiente", 500, 530, 9, textoBotones[2]);
    botones ("anterior", 100, 530, 12, textoBotones[3]); // defino botones por pantalla
  }
  // pantalla 9
  if (pantallaN == 9) {
    botones ("rectangulo", 300, 530, 10, textoBotones[1]); // defino botones por pantalla
  }
  // pantalla 10
  if (pantallaN == 10) {
    botones ("siguiente", 500, 530, 13, textoBotones[5]);
    botones ("anterior", 100, 530, 0, textoBotones[4]); // defino botones por pantalla
  }
  // pantalla 11
  if (pantallaN == 11) {
    botones ("rectangulo", 300, 530, 0, textoBotones[4]); // defino botones por pantalla
  }
  // pantalla 12
  if (pantallaN == 12) {
    botones ("rectangulo", 300, 530, 0, textoBotones[4]); // defino botones por pantalla
  }
  // pantalla 13
  if (pantallaN == 13) {
    botones ("rectangulo", 300, 530, 0, textoBotones[6]); // defino botones por pantalla
  }
}
