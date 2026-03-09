// La ultima pestaña es para el diseño y mostrar todos los resultados de las operaciones
void mostrarEnConsola() {
  println(" MATRICES INICIALES ");
  imprimirMatrizConsola("Matriz A (llenado aleatoriamente)", A);
  imprimirMatrizConsola("Matriz B (llenado por conteo)", B);
  println(" ARREGLOS INICIALES ");
  imprimirArregloConsola("Arreglo 1 (aleatorio)", arreglo1);
  imprimirArregloConsola("Arreglo 2(aleatorio)", arreglo2);
  println(" RESULTADOS DE OPERACIONES");
  imprimirMatrizConsola("Producto matricial A x B", RtaMultpmatriz);
  imprimirMatrizConsola("Transpuesta de A", RtaTranspmatriz);
  if (esInvertible) {
    imprimirMatrizConsola("Inversa de A (metodo Gauss-Jordan)", RtaInvrsmatriz);
  } else {
    println("Inversa de A: La matriz NO es invertible (pivote igual a 0)");
  }
  imprimirArregloConsola("Arreglo1 x Matriz A", RtaMatrizArrg);
  println("Producto punto Arreglo1 . Arreglo2 = " + int(Rtaprodupunto));
}

// Imprime una matriz en consola fila por fila
void imprimirMatrizConsola(String nombre, float[][] matriz) {
  println("" + nombre + " ");
  for (int fila = 0; fila < n; fila++) {
    String linea = "[ ";
    for (int columna = 0; columna < n; columna++) {
      linea += int(matriz[fila][columna]) + "  ";
    }
    println(linea + "]");
  }
}

// Imprime un arreglo en consola en una sola línea
void imprimirArregloConsola(String nombre, float[] arreglo) {
  String linea = nombre + ": [ ";
  for (int i = 0; i < n; i++) {
    linea += int(arreglo[i]) + "  ";
  }
  println(linea + "]");
}

// Dibuja todos los resultados en el canvas de Processing
void mostrarPantalla() {
  fill(255);
  int columnaIzquierda = 50;
  int columnaDerecha   = 720;
  int yInicio          = 50;

  // Columna izquierda: matrices A, B y producto
  int y = dibujarMatrizPantalla("Matriz A (aleatoria)", A, columnaIzquierda, yInicio);
  y = dibujarMatrizPantalla("Matriz B (conteo)", B, columnaIzquierda, y + 10);
  y = dibujarMatrizPantalla("Producto A x B", RtaMultpmatriz, columnaIzquierda, y + 10);

  // Columna derecha: transpuesta, inversa, arreglos y producto punto
  y = dibujarMatrizPantalla("Transpuesta de A", RtaTranspmatriz, columnaDerecha, yInicio);

  if (esInvertible) {
    y = dibujarMatrizPantalla("Inversa de A", RtaInvrsmatriz, columnaDerecha, y + 10);
  } else {
    fill(255, 80, 80);
    text("Inversa de A: NO es invertible", columnaDerecha, y + 30);
    fill(255);
    y += 50;
  }

  dibujarArregloPantalla("Arreglo 1", arreglo1, columnaDerecha, y + 10);
  dibujarArregloPantalla("Arreglo 2", arreglo2, columnaDerecha, y + 35);
  dibujarArregloPantalla("Arreglo1 x Matriz A", RtaMatrizArrg, columnaDerecha, y + 60);

  fill(100, 255, 180);
  text("Producto punto Arreglo1 . Arreglo2 = " + int(Rtaprodupunto), columnaDerecha, y + 95);
}

// Dibuja una matriz en pantalla en la posición x, y
// Retorna la posición y donde terminó para ubicar lo siguiente
int dibujarMatrizPantalla(String nombre, float[][] matriz, int x, int y) {
  fill(255, 220, 80);
  text(nombre + ":", x, y);
  fill(255);
  for (int fila = 0; fila < n; fila++) {
    String linea = "[ ";
    for (int columna = 0; columna < n; columna++) {
      linea += int(matriz[fila][columna]) + "  ";
    }
    text(linea + "]", x + 10, y + 18 + fila * 18);
  }
  return y + 20 + n * 18;
}

// Dibuja un arreglo en pantalla en una sola línea
void dibujarArregloPantalla(String nombre, float[] arreglo, int x, int y) {
  fill(180, 220, 255);
  String linea = nombre + ": [ ";
  for (int i = 0; i < n; i++) {
    linea += int(arreglo[i]) + "  ";
  }
  text(linea + "]", x, y);
}
