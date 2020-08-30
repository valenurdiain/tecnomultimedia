int cantH = 10;
int tam;
int [] posX = new int [cantH]; // Posiciones en X de cada ellipse
int [] dirX = new int [cantH]; // Direcciones en X de cada ellipse
int personajePosX, personajePosY;
int Puntos = 0;
int contadorVidas = 0; 
int cantVidas = 5;
void setup() {
  size(500, 500);
  tam = height/cantH;

  surface.setResizable(true);

  textSize(20);
  textAlign(CENTER);

  //No calculo la última fila, que es donde arranca el personaje
  for (int h=0; h < cantH-1; h++) {
    //Genero aleatoriamente la posX de la elipse
    posX[h] = round(random(tam, width-tam));
    //Genero aleatoriamente la dirección
    if (random(0, width)>width/2)
      dirX[h] = 1;
    else
      dirX[h] = -1;
  }

  //La ubicación del Personaje
  personajePosX = width/2;
  personajePosY = height - tam/2;
}

void draw() {  
  tam = height/cantH;

  background(200);
  //No calculo la última fila, que es donde arranca el personaje 
  for (int h=0; h < cantH-1; h++) { 
    fill(255); 
    ellipse(posX[h], h*tam + tam/2, tam, tam); 
    //Calculo la nueva posición 
    posX[h] = posX[h] + dirX[h]; 
    //choque
    if (dist(posX[h], h*tam + tam/2, personajePosX, personajePosY)<=tam-1) { 
      personajePosY = height - tam/2; 
      contadorVidas = 0;
      contadorVidas = contadorVidas + 1; 
      cantVidas = cantVidas - contadorVidas;
    }
    //Vuelve a iniciar
    if (cantVidas <= 0) {
      background (0); 
      fill(255, 0, 0);
      text(("¡Perdiste!"), 200, 250); 
      text (("Presiona 'c' para volver a jugar."), 120, 270);
      fill(0);
    }  
    //puntos     
    if (personajePosX<=250 && personajePosY<=1) {
      Puntos= Puntos+1;
      personajePosY = height - tam/2;
    }
    if (Puntos==5) {
      background (0); 
      fill(255, 0, 0); 
      text(("¡Ganaste!"), 200, 250);  
      text(("Presiona 'c' para volver a jugar."), 120, 270); 
      fill(0);
    }


    //vidas
    fill (0, 255, 0);
    textAlign (LEFT);
    fill(0);
    text("Vidas:" + (cantVidas), width-150, height-50);
    {
      fill (0);
      textAlign (LEFT);
      text("Puntos:" + (Puntos), width-150, height-30);
      fill (255, 0, 0);

      ellipse(personajePosX, personajePosY, tam, tam);
      noFill();
    }
    //Si toca algún borde, cambia la dirección
    if (posX[h] < tam/2 || posX[h] > width-tam/2) {
      dirX[h] = dirX[h] * -1;
    }
  }
}

void keyPressed() {
  //Controlo el personaje arriba y abajo
  if (keyCode == UP) {
    personajePosY = personajePosY - tam;
  } else if (keyCode == DOWN) {
    personajePosY = personajePosY + tam;
  }
  //volver a empezar
  if (key == 'c') {
    background (200); 
    personajePosX = width/2; 
    personajePosY = height - tam/2; 
    contadorVidas = 0; 
    cantVidas = 5; 
    Puntos = 0;
  }
}
