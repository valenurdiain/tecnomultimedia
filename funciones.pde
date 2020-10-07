void botones (float x, float y, float alto, float ancho) {
  noFill();
  strokeWeight(3);
  rect(x,y,alto,ancho);
  }
void texto(String textos, float x, float y, int i) {
  textFont(fuentes[0]);
  textSize(i);
  text (textos,x,y);
}
void pantallas (int i) {
  image (foto[i],0,0,width,height);
}

int pX(int valor) {
  return round(map(valor, 0, 800, 0, width)); 
}
int pY(int valor) {
  return round(map(valor, 0, 600, 0, height));
  }

    
  
