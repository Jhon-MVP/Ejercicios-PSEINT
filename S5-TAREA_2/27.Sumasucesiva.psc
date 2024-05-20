Proceso suma_sucesiva
    Definir suma, num, i Como Entero;
    
    suma <- 0;
    
    Para i <- 1 Hasta 10 Hacer
        Escribir "Ingrese el número ", i, ": ";
        Leer num;
        suma <- suma + num;
    FinPara
    
    Escribir "La suma acumulada de los 10 números es: ", suma;
FinProceso