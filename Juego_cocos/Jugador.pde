class Jugador{
   Contador contador;
int cantidadObjetos = 10;
int [] objetosPosY = new int [cantidadObjetos];
  Jugador() {
    contador = new Contador();
      //genero la posicion en x y el tamaño de mi jugador
  tam = width/cantidadObjetos;
  posX = tam * (cantidadObjetos/2);
   
  }
    void dibujar(){
    //genero pos y color del jugador
  fill(0,0,255);
  rect(posX, width-tam, tam, tam);
  contador.dibujar();
  }
  
  void teclaPresionada(){
     if(keyCode == LEFT){
    posX = posX - tam;
  }else if(keyCode == RIGHT){
    posX = posX + tam;
  }
  }
}
