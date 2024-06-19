Algoritmo InvertirArreglo
    Definir n, i, arreglo, arregloInvertido Como Entero;
    Escribir "Ingrese la cantidad de elementos del arreglo: ";
    Leer n;
    
    Dimension arreglo[1000000];
    
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el elemento ", i, ": ";
        Leer arreglo[i];
    FinPara;
    
    Dimension arregloInvertido[100000000];
    
    Para i <- 1 Hasta n Hacer
        arregloInvertido[i] <- arreglo[n - i + 1];
    FinPara;
    
    Escribir "El arreglo invertido es: ";
    Para i <- 1 Hasta n Hacer
        Escribir arregloInvertido[i];
    FinPara;
FinAlgoritmo
