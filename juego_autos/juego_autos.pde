//Pestaña Principal
int cantCaminos = 3;
int cantAutos = 10;
int tamX, tamY, posX;
int [][] autosEnemigos = new int [cantCaminos][cantAutos];
int autoPersonajePosX, autoPersonajePosY;
int unNumero =1;
int contadorVidas = 0; 
int cantVidas = 1;
void setup(){
  size(300,600);
  
  tamX = width / cantCaminos;
  tamY = height / 4;
  
  inicializarAutosEnemigos();
  inicializarAutoPersonaje();
}

void draw(){
  background(200);
  dibujarAutosEnemigos();
  dibujarAutoPersonaje();
    //tiempo
    fill(0,0,0);
    text ("Tiempo:",width/10, height/10);
    unNumero=unNumero+1;
    text(unNumero,width/2.5,height/10);

     //Vuelve a iniciar
    if (cantVidas <= 0) {
      background (0); 
      fill(255, 0, 0);
      text("¡Perdiste!", 100, 250); 
      text ("Presiona 'c' para volver", 50, 270);
      text ("a jugar.",100,290);
      fill(0);
      }
      //gana
          if (cantVidas<=1 && unNumero==1500){
          noLoop();
      background (0); 
      fill(255, 0, 0); 
      text("¡Ganaste!", 100, 250);  
      text("Presiona 'c' para volver", 50, 270); 
      text("a jugar.",100,290);
      fill(0);
    }
        //vidas
    fill (0, 255, 0);
    textAlign (LEFT);
    fill(0);
    textSize(20);
    text("Vidas:" + (cantVidas), width/10, height/20);
    }
   
void keyPressed(){
  moverAutoPersonaje();
    //volver a empezar
    
  if (key == 'c') {
    loop();
    background (200); 
      autoPersonajePosX = width/2; 
    autoPersonajePosY = height - tamY/2; 
    contadorVidas = 0; 
    cantVidas = 1; 
    unNumero = 1;
  }
}
