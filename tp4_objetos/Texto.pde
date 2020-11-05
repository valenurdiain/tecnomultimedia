//en esta clase cargo coordenadas y los textos de cada pantalla
class Texto {
  float movimientoenY1; 
  //TEXTOS
  int [][] posTextos = new int [14][2];
  String textos[] = new String [25];
  PFont[]fuentes = new PFont [2];
  Aventura aventura;
  Texto(Aventura p_aventura) {
    aventura = p_aventura;
    movimientoenY1 =(100);
    fuentes[0] =loadFont("AgencyFB-Reg-48.vlw"); 
    fuentes[1] = loadFont("AgencyFB-Bold-48.vlw");
  }
  void funcionTexto(String textos, float x, float y, int i) {
    textFont(fuentes[0]);
    textSize(i);
    text (textos, x, y);
  }
  void dibujar() {
    //cargoTextos
    inicializarTextos();
    posTextos();
    if (aventura.pantallaActiva==3 || aventura.pantallaActiva==4 || aventura.pantallaActiva==5 ||aventura.pantallaActiva==7 || aventura.pantallaActiva==8 || aventura.pantallaActiva==10 || aventura.pantallaActiva==12) {
    funcionTexto ("Continuar", width/1.41, height/1.14, width/29);
    }
    { 
      if (aventura.pantallaActiva==1) 
      textFont(fuentes[1]);
      textSize (width/10);
      fill(255, 255, 255);
      text ("EL PATITO FEO", width/5, height/8);
      funcionTexto (textos[0], posTextos[0][0], posTextos[0][1], width/20);
      funcionTexto (textos[1], posTextos[1][0], posTextos[1][1], width/20);
      funcionTexto ("Comenzar", width/1.41, height/1.14, width/29); 
      funcionTexto ("Creditos", width/5.16, height/1.14, width/29);
    }
    if (aventura.pantallaActiva == 2) {
      funcionTexto (textos[2], posTextos[2][0], posTextos[2][1], width/20);
      funcionTexto ("Mamá pata \n se enoja", width/1.31, height/1.15, width/29);
      funcionTexto ("Mamá pata \n lo acepta", width/1.64, height/1.15, width/29);
    }
    if (aventura.pantallaActiva == 3) {
      funcionTexto (textos[3], posTextos[3][1], posTextos[0][1], width/20);
    }
    if (aventura.pantallaActiva == 4) {
      funcionTexto (textos[4], posTextos[0][0], posTextos[4][0], width/20);
    }
    if (aventura.pantallaActiva==5) {
      funcionTexto (textos[5], posTextos[0][0], posTextos[2][1], width/20);
    }
    if (aventura.pantallaActiva==6) {
      funcionTexto (textos[6], posTextos[5][0], posTextos[4][0], width/20);
      funcionTexto ("Encuentra amigos", width/2.61, height/1.14, width/29);
      funcionTexto ("Continuar viaje", width/1.41, height/1.14, width/29);
    } else if (aventura.pantallaActiva==7) {
      funcionTexto (textos[7], posTextos[7][0], posTextos[7][1], width/20);
    }
    //PANTALLA 8
    else if (aventura.pantallaActiva==8) {
      funcionTexto (textos[8], posTextos[8][0], posTextos[8][1], width/20);
    }
    //PANTALLA 9
    else if (aventura.pantallaActiva == 9) {
      funcionTexto (textos[9], posTextos[9][0], posTextos[8][1], width/20);
      funcionTexto ("Continuar", width/1.35, height/1.14, width/29);
    } 
    else if (aventura.pantallaActiva==10) {
      funcionTexto (textos[10], posTextos[5][0], posTextos[2][1], width/20);
    } 
    else if (aventura.pantallaActiva==11) {
      funcionTexto (textos[11], posTextos[11][0], posTextos[8][1], width/20); 
      funcionTexto ("Creditos", width/9.66, height/1.14, width/29);
    }
    //PANTALLA 12 
    else if (aventura.pantallaActiva==12) {
      funcionTexto (textos[12], posTextos[12][0], posTextos[0][1], width/20);
    } 
    else if (aventura.pantallaActiva==13) {
      fill (0);
      funcionTexto (textos[13], posTextos[13][0], movimientoenY1, width/20);
      movimientoenY1 = movimientoenY1 -2.0;
      noFill ();
      funcionTexto ("Volver a empezar", width/6.4, height/1.40, width/29);
    }
  }
  void inicializarTextos () {
    textos[0] = "Mamá pata tiene \n polluelos";
    textos[1] = "pero uno nace \n  diferente al resto";
    textos[2] = "Mamá pata y sus polluelos \n no lo querían \n y se burlaban";
    textos[3] = "Mamá pata le dice \n que se vaya, que no es \n aceptado en su familia";
    textos[4] = "Mamá pata lo lleva junto a sus polluelos \n a dar un paseo";
    textos[5] = "El patito feo decide \n irse triste y sólo";
    textos[6] = "El patito feo se cae y lo pierden \n en el lago";
    textos[7] = "En el transcuro \n del viaja encuentra \n dos amigos";
    textos[8] = "Continua su viaje sin \n encontrar a su familia \n pero, encuentra \n hermosas aves";
    textos[9] = "Pero el patito feo \n decide continuar su \n viaje solo y al mirar \n al lago vió hermosas \n aves blancas";
    textos[10] = "Soñaba ser como \n ellos pero nunca \n lo logro.";
    textos[11] = "Al pasar el \n tiempo, vio \n que era \n uno de \n ellos. \n Era un \n hermoso \n cisne blanco.";
    textos[12] = "El patito aprendió \n a quererse como era \n a pesar de ser diferente.";
    textos[13] = "Autor: \n Hans Christian Andersen \n Ilustrador: \n Vilhelm Pedersen \n Editorial:\n C.A. Reitzel";
  }
  void posTextos () {
    posTextos[0][0] = (width/20);
    posTextos[0][1] = (height/2);
    posTextos[1][0] = floor(width/1.48);
    posTextos[1][1] = (height/2);
    posTextos[2][0] = floor(width/13.33);
    posTextos[2][1] = floor(height/8.57);
    posTextos[3][1] = floor(width/3.66);
    posTextos[4][0] = (height/16);
    posTextos[5][0] = (width/16);
    posTextos[7][0] = floor(width/3.2);
    posTextos[7][1] = (height/10);
    posTextos[8][0] = floor(width/1.70);
    posTextos[8][1] = (height/15);
    posTextos[9][0] = floor(width/1.60);
    posTextos[11][0] = (width/80);
    posTextos[12][0] = floor(width/1.77);
    posTextos[13][0] = (width/40);
  }
}
