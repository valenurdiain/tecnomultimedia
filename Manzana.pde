class Manzana {
  int tam, posX, posY, velocidad;
  int radio = 170;
   PImage manzanaEstatica[] = new PImage [1];
  PImage manzanaMov[] = new PImage [1];
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
  void dibujar () {
    noStroke();
    //manzanas estaticas
    image (manzanaEstatica[0], aventura.resize.valorX(20), aventura.resize.valorY(70), tam, tam);
    image(manzanaEstatica[0], aventura.resize.valorX(60), aventura.resize.valorY(70), tam, tam);
    image(manzanaEstatica[0], aventura.resize.valorX(45), aventura.resize.valorY(90), tam, tam);
    image(manzanaEstatica[0], aventura.resize.valorX(350), aventura.resize.valorY(200), tam, tam);
    image(manzanaEstatica[0], aventura.resize.valorX(360), aventura.resize.valorY(220), tam, tam);
    image(manzanaEstatica[0], aventura.resize.valorX(750), aventura.resize.valorY(100), tam, tam);
    image(manzanaEstatica[0], aventura.resize.valorX(780), aventura.resize.valorY(90), tam, tam);
    image(manzanaEstatica[0], aventura.resize.valorX(760), aventura.resize.valorY(60), tam, tam);
    //Manzanas con movimiento
    image (manzanaMov[0], aventura.resize.valorX(posX+240), aventura.resize.valorY(posY+100), tam, tam);
    image (manzanaMov[0], aventura.resize.valorX(posX), aventura.resize.valorY(posY-tam), tam, tam);
    image (manzanaMov[0], aventura.resize.valorX(posX+640), aventura.resize.valorY(posY-tam), tam, tam);
    image(manzanaMov[0], aventura.resize.valorX(posX+350), aventura.resize.valorY(posY+320), tam, tam);
    posY = posY + velocidad;
    if (posY > radio) {
      posY = 100;
    }
  }
}
