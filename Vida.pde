class Vidas {
  int cantVidas = 3;
  int posX, posY;
  int tam = width;
  Vidas() {
    posX = 70;
    posY = 100;
  }
  void dibujar() {
    textSize (aventura.resize.valorX(30));
    noFill();
    text ("Vidas:" + (cantVidas), aventura.resize.valorX(90), aventura.resize.valorY(30));
    fill(255, 0, 0);
  }
  void textoPerder() {
    if (cantVidas <= 0) {
      background (0); 
      fill(255, 0, 0);
      aventura.pantallaActual = aventura.pantallas[7];
      fill(0);
    }
  }
}
