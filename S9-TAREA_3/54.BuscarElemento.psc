Algoritmo BuscarElemento
    Definir n, i, numeroABuscar, arreglo Como Entero;
	Definir encontrado Como Logico;
    Escribir "Ingrese la cantidad de elementos del arreglo: ";
    Leer n;
    
    Dimension arreglo[10000000];
    
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el elemento ", i, ": ";
        Leer arreglo[i];
    FinPara;
    
    Escribir "Ingrese el n�mero a buscar en el arreglo: ";
    Leer numeroABuscar;
    
    encontrado <- Falso;
    
    Para i <- 1 Hasta n Hacer
        Si arreglo[i] = numeroABuscar Entonces
            encontrado <- Verdadero;
        FinSi;
    FinPara;
    
    Si encontrado Entonces
        Escribir "El n�mero ", numeroABuscar, " est� presente en el arreglo.";
    Sino
        Escribir "El n�mero ", numeroABuscar, " no est� presente en el arreglo.";
    FinSi;
FinAlgoritmo
