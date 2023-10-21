class Enemigo {

  constructor (posX, posY, tam) {
    this.posX = random (width)
      this.posY = random (100, 420)
      this.tam = 20
      this.velocidad = random (3, 5)
      this.colision = false
  }

  dibujar () {
    fill(255, 0, 0)
    noStroke()
    ellipse(this.posX, this.posY, this.tam, this.tam)
  }

  mover () {

    this.posX += this.velocidad

      if (this.posX > width) {
      this.posX = 0
        this.posY = random(100, 420)
        this.velocidad = random(1, 3)
    }
  }
}
