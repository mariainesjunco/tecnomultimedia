void transparencia() {

  if (paso == true && pantallaN == 0 || paso == true && pantallaN == 13) {
    float d = dist(600, 600, mouseX, mouseY);
    float limite = dist(0, 0, width, height);
    float tono = map(d, 0, limite, 0, 255);
    rect (0, 0, 600, 600);
    push();
    fill(255, 200, 255, tono);
    noStroke();
    translate (300, 300);
    rectMode (CENTER);
    rect(0, 0, 600, 600);
    pop();
  } else {
  }
}


void imagen () {
  if (pantallaN == 0 || pantallaN ==13) {
    push();
    translate(300, 300);
    imageMode (CENTER);
    image (imagenes[pantallaN], 0, 0);
    imagenes[pantallaN].resize (500, 500);
    pop();
  }
}
