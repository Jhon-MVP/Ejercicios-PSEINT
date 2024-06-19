Algoritmo CalculadoraDescuento
	Definir precio, descuento, precioFinal Como Real;
	Escribir "Ingrese el precio del artículo:";
	Leer precio;
	Escribir "Ingrese el porcentaje de descuento (%):";
	Leer descuento;
	precioFinal <- precio - (precio * descuento / 100);
	Escribir "El precio final después del descuento es: ", precioFinal;
FinAlgoritmo
