Proceso calcularDescuentoLealtad
	Definir totalCompras, descuento Como Real;
	Escribir "Ingrese el total $ de sus compras mensuales durante un año:";
	Leer totalCompras;
	
	Si totalCompras > 500 Entonces
		descuento <- totalCompras * 0.1;
		Escribir "¡Felicidades! Usted califica para un descuento del 10% en su próxima compra.";
		Escribir "El monto del descuento es: $", descuento;
	Sino
		Escribir "Lo sentimos, no califica para ningún descuento en este momento.";
	FinSi
	
FinProceso
