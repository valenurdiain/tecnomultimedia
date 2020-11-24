class Arbol {
  PImage arbolFoto[] = new PImage [1];
  int tam, posX, posY, velocidad;
  int radio = 170;
  Resize resize;
  Manzana manzana;
  Arbol () {
    manzana = new Manzana();
    for (int a=0; a <arbolFoto.length; a++) {
      arbolFoto[a]= loadImage ("foto0.png");
    }
    tam=10;
  }
  void dibujar (Resize resize) {
    this.resize = resize;
    image (arbolFoto[0], resize.valorX(-15), resize.valorY(20), resize.valorX(114), resize.valorY(120));
    image (arbolFoto[0], resize.valorX(320), resize.valorY(180), resize.valorX(80), resize.valorX(75));
    image (arbolFoto[0], resize.valorX(720), resize.valorY(40), resize.valorX(114), resize.valorY(120));
    image(arbolFoto[0], resize.valorX(365), resize.valorY(410), resize.valorX(80), resize.valorX(75));
    manzana.dibujar(resize);
  }
}
