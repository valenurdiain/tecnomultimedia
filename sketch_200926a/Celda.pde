class Celda{
  int cantidadCeldas=10;
  int tamX, tamY;
   Celda [][] celdas;
  void dibujar(){
    tamX = width/cantidadCeldas;
    tamY= height/cantidadCeldas;
     for(int i=0; i<cantidadCeldas; i++){
      for(int j=0; j<cantidadCeldas; j++){      
    rect(i*tamX,j*tamY,tamX, tamY);
    
  }
     }
  }
}
