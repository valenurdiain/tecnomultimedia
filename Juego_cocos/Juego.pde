class Juego {
  Enemigo enemigo; 
    Juego(){
   enemigo = new Enemigo();
  }
  
  void dibujar(){
    enemigo.dibujar();
  }
  
  void teclaPresionada(){
    enemigo.teclaPresionada();
  }
}
//genero pos aleatoria de los cocos
int generarPosicionObjeto(){
  return round(random(-1000,techo * tam));
}
