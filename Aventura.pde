class Aventura {
  SoundFile musica;
  Juego juego;
  Creditos creditos;
  Pantalla pantallaActual;
  int cantidadDePantallas = 13; 

  Pantalla [] pantallas = new Pantalla [cantidadDePantallas];
  PImage [] fondos = new PImage [cantidadDePantallas];
  Textos textos = new Textos();
  Resize resize;
  int pantalla;
  Aventura(PApplet music) {
    musica = new SoundFile(music, "patito.mp3");
    musica.play();
    musica.loop();
    //botones que estaran en la pantalla
    Boton boton1, boton2;
    cargarFondos();
    pantallas = new Pantalla [cantidadDePantallas];
    resize = new Resize();

    pantalla = 0; 
    boton1 = new Boton(resize, textos.getTextoParaPantallaBoton(pantalla, 0), 160, 525, 1);
    boton2 = new Boton (resize, textos.getTextoParaPantallaBoton(pantalla, 1), 20, 525, 12); 
    pantallas[pantalla] = new Pantalla(resize, fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null, null);

    pantalla = 1;
    boton1= new Boton(resize, textos.getTextoParaPantallaBoton(pantalla, 0), 160, 525, 2);
    boton2 = new Boton(resize, textos.getTextoParaPantallaBoton(pantalla, 1), 20, 525, 3);
    pantallas[pantalla] = new Pantalla(resize, fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null, null);

    pantalla = 2;
    boton1 = new Boton(resize, textos.getTextoParaPantallaBoton(pantalla, 0), 160, 525, 4);
    pantallas[pantalla] = new Pantalla(resize, fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    pantalla = 3;
    boton1= new Boton(resize, textos.getTextoParaPantallaBoton(pantalla, 0), 160, 525, 5);
    pantallas[pantalla] = new Pantalla(resize, fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    pantalla = 4;
    boton1= new Boton(resize, textos.getTextoParaPantallaBoton(pantalla, 0), 160, 525, 6);
    pantallas[pantalla] = new Pantalla(resize, fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    pantalla = 5;
    juego = new Juego();
    pantallas[pantalla] = new Pantalla(resize, fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, null, juego, null);

    pantalla = 6;
    boton1 = new Boton(resize, textos.getTextoParaPantallaBoton(pantalla, 0), 160, 525, 8);
    pantallas[pantalla] = new Pantalla(resize, fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    pantalla = 7;
    boton1= new Boton(resize, textos.getTextoParaPantallaBoton(pantalla, 0), 160, 525, 9);
    pantallas[pantalla] = new Pantalla(resize, fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    pantalla = 8;
    boton1= new Boton(resize, textos.getTextoParaPantallaBoton(pantalla, 0), 160, 525, 10);
    pantallas[pantalla] = new Pantalla(resize, fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    pantalla = 9;
    boton1= new Boton(resize, textos.getTextoParaPantallaBoton(pantalla, 0), 160, 525, 11);
    pantallas[pantalla] = new Pantalla(resize, fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    pantalla = 10;
    boton1= new Boton(resize, textos.getTextoParaPantallaBoton(pantalla, 0), -350, 525, 12);
    pantallas[pantalla] = new Pantalla(resize, fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    pantalla = 11;
    boton1= new Boton(resize, textos.getTextoParaPantallaBoton(pantalla, 0), 200, 525, 12);
    pantallas[pantalla] = new Pantalla(resize, fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    pantalla = 12;
    creditos = new Creditos(resize, textos.getTextoParaPantalla(pantalla), 400, 600);
    boton1= new Boton(resize, textos.getTextoParaPantallaBoton(pantalla, 0), -300, 525, 0);
    pantallas[pantalla] = new Pantalla(resize, fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, boton1, null, creditos);

    //cuando termino de indicar los botones y a donde se dirigen, indico la pantalla actual
    pantallaActual = pantallas[0];
  }

  //dibujo la pantalla donde inicia la aventura, que puse al final de los botones
  void dibujar() {
    pantallaActual.dibujar();
  }

  //cargo las imagenes de fondo
  void cargarFondos() {
    for (int i=0; i<cantidadDePantallas; i++) {
      fondos[i] = loadImage("pantalla"+ i + ".jpg");
    }
  }
  //al hacer click en los lugares que indicas arriba, te dirige a la pantalla que indicaste
  void mouseClicked() {
    creditos.reiniciarcreditos();
    int pantallaAIr = pantallaActual.mouseClicked();
    if (pantallaAIr != -1) {
      pantallaActual = pantallas[pantallaAIr];
    }
  }
  void mover() {
    juego.mover();
  }
}
