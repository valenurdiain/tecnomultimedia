  class Contador{
 int contador = 0;
int velocidad = 1;
int cantidadObjetos = 10;
int [] objetosPosY = new int [cantidadObjetos];
 Contador() {
      
for(int i=0; i < cantidadObjetos ; i++ ){
 objetosPosY[i]+=velocidad;
 //si el coco es igual a la pos del jugador el contador suma un punto
 if(dist(i*tam + tam/2, objetosPosY[i], posX + tam/2, width-tam + tam/2) < tam/2){
 objetosPosY[i] = generarPosicionObjeto();
contador++;
 //si el contador llega a 10 la velocidad de los cocos aumenta
 if(contador % 10 == 0){
velocidad++;
    }
    }
       }
    }
    void dibujar(){
     //genero pos y color del contador
  fill(255,0,0);
  text("Contador:"+ contador, 50, 50);
      }
    }
  
  
  void teclaPresionada(){

  }
  
