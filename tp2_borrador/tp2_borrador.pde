PImage Obra;

int cant =15;
float tam;

int lienzoX = 309;
int lienzoY = 309;
int ancho = 9;
int alto = 300;

void setup () {
  size (800, 400);
  Obra = loadImage("OBRA.png");
  tam = lienzoX/cant; //TAMAÑO ES EL LIENZO DIVIDIDO LA CANTIDAD DE LINEAS QUE QUIERO
}
void draw () {
  Obra.resize (400, 400);
  image (Obra, 0, 0);
  dibujo();
  
}

void dibujo () {
  
//CUADRADOS 
  rect (400, 0, 400, 400); //CUADRADO DE FONDO
  push ();
  translate (600, 200); //TRASLADO EL EJE A EL CENTRO DEL CUADRADO MAS GRANDE
  rectMode (CENTER);
  rect (0, 0, lienzoX, lienzoY);// CUADRADO INTERNO (BLANCO) DIBUJADO DESDE EL CENTRO
  pop();

//CIRCULOS
push();


ellipse (509,209,59,48);    
ellipse (630,196,100,82);   
ellipse (668,106,140,97);   
ellipse (668,309,140,87);   
ellipse (528,292,118,116);  
ellipse (528,128,118,116); 
ellipse (621,128,59,48);   
ellipse (677,209,62,52);    
ellipse (630,253,86,46);   
ellipse (612,205,45,34);  

pop();

  // LINEASVERTICALES
  push ();
  noStroke();
 translate (445, 45); 
  for (int i =0; i < cant; i ++) {
     rect (i*tam, 0, ancho, lienzoY);
      fill(0,225,0,100);
}
  pop();
    
push ();
  noStroke();
 translate (454, 45); 
  for (int i =0; i < cant; i ++) {
     rect (i*tam, 0, ancho, lienzoY);
      fill(0,0,225,100);
}
  pop();
    
println (mouseX, mouseY);

}
