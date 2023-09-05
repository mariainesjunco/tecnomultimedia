let pantalla = 0

let ancho = 80
let alto= 20
let borde = 10
let movimiento = true

//variables pelota 
let rad = 20; // ancho
let xpos = 450
let ypos = 565

let xVel = 2.8; // velocidades
let yVel = 2.2; 

let xdireccion = 1; // dirección
let ydireccion = 1; // 


function setup() {
createCanvas(900, 600)

}
function draw() {
background (80)
ladrillos()
personaje()
pelota()
}


/*function keyPressed (){
 if (pantalla == 0 && keyCode == '13'){
 pantalla = 1
}
if (pantalla == 1 && key == 'x'){
 pantalla = 2
}
}*/
