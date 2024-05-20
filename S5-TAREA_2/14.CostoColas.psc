Algoritmo CostoColas
    Definir cantidadColas Como Entero;
    Definir costoPorCola, costoTotalSinIVA, iva, totalAPagar Como Real;
	
    Escribir "Ingrese la cantidad de colas compradas: ";
    Leer cantidadColas;
	
    Si cantidadColas > 23 Entonces
        costoPorCola <- 0.50;
    Sino
        costoPorCola <- 0.50 * 1.20;
    FinSi
	
    costoTotalSinIVA <- cantidadColas * costoPorCola;
    iva <- costoTotalSinIVA * 0.12;
    totalAPagar <- costoTotalSinIVA + iva;
	
    Escribir "Cantidad comprada: ", cantidadColas;
    Escribir "Costo por unidad: $", costoPorCola;
    Escribir "Total sin IVA: $", costoTotalSinIVA;
    Escribir "IVA: $", iva;
    Escribir "Total a pagar: $", totalAPagar;
	
FinAlgoritmo
