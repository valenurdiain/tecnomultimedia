class Techo {
  Jugador jugador;
  int posX, posY, tamW, tamH;
  int techo = 0;
  int velocidad = 1;
  int cantidadObjetos = 10;
int [] objetosPosY = new int [cantidadObjetos];
  Techo () {
jugador = new Jugador();
  for(int i=0; i < cantidadObjetos ; i++ ){
    objetosPosY[i]+=velocidad;
 //cada vez que cae un coco el techo aumenta su tamaño
    if(objetosPosY[i] >= height ){
      objetosPosY[i] = generarPosicionObjeto();
      techo++;
    }
  }
    }
    void dibujar(){
       //genero pos y color del techo
  fill(0);
  rect(0,0,width, techo * tam);
       jugador.dibujar();
  }
  
  void teclaPresionada(){
    jugador.teclaPresionada();
  }
}
