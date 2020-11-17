class Arbol {
  PImage arbolFoto[] = new PImage [1];
  int tam, posX, posY, velocidad;
  int radio = 170;
  Manzana manzana;
  Arbol () {
    manzana = new Manzana();
    for (int a=0; a <arbolFoto.length; a++) {
      arbolFoto[a]= loadImage ("foto0.png");
    }
    tam=10;
  }
  void dibujar () {
    image (arbolFoto[0], aventura.resize.valorX(-15), aventura.resize.valorY(20), aventura.resize.valorX(114), aventura.resize.valorY(120));
    image (arbolFoto[0], aventura.resize.valorX(320), aventura.resize.valorY(180), aventura.resize.valorX(80), aventura.resize.valorX(75));
    image (arbolFoto[0], aventura.resize.valorX(720), aventura.resize.valorY(40), aventura.resize.valorX(114), aventura.resize.valorY(120));
    image(arbolFoto[0], aventura.resize.valorX(365), aventura.resize.valorY(410), aventura.resize.valorX(80), aventura.resize.valorX(75));
    manzana.dibujar();
  }
}
