Proceso calcularCostoEnvio
	Definir distancia, costo Como Real;
	Escribir "Ingrese la distancia de env�o en kil�metros:";
	Leer distancia;
	Si distancia < 50 Entonces
		costo <- 10;
	Sino
		costo <- 20;
	FinSi
	Escribir "El costo del env�o es: $", costo;
FinProceso