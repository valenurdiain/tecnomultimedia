Juego juego; 
int techo = 0;
int posX, tam;
void setup(){
  size(400,400);
 juego = new Juego();
  textSize(20);
  
}

void draw(){
  background(200);
   juego.dibujar();
}
//defino presionando qué teclas se mueve el jugador y hacia que lado
void keyPressed(){
   juego.teclaPresionada();
}
