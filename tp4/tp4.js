/*
COMISION 5
MARIA INES JUNCO 88346/2
https://youtu.be/_fCdS6XqyfA
*/


//numero de pantalla
let pantalla = 0
//dimensiones de los ladrillos
let ancho = 80
let alto= 20
let borde = 10
let movimiento = true
//secciones 
let ladrilloCols = 11
let ladrilloRows = 4
//guardar posiciones
let ladrilloXArray = []
let ladrilloYArray = []
//estado del ladrillo
let ladrilloVisibleArray = []
//variables pelota 
let rad = 20 // ancho
let xpos = 450
let ypos = 565
let xVel = 5 // velocidades
let yVel = 5 
let xdireccion = 1 // dirección
let ydireccion = 1 // 
//variables plataforma
let largo = 200 // largodelaplataforma
let altoP = 8//altura de la plataforma
let xposP //= 450
let yposP //= 580
let xVelP = 10 // velocidad
/////
let vidas = 3

function setup() {
createCanvas(900, 600)
inicializarLadrillos()
inicializarPlataforma()
}
function draw() {
background (20)
Npantallas()

}

 function keyPressed() {
  if (pantalla === 0 && keyCode === 13) {
    pantalla = 1
  } else if ((pantalla === 2 || pantalla === 3) && (key === 'r' || key === 'R')) {
    pantalla = 1
  } else if ((pantalla === 2 || pantalla === 3 || pantalla === 4) && (key === 'c' || key === 'C')) {
    pantalla = 4
  } else if ((pantalla === 2 || pantalla === 3 || pantalla === 4) && (key === 'i' || key === 'I')) {
    pantalla = 0
  }
}
