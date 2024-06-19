Algoritmo BuscarIndices
    Definir n, i, arreglo Como Entero;
    Escribir "Ingrese la cantidad de elementos del arreglo: ";
    Leer n;
    
    Dimension arreglo[100000000];
    
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el elemento ", i, ": ";
        Leer arreglo[i];
    FinPara;
    
    Definir valorABuscar Como Entero;
    Escribir "Ingrese el valor a buscar en el arreglo: ";
    Leer valorABuscar;

    Definir encontrado Como Logico;
    encontrado <- Falso;
    Escribir "El valor ", valorABuscar, " se encuentra en los índices: ";
    Para i <- 1 Hasta n Hacer
        Si arreglo[i] = valorABuscar Entonces
            Escribir i;
            encontrado <- Verdadero;
        FinSi;
    FinPara;
    
    Si No encontrado Entonces
        Escribir "El valor ", valorABuscar, " no se encuentra en el arreglo.";
    FinSi;
FinAlgoritmo
