class Tablero{
  int cantidadCeldas = 10;
  int tamX, tamY;
  Celda [][] celdas;
  
  Tablero(){
    celdas = new Celda [cantidadCeldas][cantidadCeldas];
    for(int i=0; i<cantidadCeldas; i++){
      for(int j=0; j<cantidadCeldas; j++){
     celdas[i][j] = new Celda();
      }
    }
  }
  
  void dibujar(){
    for(int i=0; i<cantidadCeldas; i++){
      for(int j=0; j<cantidadCeldas; j++){
     celdas[i][j].dibujar();
      
      }
    }
  }
  
  void teclaPresionada(){
    
  }
  
}
