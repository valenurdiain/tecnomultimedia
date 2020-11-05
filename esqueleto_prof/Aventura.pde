class Aventura {
    Pantalla pantallaActual;
  int cantidadPantallas = 13;
  Pantalla [] pantallas = new Pantalla [cantidadPantallas];
  PImage [] foto = new PImage [cantidadPantallas];
  Textos textos = new Textos();
   int pX(int valor) {
    return round(map(valor, 0, 800, 0, width));
  }
  int pY(int valor) {
    return round(map(valor, 0, 600, 0, height));
  }
   Aventura(){
    int pantalla;
    Boton boton1, boton2;

    cargarFondos();

    pantallas = new Pantalla [cantidadPantallas];
    //Creo la pantalla 1
    pantalla = 0;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla,0), pX(563), pY(500), width/8, height/15);
    boton2 = new Boton(textos.getTextoParaPantallaBoton(pantalla,1), pX(563), pY(500),width/5.33, height/1.2, width/8, height/15);
    pantallas[pantalla] = new Pantalla(fondos[pantalla],textos.getTextoParaPantalla(pantalla), boton1, boton2);
    
    //Creo la pantalla 2
    pantalla = 1;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla,0), 50, 300, 0);
    boton2 = new Boton(textos.getTextoParaPantallaBoton(pantalla,1), 300, 300, 2);
    pantallas[pantalla] = new Pantalla(fondos[pantalla],textos.getTextoParaPantalla(pantalla), boton1, boton2);
    
     //Creo la pantalla 3
    pantalla = 2;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla,0), pX(563), pY(500), width/8, height/15);
    pantallas[pantalla] = new Pantalla(fondos[pantalla],textos.getTextoParaPantalla(pantalla), boton1, null);

 //Al terminar de crear las pantallas, indico la actual.
    pantallaActual = pantallas[0];
   }
     void dibujar(){
    pantallaActual.dibujar();
  }
  void cargarFondos(){
 for (int i=0; i <foto.length; i++) {
      foto[i]= loadImage ("pantalla"+i+".jpg");
    }
  }

  void mouseClicked(){
    int pantallaAIr = pantallaActual.mouseClicked();
    if(pantallaAIr != -1){
      pantallaActual = pantallas[pantallaAIr];
    }
  }
}
