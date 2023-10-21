class Personaje {

constructor(posX, posY, tam,vida) {
  
this.posX = posX
this.posY = posY
this.tam = 50
this.miColor = color (255,0,0)
this.vida = vida


}

dibujar () {
  
  fill(this.miColor)
  rect (this.posX,this.posY,this.tam,this.tam)
}

teclaPresionada(keyCode){
  if (keyCode == LEFT_ARROW){
  this.moverIzquierda()
  }else if (keyCode == RIGHT_ARROW){
  this.moverDerecha()
  }
  if (keyCode == UP_ARROW){
  this.moverArriba()
  }
  }
  
moverDerecha () {
this.posX += 10
}
moverIzquierda (){
this.posX -= 10
}
moverArriba(){
this.posY -=10
}

}
