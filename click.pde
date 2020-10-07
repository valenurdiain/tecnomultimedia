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
void click () {
 //PANTALLA 1
if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && pantallaActiva==1) {
pantallaActiva = 2; }
//PANTALLA 2
else if (mouseX >= width/1.33 && mouseX <= (coordenadasBotones[2][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[2][1]) && pantallaActiva==2) {
 pantallaActiva = 3; }
else if (mouseX >= width/1.660 && mouseX <= (coordenadasBotones[3][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[2][1]) && pantallaActiva==2) {
 pantallaActiva = 4; } 
//PANTALLA 3 
else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && pantallaActiva==3) {
pantallaActiva = 5; } 
//PANTALLA 4
else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && pantallaActiva==4) {
pantallaActiva =6; } 
//PANTALLA 5
else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && pantallaActiva==5) {
pantallaActiva = 7; } 
//PANTALLA 6
 else if (mouseX >= width/2.66 && mouseX <= (coordenadasBotones[6][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && pantallaActiva==6) {
pantallaActiva = 7; } 
else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && pantallaActiva==6) {
pantallaActiva = 8; } 
//PANTALLA 7
else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) &&  pantallaActiva==7) {
pantallaActiva = 9; } 
 //PANTALLA 8
 else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && pantallaActiva==8) {
pantallaActiva = 10; } 
//PANTALLA 9
 else if (mouseX >= width/1.37 && mouseX <= (coordenadasBotones[9][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && pantallaActiva==9) {
 pantallaActiva= 11; } 
 //PANTALLA 10
 else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && pantallaActiva==10) {
 pantallaActiva = 12; } 
 //PANTALLA 11
 else if (mouseX >= width/11 && mouseX <= (coordenadasBotones[11][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && pantallaActiva==11) {
pantallaActiva= 13; } 
//PANTALLA 12
 else if (mouseX >= width/1.42 && mouseX <= (coordenadasBotones[1][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && pantallaActiva==12) {
 pantallaActiva = 13; }
 
else if (mouseX >= width/5.33 && mouseX <= (coordenadasBotones[12][0]) && mouseY >= height/1.2 && mouseY <= (coordenadasBotones[1][1]) && pantallaActiva==1) {
 pantallaActiva = 13; } 
//COMIENZO
if (mouseX >= width/6.66 && mouseX <= (coordenadasBotones[13][0]) && mouseY >= height/1.5 && mouseY <= (coordenadasBotones[13][1]) && pantallaActiva==13) {
pantallaActiva=1; }
movimientoenY1 = 100;
 }
