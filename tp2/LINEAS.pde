//DIBUJO DE FONDO
void lineas () {
  translate(400, 0);
  push();
  lineasA.beginDraw();
  lineasA.noStroke();
  for (int i = 0; i < width; i +=3) {
    if (i % 2 ==0) {
      lineasA.fill (255);
      lineasA.rect (i*3, 0, i, 400);
    } else {
      lineasA.fill (0, 0, 225);
      lineasA.rect (i*3, 0, i, 400);
    }
  }
  lineasA.endDraw();
  pop();
}
/////////////////
void lineas2 () {
  push();
  lineasB.beginDraw();
  lineasB.noStroke();
  for (int i = 0; i < width; i +=3) {
    if (i % 2 ==0) {
      lineasB.fill (255);
      lineasB.rect (i*3, 0, i, 400);
    } else {
      lineasB.fill (225, 150, 0);
      lineasB.rect (i*3, 0, i, 400);
    }
  }
  lineasB.endDraw();
  pop();
}
//////////
void lineas3 () {
  push();
  lineasC.beginDraw();
  lineasC.noStroke();
  for (int i = 0; i < width; i +=3) {
    if (i % 2 ==0) {
      lineasC.fill (225, 0, 20);
      lineasC.rect (i*3, 0, i, 400);
    } else {
      lineasC.fill (255);
      lineasC.rect (i*3, 0, i, 400);
    }
  }
  lineasC.endDraw();
  pop();
}
void lineas4 () {
  push();
  lineasD.beginDraw();
  lineasD.noStroke();
  for (int i = 0; i < width; i +=3) {
    if (i % 2 ==0) {
      lineasD.fill (255);
      lineasD.rect (i*3, 0, i, 400);
    } else {
      lineasD.fill (0, 200, 240, 90);
      lineasD.rect (i*3, 0, i, 400);
    }
  }
  lineasD.endDraw();
  pop();
}
///
void lineas5 () {
  push();
  lineasF.beginDraw();
  lineasF.noStroke();
  for (int i = 0; i < width; i +=3) {
    if (i % 2 ==0) {
      lineasF.fill (255);
      lineasF.rect (i*3, 0, i, 400);
    } else {
      lineasF.fill (255, 0, 0);
      lineasF.rect (i*3, 0, i, 400);
    }
  }
  lineasF.endDraw();
  pop();
}
