float movimientoenY1; 
int pantallaActiva=1;
String estado;
//BOTONES
int[][] coordenadasBotones = new int [14][2];
//TEXTOS
int [][] posTextos = new int [14][2];
String textos[] = new String [25];
//FOTOS
PImage[] foto = new PImage [13]; 
//FUENTES
PFont[]fuentes = new PFont [2];

void setup () {
 movimientoenY1 =(100);
estado = "foto";
  size (800,600); 
  surface.setResizable(true);
  for (int i=0; i <foto.length; i++) {
 foto[i]= loadImage ("pantalla"+i+".jpg");
  }
  fuentes[0] =loadFont("AgencyFB-Reg-48.vlw"); 
  fuentes[1] = loadFont("AgencyFB-Bold-48.vlw");
  //cargoTextos
  inicializarTextos();
  posTextos();
  //PosBotones
  inicializarCoordenadas();
}
  void draw () {
    pantallas();
 if(pantallaActiva==3 || pantallaActiva==4 || pantallaActiva==5 ||pantallaActiva==7 || pantallaActiva==8 || pantallaActiva==10 || pantallaActiva==12){
   texto ("Continuar" , width/1.41, height/1.14, width/29); 
botones (pX(563),pY(500),width/8,height/15);
 }
noFill();
  }
     void mousePressed () { 
  click();
     }
  
