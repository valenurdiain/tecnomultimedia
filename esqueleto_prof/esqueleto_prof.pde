Aventura aventura();

void setup(){
  size(800,600);
  aventura = new Aventura();
}

void draw(){
  background(200);
  aventura.dibujar();
}

void mouseClicked(){
  aventura.mouseClicked();
}
