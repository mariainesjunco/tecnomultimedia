function juego() {
    ladrillos()
    plataforma()
    moverplataforma()
    pelota()
    detectarColisionL()
    detectarColisionPlataforma()
    vidasF()
    quedanladrillos()
}

//LADRILLOS
function inicializarLadrillos() {
  //genero posiciones y estado
  for (let i = 0; i < ladrilloCols; i++) {
    for (let j = 0; j < ladrilloRows; j++) {
      ladrilloXArray.push(i *ancho )
      ladrilloYArray.push(j *alto )
      ladrilloVisibleArray.push(true)
    }
  }
}
function ladrillos () {
  // dibujo los ladrillos
  for (let i = 0; i <= ladrilloXArray.length; i++) {
    if (ladrilloVisibleArray[i]) {
      push()
      noStroke()
      if (ladrilloYArray[i] === 0) {
        fill(255, 173, 64) 
      } else if (ladrilloYArray[i] === 20) {
        fill(255, 152, 245) 
      } else if (ladrilloYArray[i] === 40) {
        fill(208, 152, 255) 
       } else {
        fill(64, 104, 255)
      }
      rect (10+ladrilloXArray[i], 10+ladrilloYArray[i], ancho, alto)
      pop()
    }
  }
}
////PLATAFORMA
function inicializarPlataforma () {
  xposP = width/2 - largo/2
  yposP = height-altoP
}
function plataforma () {
  if (pantalla == 1) {
  rect (xposP, yposP, largo, altoP)
  }
}
function moverplataforma () {
  if (pantalla === 1 && keyIsDown (RIGHT_ARROW) && xposP < width-largo) {
    rect (xposP, yposP, largo, altoP)
      xposP = xposP + xVelP
  }
  if (pantalla === 1 && keyIsDown (LEFT_ARROW) && xposP >= 0) {
    rect (xposP, yposP, largo, altoP)
      xposP = xposP - xVelP
  }
}

//PELOTA

function moverpelota () {
  if (pantalla == 1 && movimiento == true) {
    xpos = xpos + xVel * xdireccion
    ypos = ypos + yVel * ydireccion
    if (xpos >= width - rad || xpos <= rad) {
      xdireccion *= -1
    }
    if (ypos < rad) {
      ydireccion *= -1
    }
  }
}
function pelota() {
  moverpelota()
  circle(xpos, ypos, rad)
}

//VIDAS
function vidasF() {
  if (ypos - rad / 2 > height) {
    xpos = width / 2 
    ypos = height / 2 

    vidas--
  if (vidas <= 0) {
    pantalla = 3 //pantalla pierde
    inicializarLadrillos()
    inicializarPlataforma()
    vidas = 3
    plataforma()
    }
  }
  if (quedanladrillos() == false ) {
    pantalla = 2
    inicializarLadrillos()
    plataforma()
    vidas = 3
  }
}
//CONTROL DE ESTADO LADRILLOS
function quedanladrillos() {
  let nohay = false
    for (let i = 0; i <= ladrilloXArray.length; i++) {
    if (ladrilloVisibleArray[i]) {
      nohay = true
    }
  }
  return nohay
}
