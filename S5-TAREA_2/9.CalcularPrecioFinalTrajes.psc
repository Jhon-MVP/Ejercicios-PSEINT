Proceso CalcularPrecioFinalTrajes
    Definir precioTraje Como Real;
    Definir descuento Como Real;
    Definir precioFinal Como Real;
	
    Escribir "Ingrese el precio del traje: ";
    Leer precioTraje;
	
    Si precioTraje > 2500 Entonces
        descuento <- 0.15; // 15% de descuento
    Sino
        descuento <- 0.08; // 8% de descuento
    FinSi
	
    precioFinal <- precioTraje - (precioTraje * descuento);
	
    Escribir "El precio final del traje es: ", precioFinal;
FinProceso