void pantallas() { 
{ 
if (pantallaActiva==1)  
pantallas(0);
textFont(fuentes[1]);
textSize (width/10);
fill(255,255,255);
text ("EL PATITO FEO", width/5, height/8);
texto (textos[0], posTextos[0][0], posTextos[0][1], width/20);
texto (textos[1],posTextos[1][0], posTextos[1][1],width/20);
botones(pX(563),pY(500),width/8,height/15);
botones(width/5.33,height/1.2,width/8,height/15);
texto ("Comenzar" , width/1.41, height/1.14, width/29); 
texto ("Creditos", width/5.16, height/1.14, width/29);
 }
 //PANTALLA2
 if (pantallaActiva == 2) {
pantallas(1); 
textSize (width/16);
texto (textos[2],posTextos[2][0], posTextos[2][1], width/20);
texto ("Mamá pata \n se enoja" , width/1.31, height/1.15,width/29);
texto ("Mamá pata \n lo acepta", width/1.64,height/1.15, width/29);
botones(width/1.33,height/1.2,width/7.27,height/10);
botones(width/1.66,height/1.2,width/7.27,height/10);
   }
//PANTALLA 3 
 if (pantallaActiva == 3) {
pantallas(2);
texto (textos[3],posTextos[3][1],posTextos[0][1], width/20);
      }
//PANTALLA 4
if (pantallaActiva == 4) {
pantallas(3);
texto (textos[4],posTextos[0][0], posTextos[4][0], width/20);
       }
//PANTALLA 5
if (pantallaActiva==5) {
pantallas(4);
texto (textos[5], posTextos[0][0], posTextos[2][1], width/20);
        }
 //PANTALLA 6
 if (pantallaActiva==6) {
pantallas(5);
texto (textos[6], posTextos[5][0], posTextos[4][0], width/20);
texto ("Encuentra amigos",width/2.61,height/1.14, width/29);
 texto ("Continuar viaje",width/1.41,height/1.14, width/29);
 botones(pX(563),pY(500),width/4.70,height/15);
 botones (width/2.66,height/1.2, width/4.70,height/15);
 }
//PANTALLA 7
else if (pantallaActiva==7) {
pantallas(6);
texto (textos[7], posTextos[7][0], posTextos[7][1], width/20);
       }
//PANTALLA 8
else if (pantallaActiva==8) {
pantallas(7);
texto (textos[8],posTextos[8][0], posTextos[8][1], width/20);
       }
 //PANTALLA 9
 else if (pantallaActiva == 9) {
pantallas(8);
texto (textos[9], posTextos[9][0], posTextos[8][1], width/20);
texto ("Continuar" , width/1.35, height/1.14, width/29); 
botones (width/1.37,height/1.2,width/8,height/15);
   }
//PANTALLA 10 
else if (pantallaActiva==10) {
pantallas(9);
texto (textos[10], posTextos[5][0], posTextos[2][1], width/20);
 }
//PANTALLA 11 
else if (pantallaActiva==11) {
pantallas(10);
texto (textos[11],posTextos[11][0], posTextos[8][1], width/20); 
texto ("Creditos" , width/9.66, height/1.14, width/29);
botones (width/11,height/1.2,width/8,height/15);
}
//PANTALLA 12 
else if (pantallaActiva==12) {
pantallas(11);
texto (textos[12], posTextos[12][0], posTextos[0][1], width/20);
 }
 //PANTALLA 13
else if (pantallaActiva==13) {
pantallas(12);
fill (0,0,0);
texto (textos[13], posTextos[13][0], movimientoenY1, width/20);
movimientoenY1 = movimientoenY1 -2.0;
noFill ();
texto ("Volver a empezar",width/6.4, height/1.40, width/29); 
botones (width/6.66, height/1.5, width/4.70, height/15);
 }
}
