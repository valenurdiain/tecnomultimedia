class Boton{
  int pantallaAIr;
  String texto;
Boton(String texto, int pantallaAIr){
    this.texto = texto;
    this.pantallaAIr = pantallaAIr;
}
 void dibujar(float x, float y, float alto, float ancho){
    noFill();
    strokeWeight(3);
    rect(x, y, alto, ancho);
 }
}
