  void inicializarTextos (){
  if (pantallaActiva==1);
  textos[0] = "Mamá pata tiene \n polluelos";
  textos[1] = "pero uno nace \n  diferente al resto";
  if (pantallaActiva==2);
  textos[2] = "Mamá pata y sus polluelos \n no lo querían \n y se burlaban";
  if (pantallaActiva==3);
  textos[3] = "Mamá pata le dice \n que se vaya, que no es \n aceptado en su familia";
  if (pantallaActiva==4);
  textos[4] = "Mamá pata lo lleva junto a sus polluelos \n a dar un paseo";
  if (pantallaActiva==5);
  textos[5] = "El patito feo decide \n irse triste y sólo";
  if (pantallaActiva==6);
  textos[6] = "El patito feo se cae y lo pierden \n en el lago";
  if (pantallaActiva==7);
  textos[7] = "En el transcuro \n del viaja encuentra \n dos amigos";
  if (pantallaActiva==8);
  textos[8] = "Continua su viaje sin \n encontrar a su familia \n pero, encuentra \n hermosas aves";
  if (pantallaActiva==9);
  textos[9] = "Pero el patito feo \n decide continuar su \n viaje solo y al mirar \n al lago vió hermosas \n aves blancas";
  if (pantallaActiva==10);
  textos[10] = "Soñaba ser como \n ellos pero nunca \n lo logro.";
  if (pantallaActiva==11);
  textos[11] = "Al pasar el \n tiempo, vio \n que era \n uno de \n ellos. \n Era un \n hermoso \n cisne blanco.";
  if (pantallaActiva==12);
  textos[12] = "El patito aprendió \n a quererse como era \n a pesar de ser diferente.";
  if (pantallaActiva==13);
  textos[13] = "Autor: \n Hans Christian Andersen \n Ilustrador: \n Vilhelm Pedersen \n Editorial:\n C.A. Reitzel";
  }
  void posTextos () {
     textFont(fuentes[0]);
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
