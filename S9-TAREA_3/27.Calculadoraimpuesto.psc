Algoritmo CalculadoraFactura
	Definir totalFactura, impuestos, montoTotal Como Real;
	Escribir "Ingrese el total de la factura:";
	Leer totalFactura;
	Escribir "Ingrese el porcentaje de impuestos aplicado (%):";
	Leer impuestos;
	montoTotal <- totalFactura * (1 + impuestos / 100);
	Escribir "El monto total a pagar, incluyendo impuestos, es: ", montoTotal;
FinAlgoritmo