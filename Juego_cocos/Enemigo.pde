class Enemigo {
  Techo techo;
  int velocidad = 1;
  int cantidadObjetos = 10;
int [] objetosPosY = new int [cantidadObjetos];
 Enemigo (){
 techo = new Techo();
 //si i es mayor a la cantidad de obj i aumenta y genera la pos nueva de los cocos 
  for(int i=0; i < cantidadObjetos ; i++ ){
    objetosPosY[i] = generarPosicionObjeto();
  }
  }
  
    void dibujar(){
       //si i aumenta la velocidad de los cocos aumenta
  for(int i=0; i < cantidadObjetos ; i++ ){
    objetosPosY[i]+=velocidad;
        //genero los cocos 
    ellipse(i*tam + tam/2, objetosPosY[i], tam/2, tam/2);
    techo.dibujar();
  }
    }
  void teclaPresionada(){
    techo.teclaPresionada();
  }
}
