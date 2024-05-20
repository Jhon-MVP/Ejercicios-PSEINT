Proceso CalcularCostoLapices
    Definir cantidadLapices Como Entero;
    Definir costoTotal Como Real;
    Definir precioLapiz Como Real;
	
    Escribir "Ingrese la cantidad de lápices: ";
    Leer cantidadLapices;
	
    Si cantidadLapices > 1000 Entonces
        precioLapiz <- 1.0;
    Sino
        precioLapiz <- 1.50;
    FinSi
	
	costoTotal <- cantidadLapices * precioLapiz;
	
    Escribir "El costo total es: ", costoTotal;
FinProceso