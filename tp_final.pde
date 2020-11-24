import processing.sound.*;
Aventura aventura; 
void setup () {
  size (800, 600);
  surface.setResizable(true);
  aventura = new Aventura(this);
}
void draw () {
  aventura.dibujar();
}
void mousePressed () {
  aventura.mouseClicked();
}
void keyPressed() {
  aventura.mover();
}
