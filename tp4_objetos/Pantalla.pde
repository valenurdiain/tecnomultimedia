//cargo las imagenes de cada pantalla y defino cual es la pantalla activa
class Pantalla {
  PImage[] foto = new PImage [13]; 
  Pantalla() {
    for (int i=0; i <foto.length; i++) {
      foto[i]= loadImage ("pantalla"+i+".jpg");
    }
  }
  void pantallas (int i) {
    image (foto[i], 0, 0, width, height);
  }
  void dibujar() {
    for (int p=0; p<13; p++) {
      if (aventura.pantallaActiva==(p+1)) {
        pantallas(p);
      }
    }
  }
}
