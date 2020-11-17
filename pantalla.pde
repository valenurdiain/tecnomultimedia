class Pantalla {
  PImage fondos; 
  String textoPantalla; 
  Resize resize;
  Boton boton1; 
  Boton boton2;
  Juego juego;
  Creditos creditos;
  Pantalla(Resize resize, PImage fondos, String textoPantalla, Boton boton1, Boton boton2, Juego juego, Creditos creditos) {
this.resize = resize;
    this.fondos = fondos;
    this.textoPantalla = textoPantalla;
    this.boton1 = boton1;
    this.boton2 = boton2;
    this.juego = juego;
    this.creditos = creditos;
  }
  void dibujar() {
    image(this.fondos, 0, 0, width, height);
    textSize(aventura.resize.valorX(30));
    fill(255, 255, 255);
    text(this.textoPantalla, resize.valorX(10), resize.valorY(50));
    if (boton1 != null) {
      boton1.dibujar();
    }

    if (boton2 != null) {
      boton2.dibujar();
    }
    if (juego != null) {
      juego.dibujar();
    }
    if (creditos != null) {
      creditos.dibujar();
    }
  }

  int mouseClicked() {
    int pantallaAIr = -1;

    if (boton1 != null) {
      pantallaAIr = boton1.mouseClicked();
    }

    if (boton2 != null && pantallaAIr == -1) {
      pantallaAIr = boton2.mouseClicked();
    }
    return pantallaAIr;
  }
}
