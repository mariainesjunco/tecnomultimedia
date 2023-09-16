function Npantallas(){
  
//pantalla inicio
  if (pantalla === 0) {
      vidas = 3
      background(255, 173, 64) 
      push ()
      rectMode (CENTER,CENTER)
      noStroke()
      fill(255)
      rect (width/2,height/2,400,100)
      pop()
      push()
      textSize (40)
      fill(0)
      textAlign (CENTER,CENTER)
      text("INICIAR", width / 2, height / 2)
      pop()
      push()
      textSize (20)
      fill (255)
      textAlign (CENTER,CENTER)
      text ("Press 'Enter' to start", width/2,height/2 + 100)
      pop()
      push()
      textSize(17)
      text ("¿CÓMO JUGAR?: Con las teclas ← → moverás la plataforma de izquierda a derecha, \nel objetivo es que la pelota no toque el suelo y destruya todos los ladrillos",20,520)
      pop()  
      
//pantalla juego
  } else if (pantalla == 1) {
    juego()
    
//pantalla ganaste, botones créditos y reinicio 
  } else if (pantalla == 2) {
    background(255, 152, 245) 
      push ()
      rectMode (CENTER,CENTER)
      rect (width/2,height/2,300,100)
      pop()
      push()
      textSize (40)
      fill(0)
      textAlign (CENTER,CENTER)
      text("GANASTE", width / 2, height / 2)
      pop()
      push()
      textSize (20)
      textAlign(LEFT,CENTER)
      text("Press R para reintentar", 80, 500)
      text("Press C para creditos", 80, 530)
      text("Press I para volver", 80, 560)
      pop()
      
//pantalla perdiste, botones creditos y reinicio
  } else if (pantalla == 3) {
    background(208, 152, 255)
      push ()
      rectMode (CENTER,CENTER)
      rect (width/2,height/2,300,100)
      pop()
      push()
      textSize (40)
      fill(0)
      textAlign (CENTER,CENTER)
      text("PREDISTE", width / 2, height / 2)
      pop()
      push()
      textSize (20)
      textAlign(LEFT,CENTER)
      text("Press R para reintentar", 80, 500)
      text("Press C para creditos", 80, 530)
      text("Press I para volver", 80, 560)
      pop()
      
//pantalla créditos      
  } else if (pantalla == 4) {
    background(64, 104, 255)
      push ()
      rectMode (CENTER,CENTER)
      rect (width/2,height/2,300,100)
      pop()
      push()
      textSize (40)
      fill(0)
      textAlign (CENTER,CENTER)
      text("CREDITOS", width / 2, height / 2)
      pop()
      push()
      textSize (20)
      textAlign(LEFT,CENTER)
      text("Press I para volver", 80, 560)
      pop()
      push()
      textSize(17)
      textAlign (CENTER,CENTER)
      text ("Maria Inés Junco",width / 2, height / 2 + 100)
      pop()  
      
    
}
}
