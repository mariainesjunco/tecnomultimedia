//MASCARAS
void mask1 () {

  mascaraA = createGraphics (400, 400);
  push();
  mascaraA.beginDraw();
  mascaraA.noStroke();
  mascaraA.ellipse (123, 128, 118, 116);

  mascaraA.endDraw();
  pop();
  lineasA.mask (mascaraA);
}

//////////
void mask2 () {

  mascaraB = createGraphics (400, 400);
  push();
  mascaraB.beginDraw();
  mascaraB.noStroke();
  mascaraB.ellipse (123, 292, 118, 116);
  mascaraB.endDraw();
  pop();
  lineasB.mask (mascaraB);
}
///////
void mask3 () {

  mascaraC = createGraphics (400, 400);
  push();
  mascaraC.beginDraw();
  mascaraC.noStroke();
  mascaraC.ellipse (103, 209, 59, 48);
  mascaraC.endDraw();
  pop();
  lineasC.mask (mascaraC);
}
///

void mask4 () {

  mascaraD = createGraphics (400, 400);
  push();
  mascaraD.beginDraw();
  mascaraD.noStroke();
  mascaraD.ellipse (265, 110, 140, 100);
  mascaraD.endDraw();
  pop();
  lineasD.mask (mascaraD);
}
////
void mask5 () {

  mascaraF = createGraphics (400, 400);
  push();
  mascaraF.beginDraw();
  mascaraF.noStroke();
  mascaraF.ellipse (265, 300, 140, 85);
  mascaraF.endDraw();
  pop();
  lineasF.mask (mascaraF);
}
