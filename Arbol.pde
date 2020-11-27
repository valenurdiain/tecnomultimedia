class Arbol {
  PImage arbolFoto;
  int posX, posY, tamX, tamY;
  Resize resize;
  Arbol (int p_posX, int p_posY, int p_tamX, int p_tamY) {
    posX = p_posX;
    posY = p_posY;
    tamX = p_tamX;
    tamY = p_tamY;
    arbolFoto = loadImage("foto0.png");
  }
  void dibujar() {
    image (arbolFoto, posX, posY, tamX, tamY);
  }
}
