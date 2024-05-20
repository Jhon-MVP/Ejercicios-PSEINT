Algoritmo CostoCompra
    Definir cantidadComprada Como Entero;
    Definir precioUnitario, descuentoInicial, totalSinDescuento, descuentoAdicional, totalAPagar Como Real;
	
    Escribir "Ingrese la cantidad de productos comprados: ";
    Leer cantidadComprada;
	
    Escribir "Ingrese el precio unitario del producto: ";
    Leer precioUnitario;
	
    Si cantidadComprada > 19 Entonces
        descuentoInicial <- 0.10;
    Sino
        descuentoInicial <- 0.20;
    FinSi
	
    totalSinDescuento <- cantidadComprada * precioUnitario;
    descuentoAdicional <- totalSinDescuento * 0.05;
    totalAPagar <- (totalSinDescuento - (totalSinDescuento * descuentoInicial)) - descuentoAdicional;
	
    Escribir "Cantidad comprada: ", cantidadComprada;
    Escribir "Precio original por unidad: $", precioUnitario;
    Escribir "Descuento inicial: ", descuentoInicial * 100, "%";
    Escribir "Total sin descuento adicional: $", totalSinDescuento;
    Escribir "Descuento adicional: $", descuentoAdicional;
    Escribir "Valor a pagar: $", totalAPagar;
	
FinAlgoritmo

