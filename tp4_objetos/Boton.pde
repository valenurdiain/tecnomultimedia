//en esta clase cargo las coordenadas y las interacciones con los botones
class Boton {
  int[][] coordenadasBotones = new int [14][2];
  float movimientoenY1; 
  Boton(Aventura p_aventura) {
    aventura = p_aventura;
    movimientoenY1 =(100);
  }
  void funcionBotones (float x, float y, float alto, float ancho) {
    noFill();
    strokeWeight(3);
    rect(x, y, alto, ancho);
  }
  int pX(int valor) {
    return round(map(valor, 0, 800, 0, width));
  }
  int pY(int valor) {
    return round(map(valor, 0, 600, 0, height));
  }
  void dibujar () {
    if (aventura.pantallaActiva==3 || aventura.pantallaActiva==4 || aventura.pantallaActiva==5 ||aventura.pantallaActiva==7 || aventura.pantallaActiva==8 || aventura.pantallaActiva==10 || aventura.pantallaActiva==12) {
      funcionBotones (pX(563), pY(500), width/8, height/15);
    }
    if (aventura.pantallaActiva==1) {
      funcionBotones(pX(563), pY(500), width/8, height/15);
      funcionBotones(width/5.33, height/1.2, width/8, height/15);
    }
    if (aventura.pantallaActiva == 2) { 
      funcionBotones(width/1.33, height/1.2, width/7.27, height/10);
      funcionBotones(width/1.66, height/1.2, width/7.27, height/10);
    }
    if (aventura.pantallaActiva==6) {
      funcionBotones(pX(563), pY(500), width/4.70, height/15);
      funcionBotones (width/2.66, height/1.2, width/4.70, height/15);
    } else if (aventura.pantallaActiva == 9) {
      funcionBotones (width/1.37, height/1.2, width/8, height/15);
    } else if (aventura.pantallaActiva==11) {
      funcionBotones (width/11, height/1.2, width/8, height/15);
    } else if (aventura.pantallaActiva==13) {
      funcionBotones (width/6.66, height/1.5, width/4.70, height/15);
    }
    inicializarCoordenadas();
  }
  void inicializarCoordenadas() {
  coordenadasBotones[1] = new int [4];
  coordenadasBotones[1][0] = floor(width/1.42) + width/8;
  coordenadasBotones[1][1] = floor(height/1.2) + height/15;
  coordenadasBotones[2][0] = floor(width/1.3) + floor(width/7.27);
  coordenadasBotones[2][1] = floor(height/1.2) + height/10;
  coordenadasBotones[3][0] = floor(width/1.42) + floor(width/7.27);
 coordenadasBotones[6][0] = floor(width/2.66) + floor(width/4.70);
 coordenadasBotones[9][0] = floor(width/1.37) + width/8;
 coordenadasBotones[11][0] = width/11 + width/8;
 coordenadasBotones[12][0] = floor(width/5.33) + width/8;
 coordenadasBotones[13][0] = floor(width/6.66) + floor(width/4.70);
 coordenadasBotones[13][1] = floor(height/1.5) + height/15;
}
void presionar () {
 //PANTALLA 1
if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && aventura.pantallaActiva==1) {
aventura.pantallaActiva = 2; }
//PANTALLA 2
else if (mouseX >= width/1.33 && mouseX <= (coordenadasBotones[2][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[2][1]) && aventura.pantallaActiva==2) {
 aventura.pantallaActiva = 3; }
else if (mouseX >= width/1.660 && mouseX <= (coordenadasBotones[3][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[2][1]) && aventura.pantallaActiva==2) {
 aventura.pantallaActiva = 4; } 
//PANTALLA 3 
else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && aventura.pantallaActiva==3) {
aventura.pantallaActiva = 5; } 
//PANTALLA 4
else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && aventura.pantallaActiva==4) {
aventura.pantallaActiva =6; } 
//PANTALLA 5
else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && aventura.pantallaActiva==5) {
aventura.pantallaActiva = 7; } 
//PANTALLA 6
 else if (mouseX >= width/2.66 && mouseX <= (coordenadasBotones[6][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && aventura.pantallaActiva==6) {
aventura.pantallaActiva = 7; } 
else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && aventura.pantallaActiva==6) {
aventura.pantallaActiva = 8; } 
//PANTALLA 7
else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) &&  aventura.pantallaActiva==7) {
aventura.pantallaActiva = 9; } 
 //PANTALLA 8
 else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && aventura.pantallaActiva==8) {
aventura.pantallaActiva = 10; } 
//PANTALLA 9
 else if (mouseX >= width/1.37 && mouseX <= (coordenadasBotones[9][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && aventura.pantallaActiva==9) {
 aventura.pantallaActiva= 11; } 
 //PANTALLA 10
 else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && aventura.pantallaActiva==10) {
 aventura.pantallaActiva = 12; } 
 //PANTALLA 11
 else if (mouseX >= width/11 && mouseX <= (coordenadasBotones[11][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && aventura.pantallaActiva==11) {
aventura.pantallaActiva= 13; } 
//PANTALLA 12
 else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && aventura.pantallaActiva==12) {
 aventura.pantallaActiva = 13; }
 
else if (mouseX >= width/5.33 && mouseX <= (coordenadasBotones[12][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && aventura.pantallaActiva==1) {
 aventura.pantallaActiva = 13; } 
//COMIENZO
if (mouseX >= width/6.66 && mouseX <= (coordenadasBotones[13][0]) && mouseY >= height/1.5 && mouseY <= (coordenadasBotones[13][1]) && aventura.pantallaActiva==13) {
aventura.pantallaActiva=1; }
movimientoenY1 = 100;
 }
}
