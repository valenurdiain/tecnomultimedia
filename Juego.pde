class Juego {
  PImage foto;
  color c[] = new color [3];
  int status;
  int tam =10;
  int posX, posY, velocidad;
  int radio=170;
  Jugador jugador; 
  Vidas vidas;
  Manzana manzana;
  Arbol arbol;
  Resize resize;
  Arbol arbol1, arbol2, arbol3, arbol4;
  Manzana manzana1, manzana2, manzana3, manzana4, manzana5, manzana6, manzana7, manzana8, manzana9;
  Juego () {
    velocidad = 1;
    tam=10;
    posX = 70;
    posY = 170;
    status = 0;
    c[0] = (#00cd00);
    c[1] = (#ff0000);
    c[2] = (#000000);
    foto = loadImage("foto.png");
    jugador = new Jugador();
    vidas = new Vidas();
    arbol1 = new Arbol(-15, 20, 114, 120);
    arbol2 = new Arbol (320, 180, 80, 75);
    arbol3 = new Arbol (720, 40, 114, 120);
    arbol4 = new Arbol (365, 410, 80, 75);
    //manzana estatica
    manzana1 = new Manzana(20, 70, tam, tam);
    manzana2 = new Manzana(60, 70, tam, tam);
    manzana3 = new Manzana (350, 200, tam, tam);
    manzana4 = new Manzana (360, 220, tam, tam);
    manzana5 = new Manzana (760, 60, tam, tam);
  }
  void dibujoManzanaMov() {
    //manzana mov
    manzana6 = new Manzana ((posX+240), (posY+100), tam, tam);
    manzana7 = new Manzana ((posX), (posY-tam), tam, tam);
    manzana8 = new Manzana ((posX+640), (posY-tam), tam, tam);
    manzana9 = new Manzana ((posX+350), (posY+320), tam, tam);
    posY = posY + velocidad;
    if (posY > radio) {
      posY = 100;
    }
  }
  void dibujar(Resize resize) {
    this.resize = resize;
    if (status ==0) {
      dibujoJuego();
    }
  }
  void  dibujoPantallaPerdiste() {
    if (get(jugador.PosX, jugador.PosY)>=c[0]) {
      vidas.cantVidas = vidas.cantVidas -1;
      jugador.PosX = resize.valorX(100);
      jugador.PosY = resize.valorY(50);
    }
    if (get(jugador.PosX, jugador.PosY)>=c[1]) {
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
    arbol1.dibujar();
    arbol2.dibujar();
    arbol3.dibujar();
    arbol4.dibujar();
    //manzana estatica
    manzana1.dibujar();
    manzana2.dibujar();
    manzana3.dibujar();
    manzana4.dibujar();
    manzana5.dibujar();
    //manzana mov
    dibujoManzanaMov();
    manzana6.dibujar();
    manzana7.dibujar();
    manzana8.dibujar();
    manzana9.dibujar();
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
