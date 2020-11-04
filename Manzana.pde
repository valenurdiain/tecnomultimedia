//Esta clase dibuja manzanas, logra el movimiento en Y de algunas de ellas
class Manzana {
  int tam, posX, posY, velocidad;
  int radio = 170;
  Manzana (Juego p_juego) {
    juego = p_juego;
    velocidad = 1;
    posX = 70;
    posY = 100;
    tam=10;
  }
  void dibujar () {
    noStroke();
    //manzanas estaticas
    image (juego.manzanaEstatica[0], 20, 70, tam, tam);
    image(juego.manzanaEstatica[0], 60, 70, tam, tam);
    image(juego.manzanaEstatica[0], 45, 90, tam, tam);
    image(juego.manzanaEstatica[0], 350, 200, tam, tam);
    image(juego.manzanaEstatica[0], 360, 220, tam, tam);
    image(juego.manzanaEstatica[0], 750, 100, tam, tam);
    image(juego.manzanaEstatica[0], 780, 90, tam, tam);
    image(juego.manzanaEstatica[0], 760, 60, tam, tam);
    //Manzanas con movimiento
    image (juego.manzanaMov[0], posX+240, posY+100, tam, tam);
    image (juego.manzanaMov[0], posX, posY-tam, tam, tam);
    image (juego.manzanaMov[0], posX+640, posY-tam, tam, tam);
    image(juego.manzanaMov[0], posX+350, posY+320, tam, tam);
    posY = posY + velocidad;
    if (posY > radio) {
      posY = 100;
    }
  }
}
