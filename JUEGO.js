class Juego {

  constructor () {
    this.estado = "INICIA"
      this.crearPersonaje()
      this.crearEnemigo()
  }
  actualizar() {
    for (let i = 0; i < this.cantEnemigos; i++) {
      if (dist(this.personaje.posX, this.personaje.posY, this.enemigos[i].posX, this.enemigos[i].posY) < this.personaje.tam / 2 + this.enemigos[i].tam / 2) {
        if (!this.enemigos[i].colision) {
          this.personaje.vida--
            this.enemigos[i].colision = true
        }
      } else {
        this.enemigos[i].colision = false
      }
    }
    print (this.personaje.posY)
      if (this.personaje.vida <= 0) {
      this.estado = "PERDISTE"
    }
    if (this.personaje.vida >=1 && this.personaje.posY <= 0) {
      this.estado = "GANASTE"
    }
  }


  dibujar () {

    if (this.estado == "INICIA") {
      background (127)
        push()
        fill (225)
        textAlign (CENTER, CENTER)
        text ("PRESS ENTER TO START", width/2, height/2)
        pop()
    } else if (this.estado == "JUEGO") {

      this.actualizar()
        this.personaje.dibujar()

        for (let i =0; i< this.enemigos.length; i++) {
        this.enemigos[i].dibujar()
          this.enemigos[i].mover()
      }
    } else if (this.estado == "GANASTE") {
      background(255)
        push()
        fill(0)
        textAlign (CENTER, CENTER)
        text ("GANASTE", width/2, height/2)
        pop()
    } else if (this.estado == "PERDISTE") {
      background(0)
        push()
        fill (225)
        textAlign (CENTER, CENTER)
        text ("PERDISTE", width/2, height/2)
        pop()
    }
  }

  crearEnemigo () {
    this.enemigos = []
      this.cantEnemigos = 10
      for (let i = 0; i < this.cantEnemigos; i++){
      this.enemigos.push(new Enemigo())
    }
  }



  crearPersonaje() {
    this.personaje = new Personaje(width/2, 520, 50, 3)
  }


  personajeGano() {
  }

  teclaPresionada(keyCode) {
    if (keyCode == 13) {
      this.estado = "JUEGO"
    }
    if (this.estado == "JUEGO") {
      this.personaje.teclaPresionada(keyCode)
    }
  }
}
