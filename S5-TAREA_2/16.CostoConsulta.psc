Algoritmo CostoConsulta
    Definir numeroCita Como Entero;
    Definir costoCita, costoTotal Como Real;
	
    Escribir "Ingrese el número de la cita: ";
    Leer numeroCita;
	
    Si numeroCita <= 3 Entonces
        costoCita <- 200.00;
	Sino
		Si numeroCita <= 5 Entonces
			costoCita <- 150.00;
		Sino
			Si numeroCita <= 8 Entonces
				costoCita <- 100.00;
			Sino
				costoCita <- 50.00;
			FinSi
		FinSi
	FinSi
	
    costoTotal <- 200.00 * 3 + 150.00 * 2 + 100.00 * 3 + 50.00 * (numeroCita - 8);
	
    Escribir "El costo de la cita es: $", costoCita;
    Escribir "El monto total pagado por el tratamiento es: $", costoTotal;
	
FinAlgoritmo