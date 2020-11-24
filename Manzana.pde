class Manzana {
  int tam, posX, posY, velocidad;
  int radio = 170;
  PImage manzanaEstatica[] = new PImage [1];
  PImage manzanaMov[] = new PImage [1];
  Resize resize;
  Manzana () {
    for (int e=0; e <manzanaEstatica.length; e++) {
      manzanaEstatica[e]= loadImage ("manzana.png");
    }
    for (int m=0; m <manzanaMov.length; m++) {
      manzanaMov[m]= loadImage ("manzana.png");
    }
    velocidad = 1;
    posX = 70;
    posY = 100;
    tam=10;
  }
  void dibujar (Resize resize) {
    this.resize = resize;
    noStroke();
    //manzanas estaticas
    image (manzanaEstatica[0], resize.valorX(20), resize.valorY(70), tam, tam);
    image(manzanaEstatica[0], resize.valorX(60), resize.valorY(70), tam, tam);
    image(manzanaEstatica[0], resize.valorX(45), resize.valorY(90), tam, tam);
    image(manzanaEstatica[0], resize.valorX(350), resize.valorY(200), tam, tam);
    image(manzanaEstatica[0], resize.valorX(360), resize.valorY(220), tam, tam);
    image(manzanaEstatica[0], resize.valorX(750), resize.valorY(100), tam, tam);
    image(manzanaEstatica[0], resize.valorX(780), resize.valorY(90), tam, tam);
    image(manzanaEstatica[0], resize.valorX(760), resize.valorY(60), tam, tam);
    //Manzanas con movimiento
    image (manzanaMov[0], resize.valorX(posX+240), resize.valorY(posY+100), tam, tam);
    image (manzanaMov[0], resize.valorX(posX), resize.valorY(posY-tam), tam, tam);
    image (manzanaMov[0], resize.valorX(posX+640), resize.valorY(posY-tam), tam, tam);
    image(manzanaMov[0], resize.valorX(posX+350), resize.valorY(posY+320), tam, tam);
    posY = posY + velocidad;
    if (posY > radio) {
      posY = 100;
    }
  }
}
