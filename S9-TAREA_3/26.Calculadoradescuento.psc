Algoritmo CalculadoraDescuento
	Definir precio, descuento, precioFinal Como Real;
	Escribir "Ingrese el precio del art�culo:";
	Leer precio;
	Escribir "Ingrese el porcentaje de descuento (%):";
	Leer descuento;
	precioFinal <- precio - (precio * descuento / 100);
	Escribir "El precio final despu�s del descuento es: ", precioFinal;
FinAlgoritmo
