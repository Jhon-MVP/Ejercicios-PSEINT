Proceso calcularCostoServicio
	Definir horas Como Entero;
	Definir costoTotal Como Real;
	Escribir "Ingrese la cantidad de horas de servicio que necesita:";
	Leer horas;
	Si horas > 10 Entonces
		costoTotal <- horas * 10 * 0.8;
		Escribir "¡Felicidades! Usted califica para un descuento del 20%.";
		Escribir "El costo total del servicio con descuento es: $", costoTotal;
	Sino
		costoTotal <- horas * 10;
		Escribir "El costo total del servicio es: $", costoTotal;
	FinSi
FinProceso
