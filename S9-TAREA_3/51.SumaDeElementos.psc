Algoritmo SumaDeElementos
    Definir n, i, arreglo Como Entero;
    Escribir "Ingrese la cantidad de elementos del arreglo: ";
    Leer n;
    
    Dimension arreglo[10000];
    
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el elemento ", i, ": ";
        Leer arreglo[i];
    FinPara;
    Definir suma Como Entero;
    suma <- 0;
    
    Para i <- 1 Hasta n Hacer
        suma <- suma + arreglo[i];
    FinPara;
    
    Escribir "La suma de todos los elementos del arreglo es: ", suma;
FinAlgoritmo
