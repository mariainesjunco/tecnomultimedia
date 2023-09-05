function ladrillos () {
  // ladrillos
  for (let i = 0; i <= 10 ; i++) { 
  for (let j = 0; j <= 4; j++) { 
    //noStroke()
  rect (10+i*ancho, 10+j*alto, ancho, alto)
}
}
  }
function personaje () {
  push()
  rectMode (CENTER, CENTER)
  rect (450, 580, 350, 5)// plataforma
  pop()
}

function pelota () {
 //movimiento de pelota, velocidad y dirección
  if (pantalla == 0 && movimiento == true) {
  xpos = xpos + xVel * xdireccion;
  ypos = ypos + yVel * ydireccion;
  
  if (xpos >= width - rad || xpos <= rad) {
    xdireccion *= -1;
  }
  if (ypos >= height - rad || ypos <= rad) {
    ydireccion *= -1;
  }
  
  }
 circle (xpos,ypos,rad,rad)
}
