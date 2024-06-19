Proceso calcularCostoEnvio
	Definir distancia, costo Como Real;
	Escribir "Ingrese la distancia de envío en kilómetros:";
	Leer distancia;
	Si distancia < 50 Entonces
		costo <- 10;
	Sino
		costo <- 20;
	FinSi
	Escribir "El costo del envío es: $", costo;
FinProceso