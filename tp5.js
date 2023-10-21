/*
COMISION 5
MARIA INES JUNCO 88346/2
https://youtu.be/Oik8YxkxEZs
*/

let objJuego


function setup() {
createCanvas(900, 600)
  objJuego = new Juego ()
}


function draw() {
background (127)  
objJuego.dibujar()


}

function keyPressed () {

  objJuego.teclaPresionada(keyCode)
}
