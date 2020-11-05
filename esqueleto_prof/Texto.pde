class Textos{
  String textos [];
  //TEXTOS
  int posTextos [][];
  PFont[]fuentes = new PFont [2];
  Textos(){
    textos = new String [25];
    posTextos = new int [14][2];
    fuentes[0] =loadFont("AgencyFB-Reg-48.vlw"); 
    fuentes[1] = loadFont("AgencyFB-Bold-48.vlw");
    inicializarTextos();
    posTextos();
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
   String getTextoParaPantalla(int pantalla){
    return textos[pantalla];
  }

  String getTextoParaPantallaBoton(int pantalla, int boton){
    return posTextos[pantalla][boton];
  }
}
