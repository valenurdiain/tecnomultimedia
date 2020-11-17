class Juego {
  PImage foto;
  color c[] = new color [3];
  int status;
  Jugador jugador; 
  Vidas vidas;
  Manzana manzana;
  Arbol arbol;
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
  void dibujar() {
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
      jugador.PosX = aventura.resize.valorX(100);
      jugador.PosY = aventura.resize.valorY(50);
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
    rect(aventura.resize.valorX(270),aventura.resize.valorY(0), aventura.resize.valorX(500), aventura.resize.valorX(60));
    textSize(aventura.resize.valorX(15));
    fill(0);
    text("¡El patito se cayó al lago! Llega a la meta sin pasar sobre \n las paredes y evita chocar con las manzanas", aventura.resize.valorX(280), aventura.resize.valorY(20));
    jugador.dibujar();
    vidas.dibujar();
    arbol.dibujar();
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
