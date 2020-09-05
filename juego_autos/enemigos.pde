//Pestaña Enemigos
void inicializarAutosEnemigos(){
  for(int cc=0; cc < cantCaminos; cc++){
    for(int ca=0; ca < cantAutos; ca++){
        fill(255);
      autosEnemigos[cc][ca] = round(random(-1800 * (ca + 1),-1800 * ca));
    }
  }
  }
   
void dibujarAutosEnemigos(){
  for(int cc=0; cc < cantCaminos; cc++){
    for(int ca=0; ca < cantAutos; ca++){
      autosEnemigos[cc][ca]+=2;
      fill(150);
      rect(cc * tamX, autosEnemigos[cc][ca], tamX, tamY);
      //choque
          if (dist(cc*tamX, autosEnemigos[cc][ca], posX, height - tamY/0.7) <= tamX-1) {
         autoPersonajePosY = height - tamY/2; 
      contadorVidas = 0;
      contadorVidas = contadorVidas + 1; 
      cantVidas = cantVidas - contadorVidas;
     
    }
  }
  }
    }
