//En esta pestaña se llenara las Matrices y los arreglos con datos (numeros)
//Dependiendo de la eleccion de la primera pestaña, utilizando ciclos for por cada matriz y arrreglo

void MatrizAleatoria (float[][]matriz) {
for (int fila =0; fila<n; fila++){
  for(int columna=0; columna<n;columna++) { //cada fila y cada columna tiene un for por se una matriz
    matriz[fila][columna]=(random(1,10));  //el codigo random llena la matriz entre (1 y 10)
  }
}
}
void MatrizConteo (float[][] matriz) {
  int contador = 1; //llena la matriz contando de 1 en 1
  for (int fila = 0; fila < n; fila++) {
    for (int columna = 0; columna < n; columna++) {
      matriz[fila][columna] = contador;
      contador++; // esto es lo que le suma 1 al contador
    }
  }
}
// Ahora con los arreglos, este seria solo un ciclo y es porque solo tiene una fila
void ArregloAleatorio(float [] arreglo) {
  for (int i=0; i<n; i++){
    arreglo [i]= random(1,10);
  }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
