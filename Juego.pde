//Esta clase carga imagenes, dibuja a las demás clases, define cuando se gana y cuando se pierde.
class Juego {
  PImage foto;
  color c[] = new color [3];
  PImage manzanaEstatica[] = new PImage [1];
  PImage manzanaMov[] = new PImage [1];
  PImage arbolFoto[] = new PImage [1];
  boolean choque;
  Jugador jugador; 
  Vidas vidas;
  Manzana manzana;
  Arbol arbol;
  Juego () {
    c[0] = (#00cd00);
    c[1] = (#ff0000);
    c[2] = (#000000);
    jugador = new Jugador();
    vidas = new Vidas();
    manzana = new Manzana(this);
    arbol = new Arbol(this);
    foto = loadImage ("foto.png");
     for (int a=0; a <arbolFoto.length; a++) {
      arbolFoto[a]= loadImage ("foto0.png");
    }
     for (int e=0; e <manzanaEstatica.length; e++) {
      manzanaEstatica[e]= loadImage ("manzana.png");
    }
    for (int m=0; m <manzanaMov.length; m++) {
      manzanaMov[m]= loadImage ("manzana.png");
    }
  }
  void dibujar() {
    image (foto, 0, 0, width, height);
    rect(270,0,500,60);
    textSize(20);
    fill(0);
    text("Llega a la meta sin pasar sobre las paredes y \n evita chocar con las manzanas",300,20);
    jugador.dibujar();
    vidas.dibujar();
    arbol.dibujar();
    manzana.dibujar();
    ganaste();
    perdiste();
  }
  void mover() {
    jugador.mover();
  }
  void  perdiste() {
    if (get(jugador.PosX, jugador.PosY)>=c[0]) {
      choque = true;
      vidas.cantVidas = vidas.cantVidas -1;
      jugador.PosX = width/8;
      jugador.PosY = height/12;
    }
    for (int m=0; m <manzanaEstatica.length; m++) {
      if (get(jugador.PosX+10, jugador.PosY+10)==c[1]) {
        choque = true;
        vidas.cantVidas = vidas.cantVidas -1;
        jugador.PosX = width/8;
        jugador.PosY = height/12;
      }
    }
    
    vidas.textoPerder();
  }
  void ganaste() {
    if (get(jugador.PosX, jugador.PosY)==c[2]) {
      choque = true;
      background(0);
      fill(255, 0, 0);
      text("¡Mira a quienes encontraste! \n presiona 'c' para continuar", 200, 250);
    }
  }
}
