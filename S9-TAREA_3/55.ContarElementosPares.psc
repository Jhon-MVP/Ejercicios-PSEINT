Algoritmo ContarElementosPares
    Definir n, arreglo, contadorPares, i Como Entero;
    Escribir "Ingrese la cantidad de elementos del arreglo: ";
    Leer n;
    
    Dimension arreglo[1000000000];
    
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el elemento ", i, ": ";
        Leer arreglo[i];
    FinPara;
    
    contadorPares <- 0;
    
    Para i <- 1 Hasta n Hacer
        Si arreglo[i] % 2 = 0 Entonces
            contadorPares <- contadorPares + 1;
        FinSi;
    FinPara;
    
    Escribir "La cantidad de números pares en el arreglo es: ", contadorPares;
FinAlgoritmo
