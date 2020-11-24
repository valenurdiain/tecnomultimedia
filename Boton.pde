class Boton {
  int posX, posY, ancho, alto, pantallaAIr;
  String texto;
  Resize resize;
  Boton(Resize resize, String texto, int posX, int posY, int pantallaAIr) {
    this.resize = resize;
    this.texto = texto;
    this.posX = posX;
    this.posY = posY;
    this.pantallaAIr = pantallaAIr;
    //dimensiones del boton
    ancho = 120;
    alto = 100;
  }
  //dibujas el boton
  void dibujar() {
    fill(255, 255, 255);
    rect((resize.valorX(posX+400)), (resize.valorY(posY-30)), (resize.valorX(ancho)), (resize.valorY(alto))); 
    //dibujar textoBoton
    fill(0);
    textFont(aventura.textos.fuentes[1]);
    textSize(resize.valorX(25));
    text(texto, (resize.valorX(posX+410)), (resize.valorY(posY + 20)));
  }
  //indico el click dentro del boton, para que se ejecute lo que esta dentro de aventura
  int mouseClicked() {
    if (mouseX > resize.valorX(posX+400) && mouseX < resize.valorX(posX+400 + ancho) && mouseY > resize.valorY(posY) && mouseY < resize.valorY(posY + alto)) {
      if (pantallaAIr==0 ) {
        aventura.juego.status=0;
      }
      return pantallaAIr;
    } 
    return -1;
  }
}
