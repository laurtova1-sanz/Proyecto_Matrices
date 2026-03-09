//En esta pestaña se realiza las operaciones de los arreglos
// el primero es producto arregloxmatriz utilizando la columna de la matriz por cada elemento del arreglo
float [] ProduArrxMatrz(float[]arreglo, float[][]matriz){
  float [] resultado= new float [n];

  for (int columna = 0; columna < n; columna++) {
    float suma = 0;
    for (int fila = 0; fila < n; fila++) {
      suma += arreglo[fila] * matriz[fila][columna];
    }
    resultado[columna] = suma;
  }
  return resultado;
}

// y por ultimo el producto punto entre los dos arreglos
float productoPunto(float[] arreglo1, float[] arreglo2) {
  float suma = 0;
  for (int i = 0; i < n; i++) {
    suma += arreglo1[i] * arreglo2[i];
  }
  return suma;
}
