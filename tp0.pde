PImage imagen;

void setup () {
  size (800, 400);
  imagen = loadImage ("pinza.jpg");
  imagen.resize (400, 400);
}
void draw () {
  background (225);
  image (imagen, 0, 0);
  noStroke ();

  //cortador
  fill (60);
  beginShape();
  vertex (533, 221);
  vertex(546, 240);
  vertex(528, 262);
  vertex(503, 276);
  vertex(498, 259);
  vertex (533, 221);
  endShape();

  //pinzaL-interna
  fill(80);
  triangle (405, 350, 508, 285, 505, 251);

  //pinzaL-externa
  fill(180);
  triangle (407, 348, 525, 207, 534, 230);

  //pinzaR-arriba
  triangle (460, 390, 583, 227, 544, 237);
  fill(170);
  //pinzaR-ext
  triangle (577, 226, 460, 390, 580, 261);

//mangoR-interno
  fill(50);
  beginShape();
  vertex (796, 104);
  vertex(784, 95);
  vertex(730, 146);
  vertex(624, 176);
  vertex(587, 198); 
  vertex(600, 239);
  vertex(633, 229);
  vertex(796, 104);
  endShape();

  //recorteR-abajo
  fill(80);
  quad (614, 209, 578, 224, 577, 263, 602, 239);
 //recorteR
  fill(100);
  quad (557, 155, 582, 179, 570, 215, 536, 198); 
  //recorteL
  fill(100);
  quad (576, 232, 613, 211, 603, 187, 569, 208);
 
 //detalle1
  fill(60);
  quad (570, 167,565, 192,576, 199,582, 177);
 
  //curvaL
  fill(40);
  beginShape ();
  curveVertex (641, 2);
  curveVertex(632, 3);
  curveVertex(574, 54);
  curveVertex(555, 164);
  curveVertex (616, 317);
  endShape ();

//mangoL-int
  fill(50);
  beginShape ();
  vertex (631, 4);
  vertex (641, 37);
  vertex (583, 113);
  vertex (582, 179);
  vertex (552, 165);
  vertex (631, 4);
  endShape ();
 
 //centro
  fill(205);
  circle (553, 216, 60);
  fill(50);
  circle (553, 216, 20);


  //curvaR
  fill(40);
  beginShape ();
  curveVertex (709, 109);
  curveVertex(796, 104);
  curveVertex(736, 199);
  curveVertex(613, 234);
  curveVertex (613, 234);
  endShape ();
  
}
void mousePressed () {
  print (mouseX, mouseY);
}
