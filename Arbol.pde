//Esta clase dibuja los arboles
class Arbol {
  int tam, posX, posY, velocidad;
  int radio = 170;
  Arbol (Juego p_juego) {
    juego = p_juego;
    tam=10;
  }
  void dibujar () {
    image (juego.arbolFoto[0], -15, 20, width/7, height/5);
    image (juego.arbolFoto[0], 320, 180, width/10, height/8);
    image (juego.arbolFoto[0], 720, 40, width/7, height/5);
    image(juego.arbolFoto[0], 365, 410, width/10, height/8);
  }
}
