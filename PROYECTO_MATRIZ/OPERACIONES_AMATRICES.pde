// Aqui se hace las operaciones de las matrices empezando con la multiplicacion
// En esta se hace tres ciclos for que cada una hace la funcion producto matricial
// multiplicar fila(matriz1)xcolumna(matriz2) y sumar todos los resultados
// finalmente retornar cada resultado de las operaciones

float [][] MultiplicarMatrices(float[][]matrizA, float [][]matrizB){
  float [][] resultado =new float [n][n];
  for (int fila=0; fila<n; fila++) { //ciclo primera matriz
  for (int columna=0; columna<n; columna++){ //ciclo segunda matriz
    float suma=0;
    for (int j=0; j<n; j++){ //ciclo tercer matriz
      suma+= matrizA[fila][j] * matrizB[columna][j]; // formula de la multiplicacion de matrices
    }
    resultado[fila][columna]=suma;
  }
}
return resultado;
}

// Se calcula la transpuesta intercambio de fila y columna
// los datos que estan en la fila se cambia a columna y lo mismo pasa con la columna
float [][]CalcularTranspuesta(float[][]matriz){
  float [][] transpuesta =new float [n][n];
  for (int fila=0; fila<n; fila++){
    for (int columna=0; columna<n; columna++){
      transpuesta[columna][fila] = matriz[fila][columna];
    }
  }
  return transpuesta;
}

//Se calcula la inversa utilizando el metodo Gauss-Jordan (pivote)
float[][] CalcularInversa(float[][] matriz) {
  float[][] aumentar = new float[n][n*2];
  
  for (int fila = 0; fila < n; fila++) {
    for (int columna = 0; columna < n; columna++) {
      aumentar[fila][columna] = matriz[fila][columna];
    }
    aumentar[fila][n + fila] = 1;//en esta parte se crea una matriz aumentada que es la matriz normal 
    // pero teniendo 1 en la diagonal y o en el resto
  }

  // Metodo Gauss Jordan
  for (int filaPivote = 0; filaPivote < n; filaPivote++) {
    // Si el pivote es 0, la matriz NO es invertible
    if (aumentar[filaPivote][filaPivote] == 0) {
      esInvertible = false;
      return null;
    }
    // Se divide la fila completa entre el pivote para que en la diagonal de la matriz quede en 1
    float valorPivote = aumentar[filaPivote][filaPivote];
    for (int columna = 0; columna < n * 2; columna++) {
      aumentar[filaPivote][columna] /= valorPivote;
    }
    //Esta parte se hace para colocar 0 en todas las filas excluyendo la del pivote
    for (int fila = 0; fila < n; fila++) {
      if (fila != filaPivote) {
        float factor = aumentar[fila][filaPivote];
        for (int columna = 0; columna < n * 2; columna++) {
          aumentar[fila][columna] -= factor * aumentar[filaPivote][columna];
        }
      }
    }
  }
 // Extraer la parte derecha de la derecha que ahora es la inversa
  esInvertible = true;
  float[][] inversa = new float[n][n];
  for (int fila = 0; fila < n; fila++) {
    for (int columna = 0; columna < n; columna++) {
      inversa[fila][columna] = aumentar[fila][n + columna];
    }
  }
  return inversa;
} 
      
 


   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
