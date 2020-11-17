class Creditos {
  int posX, posY, ancho, alto, pantallaAIr;
  String texto;
Resize resize;
  Creditos(Resize resize, String texto, int posX, int posY) {
    this.resize = resize;
    this.texto = texto;
    this.posX = posX;
    this.posY = posY;
  }

  void dibujar() {
    fill(255);
    text("Autor original: \n Hans Christian Andersen \n Ilustrador: \n Vilhelm Pedersen \n Editorial:\n C.A. Reitzel \n Esta interpretación está \n realizada por Valentina Urdiain \n alumna de la Facultad de Artes (UNLP)", posX-400, posY);
    mover();
  }

  void mover() {
    if (posY>150)
      posY--;
  }
void reiniciarcreditos() {
    if (mouseX > aventura.resize.valorX(100) && mouseX <   aventura.resize.valorX(220) && mouseY > aventura.resize.valorY(155) && mouseY < aventura.resize.valorY(595)) {
      posY = aventura.resize.valorY(600);
    }
  }
}
