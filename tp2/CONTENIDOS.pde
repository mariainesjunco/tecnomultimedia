//FUNCION PROPIA CON PARAMETROS QUE NO DEVUELVA VALOR
void dibujo (int posx, int posy) {
  translate(400, 0);
  noStroke();
  rect (0, 0, 400, 400);
  push();
  fill (0, 225, 225, 60);
  rect (0, 0, 400, 400);
  pop();
  push();
  rectMode (CENTER);
  rect (200, 200, 300, 300);
  pop();
}
