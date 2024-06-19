Proceso calcularDescuentoVolumen
	Definir cantidad Como Entero;
	Definir precioUnitario, precioTotal Como Real;
	Escribir "Ingrese la cantidad de unidades del producto que va a comprar:";
	Leer cantidad;
	Escribir "Ingrese el precio unitario del producto:";
	Leer precioUnitario;
	Si cantidad >= 100 Entonces
		precioTotal <- cantidad * precioUnitario * 0.9;
		Escribir "¡Felicidades! Usted califica para un descuento del 10% por volumen de compra.";
		Escribir "El precio total con descuento es: $", precioTotal;
	Sino Si cantidad >= 50 Entonces
			precioTotal <- cantidad * precioUnitario * 0.95;
			Escribir "¡Felicidades! Usted califica para un descuento del 5% por volumen de compra.";
			Escribir "El precio total con descuento es: $", precioTotal;
		Sino Si cantidad >= 10 Entonces
				precioTotal <- cantidad * precioUnitario * 0.95;
				Escribir "¡Felicidades! Usted califica para un descuento del 5% por volumen de compra.";
				Escribir "El precio total con descuento es: $", precioTotal;
			Sino
				precioTotal <- cantidad * precioUnitario;
				Escribir "Lo sentimos, no califica para ningún descuento por volumen de compra.";
				Escribir "El precio total es: $", precioTotal;
			FinSi
		Finsi
	FinSi
	
FinProceso
