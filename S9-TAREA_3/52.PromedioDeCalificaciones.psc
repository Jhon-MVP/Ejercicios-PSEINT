Algoritmo PromedioDeCalificaciones
    // Definición del tamaño del arreglo
    Definir n, i Como Entero;
	Definir suma, calificaciones, promedio Como Real;
    Escribir "Ingrese la cantidad de calificaciones: ";
    Leer n;
    
    Dimension calificaciones[1000000];
    
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese la calificación ", i, ": ";
        Leer calificaciones[i];
    FinPara;

    suma <- 0;
    
    Para i <- 1 Hasta n Hacer
        suma <- suma + calificaciones[i];
    FinPara;
    
    promedio <- suma / n;
    
    Escribir "El promedio de las calificaciones es: ", promedio;
FinAlgoritmo
