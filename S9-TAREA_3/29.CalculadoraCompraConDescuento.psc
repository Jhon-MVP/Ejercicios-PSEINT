Algoritmo CalculadoraCompraConDescuento
	Definir precio, cantidad, totalSinDescuento, totalConDescuento Como Real;
	Definir subtotalCompra, DESCUENTO_MINIMO, PORCENTAJE_DESCUENTO Como Real;
	DESCUENTO_MINIMO <- 100;
	PORCENTAJE_DESCUENTO <- 10;
	totalSinDescuento <- 0;
	Escribir "Ingrese el precio y la cantidad de cada artículo que está comprando. Cuando termine, escriba 0 0 para finalizar:";
		Repetir
			Escribir "Precio y cantidad (separados por espacio):";
			Leer precio, cantidad;
			subtotalCompra <- precio * cantidad;
			totalSinDescuento <- totalSinDescuento + subtotalCompra;
		Hasta Que precio = 0 Y cantidad = 0
		Escribir "Total de la compra sin descuento: ", totalSinDescuento;
		Si totalSinDescuento > DESCUENTO_MINIMO Entonces
			totalConDescuento <- totalSinDescuento - (totalSinDescuento * PORCENTAJE_DESCUENTO / 100);
			Escribir "¡Felicidades! Se aplicó un descuento del 10%.";
			Escribir "Total de la compra con descuento: ", totalConDescuento;
		Sino
			Escribir "No se aplicó ningún descuento.";
		FinSi
FinAlgoritmo