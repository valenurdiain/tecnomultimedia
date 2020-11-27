class Manzana {
  PImage manzana;
  int posX, posY, tamX, tamY,velocidad;
  int radio = 170;
  Resize resize;
  Manzana (int p_posX, int p_posY, int p_tamX, int p_tamY) {
    posX = p_posX;
    posY = p_posY;
    tamX = p_tamX;
    tamY = p_tamY;
    velocidad = 1;
    manzana= loadImage ("manzana.png");
  }
  void dibujar () {
    image(manzana, posX, posY, tamX, tamY);
  }
}
