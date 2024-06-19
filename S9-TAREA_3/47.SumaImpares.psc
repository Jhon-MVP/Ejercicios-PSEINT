Proceso sumaDeNumerosImpares
    Definir suma, i Como Entero;
    suma <- 0;
    i <- 1;
	
    Mientras i <= 100 Hacer
        Si i % 2 <> 0 Entonces
            suma <- suma + i;
        FinSi
		
        i <- i + 1;
    FinMientras
	
    Escribir "La suma de los números impares del 1 al 100 es: ", suma;
FinProceso
