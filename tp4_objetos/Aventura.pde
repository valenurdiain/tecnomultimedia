class Aventura {
  int pantallaActiva=1;
  String estado;
  Pantalla pantalla;
  Texto texto; 
  Boton boton;
  Aventura() {
    pantalla = new Pantalla();
    texto = new Texto(this); 
    boton = new Boton(this);
  }
  void dibujar() {
    pantalla.dibujar();
    boton.dibujar();
    texto.dibujar();
  }
  void presionar() {
    boton.presionar();
  }
}
