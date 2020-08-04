float movimientoenY1; 
String estado;
//FOTOS
PImage foto;
PImage foto2;
PImage foto3;
PImage foto4;
PImage foto5;
PImage foto6;
PImage foto7; 
PImage foto8;
PImage foto9;
PImage foto10;
PImage foto11;
PImage foto12;
PImage foto13;
//FUENTES
PFont fuente;
PFont fuente1;

void setup () {

   movimientoenY1 =(100);
  estado = "foto";
  size (800,600); 
  foto = loadImage ("pantalla1.jpg"); 
  foto2 = loadImage ("pantalla2.jpg");
  foto3 = loadImage ("pantalla3.jpg");
  foto4 = loadImage ("pantalla4.jpg");
  foto5 = loadImage ("pantalla5.jpg");
  foto6 = loadImage ("pantalla6.jpg");
  foto7 = loadImage ("pantalla7.jpg");
  foto8 = loadImage ("pantalla8.jpg");
  foto9 = loadImage ("pantalla9.jpg");
  foto10 = loadImage ("pantalla10.jpg");
  foto11 = loadImage ("pantalla11.jpg");
  foto12 = loadImage ("pantalla12.jpg");
  foto13 = loadImage ("pantalla13.jpg");
  fuente = loadFont("AngsanaNew-80.vlw");
  fuente1 = loadFont ("ArabicTypesetting-60.vlw");
  textFont (fuente);
  textFont (fuente1);
}
  
  void draw () {
  
  if (estado.equals ("foto")) {
      image (foto,0,0,width,height);
          textSize (width/8.8);
    text ("EL PATITO FEO", width/5, height/8); 
       //COMENZAR
        noFill ();
 strokeWeight (3);
  textSize (width/26.66);
   rect (width/1.42,height/1.2,width/8,height/15);
      text ("Comenzar" , width/1.41, height/1.15); 
   //CREDITOS
   rect (width/5.33,height/1.2,width/8,height/15);
     text ("Creditos", width/5.16, height/1.14);
       fill (255,255,255);
 textSize (width/16);
 text ("Mamá pata tiene \n polluelos", width/20,height/2);
 text ("pero uno nace \n  diferente al resto", width/1.48,height/2);
  }
  
 //PANTALLA2
   else if (estado.equals ("foto2")) {
   image (foto2,0,0,width,height); 
      textSize (width/16);
    text ("Mamá pata y sus polluelos \n no lo querían \n y se burlaban", width/13.33,height/8.57);
         noFill ();
 strokeWeight (3);
  textSize (width/26.66);
   
   rect (width/1.33,height/1.2,width/7.27,height/10);
      text ("Mamá pata \n se enoja" , width/1.31, height/1.15);
   rect (width/1.66,height/1.2,width/7.27,height/10);
     text ("Mamá pata \n lo acepta", width/1.64,height/1.15);
   }
    //PANTALLA 3 
      else if (estado.equals ("foto3")) {
     image (foto3,0,0,width,height);
     textSize (width/16);
     text ("Mamá pata le dice \n que se vaya, que no es \n aceptado en su familia",width/3.63,height/2);
          noFill ();
 strokeWeight (3);
  textSize (width/26.66);
          //CONTINUAR
   rect (width/1.42,height/1.2,width/8,height/15);
      text ("Continuar" , width/1.41, height/1.15); 
      }
     //PANTALLA 4
       else if (estado.equals ("foto4")) {
      image (foto4, 0, 0,width,height);
      textSize (width/16);
      text ("Mamá pata lo lleva junto a sus polluelos \n a dar un paseo",width/20,height/15);
 noFill ();
 strokeWeight (3);
      textSize (width/26.66);
           //CONTINUAR
   rect (width/1.42,height/1.2,width/8,height/15);
      text ("Continuar" , width/1.41, height/1.15); 
       }
      //PANTALLA 5
        else if (estado.equals ("foto5")) {
       image (foto5, 0,0,width,height);
       textSize (width/16);
       text ("El patito feo decide \n irse triste y sólo",width/20,height/8.57);
        noFill ();
 strokeWeight (3);
 textSize (width/26.66);
            //CONTINUAR
   rect (width/1.42,height/1.2,width/8,height/15);
      text ("Continuar" , width/1.41, height/1.15); 
        }
       //PANTALLA 6
         else if (estado.equals ("foto6")) {
     image (foto6, 0,0,width,height);
     textSize (width/16);
     text ("El patito feo se cae y lo pierden \n en el lago",width/16,height/20);
     rect (width/1.42, height/1.2, width/4.70, height/15);
     rect (width/2.66,height/1.2, width/4.70,height/15);
      noFill ();
 strokeWeight (3);
     textSize (width/26.66);
     text ("Encuentra amigos",width/2.62,height/1.15);
     text ("Continuar viaje",width/1.41,height/1.15);

         }
     //PANTALLA 7
       else if (estado.equals ("foto7")) {
     image (foto7, 0, 0,width,height);
     textSize (width/16);
     text ("En el transcuro \n del viaja encuentra \n dos amigos",width/3.2,height/10);
      noFill ();
 strokeWeight (3);
 textSize (width/26.66);
          //CONTINUAR
   rect (width/1.42,height/1.2,width/8,height/15);
      text ("Continuar" , width/1.41, height/1.15); 
       }
     //PANTALLA 8
       else if (estado.equals ("foto8")) {
      image (foto8, 0,0,width,height);
      textSize (width/16);
      text ("Continua su viaje sin \n encontrar a su familia \n pero, encuentra \n hermosas aves",width/1.70,height/15);
           //CONTINUAR
            noFill ();
 strokeWeight (3);
 textSize (width/26.66);
   rect (width/1.42,height/1.2,width/8,height/15);
      text ("Continuar" , width/1.41, height/1.15); 
       }
       //PANTALLA 9
        else if (estado.equals ("foto9")) {
       image (foto9, 0,0,width,height);
       textSize (width/16);
       text ("Pero el patito feo \n decide continuar su \n viaje solo y al mirar \n al lago vió hermosas \n aves blancas",width/1.66,height/17.14);
            //CONTINUAR
           noFill ();
 strokeWeight (3);
 textSize (width/26.66);
   rect (width/1.37,height/1.2,width/8,height/15);
      text ("Continuar" , width/1.36, height/1.15); 

        }
       //PANTALLA 10 
         else if (estado.equals ("foto10")) {
        image (foto10,0,0,width,height);
        textSize (width/16);
        text ("Soñaba ser como \n ellos pero nunca \n lo logro.",width/16,height/8.57);
             //CONTINUAR
             noFill ();
 strokeWeight (3);
 textSize (width/26.66);
   rect (width/1.42,height/1.2,width/8,height/15);
      text ("Continuar" ,width/1.41,height/1.15); 
         }
        //PANTALLA 11 
          else if (estado.equals ("foto11")) {
         image (foto11, 0,0,width,height);
         textSize (width/16);
         text ("Al pasar el \n tiempo, vio \n que era \n uno de \n ellos. \n Era un \n hermoso \n cisne blanco.",width/80,height/15); 
   //CREDITOS
   noFill ();
 strokeWeight (3);
 textSize (width/26.66);
      rect (width/1.42,height/1.2,width/8,height/15);
      text ("Creditos" , width/1.41, height/1.15);
          }
         //PANTALLA 12 
           else if (estado.equals ("foto12")) {
             image (foto12, 0,0,width,height);
             textSize (width/16);
          text ("El patito aprendió \n a quererse como era \n a pesar de ser diferente.",width/1.77,height/2);
   //CREDITOS
   noFill ();
 strokeWeight (3);
 textSize (width/26.66);
     rect (width/1.42,height/1.2,width/8,height/15);
      text ("Creditos" , width/1.41, height/1.15);
           }
          //PANTALLA 13
            else if (estado.equals ("foto13")) {
              image (foto13, 0,0,width,height);
              textSize (width/16);
              fill (0,0,0);
           text ("Autor: \n Hans Christian Andersen \n Ilustrador: \n Vilhelm Pedersen \n Editorial:\n C.A. Reitzel", width/40, movimientoenY1);
            movimientoenY1 = movimientoenY1 -2.0;
            
           noFill ();
           strokeWeight (3);
           rect (width/6.66, height/1.5, width/4.70, height/15);
           textSize (width/26.66);
           text ("Volver a empezar",width/6.4, height/1.42); }
           
            }
         
       void mousePressed () { 
       //PANTALLA 1
      if (mouseX >= width/1.42 && mouseX <= width/1.42+width/8 && mouseY >= height/1.2 && mouseY <= height/1.2+height/15 && estado.equals ("foto")) {
       estado = "foto2"; }
              //PANTALLA 2
              //MAMÁ SE ENOJA
      else if (mouseX >= width/1.33 && mouseX <= width/1.3+width/7.27 && mouseY >= height/1.2 && mouseY <= height/1.2+height/10 && estado.equals ("foto2")) {
       estado = "foto3"; }
      //MAMÁ LO ACEPTA
   else if (mouseX >= width/1.660 && mouseX <= width/1.66+width/7.27 && mouseY >= height/1.2 && mouseY <= height/1.2+height/10 && estado.equals ("foto2")) {
       estado = "foto4"; } 
       //PANTALLA 3 
        else if (mouseX >= width/1.42 && mouseX <= width/1.42+width/8 && mouseY >= height/1.2 && mouseY <= height/1.2+height/15 && estado.equals ("foto3")) {
       estado = "foto5"; } 
       //PANTALLA 4
       //PASEO
       else if (mouseX >= width/1.42 && mouseX <= width/1.42+width/8 && mouseY >= height/1.2 && mouseY <= height/1.2+height/15 && estado.equals ("foto4")) {
       estado = "foto6"; } 
       //PANTALLA 5
      //PATO SE VA + AMIGOS
        else if (mouseX >= width/1.42 && mouseX <= width/1.42+width/8 && mouseY >= height/1.2 && mouseY <= height/1.2+height/15 && estado.equals ("foto5")) {
       estado = "foto7"; } 
       //PANTALLA 6
         //SE CAE + AMIGOS
       else if (mouseX >= width/2.66 && mouseX <= width/2.66+width/4.70 && mouseY >= height/1.2 && mouseY <= height/1.2+height/15 && estado.equals ("foto6")) {
       estado = "foto7"; } 
       //CONTINUA SOLO
       else if (mouseX >= width/1.42 && mouseX <= width/1.42+width/8 && mouseY >= height/1.2 && mouseY <= height/1.2+height/15 && estado.equals ("foto6")) {
       estado = "foto8"; } 
       //PANTALLA 7
        //CONTINUA SOLO X2
       else if (mouseX >= width/1.42 && mouseX <= width/1.42+width/8 && mouseY >= height/1.2 && mouseY <= height/1.2+height/15 && estado.equals ("foto7")) {
       estado = "foto9"; } 
       //PANTALLA 8
       //SUEÑA
        else if (mouseX >= width/1.42 && mouseX <= width/1.42+width/8 && mouseY >= height/1.2 && mouseY <= height/1.2+height/15 && estado.equals ("foto8")) {
       estado = "foto10"; } 
       //PANTALLA 9
       //ERA UNO DE ELLOS
        else if (mouseX >= width/1.37 && mouseX <= width/1.37+width/8 && mouseY >= height/1.2 && mouseY <= height/1.2+height/15 && estado.equals ("foto9")) {
       estado = "foto11"; } 
       //PANTALLA 10
        //SE QUIERE
        else if (mouseX >= width/1.42 && mouseX <= width/1.42+width/8 && mouseY >= height/1.2 && mouseY <= height/1.2+height/15 && estado.equals ("foto10")) {
       estado = "foto12"; } 
       
       else if (mouseX >= width/1.42 && mouseX <= width/1.42+width/8 && mouseY >= height/1.2 && mouseY <= height/1.2+height/15 && estado.equals ("foto12")) {
       estado = "foto13"; }
        else if (mouseX >= width/1.42 && mouseX <= width/1.42+width/8 && mouseY >= height/1.2 && mouseY <= height/1.2+height/15 && estado.equals ("foto11")) {
       estado = "foto13"; } 
        else if (mouseX >= width/5.33 && mouseX <= width/5.33+width/8 && mouseY >= height/1.2 && mouseY <= height/1.2+height/15 && estado.equals ("foto")) {
       estado = "foto13"; } 
   //COMIENZO
        if (mouseX >= width/6.66 && mouseX <= width/6.66+width/4.70 && mouseY >= height/1.5 && mouseY <= height/1.5+height/15 && estado.equals ("foto13")) {
       estado = "foto"; }
       movimientoenY1 = 100;
       }
