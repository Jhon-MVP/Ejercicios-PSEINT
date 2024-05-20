Algoritmo PreciodeVenta
    Definir claveProducto Como Entero;
    Definir costoProduccion, precioVenta Como Real;
    Definir costoMateriaPrima, costoManoObra, gastoFabricacion Como Real;
	
    Escribir "Ingrese la clave del producto (1, 2, 3, 4, 5 o 6): ";
    Leer claveProducto;
	
    Escribir "Ingrese el costo de la materia prima: ";
    Leer costoMateriaPrima;
	
    costoManoObra <- 0;
    gastoFabricacion <- 0;
	
    Si claveProducto = 1 O claveProducto = 5 Entonces
        costoManoObra <- costoMateriaPrima * 0.80;
	Sino
		Si claveProducto = 2 O claveProducto = 6 Entonces
			costoManoObra <- costoMateriaPrima * 0.85;
		Sino
			Si claveProducto = 3 O claveProducto = 4 Entonces
				costoManoObra <- costoMateriaPrima * 0.75;
			Sino
				Escribir "Clave de producto inválida.";
			FinSi
		FinSi
	FinSi
	
	Si claveProducto = 1 O claveProducto = 4 Entonces
        gastoFabricacion <- costoMateriaPrima * 0.28;
	Sino
		Si claveProducto = 2 O claveProducto = 5 Entonces
			gastoFabricacion <- costoMateriaPrima * 0.30;
		Sino
			Si claveProducto = 3 O claveProducto = 6 Entonces
				gastoFabricacion <- costoMateriaPrima * 0.25;
			FinSi
		FinSi
	FinSi
	
				
    costoProduccion <- costoMateriaPrima + costoManoObra + gastoFabricacion;
    precioVenta <- costoProduccion + (costoProduccion * 0.45);
	
    Escribir "El precio de venta del producto es: $", precioVenta;
	
FinAlgoritmo
