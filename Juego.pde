class Juego {
  PImage foto;
  color c[] = new color [3];
  int status;
  Jugador jugador; 
  Vidas vidas;
  Manzana manzana;
  Arbol arbol;
  Resize resize;
  Juego () {
    status = 0;
    c[0] = (#00cd00);
    c[1] = (#ff0000);
    c[2] = (#000000);
    jugador = new Jugador();
    vidas = new Vidas();
    arbol = new Arbol();
    foto = loadImage ("foto.png");
  }
  void dibujar(Resize resize) {
    this.resize = resize;
    if (status ==0) {
      dibujoJuego();
    } else if (status==1) {
      dibujoPantallaGanaste();
      //aventura.pantalla=13;
    } else if (status==1) {
      dibujoPantallaPerdiste();
    }
  }
  void  dibujoPantallaPerdiste() {
    if (get(jugador.PosX, jugador.PosY)>=c[0]) {
      vidas.cantVidas = vidas.cantVidas -1;
      jugador.PosX = resize.valorX(100);
      jugador.PosY = resize.valorY(50);
    }
    if (vidas.cantVidas <= 0) {
      reiniciar();
      aventura.pantallaActual = aventura.pantallas[7];
    }
  }
  void dibujoPantallaGanaste() {
    if (get(jugador.PosX, jugador.PosY)==c[2]) {
      reiniciar();
      aventura.pantallaActual = aventura.pantallas[6];
    }
  }
  void dibujoJuego() {
    image (foto, 0, 0, width, height);
    rect(resize.valorX(270), resize.valorY(0), resize.valorX(500), resize.valorX(60));
    textSize(resize.valorX(25));
    fill(0);
    text("¡El patito se cayó al lago! Llega a la meta sin pasar sobre \n las paredes y evita chocar con las manzanas", resize.valorX(280), resize.valorY(20));
    jugador.dibujar(resize);
    vidas.dibujar(resize);
    arbol.dibujar(resize);
    dibujoPantallaPerdiste();
    dibujoPantallaGanaste();
  }
  void mover() {
    jugador.mover();
  }
  void reiniciar() {
    jugador.PosX = width/8;
    jugador.PosY = height/12;
    vidas.cantVidas =3;
  }
}
