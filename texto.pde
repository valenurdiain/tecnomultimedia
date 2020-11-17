class Textos {

  String textosPantallas [];
  String textosPantallaBotones [][];
  Textos() {

    //cant textos y textos por boton
    textosPantallas = new String [13];
    textosPantallaBotones = new String [13][2];

    inicializarTextosPantallas();
    inicializarTextosBotones();
  }

  void inicializarTextosPantallas() {
    textosPantallas[0] = "EL PATITO FEO \n Mamá pata tiene polluelos \n pero uno nace  diferente \n al resto";
    textosPantallas[1] = "Mamá pata y sus polluelos \n no lo querían \n y se burlaban";
    textosPantallas[2] = "Mamá pata le dice \n que se vaya, que no es \n aceptado en su familia";
    textosPantallas[3] = "Mamá pata lo lleva junto a sus polluelos \n a dar un paseo";
    textosPantallas[4] = "El patito feo decide \n irse triste y sólo";
    textosPantallas[5] = "";
    textosPantallas[6] = "¡Muy bien! el patito ha encontrado a \n sus amigos";
    textosPantallas[7] = "No lograste ayudar al patito \n a encontrar a sus \n amigos pero no te \n preocupes, del otro \n lado del lago \n encontró \n  hermosas \n aves";
    textosPantallas[8] = "Pero decide continuar su viaje solo \n ya que se burlaban \n de él y al mirar \n al lago encuentra \n con hermosas \n aves blancas";
    textosPantallas[9] = "Soñaba ser como \n ellos pero nunca \n lo logro.";
    textosPantallas[10] = "Al pasar el \n tiempo, vio \n que era \n uno de \n ellos. \n Era un \n hermoso \n cisne blanco.";
    textosPantallas[11] = "El patito aprendió \n a quererse como era \n a pesar de ser diferente.";
    textosPantallas[12] = "";
  }


  void inicializarTextosBotones() {
    //aca agrego los textos que quiero que vayan en cada boton
    textosPantallaBotones[0][0] = "Comenzar.";
    textosPantallaBotones[0][1] = "Creditos.";
    textosPantallaBotones[1][0] = "Mamá pata \n se enoja.";
    textosPantallaBotones[1][1] = "Mamá pata \n lo acepta.";
    textosPantallaBotones[2][0] = "Continuar.";
    textosPantallaBotones[3][0] = "Continuar.";
    textosPantallaBotones[4][0] = "Continuar."; 
    textosPantallaBotones[6][0] = "Continuar."; 
    textosPantallaBotones[7][0] = "Continuar.";
    textosPantallaBotones[8][0] = "Continuar.";
    textosPantallaBotones[9][0] = "Continuar."; 
    textosPantallaBotones[10][0] = "Creditos."; 
    textosPantallaBotones[11][0] = "Continuar."; 
    textosPantallaBotones[12][0] = "Volver a \n empezar.";
    //boton del juego ganaste
    //   textosPantallaBotones[13][0] = "Continuar.";
  }
  String getTextoParaPantalla(int pantalla) {
    return textosPantallas[pantalla];
  }

  String getTextoParaPantallaBoton(int pantalla, int boton) {
    return textosPantallaBotones[pantalla][boton];
  }
}
