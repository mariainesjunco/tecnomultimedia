//COLISION LADRILLOS
function detectarColisionL() {
  for (let i = 0; i < ladrilloXArray.length; i++) {
    if (ladrilloVisibleArray[i]) {
      if (xpos + rad / 2 > ladrilloXArray[i] && xpos - rad / 2 < ladrilloXArray[i] + ancho &&
        ypos + rad / 2 > ladrilloYArray[i] && ypos - rad / 2 < ladrilloYArray[i] + alto) {
        // Si hay colisión cambia la dirección de la pelota
        ydireccion *= -1
        // marco el ladrillo para que no se vea
        ladrilloVisibleArray[i] = false
      }
    }
  }
}
//COLISION PLATAFORMA
function detectarColisionPlataforma(){
  // Rebote de la pelota en la plataforma y cambio de direccion
if (ypos + rad / 2 > yposP && ypos + rad / 2 < yposP + altoP &&
    xpos + rad / 2 > xposP && xpos - rad / 2 < xposP + largo) {
    ydireccion *= -1
  }
}
