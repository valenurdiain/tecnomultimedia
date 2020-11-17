class Jugador {
  int PosX, PosY;
  int tam;
  PImage foto1;
  int cantVidas;
  boolean  choque;
  Vidas vidas;
  Jugador() {
    foto1 = loadImage ("foto1.png");
    vidas = new Vidas();
    //La ubicación del Personaje
    PosX = 100;
    PosY = 50;
    cantVidas =3;
  }
  void dibujar() { 
    image (foto1, PosX, PosY, aventura.resize.valorX(27), aventura.resize.valorY(24));
  }
  void mover() {
    if (choque == false) {
      //Controlo el personaje arriba y abajo
      if (keyCode == UP) {
        PosY = PosY - 10;
      } else if (keyCode == DOWN) {
        PosY = PosY + 10;
      }
      if (keyCode == LEFT) {
        PosX = PosX - 10;
      } else if (keyCode == RIGHT) {
        PosX = PosX + 10;
      }
    }
  }
}
