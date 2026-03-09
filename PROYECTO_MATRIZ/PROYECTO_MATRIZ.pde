// PROGRAMACION I
// ACTIVIDAD OPERACIONES CON MATRICES Y ARREGLOS
// ESTUDIANTES : ELIANNA RICHEL QUERALEZ LINARES
///////////////  LAURA CAMILA TOVAR SAENZ

// Se empieza declarando variables globales, y definir el tamaño de los arreglos y matrices

int n=3; // Facilmente se puede cambiar el tamaño de la matriz cambiando su numero

float [][] A; // Primera matriz [fila] [columna]
float [][] B; // Segunda matriz [fila] [columna]
float [] arreglo1;
float [] arreglo2;

// Guardar y almacenar las respuestas
float [][] RtaMultpmatriz;
float [][] RtaTranspmatriz;
float [][] RtaInvrsmatriz;
float  Rtaprodupunto;
float [] RtaMatrizArrg; 
boolean esInvertible; // es una variable que guarda si la primera matriz tiene inversa o no

void setup () {
size(2000,800);
textSize(20);

// En esta parte se diseña las matrices y los arreglos con el tamaño (n)
A = new float [n][n];
B = new float [n][n];
arreglo1 = new float [n];
arreglo2 = new float [n];

//Llenar matrices, aqui se crean las funciones para llenar los datos
MatrizAleatoria(A); // la primera matriz para llenar con numeros aleatorios
MatrizConteo(B); // la segunda matriz para llenar por conteo de 1 en 1

//Llenar arreglos los dos aleatorios
ArregloAleatorio (arreglo1);
ArregloAleatorio (arreglo2);
//Guardar el resultado de cada operación en una variable
 RtaMultpmatriz = MultiplicarMatrices(A,B);
 RtaTranspmatriz = CalcularTranspuesta(A) ;
 RtaInvrsmatriz = CalcularInversa(A);
 RtaMatrizArrg = ProduArrxMatrz(arreglo1, A);
 Rtaprodupunto = productoPunto(arreglo1, arreglo2);

 mostrarEnConsola();
 }
 void draw() {
   background(30);
   mostrarPantalla();
 }
 
 
