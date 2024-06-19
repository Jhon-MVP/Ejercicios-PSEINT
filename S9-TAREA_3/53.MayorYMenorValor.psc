Algoritmo MayorYMenorValor
    Definir n, max, min, arreglo, i Como Entero;
    Escribir "Ingrese la cantidad de elementos del arreglo: ";
    Leer n;

    Dimension arreglo[10000000];
    
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el elemento ", i, ": ";
        Leer arreglo[i];
    FinPara;
    
    max <- arreglo[1];
    min <- arreglo[1];
    
    Para i <- 2 Hasta n Hacer
        Si arreglo[i] > max Entonces
            max <- arreglo[i];
        FinSi;
        Si arreglo[i] < min Entonces
            min <- arreglo[i];
        FinSi;
    FinPara;
	
    Escribir "El valor máximo del arreglo es: ", max;
    Escribir "El valor mínimo del arreglo es: ", min;
FinAlgoritmo
